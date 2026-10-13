frame_generator
       │
       │ 60-byte frame
       ▼
TX AXIS
       ▼
MAC
 ├─ adds standard preamble/SFD
 ├─ adds FCS
 └─ adds proper IPG
       ▼
PCS
 ├─ 64b/66b encode
 └─ scramble
       ▼
GTH
       ▼
10.3125 Gb/s
       ▼
SFP → fiber loopback → SFP
       ▼
GTH RX
       ▼
PCS
 ├─ block sync
 ├─ descramble
 └─ 64b/66b decode
       ▼
MAC RX
 ├─ verify preamble
 ├─ verify FCS
 └─ delete FCS
       ▼
RX AXIS
       ▼
frame_checker