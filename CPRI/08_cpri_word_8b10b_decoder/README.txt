## 08 - CPRI Word 8B/10B Decoder

This module decodes one 160-bit 8B/10B CPRI word back into the original 128-bit data word.

```text
160 bits = 16 × 10-bit encoded symbols
```

Each 10-bit symbol is decoded using the 8B/10B decoder developed in Part 07:

```text
16 × 10-bit
    ↓
16 × 8B/10B Decoders
    ↓
16 × 8-bit
    ↓
128-bit CPRI word
```

Running disparity is chained through all 16 decoders:

```text
rd_in
  ↓
Symbol15
  ↓
Symbol14
  ↓
...
  ↓
Symbol0
  ↓
rd_out
```

The decoder also reconstructs the K-character information for each byte.

Main outputs:

```text
data_out[127:0]
k_char[15:0]
rd_out
code_error[15:0]
disparity_error[15:0]
```

The module was verified using a full 128-bit → 160-bit → 128-bit encoder/decoder loopback with no decoding or disparity errors.