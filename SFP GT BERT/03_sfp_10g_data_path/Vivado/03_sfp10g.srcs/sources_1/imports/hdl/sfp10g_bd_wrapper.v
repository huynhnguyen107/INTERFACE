//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Oct 14 10:07:05 2026
//Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
//Command     : generate_target sfp10g_bd_wrapper.bd
//Design      : sfp10g_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sfp10g_bd_wrapper
   (clk_25mhz,
    gt_refclk_n,
    gt_refclk_p,
    gt_rxn_in,
    gt_rxp_in,
    gt_txn_out,
    gt_txp_out,
    sfp_tx_disable_o);
  input clk_25mhz;
  input gt_refclk_n;
  input gt_refclk_p;
  input gt_rxn_in;
  input gt_rxp_in;
  output [0:0]gt_txn_out;
  output [0:0]gt_txp_out;
  output [0:0]sfp_tx_disable_o;

  wire clk_25mhz;
  wire gt_refclk_n;
  wire gt_refclk_p;
  wire gt_rxn_in;
  wire gt_rxp_in;
  wire [0:0]gt_txn_out;
  wire [0:0]gt_txp_out;

  sfp10g_bd sfp10g_bd_i
       (.clk_25mhz(clk_25mhz),
        .gt_refclk_n(gt_refclk_n),
        .gt_refclk_p(gt_refclk_p),
        .gt_rxn_in(gt_rxn_in),
        .gt_rxp_in(gt_rxp_in),
        .gt_txn_out(gt_txn_out),
        .gt_txp_out(gt_txp_out));
    assign sfp_tx_disable_o = 1'b0;
endmodule
