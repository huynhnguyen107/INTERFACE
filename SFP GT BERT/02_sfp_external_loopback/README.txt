# 02 — SFP+ External Loopback with IBERT

## Overview

This experiment validates the complete 10 Gb/s physical SFP+ path on the AMD Kria KR260 using the UltraScale GTH IBERT core.

Unlike the previous internal-loopback experiment, the serial data leaves the FPGA through the physical GTH transceiver, passes through the KR260 SFP+ connector and optical module, and returns through an external optical loopback.

The test uses a PRBS31 pattern at 10.3125 Gb/s.

---

## Objective

Validate the following complete physical path:

```text
PRBS31 Generator
      ↓
GTH TX
      ↓
KR260 PCB
      ↓
J23 SFP+
      ↓
10GBASE-SR Optical Module
      ↓
External Optical Loopback
      ↓
SFP+ RX
      ↓
KR260 PCB
      ↓
GTH RX
      ↓
PRBS31 Checker
```

The experiment verifies:

- GTH reference clock
- QPLL operation
- GTH transmitter
- GTH receiver
- KR260 high-speed PCB routing
- SFP+ connector J23
- 10GBASE-SR optical transceiver
- External optical loopback path
- PRBS error detection
- BER performance

---

# Hardware

## Board

AMD Kria KR260 Robotics Starter Kit

```text
Device        : XCK26
GTH Quad      : Quad 224
SFP+ Connector: J23
```

---

## SFP+ Module

10Gtek 10GBASE-SR SFP+ transceiver

```text
Standard      : 10GBASE-SR
Line rate     : 10 Gb/s class
Wavelength    : 850 nm
Fiber type    : Multimode
Connector     : Duplex LC
```

---

## Optical Loopback

Buacoz optical loopback adapter

```text
Connector : LC/UPC
Fiber     : OM3 multimode
Core      : 50/125 µm
```

The optical loopback connects the transmitter of the SFP+ module directly back to its receiver.

```text
          10Gtek SFP+

       TX optical
           │
           ▼
    ┌───────────────┐
    │ OM3 loopback  │
    └───────────────┘
           │
           ▼
       RX optical
```

Only one SFP+ module is required.

---

# KR260 SFP+ Mapping

The KR260 schematic connects J23 to:

```text
J23 TD_P/N
    ↓
GTH_DP2_M2C_P/N

J23 RD_P/N
    ↓
GTH_DP2_C2M_P/N
```

Therefore J23 uses:

```text
GTH Lane 2
```

For Quad 224:

```text
Lane 0 → MGT_X0Y4
Lane 1 → MGT_X0Y5
Lane 2 → MGT_X0Y6   ← J23 SFP+
Lane 3 → MGT_X0Y7
```

The external-loopback test therefore uses:

```text
TX = Quad_224 / MGT_X0Y6 / TX
RX = Quad_224 / MGT_X0Y6 / RX
```

---

# Clock Architecture

The primary GTH reference clock is:

```text
MGTREFCLK0 = 156.25 MHz
```

The reference clock enters the FPGA through `IBUFDS_GTE4`.

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
               156.25 MHz   78.125 MHz
                    │          │
                    │        BUFG_GT
                    │          │
                    │          ▼
                    │     IBERT control clock
                    │
                    ▼
                 GT COMMON
                  QPLL0
                    │
                    ▼
             High-speed GT clock
                    │
                    ▼
             GTH Channel 2
               MGT_X0Y6
```

The second KR260 GTH reference clock is:

```text
MGTREFCLK1 = 74.25 MHz
```

but it is not required for this experiment.

---

# IBERT Architecture

IBERT controls the GTH transceiver through JTAG/DRP.

The PRBS generator and PRBS checker are implemented inside the GTH channel.

```text
                 IBERT Control
              JTAG / DRP / Status
                     │
        ┌────────────┴────────────┐
        │                         │
        ▼                         ▼
 TX PRBS control            RX PRBS control
        │                         │
        ▼                         ▼

              GTH Channel 2
               MGT_X0Y6

TX:
PRBS31 Generator
      ↓
TX Datapath
      ↓
Serializer
      ↓
TXP / TXN


RX:
RXP / RXN
      ↓
Deserializer
      ↓
RX Datapath
      ↓
PRBS31 Checker
      ↓
Error Counter
```

IBERT controls parameters such as:

```text
TX PRBS selection
RX PRBS selection
TX/RX reset
Loopback mode
TX differential swing
TX pre-cursor
TX post-cursor
RX equalization
DRP configuration
```

---

# Complete External Loopback Path

```text
             GTH CHANNEL 2
                MGT_X0Y6

             TX PRBS31
                 │
                 ▼
             Serializer
                 │
                 ▼
           GTH_DP2_M2C
                 │
                 ▼
              J23 SFP+
                 │
                 ▼
         10Gtek 10GBASE-SR
              TX optical
                 │
                 ▼
        Buacoz OM3 Loopback
                 │
                 ▼
              RX optical
         10Gtek 10GBASE-SR
                 │
                 ▼
              J23 SFP+
                 │
                 ▼
           GTH_DP2_C2M
                 │
                 ▼
            Deserializer
                 │
                 ▼
          RX PRBS31 Checker
```

Unlike the previous experiment:

```text
Internal Loopback = NONE
```

Therefore the serial data must physically leave the FPGA and return through the SFP+ optical path.

---

# SFP+ TX Enable

The SFP+ transmitter is controlled by:

```text
SFP_TX_DISABLE
```

For normal transmission:

```text
TX_DISABLE = 0
```

The KR260 connection is:

```text
HDB19
Package pin Y10
```

Top-level RTL:

```verilog
output wire sfp_tx_disable_o;

assign sfp_tx_disable_o = 1'b0;
```

XDC:

```tcl
set_property PACKAGE_PIN Y10 [get_ports sfp_tx_disable_o]
set_property IOSTANDARD LVCMOS33 [get_ports sfp_tx_disable_o]
```

This enables the optical transmitter in the SFP+ module.

---

# IBERT Configuration

The UltraScale GTH IBERT core was configured as:

```text
IP             : IBERT UltraScale GTH
Quad           : Quad 224
Protocol       : Custom
Line Rate      : 10.3125 Gb/s
Data Width     : 40 bits
Reference Clock: 156.25 MHz
Refclk Source  : MGTREFCLK0
```

Conceptual parallel throughput:

```text
10.3125 Gb/s / 40 bits
= 257.8125 MHz
```

The 156.25 MHz clock is the PLL reference clock, not the direct serial bit clock.

The GTH PLL generates the high-speed clock required by the serializer/deserializer.

---

# Hardware Setup

With the board powered off:

1. Insert the 10Gtek 10GBASE-SR SFP+ module into J23.
2. Insert the LC/UPC OM3 optical loopback into the SFP+ module.
3. Power on the KR260.
4. Program the IBERT bitstream.

Hardware path:

```text
KR260
  │
  └── J23
       │
       └── 10Gtek 10GBASE-SR
                 │
                 └── Buacoz LC/UPC OM3 Loopback
```

---

# Hardware Manager Test

Open:

```text
Hardware Manager
→ Serial I/O Analyzer
```

Create the link using:

```text
TX = Quad_224/MGT_X0Y6/TX

RX = Quad_224/MGT_X0Y6/RX
```

Set:

```text
Loopback Mode = None

TX Pattern = PRBS 31-bit
RX Pattern = PRBS 31-bit
```

Then perform:

```text
BERT Reset
```

Both PLLs must report:

```text
TX PLL Status = Locked
RX PLL Status = Locked
```

---

# Test Result

The external optical loopback successfully operated at approximately:

```text
10.312 Gb/s
```

IBERT result:

```text
TX Channel     : MGT_X0Y6
RX Channel     : MGT_X0Y6

TX Pattern     : PRBS31
RX Pattern     : PRBS31

Loopback Mode  : None

Bits Tested    : 3.446 × 10^11
Errors         : 0

TX PLL Status  : Locked
RX PLL Status  : Locked

TX Pre-Cursor  : 0.00 dB
TX Post-Cursor : 0.00 dB
TX Diff Swing  : 873 mV
```

Vivado displayed:

```text
BER = 2.902E-12
```

Since the observed error count was zero, this value represents the measurement resolution / upper-bound corresponding to the number of tested bits rather than an actually observed non-zero BER.

Therefore the result should be reported as:

```text
0 errors observed over 3.446 × 10^11 bits

BER < 2.902 × 10^-12
```

because:

```text
1 / (3.446 × 10^11)
≈ 2.902 × 10^-12
```

---

# Result

```text
156.25 MHz GTH REFCLK       PASS
QPLL lock                    PASS
GTH Channel 2 / MGT_X0Y6    PASS
10.3125 Gb/s operation       PASS
SFP+ J23 TX path             PASS
SFP+ J23 RX path             PASS
10GBASE-SR optical module    PASS
OM3 external loopback        PASS
PRBS31 synchronization       PASS
TX PLL lock                  PASS
RX PLL lock                  PASS
Observed errors              0
External loopback            PASS
```

---


# Conclusion

The KR260 SFP+ interface was successfully validated using an external optical loopback at 10.3125 Gb/s.

GTH Channel 2 (`MGT_X0Y6`) transmitted a PRBS31 sequence through the J23 SFP+ interface and a 10GBASE-SR optical transceiver.

The signal was returned through an OM3 LC optical loopback and successfully recovered by the same GTH channel.
