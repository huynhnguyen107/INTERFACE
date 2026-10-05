# 25 MHz board clock
#oscilator for BANK A
set_property PACKAGE_PIN C3 [get_ports clk25] 
set_property IOSTANDARD LVCMOS18 [get_ports clk25]
create_clock -name clk25 -period 40.000 [get_ports clk25]

# =========================================================
# KR260 J10B - PL Ethernet / RGMII
# =========================================================

# ---------- TX ----------

set_property PACKAGE_PIN F1 [get_ports rgmii_rtl_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rtl_tx_ctl]

set_property PACKAGE_PIN A2 [get_ports rgmii_rtl_txc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rtl_txc]

set_property PACKAGE_PIN E1 [get_ports {rgmii_rtl_td[0]}]
set_property PACKAGE_PIN D1 [get_ports {rgmii_rtl_td[1]}]
set_property PACKAGE_PIN F2 [get_ports {rgmii_rtl_td[2]}]
set_property PACKAGE_PIN E2 [get_ports {rgmii_rtl_td[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rtl_td[*]}]


# ---------- RX ----------

set_property PACKAGE_PIN A4 [get_ports rgmii_rtl_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rtl_rx_ctl]

set_property PACKAGE_PIN D4 [get_ports rgmii_rtl_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rtl_rxc]

set_property PACKAGE_PIN A1 [get_ports {rgmii_rtl_rd[0]}]
set_property PACKAGE_PIN B3 [get_ports {rgmii_rtl_rd[1]}]
set_property PACKAGE_PIN A3 [get_ports {rgmii_rtl_rd[2]}]
set_property PACKAGE_PIN B4 [get_ports {rgmii_rtl_rd[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rtl_rd[*]}]


# =========================================================
# MDIO / MDC
# =========================================================

set_property PACKAGE_PIN F3 [get_ports mdio_rtl_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_rtl_mdio_io]

set_property PACKAGE_PIN G3 [get_ports mdio_rtl_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_rtl_mdc]


# =========================================================
# PHY reset
# =========================================================

set_property PACKAGE_PIN B1 [get_ports reset_rtl]
set_property IOSTANDARD LVCMOS18 [get_ports reset_rtl]