// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Oct  5 14:15:09 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ udp_parser_in_pl_udp_parser_0_0_sim_netlist.v
// Design      : udp_parser_in_pl_udp_parser_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser
   (dst_mac,
    src_mac,
    ethertype,
    src_ip,
    dst_ip,
    ip_protocol,
    udp_src_port,
    udp_dst_port,
    udp_length,
    eth_header_valid,
    ip_header_valid,
    udp_header_valid,
    frame_done,
    s_axis_tdata,
    aclk,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    aresetn);
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
  input [31:0]s_axis_tdata;
  input aclk;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [31:0]dst_ip;
  wire \dst_ip[15]_i_1_n_0 ;
  wire [47:0]dst_mac;
  wire \dst_mac[15]_i_1_n_0 ;
  wire \dst_mac[47]_i_2_n_0 ;
  wire \dst_mac[47]_i_3_n_0 ;
  wire \dst_mac[47]_i_4_n_0 ;
  wire \dst_mac[47]_i_5_n_0 ;
  wire eth_header_valid;
  wire eth_header_valid2_out;
  wire eth_header_valid_i_2_n_0;
  wire [15:0]ethertype;
  wire \ethertype[15]_i_1_n_0 ;
  wire frame_done;
  wire frame_done_i_1_n_0;
  wire ip_header_valid;
  wire ip_header_valid_i_1_n_0;
  wire [7:0]ip_protocol;
  wire \ip_protocol[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire p_0_in;
  wire [15:0]p_0_in__0;
  wire [15:0]p_1_in;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [31:0]src_ip;
  wire \src_ip[15]_i_1_n_0 ;
  wire \src_ip[31]_i_1_n_0 ;
  wire [47:0]src_mac;
  wire \src_mac[31]_i_1_n_0 ;
  wire [15:0]udp_dst_port;
  wire \udp_dst_port[15]_i_1_n_0 ;
  wire udp_header_valid;
  wire udp_header_valid0;
  wire [15:0]udp_length;
  wire [15:0]udp_src_port;
  wire \udp_src_port[0]_i_1_n_0 ;
  wire \udp_src_port[10]_i_1_n_0 ;
  wire \udp_src_port[11]_i_1_n_0 ;
  wire \udp_src_port[12]_i_1_n_0 ;
  wire \udp_src_port[13]_i_1_n_0 ;
  wire \udp_src_port[14]_i_1_n_0 ;
  wire \udp_src_port[15]_i_1_n_0 ;
  wire \udp_src_port[15]_i_2_n_0 ;
  wire \udp_src_port[15]_i_3_n_0 ;
  wire \udp_src_port[15]_i_4_n_0 ;
  wire \udp_src_port[15]_i_5_n_0 ;
  wire \udp_src_port[15]_i_6_n_0 ;
  wire \udp_src_port[15]_i_7_n_0 ;
  wire \udp_src_port[15]_i_8_n_0 ;
  wire \udp_src_port[1]_i_1_n_0 ;
  wire \udp_src_port[2]_i_1_n_0 ;
  wire \udp_src_port[3]_i_1_n_0 ;
  wire \udp_src_port[4]_i_1_n_0 ;
  wire \udp_src_port[5]_i_1_n_0 ;
  wire \udp_src_port[6]_i_1_n_0 ;
  wire \udp_src_port[7]_i_1_n_0 ;
  wire \udp_src_port[8]_i_1_n_0 ;
  wire \udp_src_port[9]_i_1_n_0 ;
  wire word_count0;
  wire word_count0_carry__0_n_2;
  wire word_count0_carry__0_n_3;
  wire word_count0_carry__0_n_4;
  wire word_count0_carry__0_n_5;
  wire word_count0_carry__0_n_6;
  wire word_count0_carry__0_n_7;
  wire word_count0_carry_n_0;
  wire word_count0_carry_n_1;
  wire word_count0_carry_n_2;
  wire word_count0_carry_n_3;
  wire word_count0_carry_n_4;
  wire word_count0_carry_n_5;
  wire word_count0_carry_n_6;
  wire word_count0_carry_n_7;
  wire \word_count[15]_i_1_n_0 ;
  wire [15:0]word_count_reg;
  wire [7:6]NLW_word_count0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_word_count0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \dst_ip[15]_i_1 
       (.I0(word_count_reg[0]),
        .I1(word_count_reg[3]),
        .I2(word_count_reg[1]),
        .I3(word_count0),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .I5(word_count_reg[2]),
        .O(\dst_ip[15]_i_1_n_0 ));
  FDRE \dst_ip_reg[0] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(dst_ip[0]),
        .R(p_0_in));
  FDRE \dst_ip_reg[10] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(dst_ip[10]),
        .R(p_0_in));
  FDRE \dst_ip_reg[11] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(dst_ip[11]),
        .R(p_0_in));
  FDRE \dst_ip_reg[12] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(dst_ip[12]),
        .R(p_0_in));
  FDRE \dst_ip_reg[13] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(dst_ip[13]),
        .R(p_0_in));
  FDRE \dst_ip_reg[14] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(dst_ip[14]),
        .R(p_0_in));
  FDRE \dst_ip_reg[15] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(dst_ip[15]),
        .R(p_0_in));
  FDRE \dst_ip_reg[16] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(dst_ip[16]),
        .R(p_0_in));
  FDRE \dst_ip_reg[17] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(dst_ip[17]),
        .R(p_0_in));
  FDRE \dst_ip_reg[18] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(dst_ip[18]),
        .R(p_0_in));
  FDRE \dst_ip_reg[19] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(dst_ip[19]),
        .R(p_0_in));
  FDRE \dst_ip_reg[1] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(dst_ip[1]),
        .R(p_0_in));
  FDRE \dst_ip_reg[20] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(dst_ip[20]),
        .R(p_0_in));
  FDRE \dst_ip_reg[21] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(dst_ip[21]),
        .R(p_0_in));
  FDRE \dst_ip_reg[22] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(dst_ip[22]),
        .R(p_0_in));
  FDRE \dst_ip_reg[23] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(dst_ip[23]),
        .R(p_0_in));
  FDRE \dst_ip_reg[24] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(dst_ip[24]),
        .R(p_0_in));
  FDRE \dst_ip_reg[25] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(dst_ip[25]),
        .R(p_0_in));
  FDRE \dst_ip_reg[26] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(dst_ip[26]),
        .R(p_0_in));
  FDRE \dst_ip_reg[27] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(dst_ip[27]),
        .R(p_0_in));
  FDRE \dst_ip_reg[28] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(dst_ip[28]),
        .R(p_0_in));
  FDRE \dst_ip_reg[29] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(dst_ip[29]),
        .R(p_0_in));
  FDRE \dst_ip_reg[2] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(dst_ip[2]),
        .R(p_0_in));
  FDRE \dst_ip_reg[30] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(dst_ip[30]),
        .R(p_0_in));
  FDRE \dst_ip_reg[31] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(dst_ip[31]),
        .R(p_0_in));
  FDRE \dst_ip_reg[3] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(dst_ip[3]),
        .R(p_0_in));
  FDRE \dst_ip_reg[4] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(dst_ip[4]),
        .R(p_0_in));
  FDRE \dst_ip_reg[5] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(dst_ip[5]),
        .R(p_0_in));
  FDRE \dst_ip_reg[6] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(dst_ip[6]),
        .R(p_0_in));
  FDRE \dst_ip_reg[7] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(dst_ip[7]),
        .R(p_0_in));
  FDRE \dst_ip_reg[8] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(dst_ip[8]),
        .R(p_0_in));
  FDRE \dst_ip_reg[9] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(dst_ip[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \dst_mac[15]_i_1 
       (.I0(word_count_reg[1]),
        .I1(word_count0),
        .I2(\dst_mac[47]_i_3_n_0 ),
        .I3(word_count_reg[2]),
        .I4(word_count_reg[3]),
        .I5(word_count_reg[0]),
        .O(\dst_mac[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dst_mac[47]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \dst_mac[47]_i_2 
       (.I0(word_count_reg[3]),
        .I1(word_count_reg[0]),
        .I2(word_count_reg[1]),
        .I3(word_count0),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .I5(word_count_reg[2]),
        .O(\dst_mac[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \dst_mac[47]_i_3 
       (.I0(\dst_mac[47]_i_4_n_0 ),
        .I1(word_count_reg[7]),
        .I2(word_count_reg[6]),
        .I3(word_count_reg[5]),
        .I4(word_count_reg[4]),
        .I5(\dst_mac[47]_i_5_n_0 ),
        .O(\dst_mac[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \dst_mac[47]_i_4 
       (.I0(word_count_reg[11]),
        .I1(word_count_reg[10]),
        .I2(word_count_reg[9]),
        .I3(word_count_reg[8]),
        .O(\dst_mac[47]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \dst_mac[47]_i_5 
       (.I0(word_count_reg[15]),
        .I1(word_count_reg[14]),
        .I2(word_count_reg[13]),
        .I3(word_count_reg[12]),
        .O(\dst_mac[47]_i_5_n_0 ));
  FDRE \dst_mac_reg[0] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(dst_mac[0]),
        .R(p_0_in));
  FDRE \dst_mac_reg[10] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(dst_mac[10]),
        .R(p_0_in));
  FDRE \dst_mac_reg[11] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(dst_mac[11]),
        .R(p_0_in));
  FDRE \dst_mac_reg[12] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(dst_mac[12]),
        .R(p_0_in));
  FDRE \dst_mac_reg[13] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(dst_mac[13]),
        .R(p_0_in));
  FDRE \dst_mac_reg[14] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(dst_mac[14]),
        .R(p_0_in));
  FDRE \dst_mac_reg[15] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(dst_mac[15]),
        .R(p_0_in));
  FDRE \dst_mac_reg[16] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(dst_mac[16]),
        .R(p_0_in));
  FDRE \dst_mac_reg[17] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(dst_mac[17]),
        .R(p_0_in));
  FDRE \dst_mac_reg[18] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(dst_mac[18]),
        .R(p_0_in));
  FDRE \dst_mac_reg[19] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(dst_mac[19]),
        .R(p_0_in));
  FDRE \dst_mac_reg[1] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(dst_mac[1]),
        .R(p_0_in));
  FDRE \dst_mac_reg[20] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(dst_mac[20]),
        .R(p_0_in));
  FDRE \dst_mac_reg[21] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(dst_mac[21]),
        .R(p_0_in));
  FDRE \dst_mac_reg[22] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(dst_mac[22]),
        .R(p_0_in));
  FDRE \dst_mac_reg[23] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(dst_mac[23]),
        .R(p_0_in));
  FDRE \dst_mac_reg[24] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(dst_mac[24]),
        .R(p_0_in));
  FDRE \dst_mac_reg[25] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(dst_mac[25]),
        .R(p_0_in));
  FDRE \dst_mac_reg[26] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(dst_mac[26]),
        .R(p_0_in));
  FDRE \dst_mac_reg[27] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(dst_mac[27]),
        .R(p_0_in));
  FDRE \dst_mac_reg[28] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(dst_mac[28]),
        .R(p_0_in));
  FDRE \dst_mac_reg[29] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(dst_mac[29]),
        .R(p_0_in));
  FDRE \dst_mac_reg[2] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(dst_mac[2]),
        .R(p_0_in));
  FDRE \dst_mac_reg[30] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(dst_mac[30]),
        .R(p_0_in));
  FDRE \dst_mac_reg[31] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(dst_mac[31]),
        .R(p_0_in));
  FDRE \dst_mac_reg[32] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(dst_mac[32]),
        .R(p_0_in));
  FDRE \dst_mac_reg[33] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(dst_mac[33]),
        .R(p_0_in));
  FDRE \dst_mac_reg[34] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(dst_mac[34]),
        .R(p_0_in));
  FDRE \dst_mac_reg[35] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(dst_mac[35]),
        .R(p_0_in));
  FDRE \dst_mac_reg[36] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(dst_mac[36]),
        .R(p_0_in));
  FDRE \dst_mac_reg[37] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(dst_mac[37]),
        .R(p_0_in));
  FDRE \dst_mac_reg[38] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(dst_mac[38]),
        .R(p_0_in));
  FDRE \dst_mac_reg[39] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(dst_mac[39]),
        .R(p_0_in));
  FDRE \dst_mac_reg[3] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(dst_mac[3]),
        .R(p_0_in));
  FDRE \dst_mac_reg[40] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(dst_mac[40]),
        .R(p_0_in));
  FDRE \dst_mac_reg[41] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(dst_mac[41]),
        .R(p_0_in));
  FDRE \dst_mac_reg[42] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(dst_mac[42]),
        .R(p_0_in));
  FDRE \dst_mac_reg[43] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(dst_mac[43]),
        .R(p_0_in));
  FDRE \dst_mac_reg[44] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(dst_mac[44]),
        .R(p_0_in));
  FDRE \dst_mac_reg[45] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(dst_mac[45]),
        .R(p_0_in));
  FDRE \dst_mac_reg[46] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(dst_mac[46]),
        .R(p_0_in));
  FDRE \dst_mac_reg[47] 
       (.C(aclk),
        .CE(\dst_mac[47]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(dst_mac[47]),
        .R(p_0_in));
  FDRE \dst_mac_reg[4] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(dst_mac[4]),
        .R(p_0_in));
  FDRE \dst_mac_reg[5] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(dst_mac[5]),
        .R(p_0_in));
  FDRE \dst_mac_reg[6] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(dst_mac[6]),
        .R(p_0_in));
  FDRE \dst_mac_reg[7] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(dst_mac[7]),
        .R(p_0_in));
  FDRE \dst_mac_reg[8] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(dst_mac[8]),
        .R(p_0_in));
  FDRE \dst_mac_reg[9] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(dst_mac[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    eth_header_valid_i_1
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .O(eth_header_valid2_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    eth_header_valid_i_2
       (.I0(word_count_reg[0]),
        .I1(word_count_reg[3]),
        .I2(word_count_reg[1]),
        .I3(word_count_reg[2]),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .O(eth_header_valid_i_2_n_0));
  FDRE eth_header_valid_reg
       (.C(aclk),
        .CE(eth_header_valid2_out),
        .D(eth_header_valid_i_2_n_0),
        .Q(eth_header_valid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \ethertype[15]_i_1 
       (.I0(word_count_reg[1]),
        .I1(word_count_reg[0]),
        .I2(word_count_reg[3]),
        .I3(word_count_reg[2]),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .I5(word_count0),
        .O(\ethertype[15]_i_1_n_0 ));
  FDRE \ethertype_reg[0] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(ethertype[0]),
        .R(p_0_in));
  FDRE \ethertype_reg[10] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(ethertype[10]),
        .R(p_0_in));
  FDRE \ethertype_reg[11] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(ethertype[11]),
        .R(p_0_in));
  FDRE \ethertype_reg[12] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(ethertype[12]),
        .R(p_0_in));
  FDRE \ethertype_reg[13] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(ethertype[13]),
        .R(p_0_in));
  FDRE \ethertype_reg[14] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(ethertype[14]),
        .R(p_0_in));
  FDRE \ethertype_reg[15] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(ethertype[15]),
        .R(p_0_in));
  FDRE \ethertype_reg[1] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(ethertype[1]),
        .R(p_0_in));
  FDRE \ethertype_reg[2] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(ethertype[2]),
        .R(p_0_in));
  FDRE \ethertype_reg[3] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(ethertype[3]),
        .R(p_0_in));
  FDRE \ethertype_reg[4] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(ethertype[4]),
        .R(p_0_in));
  FDRE \ethertype_reg[5] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(ethertype[5]),
        .R(p_0_in));
  FDRE \ethertype_reg[6] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(ethertype[6]),
        .R(p_0_in));
  FDRE \ethertype_reg[7] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(ethertype[7]),
        .R(p_0_in));
  FDRE \ethertype_reg[8] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(ethertype[8]),
        .R(p_0_in));
  FDRE \ethertype_reg[9] 
       (.C(aclk),
        .CE(\ethertype[15]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(ethertype[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    frame_done_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(aresetn),
        .O(frame_done_i_1_n_0));
  FDRE frame_done_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_done_i_1_n_0),
        .Q(frame_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    ip_header_valid_i_1
       (.I0(word_count_reg[3]),
        .I1(word_count_reg[0]),
        .I2(word_count_reg[1]),
        .I3(word_count_reg[2]),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .O(ip_header_valid_i_1_n_0));
  FDRE ip_header_valid_reg
       (.C(aclk),
        .CE(eth_header_valid2_out),
        .D(ip_header_valid_i_1_n_0),
        .Q(ip_header_valid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \ip_protocol[7]_i_1 
       (.I0(word_count_reg[0]),
        .I1(word_count_reg[3]),
        .I2(word_count_reg[2]),
        .I3(word_count_reg[1]),
        .I4(word_count0),
        .I5(\dst_mac[47]_i_3_n_0 ),
        .O(\ip_protocol[7]_i_1_n_0 ));
  FDRE \ip_protocol_reg[0] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(ip_protocol[0]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[1] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(ip_protocol[1]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[2] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(ip_protocol[2]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[3] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(ip_protocol[3]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[4] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(ip_protocol[4]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[5] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(ip_protocol[5]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[6] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(ip_protocol[6]),
        .R(p_0_in));
  FDRE \ip_protocol_reg[7] 
       (.C(aclk),
        .CE(\ip_protocol[7]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(ip_protocol[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \src_ip[15]_i_1 
       (.I0(word_count_reg[0]),
        .I1(word_count_reg[3]),
        .I2(word_count_reg[1]),
        .I3(word_count_reg[2]),
        .I4(word_count0),
        .I5(\dst_mac[47]_i_3_n_0 ),
        .O(\src_ip[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \src_ip[31]_i_1 
       (.I0(word_count_reg[2]),
        .I1(word_count_reg[3]),
        .I2(word_count_reg[1]),
        .I3(word_count_reg[0]),
        .I4(word_count0),
        .I5(\dst_mac[47]_i_3_n_0 ),
        .O(\src_ip[31]_i_1_n_0 ));
  FDRE \src_ip_reg[0] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(src_ip[0]),
        .R(p_0_in));
  FDRE \src_ip_reg[10] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(src_ip[10]),
        .R(p_0_in));
  FDRE \src_ip_reg[11] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(src_ip[11]),
        .R(p_0_in));
  FDRE \src_ip_reg[12] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(src_ip[12]),
        .R(p_0_in));
  FDRE \src_ip_reg[13] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(src_ip[13]),
        .R(p_0_in));
  FDRE \src_ip_reg[14] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(src_ip[14]),
        .R(p_0_in));
  FDRE \src_ip_reg[15] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(src_ip[15]),
        .R(p_0_in));
  FDRE \src_ip_reg[16] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(src_ip[16]),
        .R(p_0_in));
  FDRE \src_ip_reg[17] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(src_ip[17]),
        .R(p_0_in));
  FDRE \src_ip_reg[18] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(src_ip[18]),
        .R(p_0_in));
  FDRE \src_ip_reg[19] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(src_ip[19]),
        .R(p_0_in));
  FDRE \src_ip_reg[1] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(src_ip[1]),
        .R(p_0_in));
  FDRE \src_ip_reg[20] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(src_ip[20]),
        .R(p_0_in));
  FDRE \src_ip_reg[21] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(src_ip[21]),
        .R(p_0_in));
  FDRE \src_ip_reg[22] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(src_ip[22]),
        .R(p_0_in));
  FDRE \src_ip_reg[23] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(src_ip[23]),
        .R(p_0_in));
  FDRE \src_ip_reg[24] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(src_ip[24]),
        .R(p_0_in));
  FDRE \src_ip_reg[25] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(src_ip[25]),
        .R(p_0_in));
  FDRE \src_ip_reg[26] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(src_ip[26]),
        .R(p_0_in));
  FDRE \src_ip_reg[27] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(src_ip[27]),
        .R(p_0_in));
  FDRE \src_ip_reg[28] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(src_ip[28]),
        .R(p_0_in));
  FDRE \src_ip_reg[29] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(src_ip[29]),
        .R(p_0_in));
  FDRE \src_ip_reg[2] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(src_ip[2]),
        .R(p_0_in));
  FDRE \src_ip_reg[30] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(src_ip[30]),
        .R(p_0_in));
  FDRE \src_ip_reg[31] 
       (.C(aclk),
        .CE(\src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(src_ip[31]),
        .R(p_0_in));
  FDRE \src_ip_reg[3] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(src_ip[3]),
        .R(p_0_in));
  FDRE \src_ip_reg[4] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(src_ip[4]),
        .R(p_0_in));
  FDRE \src_ip_reg[5] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(src_ip[5]),
        .R(p_0_in));
  FDRE \src_ip_reg[6] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(src_ip[6]),
        .R(p_0_in));
  FDRE \src_ip_reg[7] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(src_ip[7]),
        .R(p_0_in));
  FDRE \src_ip_reg[8] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(src_ip[8]),
        .R(p_0_in));
  FDRE \src_ip_reg[9] 
       (.C(aclk),
        .CE(\src_ip[15]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(src_ip[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \src_mac[31]_i_1 
       (.I0(word_count_reg[0]),
        .I1(word_count_reg[1]),
        .I2(word_count_reg[3]),
        .I3(word_count_reg[2]),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .I5(word_count0),
        .O(\src_mac[31]_i_1_n_0 ));
  FDRE \src_mac_reg[0] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(src_mac[0]),
        .R(p_0_in));
  FDRE \src_mac_reg[10] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(src_mac[10]),
        .R(p_0_in));
  FDRE \src_mac_reg[11] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(src_mac[11]),
        .R(p_0_in));
  FDRE \src_mac_reg[12] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(src_mac[12]),
        .R(p_0_in));
  FDRE \src_mac_reg[13] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(src_mac[13]),
        .R(p_0_in));
  FDRE \src_mac_reg[14] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(src_mac[14]),
        .R(p_0_in));
  FDRE \src_mac_reg[15] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(src_mac[15]),
        .R(p_0_in));
  FDRE \src_mac_reg[16] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(src_mac[16]),
        .R(p_0_in));
  FDRE \src_mac_reg[17] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(src_mac[17]),
        .R(p_0_in));
  FDRE \src_mac_reg[18] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(src_mac[18]),
        .R(p_0_in));
  FDRE \src_mac_reg[19] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(src_mac[19]),
        .R(p_0_in));
  FDRE \src_mac_reg[1] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(src_mac[1]),
        .R(p_0_in));
  FDRE \src_mac_reg[20] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(src_mac[20]),
        .R(p_0_in));
  FDRE \src_mac_reg[21] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(src_mac[21]),
        .R(p_0_in));
  FDRE \src_mac_reg[22] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(src_mac[22]),
        .R(p_0_in));
  FDRE \src_mac_reg[23] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(src_mac[23]),
        .R(p_0_in));
  FDRE \src_mac_reg[24] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(src_mac[24]),
        .R(p_0_in));
  FDRE \src_mac_reg[25] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(src_mac[25]),
        .R(p_0_in));
  FDRE \src_mac_reg[26] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(src_mac[26]),
        .R(p_0_in));
  FDRE \src_mac_reg[27] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(src_mac[27]),
        .R(p_0_in));
  FDRE \src_mac_reg[28] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(src_mac[28]),
        .R(p_0_in));
  FDRE \src_mac_reg[29] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(src_mac[29]),
        .R(p_0_in));
  FDRE \src_mac_reg[2] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(src_mac[2]),
        .R(p_0_in));
  FDRE \src_mac_reg[30] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(src_mac[30]),
        .R(p_0_in));
  FDRE \src_mac_reg[31] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(src_mac[31]),
        .R(p_0_in));
  FDRE \src_mac_reg[32] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(src_mac[32]),
        .R(p_0_in));
  FDRE \src_mac_reg[33] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(src_mac[33]),
        .R(p_0_in));
  FDRE \src_mac_reg[34] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(src_mac[34]),
        .R(p_0_in));
  FDRE \src_mac_reg[35] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(src_mac[35]),
        .R(p_0_in));
  FDRE \src_mac_reg[36] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(src_mac[36]),
        .R(p_0_in));
  FDRE \src_mac_reg[37] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(src_mac[37]),
        .R(p_0_in));
  FDRE \src_mac_reg[38] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(src_mac[38]),
        .R(p_0_in));
  FDRE \src_mac_reg[39] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(src_mac[39]),
        .R(p_0_in));
  FDRE \src_mac_reg[3] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(src_mac[3]),
        .R(p_0_in));
  FDRE \src_mac_reg[40] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(src_mac[40]),
        .R(p_0_in));
  FDRE \src_mac_reg[41] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(src_mac[41]),
        .R(p_0_in));
  FDRE \src_mac_reg[42] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(src_mac[42]),
        .R(p_0_in));
  FDRE \src_mac_reg[43] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(src_mac[43]),
        .R(p_0_in));
  FDRE \src_mac_reg[44] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(src_mac[44]),
        .R(p_0_in));
  FDRE \src_mac_reg[45] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(src_mac[45]),
        .R(p_0_in));
  FDRE \src_mac_reg[46] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(src_mac[46]),
        .R(p_0_in));
  FDRE \src_mac_reg[47] 
       (.C(aclk),
        .CE(\dst_mac[15]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(src_mac[47]),
        .R(p_0_in));
  FDRE \src_mac_reg[4] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(src_mac[4]),
        .R(p_0_in));
  FDRE \src_mac_reg[5] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(src_mac[5]),
        .R(p_0_in));
  FDRE \src_mac_reg[6] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(src_mac[6]),
        .R(p_0_in));
  FDRE \src_mac_reg[7] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(src_mac[7]),
        .R(p_0_in));
  FDRE \src_mac_reg[8] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(src_mac[8]),
        .R(p_0_in));
  FDRE \src_mac_reg[9] 
       (.C(aclk),
        .CE(\src_mac[31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(src_mac[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[0]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[8]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[10]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[2]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[11]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[3]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[12]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[4]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[13]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[5]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[14]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[6]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \udp_dst_port[15]_i_1 
       (.I0(word_count_reg[3]),
        .I1(word_count_reg[0]),
        .I2(word_count_reg[1]),
        .I3(word_count0),
        .I4(\dst_mac[47]_i_3_n_0 ),
        .I5(word_count_reg[2]),
        .O(\udp_dst_port[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[15]_i_2 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[7]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[1]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[9]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[2]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[10]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[3]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[11]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[4]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[12]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[5]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[13]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[6]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[14]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[7]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[15]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[8]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[0]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_dst_port[9]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[1]),
        .O(p_1_in[9]));
  FDRE \udp_dst_port_reg[0] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(udp_dst_port[0]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[10] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(udp_dst_port[10]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[11] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(udp_dst_port[11]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[12] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(udp_dst_port[12]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[13] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(udp_dst_port[13]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[14] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(udp_dst_port[14]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[15] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(udp_dst_port[15]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[1] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(udp_dst_port[1]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[2] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(udp_dst_port[2]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[3] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(udp_dst_port[3]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[4] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(udp_dst_port[4]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[5] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(udp_dst_port[5]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[6] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(udp_dst_port[6]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[7] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(udp_dst_port[7]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[8] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(udp_dst_port[8]),
        .R(p_0_in));
  FDRE \udp_dst_port_reg[9] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(udp_dst_port[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    udp_header_valid_i_1
       (.I0(\dst_mac[47]_i_3_n_0 ),
        .I1(word_count_reg[2]),
        .I2(word_count_reg[1]),
        .I3(word_count_reg[0]),
        .I4(word_count_reg[3]),
        .I5(\udp_src_port[15]_i_2_n_0 ),
        .O(udp_header_valid0));
  FDRE udp_header_valid_reg
       (.C(aclk),
        .CE(eth_header_valid2_out),
        .D(udp_header_valid0),
        .Q(udp_header_valid),
        .R(p_0_in));
  FDRE \udp_length_reg[0] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[0]_i_1_n_0 ),
        .Q(udp_length[0]),
        .R(p_0_in));
  FDRE \udp_length_reg[10] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[10]_i_1_n_0 ),
        .Q(udp_length[10]),
        .R(p_0_in));
  FDRE \udp_length_reg[11] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[11]_i_1_n_0 ),
        .Q(udp_length[11]),
        .R(p_0_in));
  FDRE \udp_length_reg[12] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[12]_i_1_n_0 ),
        .Q(udp_length[12]),
        .R(p_0_in));
  FDRE \udp_length_reg[13] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[13]_i_1_n_0 ),
        .Q(udp_length[13]),
        .R(p_0_in));
  FDRE \udp_length_reg[14] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[14]_i_1_n_0 ),
        .Q(udp_length[14]),
        .R(p_0_in));
  FDRE \udp_length_reg[15] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[15]_i_1_n_0 ),
        .Q(udp_length[15]),
        .R(p_0_in));
  FDRE \udp_length_reg[1] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[1]_i_1_n_0 ),
        .Q(udp_length[1]),
        .R(p_0_in));
  FDRE \udp_length_reg[2] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[2]_i_1_n_0 ),
        .Q(udp_length[2]),
        .R(p_0_in));
  FDRE \udp_length_reg[3] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[3]_i_1_n_0 ),
        .Q(udp_length[3]),
        .R(p_0_in));
  FDRE \udp_length_reg[4] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[4]_i_1_n_0 ),
        .Q(udp_length[4]),
        .R(p_0_in));
  FDRE \udp_length_reg[5] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[5]_i_1_n_0 ),
        .Q(udp_length[5]),
        .R(p_0_in));
  FDRE \udp_length_reg[6] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[6]_i_1_n_0 ),
        .Q(udp_length[6]),
        .R(p_0_in));
  FDRE \udp_length_reg[7] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[7]_i_1_n_0 ),
        .Q(udp_length[7]),
        .R(p_0_in));
  FDRE \udp_length_reg[8] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[8]_i_1_n_0 ),
        .Q(udp_length[8]),
        .R(p_0_in));
  FDRE \udp_length_reg[9] 
       (.C(aclk),
        .CE(\udp_dst_port[15]_i_1_n_0 ),
        .D(\udp_src_port[9]_i_1_n_0 ),
        .Q(udp_length[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[0]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[24]),
        .O(\udp_src_port[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[10]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[18]),
        .O(\udp_src_port[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[11]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[19]),
        .O(\udp_src_port[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[12]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[20]),
        .O(\udp_src_port[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[13]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[21]),
        .O(\udp_src_port[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[14]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[22]),
        .O(\udp_src_port[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[15]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[23]),
        .O(\udp_src_port[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \udp_src_port[15]_i_2 
       (.I0(\udp_src_port[15]_i_3_n_0 ),
        .I1(\udp_src_port[15]_i_4_n_0 ),
        .I2(\udp_src_port[15]_i_5_n_0 ),
        .I3(\udp_src_port[15]_i_6_n_0 ),
        .I4(\udp_src_port[15]_i_7_n_0 ),
        .I5(\udp_src_port[15]_i_8_n_0 ),
        .O(\udp_src_port[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \udp_src_port[15]_i_3 
       (.I0(ethertype[10]),
        .I1(ethertype[11]),
        .I2(ethertype[9]),
        .I3(ethertype[8]),
        .O(\udp_src_port[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \udp_src_port[15]_i_4 
       (.I0(ethertype[15]),
        .I1(ethertype[14]),
        .I2(ethertype[13]),
        .I3(ethertype[12]),
        .O(\udp_src_port[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \udp_src_port[15]_i_5 
       (.I0(ip_protocol[3]),
        .I1(ip_protocol[2]),
        .I2(ip_protocol[1]),
        .I3(ip_protocol[0]),
        .O(\udp_src_port[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \udp_src_port[15]_i_6 
       (.I0(ip_protocol[7]),
        .I1(ip_protocol[6]),
        .I2(ip_protocol[5]),
        .I3(ip_protocol[4]),
        .O(\udp_src_port[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \udp_src_port[15]_i_7 
       (.I0(ethertype[7]),
        .I1(ethertype[6]),
        .I2(ethertype[5]),
        .I3(ethertype[4]),
        .O(\udp_src_port[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \udp_src_port[15]_i_8 
       (.I0(ethertype[3]),
        .I1(ethertype[2]),
        .I2(ethertype[1]),
        .I3(ethertype[0]),
        .O(\udp_src_port[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[1]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[25]),
        .O(\udp_src_port[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[2]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[26]),
        .O(\udp_src_port[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[3]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[27]),
        .O(\udp_src_port[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[4]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[28]),
        .O(\udp_src_port[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[5]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[29]),
        .O(\udp_src_port[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[6]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[30]),
        .O(\udp_src_port[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[7]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[31]),
        .O(\udp_src_port[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[8]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[16]),
        .O(\udp_src_port[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \udp_src_port[9]_i_1 
       (.I0(\udp_src_port[15]_i_2_n_0 ),
        .I1(s_axis_tdata[17]),
        .O(\udp_src_port[9]_i_1_n_0 ));
  FDRE \udp_src_port_reg[0] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[0]_i_1_n_0 ),
        .Q(udp_src_port[0]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[10] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[10]_i_1_n_0 ),
        .Q(udp_src_port[10]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[11] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[11]_i_1_n_0 ),
        .Q(udp_src_port[11]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[12] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[12]_i_1_n_0 ),
        .Q(udp_src_port[12]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[13] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[13]_i_1_n_0 ),
        .Q(udp_src_port[13]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[14] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[14]_i_1_n_0 ),
        .Q(udp_src_port[14]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[15] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[15]_i_1_n_0 ),
        .Q(udp_src_port[15]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[1] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[1]_i_1_n_0 ),
        .Q(udp_src_port[1]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[2] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[2]_i_1_n_0 ),
        .Q(udp_src_port[2]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[3] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[3]_i_1_n_0 ),
        .Q(udp_src_port[3]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[4] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[4]_i_1_n_0 ),
        .Q(udp_src_port[4]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[5] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[5]_i_1_n_0 ),
        .Q(udp_src_port[5]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[6] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[6]_i_1_n_0 ),
        .Q(udp_src_port[6]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[7] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[7]_i_1_n_0 ),
        .Q(udp_src_port[7]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[8] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[8]_i_1_n_0 ),
        .Q(udp_src_port[8]),
        .R(p_0_in));
  FDRE \udp_src_port_reg[9] 
       (.C(aclk),
        .CE(\dst_ip[15]_i_1_n_0 ),
        .D(\udp_src_port[9]_i_1_n_0 ),
        .Q(udp_src_port[9]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 word_count0_carry
       (.CI(word_count_reg[0]),
        .CI_TOP(1'b0),
        .CO({word_count0_carry_n_0,word_count0_carry_n_1,word_count0_carry_n_2,word_count0_carry_n_3,word_count0_carry_n_4,word_count0_carry_n_5,word_count0_carry_n_6,word_count0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S(word_count_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 word_count0_carry__0
       (.CI(word_count0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_word_count0_carry__0_CO_UNCONNECTED[7:6],word_count0_carry__0_n_2,word_count0_carry__0_n_3,word_count0_carry__0_n_4,word_count0_carry__0_n_5,word_count0_carry__0_n_6,word_count0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_word_count0_carry__0_O_UNCONNECTED[7],p_0_in__0[15:9]}),
        .S({1'b0,word_count_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \word_count[0]_i_1 
       (.I0(word_count_reg[0]),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \word_count[15]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(aresetn),
        .O(\word_count[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \word_count[15]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(word_count0));
  FDRE \word_count_reg[0] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[0]),
        .Q(word_count_reg[0]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[10] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[10]),
        .Q(word_count_reg[10]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[11] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[11]),
        .Q(word_count_reg[11]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[12] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[12]),
        .Q(word_count_reg[12]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[13] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[13]),
        .Q(word_count_reg[13]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[14] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[14]),
        .Q(word_count_reg[14]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[15] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[15]),
        .Q(word_count_reg[15]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[1] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[1]),
        .Q(word_count_reg[1]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[2] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[2]),
        .Q(word_count_reg[2]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[3] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[3]),
        .Q(word_count_reg[3]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[4] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[4]),
        .Q(word_count_reg[4]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[5] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[5]),
        .Q(word_count_reg[5]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[6] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[6]),
        .Q(word_count_reg[6]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[7] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[7]),
        .Q(word_count_reg[7]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[8] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[8]),
        .Q(word_count_reg[8]),
        .R(\word_count[15]_i_1_n_0 ));
  FDRE \word_count_reg[9] 
       (.C(aclk),
        .CE(word_count0),
        .D(p_0_in__0[9]),
        .Q(word_count_reg[9]),
        .R(\word_count[15]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "udp_parser_in_pl_udp_parser_0_0,udp_parser,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "udp_parser,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    dst_mac,
    src_mac,
    ethertype,
    src_ip,
    dst_ip,
    ip_protocol,
    udp_src_port,
    udp_dst_port,
    udp_length,
    eth_header_valid,
    ip_header_valid,
    udp_header_valid,
    frame_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
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

  wire aclk;
  wire aresetn;
  wire [31:0]dst_ip;
  wire [47:0]dst_mac;
  wire eth_header_valid;
  wire [15:0]ethertype;
  wire frame_done;
  wire ip_header_valid;
  wire [7:0]ip_protocol;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [31:0]src_ip;
  wire [47:0]src_mac;
  wire [15:0]udp_dst_port;
  wire udp_header_valid;
  wire [15:0]udp_length;
  wire [15:0]udp_src_port;

  assign m_axis_tdata[31:0] = s_axis_tdata;
  assign m_axis_tkeep[3:0] = s_axis_tkeep;
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .dst_ip(dst_ip),
        .dst_mac(dst_mac),
        .eth_header_valid(eth_header_valid),
        .ethertype(ethertype),
        .frame_done(frame_done),
        .ip_header_valid(ip_header_valid),
        .ip_protocol(ip_protocol),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .src_ip(src_ip),
        .src_mac(src_mac),
        .udp_dst_port(udp_dst_port),
        .udp_header_valid(udp_header_valid),
        .udp_length(udp_length),
        .udp_src_port(udp_src_port));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
