# KR260 BMP280 Temperature Measurement

## Project Description

This project reads and calculates temperature from a BMP280 sensor using the previously implemented generic I2C Master.

The temperature measurement consists of three main steps:

1. Read the temperature calibration coefficients.
2. Read the raw temperature data.
3. Apply the BMP280 temperature compensation formula.

The calibration coefficients are combined in little-endian format:

```text
dig_T1 = {0x89, 0x88} = 0x6F96
dig_T2 = {0x8B, 0x8A} = 0x6579
dig_T3 = {0x8D, 0x8C} = 0x0032
```

The 20-bit raw temperature value is:

```text
adc_T = {temp_msb, temp_lsb, temp_xlsb[7:4]}
```
The integer compensation equations are:

```text
var1 =
((((adc_T >> 3) - (dig_T1 << 1))
  * dig_T2) >> 11)

var2 =
(((((adc_T >> 4) - dig_T1)
   * ((adc_T >> 4) - dig_T1)) >> 12)
   * dig_T3) >> 14)

t_fine = var1 + var2

temperature_x100 =
(t_fine * 5 + 128) >> 8
```

Hardware result:

```text
temperature_x100 = 2765
Temperature = 27.65 °C
```