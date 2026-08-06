# KR260 SPI Master Mode-0 – W25Q64 Flash Command Test

## Project Description

This project implements a parameterized SPI Master in Verilog and tests it on the AMD Kria KR260 Robotics Starter Kit.

The SPI Master communicates with an external W25Q64 SPI NOR Flash module using SPI Mode 0.

The project currently supports the following commands:

| Opcode | Command | Result |
|---|---|---|
| `0x9F` | Read JEDEC ID | `EF 40 17` |
| `0x05` | Read Status Register-1 | Successful |
| `0x06` | Write Enable | WEL changes to `1` |
| `0x04` | Write Disable | WEL changes to `0` |
| `0x03` | Read Data | Successful |
| `0x02` | Page Program | Successful |
| `0x20` | Erase sector | Successful |
W25Q64 SPI NOR Flash feedback 
Bit7 Bit6 Bit5 Bit4 Bit3 Bit2 Bit1 Bit0 
SRP  SEC  TB  BP2   BP1  BP0  WEL  BUSY
---

## SPI Configuration

The SPI Master operates in **SPI Mode 0**:

CPOL = 0
CPHA = 0
Bit order = MSB first
spi_clk is idle low.
MISO is sampled on the rising edge.
MOSI is updated before the rising edge.
CS_n remains low during one complete transaction.
CS_n returns high between separate commands.
--------------------------------------------------------------
Commmnad for this project
WRITE AND VERIFY
```text
1. Send 0x06 (1 byte)             → Write Enable
2. Read 0x0500 (2 byte)       → check WEL 
3. Wait until WEL = 1 Write Enable is complete
4. Send 0x02 + address + data ((1+3+2) 2 byte data=1070 )
5. Read 0x0500 (2 byte)       → Poll BUSY
6. Wait until BUSY = 0
7. Send 0x03 + address  ((1+3+2) 2 byte to read data )  → Read back and verify
READ AND Erase sector
```text
1. Send 0x03 + address +dumpfile  ((1+3+2) byte)  → Read dumpfile at address 
2. Send 0x06 (1 byte)             → Write Enable
3. Read 0x0500 (2 byte)       → check WEL 
4. Wait until WEL = 1 Write Enable is complete
5. Send 0x20 (1 byte) +address (3 byte) → Erases the 4-KB sector from `0x001000` to `0x001FFF`
6. Read 0x0500 (2 byte)       → Poll BUSY
7. Wait until BUSY = 0 erase is complete
8. Send 0x03 + address +dumpfile ((1+3+2) 2 byte to read data )  → Read and verify
