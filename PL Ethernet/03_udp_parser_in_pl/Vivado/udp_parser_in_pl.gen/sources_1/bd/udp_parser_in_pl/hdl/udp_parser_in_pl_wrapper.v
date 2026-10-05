//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Oct  5 14:13:28 2026
//Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
//Command     : generate_target udp_parser_in_pl_wrapper.bd
//Design      : udp_parser_in_pl_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module udp_parser_in_pl_wrapper
   (clk25,
    mdio_rtl_mdc,
    mdio_rtl_mdio_io,
    reset_rtl,
    rgmii_rtl_rd,
    rgmii_rtl_rx_ctl,
    rgmii_rtl_rxc,
    rgmii_rtl_td,
    rgmii_rtl_tx_ctl,
    rgmii_rtl_txc);
  input clk25;
  output mdio_rtl_mdc;
  inout mdio_rtl_mdio_io;
  output [0:0]reset_rtl;
  input [3:0]rgmii_rtl_rd;
  input rgmii_rtl_rx_ctl;
  input rgmii_rtl_rxc;
  output [3:0]rgmii_rtl_td;
  output rgmii_rtl_tx_ctl;
  output rgmii_rtl_txc;

  wire clk25;
  wire mdio_rtl_mdc;
  wire mdio_rtl_mdio_i;
  wire mdio_rtl_mdio_io;
  wire mdio_rtl_mdio_o;
  wire mdio_rtl_mdio_t;
  wire [0:0]reset_rtl;
  wire [3:0]rgmii_rtl_rd;
  wire rgmii_rtl_rx_ctl;
  wire rgmii_rtl_rxc;
  wire [3:0]rgmii_rtl_td;
  wire rgmii_rtl_tx_ctl;
  wire rgmii_rtl_txc;

  IOBUF mdio_rtl_mdio_iobuf
       (.I(mdio_rtl_mdio_o),
        .IO(mdio_rtl_mdio_io),
        .O(mdio_rtl_mdio_i),
        .T(mdio_rtl_mdio_t));
  udp_parser_in_pl udp_parser_in_pl_i
       (.clk25(clk25),
        .mdio_rtl_mdc(mdio_rtl_mdc),
        .mdio_rtl_mdio_i(mdio_rtl_mdio_i),
        .mdio_rtl_mdio_o(mdio_rtl_mdio_o),
        .mdio_rtl_mdio_t(mdio_rtl_mdio_t),
        .reset_rtl(reset_rtl),
        .rgmii_rtl_rd(rgmii_rtl_rd),
        .rgmii_rtl_rx_ctl(rgmii_rtl_rx_ctl),
        .rgmii_rtl_rxc(rgmii_rtl_rxc),
        .rgmii_rtl_td(rgmii_rtl_td),
        .rgmii_rtl_tx_ctl(rgmii_rtl_tx_ctl),
        .rgmii_rtl_txc(rgmii_rtl_txc));
endmodule
