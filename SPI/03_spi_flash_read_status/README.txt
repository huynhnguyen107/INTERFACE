# KR260 SPI Master Mode-0 – W25Q64 JEDEC ID Reader

## Project Description

This project implements a parameterized SPI Master in Verilog and tests it on the AMD Kria KR260 Robotics Starter Kit.

The SPI Master communicates with an external W25Q64 SPI NOR Flash module and reads its JEDEC identification using the `0x9F` command.

The SPI transaction transfers four bytes while keeping `CS_n` active for the entire transaction:

```text
MOSI: 9F 00 00 00
MISO: XX EF 40 17