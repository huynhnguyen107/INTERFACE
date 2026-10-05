# aclk {FREQ_HZ 100000000 CLK_DOMAIN eth_mac_loopback_clk_wiz_0_0_clk_out1 PHASE 0.0}
# Clock Domain: eth_mac_loopback_clk_wiz_0_0_clk_out1
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
