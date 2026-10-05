################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk25 -period 40 [get_ports clk25]
create_clock -name rgmii_rtl_rxc -period 10 [get_ports rgmii_rtl_rxc]

################################################################################