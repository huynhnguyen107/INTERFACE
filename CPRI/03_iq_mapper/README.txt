## 03 - CPRI IQ Mapper / Demapper

This module implements a simple IQ mapper and demapper for the CPRI user-plane data.

The mapper combines four complex IQ samples into one 128-bit CPRI IQ word.

Each complex sample contains:

```text
I[15:0] + Q[15:0] = 32 bits
4 complex IQ samples × 32 bits = 128 bits
The IQ word format is:
[127:96] = {Q3[15:0], I3[15:0]}
[95:64]  = {Q2[15:0], I2[15:0]}
[63:32]  = {Q1[15:0], I1[15:0]}
[31:0]   = {Q0[15:0], I0[15:0]}
