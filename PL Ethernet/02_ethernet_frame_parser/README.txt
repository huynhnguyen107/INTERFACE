# KR260 PL Ethernet MAC Loopback

## Project Description

This project verifies the **1 Gbps PL Ethernet path** on the AMD Kria KR260 using the J10B Ethernet port.

The external Ethernet PHY communicates with the AXI Ethernet MAC in the FPGA through **RGMII**.

The received Ethernet frame is looped directly from the RX AXI-Stream interface back to the TX AXI-Stream interface.

```text
PC
 ↕ Ethernet cable
J10B PHY
 ↕ RGMII
AXI Ethernet MAC
 ↓
RX AXI-Stream
 ↓
Loopback
 ↓
TX AXI-Stream
 ↓
AXI Ethernet MAC
 ↕ RGMII
J10B PHY
 ↕
PC
```

---


The loopback connections are:

```text
m_axis_rxd → s_axis_txd
m_axis_rxs → s_axis_txc
```

Where:

```text
m_axis_rxd = received Ethernet frame data
m_axis_rxs = received frame status

s_axis_txd = Ethernet transmit data
s_axis_txc = Ethernet transmit control
```

---

## RGMII Interface

RGMII connects the FPGA Ethernet MAC to the external Ethernet PHY.

```text
TX:
TXD[3:0]
TX_CTL
TXC

RX:
RXD[3:0]
RX_CTL
RXC
```

At 1 Gbps:

```text
TXC ≈ 125 MHz
```

Data is transferred using DDR on both clock edges.

---

## Clock Configuration

A 25 MHz PL clock is used as the Clock Wizard input.

```text
25 MHz
  ↓
Clock Wizard
  ├── 100 MHz      → AXI / AXI-Stream / SmartConnect
  ├── 125 MHz      → Ethernet gtx_clk
  └── 333.333 MHz  → Ethernet ref_clk
```

---

## Important MAC Registers

```text
Offset   Register   Description
-----------------------------------------
0x404    RCW1       RX configuration
0x408    TC         TX configuration
0x410    EMMC       MAC speed configuration
0x420    PHYC       RGMII PHY status
0x4F8    IDREG      MAC identification
```

Read registers:

```bash
sudo busybox devmem 0xA00004F8 32
sudo busybox devmem 0xA0000404 32
sudo busybox devmem 0xA0000408 32
sudo busybox devmem 0xA0000410 32
sudo busybox devmem 0xA0000420 32
```

Example hardware values:

```text
IDREG = 0x09000000

RCW1  = 0x1000FFFF
TC    = 0x10000000
EMMC  = 0x80000000
```

---

## Enable RX and TX

RX enable bit:

```text
RCW1 bit 28 = 1
```

TX enable bit:

```text
TC bit 28 = 1
```

Enable RX:

```bash
v=$(sudo busybox devmem 0xA0000404 32)
sudo busybox devmem 0xA0000404 32 $((v | 0x10000000))
```

Enable TX:

```bash
v=$(sudo busybox devmem 0xA0000408 32)
sudo busybox devmem 0xA0000408 32 $((v | 0x10000000))
```

---

## Configure MAC Speed

EMMC speed configuration:

```text
0x00000000 → 10 Mbps
0x40000000 → 100 Mbps
0x80000000 → 1000 Mbps
```

Configure the MAC for 1 Gbps:

```bash
v=$(sudo busybox devmem 0xA0000410 32)

nv=$(((v & 0x3FFFFFFF) | 0x80000000))

sudo busybox devmem 0xA0000410 32 $nv
```

Verify:

```bash
sudo busybox devmem 0xA0000410 32
```

Expected:

```text
0x80000000
```

---

## Check Physical Ethernet Link

On the Windows PC:

```powershell
Get-NetAdapter -Name Ethernet |
Format-List Status,LinkSpeed
```

Expected:

```text
Status    : Up
LinkSpeed : 1 Gbps
```

A Gigabit Ethernet cable must contain all four twisted pairs.

```text
100BASE-TX  → 2 pairs / 4 wires
1000BASE-T  → 4 pairs / 8 wires
```


---

## Python Ethernet Test

A raw Ethernet frame is generated using Scapy.

Example:

```python
from scapy.all import *

IFACE = "Ethernet"

src_mac = get_if_hwaddr(IFACE)

pkt = (
    Ether(
        dst="ff:ff:ff:ff:ff:ff",
        src=src_mac,
        type=0x88B5
    )
    /
    Raw(load=b"HELLO_KR260_PL_ETHERNET")
)

sendp(
    pkt,
    iface=IFACE,
    verbose=False
)
```

EtherType:

```text
0x88B5
```

is used as a custom test EtherType so the frame can easily be filtered in Wireshark.

Wireshark filter:

```text
eth.type == 0x88b5
```

---

## Ethernet Frame Size

The Python packet contains:

```text
Destination MAC = 6 bytes
Source MAC      = 6 bytes
EtherType       = 2 bytes
Payload         = 23 bytes
-------------------------
Total           = 37 bytes
```

The transmitted logical frame is therefore:

```text
37 bytes
```

Ethernet requires a minimum frame size of:

```text
64 bytes on the wire
```

including the 4-byte FCS.

Therefore the Ethernet MAC adds padding:

```text
14-byte Ethernet header
+23-byte payload
+23-byte padding
----------------
60 bytes

+4-byte FCS
----------------
64 bytes on wire
```

Wireshark showed:

```text
Frame 1 = 37 bytes
Frame 2 = 60 bytes
```

The first frame is the packet transmitted by the PC.

The second frame is the frame returned by the KR260 Ethernet MAC after loopback and Ethernet padding.

The 4-byte FCS is normally removed by the NIC before Wireshark capture.

---

---

## Key Concepts

```text
RGMII
→ interface between FPGA MAC and external PHY

AXI Ethernet MAC
→ converts Ethernet/RGMII traffic to and from AXI-Stream

m_axis_rxd
→ Ethernet RX frame output

s_axis_txd
→ Ethernet TX frame input

MDIO/MDC
→ PHY management interface

---
PC Scapy
   ↓
Ethernet frame
   ↓
J10B PHY
   ↓
RGMII
   ↓
AXI Ethernet MAC RX
   ↓
Ethernet parser
   ├── DST = FF:FF:FF:FF:FF:FF   
   ├── SRC = 84:A9:38:DE:6E:BC   
   └── TYPE = 0x88B5             
   ↓
AXI pass-through
   ↓
TX MAC