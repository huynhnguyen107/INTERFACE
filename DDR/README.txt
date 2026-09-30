# KR260 DDR + AXI DMA Loopback

## Project Description

This project tests DDR access and AXI DMA loopback on the KR260 running Ubuntu Linux.

The AXI DMA transfers data from a TX buffer in DDR through AXI-Stream and writes it back to an RX buffer in DDR.

## Software Flow

```text
1. Open /dev/mem

2. mmap AXI DMA registers
   DMA Base = 0xA0000000

3. mmap /dev/udmabuf0
   → DMA-safe DDR buffer

4. Prepare data
   TX = 1, 2, 3, ... 16
   RX = 0

5. Reset MM2S and S2MM

6. Start S2MM first
   → Set RX physical address
   → Set transfer length
   → Start

7. Start MM2S
   → Set TX physical address
   → Set transfer length
   → Start

8. Poll DMA status

9. Compare TX and RX
```

## Linux Memory Mapping

```text
Linux C
  |
  +-- /dev/mem
  |      ↓
  |   AXI DMA registers
  |   0xA0000000
  |
  +-- /dev/udmabuf0
         ↓
       DDR buffer
       ├── TX offset = 0x0000
       └── RX offset = 0x1000
```

`/dev/mem` is used for AXI DMA control registers.

`/dev/udmabuf0` is used for the DDR data buffer.

## DMA Data Flow

```text
DDR TX
  ↓
M_AXI_MM2S
  ↓
AXI DMA MM2S
  ↓
M_AXIS_MM2S
  ↓
AXI-Stream Loopback
  ↓
S_AXIS_S2MM
  ↓
AXI DMA S2MM
  ↓
M_AXI_S2MM
  ↓
DDR RX
```

## Virtual vs Physical Address

The CPU and DMA access the same DDR buffer using different addresses.

```text
CPU side:

buffer = mmap("/dev/udmabuf0")
        ↓
virtual address
```

```text
DMA side:

phys_addr
    ↓
physical/DMA address
```

Example:

```text
                 CPU
                  |
          Virtual Address
        0xFFFF9A340000
                  |
                 MMU
                  |
          Physical Address
          0x6F120000
                  |
                 DDR
                  ^
                  |
                DMA
                  |
          Physical/DMA Address
          0x6F120000
```

The CPU virtual address is translated by the MMU.

The AXI DMA does not use the process virtual address. It uses the physical/DMA address of the DDR buffer.

## Hardware Test Result

```text
u-dma-buf physical base = 0x35DC0000

TX physical address = 0x35DC0000
RX physical address = 0x35DC1000

MM2S status = 0x00001002
S2MM status = 0x00001002
```

```text
0x0002 → DMA Idle
0x1000 → IOC_Irq / Transfer Complete
```

TX data:

```text
1, 2, 3, ... 16
```

RX data:

```text
1, 2, 3, ... 16
```

Result:

```text
DMA LOOPBACK PASS
```

## Key Points

- `MM2S` = Memory-Mapped to Stream = DDR → AXI-Stream
- `S2MM` = Stream to Memory-Mapped = AXI-Stream → DDR
- Start `S2MM` before `MM2S`
- `/dev/mem` controls the DMA registers
- `u-dma-buf` provides the DDR DMA buffer
- CPU uses a virtual address
- DMA uses a physical/DMA address