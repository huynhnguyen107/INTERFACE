## 07 - CPRI 8B/10B Decoder
This module implements a combinational 8B/10B decoder for the CPRI link.
Each 10-bit symbol is divided into:
```text
code_in = abcdei fghj
```
The decoder performs:
```text
6B/5B Decoding
      ↓
EDCBA
      ↓
Running Disparity Update
      ↓
rd_mid
      ↓
4B/3B Decoding
      ↓
HGF
      ↓
Final Running Disparity
```
The original 8-bit character is reconstructed as:
```text
data_out = {HGF, EDCBA}
```
The decoder also detects K-characters such as `K28.5` and provides:
```text
k_out
code_error
disparity_error
```
Running disparity is tracked independently by the decoder:
```text
0 = RD-
1 = RD+
```
The decoder was verified using an encoder-decoder loopback:
```text
8-bit data
    ↓
8B/10B Encoder
    ↓
10-bit symbol
    ↓
8B/10B Decoder
    ↓
original 8-bit data
```