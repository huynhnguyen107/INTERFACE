# KR260 PL Ethernet IPv4/UDP Parser

## Project Description

This project implements an **Ethernet + IPv4 + UDP packet parser in FPGA Programmable Logic (PL)** on the AMD Kria KR260 using the J10B Ethernet port.

The Ethernet frame is received through the external PHY and AXI Ethernet MAC. The custom RTL parser extracts:

- Destination MAC
- Source MAC
- EtherType
- Source IPv4 address
- Destination IPv4 address
- IPv4 Protocol
- UDP Source Port
- UDP Destination Port
- UDP Length

The received AXI-Stream is also passed directly back to the Ethernet MAC TX interface so the previous Ethernet loopback functionality is maintained.

---

## System Architecture

```text
PC / Scapy
    ↓
Ethernet cable
    ↓
J10B Ethernet PHY
    ↓
RGMII
    ↓
AXI Ethernet MAC
    ↓
RX AXI-Stream
    ↓
┌──────────────────────────┐
│       UDP Parser         │
│                          │
│ Ethernet Header   L2     │
│ IPv4 Header       L3     │
│ UDP Header        L4     │
└──────────────────────────┘
    ↓
AXI-Stream Pass-through
    ↓
TX AXI-Stream
    ↓
AXI Ethernet MAC
    ↓
RGMII
    ↓
J10B PHY
    ↓
PC
```

---

## Protocol Layers

```text
Layer 4     UDP
              ↓
Layer 3     IPv4
              ↓
Layer 2     Ethernet
              ↓
Layer 1     PHY / RGMII
```

The AXI Ethernet MAC handles the Ethernet MAC/PHY interface while the custom RTL parser processes the Ethernet, IPv4, and UDP headers.

---

## AXI-Stream Interface

The AXI Ethernet RX interface uses a 32-bit AXI-Stream:

```text
TDATA  = 32 bits = 4 bytes per transfer
TKEEP  = 4 bits
TVALID
TREADY
TLAST
```

A transfer occurs only when:

```text
TVALID = 1
AND
TREADY = 1
```

The parser uses a `word_count` to track the position inside the Ethernet frame.

```text
word_count 0 → bytes 0..3
word_count 1 → bytes 4..7
word_count 2 → bytes 8..11
...
```

---

## Packet Byte Layout

### Ethernet Header — Layer 2

```text
Byte 0  - 5    Destination MAC
Byte 6  - 11   Source MAC
Byte 12 - 13   EtherType
```
IPv4 fields:

```text
Byte 14        Version + IHL
Byte 15        DSCP / ECN
Byte 16 - 17   Total Length
Byte 18 - 19   Identification
Byte 20 - 21   Flags / Fragment Offset
Byte 22        TTL
Byte 23        Protocol
Byte 24 - 25   Header Checksum
Byte 26 - 29   Source IP
Byte 30 - 33   Destination IP
```
UDP fields:

```text
Byte 34 - 35   Source Port
Byte 36 - 37   Destination Port
Byte 38 - 39   UDP Length
Byte 40 - 41   UDP Checksum
Byte 42 ...    UDP Payload
```

---

## 32-bit AXI-Stream Word Mapping

```text
word_count    Ethernet bytes    Content
------------------------------------------------------------

0             0  - 3            Destination MAC

1             4  - 7            Destination MAC
                                Source MAC

2             8  - 11           Source MAC

3             12 - 15           EtherType
                                IPv4 Version/IHL
                                DSCP/ECN

4             16 - 19           IPv4 Total Length
                                Identification

5             20 - 23           Flags/Fragment
                                TTL
                                IP Protocol

6             24 - 27           IPv4 Checksum
                                Source IP

7             28 - 31           Source IP
                                Destination IP

8             32 - 35           Destination IP
                                UDP Source Port

9             36 - 39           UDP Destination Port
                                UDP Length

10            40 - 43           UDP Checksum
                                First 2 UDP payload bytes

11+           44 ...             UDP Payload
```

---

## Important Protocol Values

### EtherType

```text
0x0800 → IPv4
0x0806 → ARP
0x86DD → IPv6
```

For this project:

```text
EtherType = 0x0800
```

indicates that the Ethernet payload contains IPv4.

### IPv4 Protocol

```text
0x01 → ICMP
0x06 → TCP
0x11 → UDP
```

For this project:

```text
IP Protocol = 0x11
```

indicates UDP.

Therefore a UDP IPv4 packet can be identified by:

```text
EtherType   = 0x0800
IP Protocol = 0x11
```

---

## AXI-Stream Pass-through

The parser observes the RX packet while preserving the Ethernet loopback path.

```verilog
assign s_axis_tready = m_axis_tready;

assign m_axis_tdata  = s_axis_tdata;
assign m_axis_tkeep  = s_axis_tkeep;
assign m_axis_tvalid = s_axis_tvalid;
assign m_axis_tlast  = s_axis_tlast;
```

Therefore:

```text
MAC RX
   ↓
UDP Parser
   ↓
MAC TX
```

The parser does not modify the packet.

---

## PC Test Packet

Scapy is used on the Windows PC to generate a raw Ethernet + IPv4 + UDP packet.

```python
from scapy.all import *

IFACE = "Ethernet"

src_mac = get_if_hwaddr(IFACE)

pkt = (
    Ether(
        dst="ff:ff:ff:ff:ff:ff",
        src=src_mac
    )
    /
    IP(
        src="192.168.10.1",
        dst="192.168.10.2"
    )
    /
    UDP(
        sport=4000,
        dport=5005
    )
    /
    Raw(load=b"HELLO_UDP_FPGA")
)

pkt.show2()

sendp(
    pkt,
    iface=IFACE,
    verbose=False
)
```

---

## Expected Parsed Values

The generated packet contains:

```text
Destination MAC = FF:FF:FF:FF:FF:FF

Source MAC      = 84:A9:38:DE:6E:BC

EtherType       = 0x0800
                  IPv4

Source IP       = 192.168.10.1
                  0xC0A80A01

Destination IP  = 192.168.10.2
                  0xC0A80A02

IP Protocol     = 0x11
                  UDP

UDP Source Port = 4000
                  0x0FA0

UDP Dest Port   = 5005
                  0x138D
```

The payload is:

```text
HELLO_UDP_FPGA
```

Payload length:

```text
14 bytes
```

Therefore:

```text
UDP Length
= UDP header + UDP payload

= 8 + 14
= 22 bytes
= 0x0016
```

---
