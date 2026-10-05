from scapy.all import *

IFACE = "Ethernet"

src_mac = get_if_hwaddr(IFACE)

pkt = (
    Ether(
        dst="ff:ff:ff:ff:ff:ff",
        src=src_mac
    )
    /
    IP(
        src="192.168.10.1",
        dst="192.168.10.2"
    )
    /
    UDP(
        sport=4000,
        dport=5005
    )
    /
    Raw(load=b"HELLO_UDP_FPGA")
)

pkt.show()
sendp(pkt, iface=IFACE, verbose=False)