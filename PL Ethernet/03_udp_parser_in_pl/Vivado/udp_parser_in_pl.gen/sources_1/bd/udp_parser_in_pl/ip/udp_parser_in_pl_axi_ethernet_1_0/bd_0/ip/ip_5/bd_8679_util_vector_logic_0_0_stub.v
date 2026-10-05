// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:12:53 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/FPGA/Vivaldo Project/INTERFACE/PL
//               Ethernet/03_udp_parser_in_pl/Vivado/udp_parser_in_pl.gen/sources_1/bd/udp_parser_in_pl/ip/udp_parser_in_pl_axi_ethernet_1_0/bd_0/ip/ip_5/bd_8679_util_vector_logic_0_0_stub.v}
// Design      : bd_8679_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2" *)
module bd_8679_util_vector_logic_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
