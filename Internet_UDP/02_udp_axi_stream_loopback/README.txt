# KR260 UDP to AXI-Stream to UDP Bridge

## Project Description

This project implements a simple **UDP → AXI-Stream → UDP** bridge on the AMD Kria KR260.

A UDP packet sent from the PC is received by Linux on KR260, copied into a DDR TX buffer, 
transferred by **AXI DMA MM2S** into the PL through **AXI-Stream**, processed by custom RTL, 
returned through **AXI DMA S2MM** into a DDR RX buffer, and finally sent back to the PC through UDP.

---

## Linux Setup

Install `u-dma-buf` each time after boot:

```bash
cd ~/udmabuf
sudo insmod ./u-dma-buf.ko udmabuf0=8192


PC
 ↓ UDP
recvfrom()
 ↓
TX DDR
 ↓
DMA MM2S
 ↓
AXI-Stream
 ↓
Custom RTL
 ↓
AXI-Stream
 ↓
DMA S2MM
 ↓
RX DDR
 ↓
sendto()
 ↓ UDP
PC


KR260 UDP -> AXI-Stream -> UDP bridge started
Listening on UDP port 5005

RX UDP from 192.168.68.78:54876
RX UDP bytes = 64
MM2S status = 0x00001002
S2MM status = 0x00001002

AXI result:
RX[00] = 0x00000001
RX[01] = 0x00000002
RX[02] = 0x00000003
RX[03] = 0x00000004
RX[04] = 0x00000005
RX[05] = 0x00000006
RX[06] = 0x00000007
RX[07] = 0x00000008
RX[08] = 0x00000009
RX[09] = 0x0000000a
RX[10] = 0x0000000b
RX[11] = 0x0000000c
RX[12] = 0x0000000d
RX[13] = 0x0000000e
RX[14] = 0x0000000f
RX[15] = 0x00000010

TX UDP bytes = 64