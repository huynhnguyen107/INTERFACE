## 01 - CPRI Frame Generator

This module implements a simplified CPRI Option 7 frame generator for learning and simulation.

The frame structure is organized as:

- 150 Hyperframes per 10 ms CPRI frame (`Z = 0...149`)
- 256 Basic Frames per Hyperframe (`X = 0...255`)
- 16 Words per Basic Frame (`W = 0...15`)
- 128 bits per Word

`W=0` is used as a control word, while `W=1...15` carry IQ user-plane data.

For testing, each 128-bit IQ word contains four complex samples:

```text
1 sample = I[15:0] + Q[15:0] = 32 bits
4 samples = 128 bits
The test pattern
I = sample_counter
Q = ~I