// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:14:20 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ udp_parser_in_pl_udp_parser_0_0_stub.v
// Design      : udp_parser_in_pl_udp_parser_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "udp_parser,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_tdata, s_axis_tkeep, 
  s_axis_tvalid, s_axis_tready, s_axis_tlast, m_axis_tdata, m_axis_tkeep, m_axis_tvalid, 
  m_axis_tready, m_axis_tlast, dst_mac, src_mac, ethertype, src_ip, dst_ip, ip_protocol, 
  udp_src_port, udp_dst_port, udp_length, eth_header_valid, ip_header_valid, 
  udp_header_valid, frame_done)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,dst_mac[47:0],src_mac[47:0],ethertype[15:0],src_ip[31:0],dst_ip[31:0],ip_protocol[7:0],udp_src_port[15:0],udp_dst_port[15:0],udp_length[15:0],eth_header_valid,ip_header_valid,udp_header_valid,frame_done" */;
  input aclk;
  input aresetn;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [47:0]dst_mac;
  output [47:0]src_mac;
  output [15:0]ethertype;
  output [31:0]src_ip;
  output [31:0]dst_ip;
  output [7:0]ip_protocol;
  output [15:0]udp_src_port;
  output [15:0]udp_dst_port;
  output [15:0]udp_length;
  output eth_header_valid;
  output ip_header_valid;
  output udp_header_valid;
  output frame_done;
endmodule
