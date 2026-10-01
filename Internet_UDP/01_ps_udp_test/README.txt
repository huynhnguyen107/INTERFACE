socket()
   ↓
create UDP socket

bind()
   ↓
listen port 5005

recvfrom()
   ↓
wait for packet

print packet

sendto()
   ↓
echo packet back

repeat


Ethernet Header
 ├── Destination MAC = KR260 MAC
 └── Source MAC      = PC/router MAC

IP Header
 ├── Destination IP = 192.168.1.50
 └── Source IP      = PC

UDP Header
 ├── Destination Port = 5005
 ├── Source Port      = random client port
 └── Length

Payload
 └── "Hello KR260"