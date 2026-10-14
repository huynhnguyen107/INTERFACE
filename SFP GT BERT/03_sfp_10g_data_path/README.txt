# 03 - SFP+ 10G Ethernet Data Path

This experiment implements and verifies a complete 10G Ethernet transmit/receive datapath on the KR260 using the 10G/25G Ethernet Subsystem and an external SFP+ optical loopback.

The test transmits a custom 60-byte Ethernet frame from PL logic, sends it through the 10G MAC/PCS/GTH/SFP+ path, loops the optical signal back externally, and verifies the recovered frame on the RX AXI4-Stream interface using ILA.

---

## Data Path

```text
frame_generator
       │
       │ 60-byte Ethernet frame
       ▼
TX AXI4-Stream
       ▼
MAC
 ├─ adds standard Preamble/SFD
 ├─ calculates and inserts FCS
 └─ inserts proper IPG
       ▼
PCS
 ├─ 64b/66b encoding
 └─ scrambling
       ▼
GTH Transceiver
       │
       │ 10.3125 Gb/s serial
       ▼
SFP+
       │
       │ optical fiber loopback
       ▼
SFP+
       ▼
GTH RX
       ▼
PCS
 ├─ 64b/66b block synchronization
 ├─ descrambling
 └─ 64b/66b decoding
       ▼
MAC RX
 ├─ checks Preamble/SFD
 ├─ verifies FCS
 └─ removes FCS
       ▼
RX AXI4-Stream
       ▼
ILA verification
```

The 10GBASE-R serial line rate is:

```text
10 Gb/s × 66/64 = 10.3125 Gb/s
```

---

## Test Ethernet Frame

The PL frame generator creates a 60-byte Ethernet frame:

```text
DST MAC   = FF:FF:FF:FF:FF:FF
SRC MAC   = 02:00:00:00:00:01
EtherType = 88:B5
Payload   = 46 bytes
```

Payload:

```text
00 01 02 03 04 05 06 07
08 09 0A 0B 0C 0D 0E 0F
10 11 12 13 14 15 16 17
18 19 1A 1B 1C 1D 1E 1F
20 21 22 23 24 25 26 27
28 29 2A 2B 2C 2D
```

Frame size before FCS:

```text
Destination MAC     6 bytes
Source MAC          6 bytes
EtherType           2 bytes
Payload            46 bytes
----------------------------
Total              60 bytes
```

The MAC inserts the 4-byte FCS:

```text
60-byte frame + 4-byte FCS = 64-byte minimum Ethernet frame
```

Preamble/SFD and IPG are handled by the MAC and are not part of the AXI4-Stream frame data.

---

## TX AXI4-Stream

The TX interface is 64 bits wide.

Byte 0 is mapped to:

```text
TDATA[7:0]
```

The 60-byte frame therefore requires eight AXI4-Stream beats:

```text
Beat 0 : FF FF FF FF FF FF 02 00    TKEEP=FF  TLAST=0
Beat 1 : 00 00 00 01 88 B5 00 01    TKEEP=FF  TLAST=0
Beat 2 : 02 03 04 05 06 07 08 09    TKEEP=FF  TLAST=0
Beat 3 : 0A 0B 0C 0D 0E 0F 10 11    TKEEP=FF  TLAST=0
Beat 4 : 12 13 14 15 16 17 18 19    TKEEP=FF  TLAST=0
Beat 5 : 1A 1B 1C 1D 1E 1F 20 21    TKEEP=FF  TLAST=0
Beat 6 : 22 23 24 25 26 27 28 29    TKEEP=FF  TLAST=0
Beat 7 : 2A 2B 2C 2D                TKEEP=0F  TLAST=1
```

A transfer occurs only when:

```text
TVALID = 1
AND
TREADY = 1
```

If `TREADY = 0`, the frame generator holds `TDATA`, `TKEEP`, `TLAST`, and `TVALID` until the MAC accepts the beat.

---

## Physical GT Interface

| Signal | Direction | Description |
|---|---|---|
| `gt_refclk_p` | Input | Positive input of the 156.25 MHz differential GTH reference clock |
| `gt_refclk_n` | Input | Negative input of the 156.25 MHz differential GTH reference clock |
| `gt_rxp_in` | Input | Positive high-speed serial receive signal from the SFP+ module |
| `gt_rxn_in` | Input | Negative high-speed serial receive signal from the SFP+ module |
| `gt_txp_out` | Output | Positive high-speed serial transmit signal to the SFP+ module |
| `gt_txn_out` | Output | Negative high-speed serial transmit signal to the SFP+ module |

The design uses:

```text
GT Quad     = X0Y1
GT Channel  = X0Y6
GT RefClk   = 156.25 MHz
Line Rate   = 10.3125 Gb/s
```

---

## SFP+ TX Enable

The SFP+ transmitter must be enabled by driving:

```text
sfp_tx_disable = 0
```

On the KR260:

```text
SFP_TX_DISABLE → Y10
IOSTANDARD     → LVCMOS33
```

XDC:

```tcl
set_property PACKAGE_PIN Y10 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS33 [get_ports sfp_tx_disable]
```

This control should be implemented inside the Block Design/top-level RTL instead of manually modifying an auto-generated wrapper.

---

## End-to-End Loopback Verification

ILA confirmed successful transmission of all eight TX AXI4-Stream beats.

The RX AXI4-Stream interface recovered the same Ethernet frame after passing through:

```text
Frame Generator
      ↓
TX AXI4-Stream
      ↓
10G Ethernet MAC
      ↓
PCS
      ↓
GTH
      ↓
SFP+ TX
      ↓
External optical loopback
      ↓
SFP+ RX
      ↓
GTH
      ↓
PCS
      ↓
Ethernet MAC
      ↓
RX AXI4-Stream
```

The final RX beat was observed with:

```text
TKEEP = 0F
TLAST = 1
```

Only `TDATA[31:0]` is valid on the final beat because `TKEEP[7:4] = 0`.

The valid received bytes are:

```text
2A 2B 2C 2D
```

The upper four bytes of `TDATA` on the final beat are don't-care values.

---

## Result

```text
GTH initialization                PASS
TX/RX reset release              PASS
156.25 MHz GT reference clock    PASS
10.3125 Gb/s serial link         PASS
SFP+ optical loopback            PASS
64b/66b block synchronization    PASS
PCS RX link                      PASS
TX AXI4-Stream handshake         PASS
MAC FCS insertion/checking       PASS
RX AXI4-Stream frame recovery    PASS
60-byte Ethernet frame loopback  PASS
```

The complete 10G Ethernet datapath from PL-generated AXI4-Stream data through the SFP+ optical link and back to the RX AXI4-Stream interface was successfully verified.