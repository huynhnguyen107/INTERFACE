# KR260 I2C Master – BMP280 Read Chip ID

## Project Description

This project implements an I2C Master in Verilog on the AMD Kria KR260.

The FPGA communicates with a BMP280 sensor using I2C and reads the Chip ID register.

Expected Chip ID:

`0x58`

## I2C Configuration

- BMP280 I2C Address: `0x76`
- Chip ID Register: `0xD0`
- Expected Chip ID: `0x58`
- SDA and SCL use open-drain operation.

## Read Chip ID Flow

```text
START
0xEC + ACK          // BMP280 Address + Write
0xD0 + ACK          // Chip ID Register
REPEATED START
0xED + ACK          // BMP280 Address + Read
0x58 + NACK         // Read Chip ID
STOP

//IMPORTANT NOTE
START:
SDA: 1 → 0 while SCL is already HIGH.

STOP:
SDA: 0 → 1 while SCL is already HIGH.

END OF EACH BIT / ACK:
SCL must return from HIGH → LOW before starting the next operation.

RECEIVE ACK/NACK:
Master releases SDA.
SDA = 0 → ACK
SDA = 1 → NACK

OPEN-DRAIN:
FPGA only drives LOW or releases the line (Z).
The pull-up resistor creates the HIGH level.

PHASE:
Use phase 0/1 to control the LOW and HIGH periods of SCL
and determine when SDA is updated or sampled.