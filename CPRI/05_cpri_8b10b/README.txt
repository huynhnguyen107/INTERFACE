## 04 - CPRI Control Word Generator

This module implements a simplified CPRI control-word generator.

Each Hyperframe contains 256 control words (`W=0`), organized into 64 subchannels with four control-word positions:

```text
Ns = X mod 64
Xs = X / 64
For synchronization subchannel Ns=0, the module generates:
X = 0   (Xs=0) → K28.5 synchronization byte (0xBC)
X = 64  (Xs=1) → Hyperframe Number (HFN / Z)
X = 128 (Xs=2) → BFN[7:0]
X = 192 (Xs=3) → BFN[11:8]
BFN is the 12-bit CPRI 10-ms frame number.
The k_char output indicates whether a byte must be treated as an 8B/10B K-character. For the synchronization byte:
control_word[127:120] = 0xBC
k_char[15]            = 1