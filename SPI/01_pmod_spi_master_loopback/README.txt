# KR260 SPI Master Mode-0 Loopback Test

## Project Description

This project implements a simple SPI Master in Verilog and tests it on the KR260 board using a hardware loopback connection.

The SPI Master operates in **SPI Mode 0**:

- `CPOL = 0`
- `CPHA = 0`
- `spi_clk` is idle low
- `MOSI` is updated before the rising edge
- `MISO` is sampled on the rising edge

For hardware debugging, the SPI clock is intentionally slowed down to **1 Hz**, so transferring 8 bits takes approximately **8 seconds**.

---

## Clocking
25 MHz board clock -> Clock Wizard -> 100 MHz internal clock