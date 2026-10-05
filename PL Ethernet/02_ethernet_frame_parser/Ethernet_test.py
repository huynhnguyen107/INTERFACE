from scapy.all import *
import time

IFACE = "Ethernet"

src_mac = get_if_hwaddr(IFACE)

pkt = (
    Ether(
        dst="ff:ff:ff:ff:ff:ff",
        src=src_mac,
        type=0x88B5
    )
    /
    Raw(load=b"HELLO_KR260_PL_ETHERNET")
)

print("TX:")
pkt.show()

sendp(
    pkt,
    iface=IFACE,
    verbose=False
)

print("Frame sent")