## 05 - CPRI 8B/10B Encoder

This module implements a full combinational 8B/10B encoder for the CPRI link.

Each 8-bit input character is divided into two fields:

```text
data_in = HGF EDCBA

EDCBA = lower 5 bits
HGF   = upper 3 bits
```
The encoder performs:
```text
EDCBA
  ↓
5B/6B Encoding
  ↓
code_6b
  ↓
Running Disparity Update
  ↓
rd_mid
  ↓
3B/4B Encoding
  ↓
code_4b
  ↓
Final Running Disparity Update
  ↓
rd_out
```

The final 10-bit encoded symbol is:

```text
code_out = {code_6b, code_4b}
         = {abcdei, fghj}
```
Running disparity is represented as:
```text
rd = 0 → RD-
rd = 1 → RD+
```
The encoder supports both normal data characters and valid 8B/10B K-characters.

For example, `0xBC` with `k_in=1` represents the CPRI synchronization character `K28.5`:
```text
K28.5 with RD- → 0011111010
K28.5 with RD+ → 1100000101
```
The same `0xBC` value with `k_in=0` is treated as normal data (`D28.5`) and therefore uses a different encoding.

The encoder also implements Alternate-7 encoding for selected `D.x.7` characters to prevent long runs of identical bits and false comma patterns.

If `k_in=1` with an invalid K-character, the module asserts:

```text
k_error = 1
```
The complete encoder is purely combinational, so `code_out`, `rd_out`, and `k_error` update continuously whenever `data_in`, `k_in`, or `rd_in` changes.