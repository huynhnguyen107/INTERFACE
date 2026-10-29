## 06 - CPRI Word 8B/10B Encoder

This module encodes one 128-bit CPRI word into a 160-bit 8B/10B word.

The 128-bit input contains 16 bytes:

```text
128 bits = 16 × 8-bit characters
```

Each byte is encoded using the 8B/10B encoder developed in Part 05:

```text
16 × 8 bits
      ↓
16 × 8B/10B Encoders
      ↓
16 × 10 bits
      ↓
160-bit encoded word
```

Running disparity is chained between the 16 encoders:

```text
rd_in
  ↓
Byte15
  ↓
Byte14
  ↓
...
  ↓
Byte0
  ↓
rd_out
```

Each byte also has a corresponding `k_char` bit to indicate normal data or a K-character.

The module provides:

```text
code_out[159:0]
rd_out
k_error[15: