# KR260 SPI Master Mode-0 – W25Q64 Flash Command Test

## Project Description

This project implements a parameterized SPI Master in Verilog and tests it on the AMD Kria KR260 Robotics Starter Kit.

The SPI Master communicates with an external W25Q64 SPI NOR Flash module using SPI Mode 0.

```verilog
localparam IDLE        = 3'd0;
localparam JEDEC_ID    = 3'd1;
localparam STATUS_READ = 3'd2;
localparam DATA_READ   = 3'd3;
localparam PAGE_PRO    = 3'd4;
localparam SEC_ERASE   = 3'd5;
```

1. Read JEDEC ID (`COMMAND = 1`)
   Send: `9F 00 00 00`
   Receive: `XX EF 40 17`
   Valid JEDEC ID: `EF 40 17`

2. Read Status Register (`COMMAND = 2`)
   Send: `05 00`
   Read: `data_out[7:0]`

3. Read Data (`COMMAND = 3`)
   Send: `03 + 24-bit address + dummy data`
   Example: `03 00 10 00 00 00`
   Read: `data_out[15:0]`

4. Page Program (`COMMAND = 4`)
   Send `06` → Write Enable
   Send: `02 + 24-bit address + 2-byte data`
   Example: `02 00 10 00 10 70`
   Poll Status `05 00` until `BUSY = 0`
   Read back with `03` and verify data.

5. Sector Erase (`COMMAND = 5`)
   Send `06` → Write Enable
   Send: `20 + 24-bit address`
   Example: `20 00 10 00`
   Poll Status `05 00` until `BUSY = 0`
   Read back with `03` and verify `FFFF`.
**NOTE:** Erase before Page Program because Page Program can only change bits from `1` to `0`, not from `0` to `1`.