// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:13:04 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/FPGA/Vivaldo Project/INTERFACE/PL
//               Ethernet/03_udp_parser_in_pl/Vivado/udp_parser_in_pl.gen/sources_1/bd/udp_parser_in_pl/ip/udp_parser_in_pl_axi_ethernet_1_0/bd_0/ip/ip_3/bd_8679_c_counter_binary_0_0_stub.v}
// Design      : bd_8679_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *)
module bd_8679_c_counter_binary_0_0(CLK, SCLR, THRESH0, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,SCLR,THRESH0,Q[23:0]" */;
  input CLK;
  input SCLR;
  output THRESH0;
  output [23:0]Q;
endmodule
