# KR260 I2C Master – BMP280 Read/Write Register

## Project Description

This project implements a generic I2C Master in Verilog on the AMD Kria KR260.

The FPGA communicates with a BMP280 sensor using I2C and supports reading and writing registers.

BMP280 I2C address:

`0x76`

### ctrl_meas Register

Register address:

`0xF4`

```text
bit 7 6 5 | bit 4 3 2 | bit 1 0
----------+-----------+--------
  osrs_t  |   osrs_p  |  mode
osrs_t: temperature oversampling
	001 = x1
osrs_p: pressure oversampling
	001 = x1
mode:
	11 = Normal mode
	
Write 0x27 to register 0xF4.
START
0xEC + ACK          // BMP280 Address + Write
0xF4 + ACK          // ctrl_meas Register
0x27 + ACK          // Write value 0x27
STOP


Read register 0xF4 to verify the written value.
START
0xEC + ACK          // BMP280 Address + Write
0xF4 + ACK          // ctrl_meas Register
REPEATED START
0xED + ACK          // BMP280 Address + Read
0x27 + NACK         // Expected read value
STOP



-------------------------------
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
Phase 0/1 is used to control the LOW and HIGH periods of SCL
and determine when SDA is updated or sampled.