import socket

KR260_IP = "192.168.68.100"
PORT = 5005

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.settimeout(2)

data = b"Hello KR260"

sock.sendto(data, (KR260_IP, PORT))

rx, addr = sock.recvfrom(1024)

print("RX:", rx.decode())
print("From:", addr)

sock.close()