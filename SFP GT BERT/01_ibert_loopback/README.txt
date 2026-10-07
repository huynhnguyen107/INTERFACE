# KR260 GTH IBERT Internal Loopback

## Project Description

This project verifies the **GTH transceiver inside the AMD Kria KR260/K26** using the Xilinx **IBERT UltraScale GTH** core.

The test uses:

- GTH Quad 224
- MGTREFCLK0 = 156.25 MHz
- Line rate = 10.3125 Gb/s
- 40-bit internal datapath
- PRBS pattern generator/checker
- Internal GT loopback
- Vivado Serial I/O Analyzer


The purpose is to verify the basic **Layer-1 GTH datapath**:

```text
PRBS Generator
      ↓
GTH TX
      ↓
Internal Loopback
      ↓
GTH RX
      ↓
PRBS Checker
```

---

## Hardware Configuration

IBERT configuration:

```text
GT Type        : UltraScale+ GTH
GT Quad        : QUAD_224

Line Rate      : 10.3125 Gb/s
Data Width     : 40 bits

Reference Clock:
MGTREFCLK0     : 156.25 MHz

System Clock:
Source          : QUAD224_0
```

The KR260 carrier provides the 156.25 MHz GTH reference clock from the Optical/Ethernet oscillator:

```text
156.25 MHz LVDS oscillator
        ↓
GTH_REFCLK0_C2M_P/N
        ↓
K26 SOM
        ↓
MGTREFCLK0_224
```

The second GTH reference clock is provided separately for other applications and is not required for this test.

---

## Clock Architecture

The 156.25 MHz clock is not directly the 10.3125 GHz serial clock.

It is used as a reference for the GTH PLL.

```text
156.25 MHz REFCLK
      │
      ▼
     PLL
      │
      │ generate high-speed clock
      ▼
40-bit PRBS @ ~257.8125 MHz
      │
      ▼
 Serializer
      │
      ▼
10.3125 Gb/s
      │
   internal
   loopback
      │
      ▼
 Deserializer
      │
      ▼
40-bit data
      │
      ▼
PRBS Checker
```

For a 40-bit datapath:

```text
10.3125 Gb/s / 40
= 257.8125 MHz
```

Therefore the FPGA logic does not operate at 10.3125 GHz.

Instead:

```text
40 parallel bits @ ~257.8125 MHz
                ↓
             Serializer
                ↓
        10.3125 Gb/s serial
```

---

## Reference Clock Buffering

The differential MGT reference clock enters the FPGA through the dedicated `IBUFDS_GTE4` primitive.

```text
                    156.25 MHz
                  MGTREFCLK0 P/N
                         │
                         ▼
                  IBUFDS_GTE4
                    ┌────┴─────┐
                    │          │
                    O        ODIV2
                    │          │
              156.25 MHz    78.125 MHz
                    │          │
                    │        BUFG_GT
                    │          │
                    │          ▼
                    │     IBERT control clk
                    │
                    ▼
                 GT PLL
                    │
                    ▼
             high-speed clock
                    │
                    ▼
PRBS → Serializer → 10.3125 Gb/s
                    │
             internal loopback
                    │
                    ▼
              Deserializer
                    │
                    ▼
              PRBS Checker
```

### IBUFDS_GTE4

`IBUFDS_GTE4` is the dedicated differential input buffer for GTH reference clocks.

```text
I / IB
→ MGTREFCLK P/N

O
→ GT reference-clock network
→ QPLL / CPLL

ODIV2
→ divided clock output
→ FPGA fabric
```

For the 156.25 MHz reference clock:

```text
O      ≈ 156.25 MHz
ODIV2  ≈ 78.125 MHz
```

---

## BUFG_GT

`BUFG_GT` distributes a GT-derived clock into the FPGA fabric.

In the generated IBERT example:

```text
IBUFDS_GTE4 ODIV2
        ↓
     BUFG_GT
        ↓
  gth_sysclk_i
        ↓
 IBERT control logic
```

This clock is used for:

```text
JTAG control
DRP access
IBERT control/status
PRBS configuration
Loopback configuration
```

It is **not** the 10.3125 Gb/s serial clock.

---

## GTH Quad Architecture

One GTH Quad contains four transceiver channels.

```text
                 QUAD_224
┌────────────────────────────────┐
│                                │
│         GT COMMON              │
│      ┌──────────────┐          │
REFCLK → QPLL0/QPLL1  │          │
│      └──────┬───────┘          │
│             │                  │
│    ┌────────┼────────────┐     │
│    ↓        ↓        ↓   ↓     │
│   CH0      CH1      CH2 CH3    │
│                                │
└────────────────────────────────┘
```

### QPLL

QPLL resources are located in the **GT COMMON** block.

```text
QPLL0
QPLL1
```

They are shared by the four channels in the quad.

### CPLL

Each GT channel also contains its own CPLL:

```text
CH0 → CPLL
CH1 → CPLL
CH2 → CPLL
CH3 → CPLL
```

A GT channel can select an appropriate PLL source for its TX/RX clocking.

---

## Test Channel

For this project only one channel is required:

```text
Quad_224 / MGT_X0Y4
```

The Serial I/O link is created as:

```text
TX = Quad_224/MGT_X0Y4/TX
RX = Quad_224/MGT_X0Y4/RX
```

Internal loopback connects the transmitter back to the receiver inside the GT.

```text
                 GTH Channel

PRBS Generator
      ↓
TX Serializer
      ↓
┌──────────────────┐
│ Internal Loopback│
└──────────────────┘
      ↓
RX Deserializer
      ↓
PRBS Checker
```

Therefore the test does not require:

```text
SFP+ module
fiber
DAC cable
external loopback cable
Ethernet PHY
Ethernet MAC
```

---

## PRBS Testing

PRBS means:

```text
Pseudo-Random Binary Sequence
```

IBERT includes both:

```text
PRBS Generator
PRBS Checker
```

The generator creates a deterministic pseudo-random bit stream.

The receiver generates the expected sequence internally and compares it with the received bits.

```text
Expected PRBS
      │
      ├─────────────┐
      │             │
      │        compare
      │             │
Received PRBS ──────┘
      │
      ▼
Error Counter
```

---

## PRBS7

PRBS7 uses a 7-bit sequence generator.

Sequence length:

```text
2^7 - 1
= 127 bits
```

It is useful for basic link verification.

```text
TX Pattern = PRBS 7-bit
RX Pattern = PRBS 7-bit
```

TX and RX patterns must always match.

For example:

```text
TX PRBS7  + RX PRBS7   → valid
TX PRBS31 + RX PRBS31  → valid

TX PRBS7  + RX PRBS31  → NO LINK
```

---

## PRBS31

PRBS31 uses a 31-bit pseudo-random sequence generator.

Sequence length:

```text
2^31 - 1
```

This produces a much longer and more stressful test pattern than PRBS7.

Configuration:

```text
TX Pattern = PRBS 31-bit
RX Pattern = PRBS 31-bit
```

Test flow:

```text
PRBS31 Generator
       ↓
40-bit parallel data
       ↓
GTH Serializer
       ↓
10.3125 Gb/s
       ↓
Internal Loopback
       ↓
GTH Deserializer
       ↓
PRBS31 Checker
```

---

## Bit Error Ratio

IBERT reports the Bit Error Ratio:

```text
BER = Number of Error Bits
      --------------------
      Number of Tested Bits
```

For example:

```text
Tested bits = 1 × 10^12
Errors      = 1

BER ≈ 1 × 10^-12
```

A lower BER indicates a more reliable serial link.

For an internal loopback test, the expected result is ideally:

```text
Errors = 0
```

---

## Hardware Verification

The GTH reference clock was successfully detected and the shared PLL locked:

```text
COMMON_X0Y1
QPLL0 Locked
```

The test link was created using:

```text
TX = Quad_224/MGT_X0Y4/TX
RX = Quad_224/MGT_X0Y4/RX
```

PRBS31 configuration:

```text
TX Pattern = PRBS 31-bit
RX Pattern = PRBS 31-bit
```

Vivado Serial I/O Analyzer reported approximately:

```text
Status  = 10.305 Gb/s
Bits    = 5.272E11
Errors  = 0
BER     ≈ 1.897E-12
```

The configured GTH line rate is:

```text
10.3125 Gb/s
```

The test completed with **zero observed bit errors**.

---

## Verified Data Path

```text
156.25 MHz MGTREFCLK0
          ↓
      IBUFDS_GTE4
          ↓
        QPLL0
          ↓
 high-speed GT clock
          ↓
   PRBS31 Generator
          ↓
    40-bit datapath
          ↓
      Serializer
          ↓
     10.3125 Gb/s
          ↓
   Internal Loopback
          ↓
     Deserializer
          ↓
    40-bit datapath
          ↓
     PRBS31 Checker
          ↓
      Errors = 0
```

---

---

## Key Concepts

```text
MGTREFCLK
→ dedicated reference clock for GTH transceiver

IBUFDS_GTE4
→ differential GTH reference-clock input buffer

QPLL
→ PLL shared by channels inside one GT Quad

CPLL
→ PLL dedicated to one GT channel

BUFG_GT
→ distributes GT-derived clock into FPGA fabric

Serializer
→ converts parallel data into high-speed serial data

Deserializer
→ converts high-speed serial data back into parallel data

PRBS
→ deterministic pseudo-random test pattern

IBERT
→ Integrated Bit Error Ratio Tester

BER
→ ratio of received erroneous bits to total tested bits
```