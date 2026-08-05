# KR260 SPI Master Mode-0 – W25Q64 Flash Command Test

## Project Description

This project implements a parameterized SPI Master in Verilog and tests it on the AMD Kria KR260 Robotics Starter Kit.

The SPI Master communicates with an external W25Q64 SPI NOR Flash module using SPI Mode 0.

The project currently supports the following commands:

| Opcode | Command | Description |
|---|---|---|
| `0x9F` | Read JEDEC ID | Reads the Flash manufacturer and device identification |
| `0x05` | Read Status Register-1 | Reads the BUSY, WEL, and protection status bits |
| `0x06` | Write Enable | Sets the Write Enable Latch bit |
| `0x04` | Write Disable | Clears the Write Enable Latch bit |
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