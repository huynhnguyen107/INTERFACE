## 02 - CPRI Frame Receiver

This module implements a simplified CPRI frame receiver.

The receiver takes a continuous 128-bit word stream and searches for the `0xBC` synchronization marker.

After synchronization, it internally reconstructs the CPRI frame position:

- Word index (`W = 0...15`)
- Basic frame index (`X = 0...255`)
- Hyperframe index (`Z = 0...149`)

For `W=1...15`, the receiver extracts four complex IQ samples from each 128-bit word:

```text
IQ sample 0 = {Q0[15:0], I0[15:0]}
IQ sample 1 = {Q1[15:0], I1[15:0]}
IQ sample 2 = {Q2[15:0], I2[15:0]}
IQ sample 3 = {Q3[15:0], I3[15:0]}
The receiver also provides:
sync_locked
iq_valid
frame_error_count