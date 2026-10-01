import socket
import struct

KR260_IP = "192.168.68.100"
PORT = 5005

# =========================================
# Create UDP socket
# =========================================

sock = socket.socket(
    socket.AF_INET,
    socket.SOCK_DGRAM
)

sock.settimeout(5)


# =========================================
# Prepare 16 x uint32_t
#
# 1, 2, 3, ... 16
# =========================================

tx_values = list(range(1, 17))

# "<16I"
#
# <   = little-endian
# 16  = 16 values
# I   = unsigned int 32-bit

tx_data = struct.pack(
    "<16I",
    *tx_values
)


print("TX values:")

for i, value in enumerate(tx_values):
    print(f"TX[{i:02d}] = {value}")


print()
print("TX bytes =", len(tx_data))


# =========================================
# Send UDP packet to KR260
# =========================================

sock.sendto(
    tx_data,
    (KR260_IP, PORT)
)

print(
    f"Sent {len(tx_data)} bytes "
    f"to {KR260_IP}:{PORT}"
)


# =========================================
# Receive processed data from KR260
# =========================================

try:

    rx_data, addr = sock.recvfrom(1024)

except socket.timeout:

    print("ERROR: Timeout waiting for KR260")

    sock.close()

    exit(1)


print()
print("RX from:", addr)
print("RX bytes =", len(rx_data))


# =========================================
# Check packet size
# =========================================

if len(rx_data) % 4 != 0:

    print("ERROR: RX size is not multiple of 4 bytes")

    sock.close()

    exit(1)


# =========================================
# Convert bytes -> uint32_t
# =========================================

word_count = len(rx_data) // 4

rx_values = struct.unpack(
    f"<{word_count}I",
    rx_data
)


print()
print("RX values:")

for i, value in enumerate(rx_values):
    print(
        f"RX[{i:02d}] = {value} "
        f"(0x{value:08X})"
    )


# =========================================
# Compare TX / RX
# =========================================

print()

if list(rx_values) == tx_values:

    print("====================")
    print(" UDP + DMA LOOPBACK PASS")
    print("====================")

else:

    print("====================")
    print(" DATA CHANGED")
    print("====================")


sock.close()