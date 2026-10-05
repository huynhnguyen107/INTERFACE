-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Oct  4 12:14:20 2026
-- Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ udp_parser_in_pl_udp_parser_0_0_sim_netlist.vhdl
-- Design      : udp_parser_in_pl_udp_parser_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser is
  port (
    dst_mac : out STD_LOGIC_VECTOR ( 47 downto 0 );
    src_mac : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ethertype : out STD_LOGIC_VECTOR ( 15 downto 0 );
    src_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dst_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_protocol : out STD_LOGIC_VECTOR ( 7 downto 0 );
    udp_src_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_dst_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_length : out STD_LOGIC_VECTOR ( 15 downto 0 );
    eth_header_valid : out STD_LOGIC;
    ip_header_valid : out STD_LOGIC;
    udp_header_valid : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser is
  signal \dst_ip[0]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[10]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[11]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[12]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[13]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[14]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[15]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[15]_i_2_n_0\ : STD_LOGIC;
  signal \dst_ip[15]_i_3_n_0\ : STD_LOGIC;
  signal \dst_ip[15]_i_4_n_0\ : STD_LOGIC;
  signal \dst_ip[1]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[2]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[3]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[4]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[5]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[6]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[7]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[8]_i_1_n_0\ : STD_LOGIC;
  signal \dst_ip[9]_i_1_n_0\ : STD_LOGIC;
  signal \dst_mac[15]_i_1_n_0\ : STD_LOGIC;
  signal \dst_mac[47]_i_2_n_0\ : STD_LOGIC;
  signal \dst_mac[47]_i_4_n_0\ : STD_LOGIC;
  signal \dst_mac[47]_i_5_n_0\ : STD_LOGIC;
  signal \dst_mac[47]_i_6_n_0\ : STD_LOGIC;
  signal eth_header_valid2_out : STD_LOGIC;
  signal eth_header_valid_i_2_n_0 : STD_LOGIC;
  signal \^ethertype\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ethertype[15]_i_1_n_0\ : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal ip_header_valid_i_1_n_0 : STD_LOGIC;
  signal \^ip_protocol\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ip_protocol[0]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[1]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[2]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[3]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[4]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[5]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[6]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[7]_i_1_n_0\ : STD_LOGIC;
  signal \ip_protocol[7]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal \src_ip[0]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[10]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[11]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[12]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[13]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[14]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[15]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[15]_i_2_n_0\ : STD_LOGIC;
  signal \src_ip[16]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[17]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[18]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[19]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[1]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[20]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[21]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[22]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[23]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[24]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[25]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[26]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[27]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[28]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[29]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[2]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[30]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[31]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[31]_i_2_n_0\ : STD_LOGIC;
  signal \src_ip[3]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[4]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[5]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[6]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[7]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[8]_i_1_n_0\ : STD_LOGIC;
  signal \src_ip[9]_i_1_n_0\ : STD_LOGIC;
  signal \src_mac[31]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[0]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[10]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[11]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[12]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[13]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[14]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[15]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[15]_i_2_n_0\ : STD_LOGIC;
  signal \udp_dst_port[1]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[2]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[3]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[4]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[5]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[6]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[7]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[8]_i_1_n_0\ : STD_LOGIC;
  signal \udp_dst_port[9]_i_1_n_0\ : STD_LOGIC;
  signal udp_header_valid0 : STD_LOGIC;
  signal \udp_src_port[0]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[10]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[11]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[12]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[13]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[14]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_2_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_3_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_4_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_5_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_6_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_7_n_0\ : STD_LOGIC;
  signal \udp_src_port[15]_i_8_n_0\ : STD_LOGIC;
  signal \udp_src_port[1]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[2]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[3]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[4]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[5]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[6]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[7]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[8]_i_1_n_0\ : STD_LOGIC;
  signal \udp_src_port[9]_i_1_n_0\ : STD_LOGIC;
  signal word_count0 : STD_LOGIC;
  signal \word_count0_carry__0_n_2\ : STD_LOGIC;
  signal \word_count0_carry__0_n_3\ : STD_LOGIC;
  signal \word_count0_carry__0_n_4\ : STD_LOGIC;
  signal \word_count0_carry__0_n_5\ : STD_LOGIC;
  signal \word_count0_carry__0_n_6\ : STD_LOGIC;
  signal \word_count0_carry__0_n_7\ : STD_LOGIC;
  signal word_count0_carry_n_0 : STD_LOGIC;
  signal word_count0_carry_n_1 : STD_LOGIC;
  signal word_count0_carry_n_2 : STD_LOGIC;
  signal word_count0_carry_n_3 : STD_LOGIC;
  signal word_count0_carry_n_4 : STD_LOGIC;
  signal word_count0_carry_n_5 : STD_LOGIC;
  signal word_count0_carry_n_6 : STD_LOGIC;
  signal word_count0_carry_n_7 : STD_LOGIC;
  signal \word_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[15]_i_1_n_0\ : STD_LOGIC;
  signal word_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_word_count0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_word_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dst_ip[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dst_ip[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dst_ip[11]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dst_ip[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dst_ip[13]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dst_ip[14]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dst_ip[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dst_ip[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dst_ip[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \dst_ip[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \dst_ip[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dst_ip[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dst_ip[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dst_ip[8]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dst_ip[9]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dst_mac[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dst_mac[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dst_mac[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dst_mac[19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dst_mac[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dst_mac[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dst_mac[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dst_mac[23]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dst_mac[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dst_mac[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dst_mac[26]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dst_mac[27]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dst_mac[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dst_mac[29]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dst_mac[30]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dst_mac[31]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dst_mac[32]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dst_mac[33]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dst_mac[34]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dst_mac[35]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dst_mac[36]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dst_mac[37]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dst_mac[38]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dst_mac[39]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dst_mac[40]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dst_mac[41]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dst_mac[42]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dst_mac[43]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dst_mac[44]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dst_mac[45]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dst_mac[46]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dst_mac[47]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of ip_header_valid_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ip_protocol[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip_protocol[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip_protocol[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip_protocol[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip_protocol[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ip_protocol[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ip_protocol[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ip_protocol[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_ip[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_ip[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_ip[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_ip[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_ip[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_ip[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_ip[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_ip[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_ip[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_ip[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_ip[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_ip[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_ip[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_ip[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_ip[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_ip[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_ip[24]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_ip[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_ip[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_ip[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_ip[28]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_ip[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_ip[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_ip[30]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_ip[31]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_ip[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_ip[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_ip[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_ip[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_ip[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_ip[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_ip[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \udp_dst_port[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \udp_dst_port[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \udp_dst_port[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \udp_dst_port[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \udp_dst_port[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \udp_dst_port[14]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \udp_dst_port[15]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \udp_dst_port[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \udp_dst_port[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \udp_dst_port[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \udp_dst_port[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \udp_dst_port[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \udp_dst_port[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \udp_dst_port[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \udp_dst_port[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \udp_dst_port[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \udp_src_port[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \udp_src_port[10]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \udp_src_port[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \udp_src_port[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \udp_src_port[13]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \udp_src_port[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \udp_src_port[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \udp_src_port[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \udp_src_port[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \udp_src_port[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \udp_src_port[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \udp_src_port[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \udp_src_port[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \udp_src_port[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \udp_src_port[8]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \udp_src_port[9]_i_1\ : label is "soft_lutpair49";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of word_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \word_count0_carry__0\ : label is 35;
begin
  ethertype(15 downto 0) <= \^ethertype\(15 downto 0);
  ip_protocol(7 downto 0) <= \^ip_protocol\(7 downto 0);
\dst_ip[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(8),
      O => \dst_ip[0]_i_1_n_0\
    );
\dst_ip[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(2),
      O => \dst_ip[10]_i_1_n_0\
    );
\dst_ip[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(3),
      O => \dst_ip[11]_i_1_n_0\
    );
\dst_ip[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(4),
      O => \dst_ip[12]_i_1_n_0\
    );
\dst_ip[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(5),
      O => \dst_ip[13]_i_1_n_0\
    );
\dst_ip[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(6),
      O => \dst_ip[14]_i_1_n_0\
    );
\dst_ip[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA8AA888AA88"
    )
        port map (
      I0 => word_count0,
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(1),
      I3 => word_count_reg(3),
      I4 => word_count_reg(0),
      I5 => word_count_reg(2),
      O => \dst_ip[15]_i_1_n_0\
    );
\dst_ip[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(7),
      O => \dst_ip[15]_i_2_n_0\
    );
\dst_ip[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => word_count_reg(2),
      I1 => \dst_mac[47]_i_5_n_0\,
      I2 => \dst_ip[15]_i_4_n_0\,
      I3 => \dst_mac[47]_i_6_n_0\,
      I4 => word_count_reg(1),
      O => \dst_ip[15]_i_3_n_0\
    );
\dst_ip[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word_count_reg(9),
      I1 => word_count_reg(8),
      I2 => word_count_reg(11),
      I3 => word_count_reg(10),
      O => \dst_ip[15]_i_4_n_0\
    );
\dst_ip[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(9),
      O => \dst_ip[1]_i_1_n_0\
    );
\dst_ip[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(10),
      O => \dst_ip[2]_i_1_n_0\
    );
\dst_ip[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(11),
      O => \dst_ip[3]_i_1_n_0\
    );
\dst_ip[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(12),
      O => \dst_ip[4]_i_1_n_0\
    );
\dst_ip[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(13),
      O => \dst_ip[5]_i_1_n_0\
    );
\dst_ip[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(14),
      O => \dst_ip[6]_i_1_n_0\
    );
\dst_ip[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(15),
      O => \dst_ip[7]_i_1_n_0\
    );
\dst_ip[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(0),
      O => \dst_ip[8]_i_1_n_0\
    );
\dst_ip[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => s_axis_tdata(1),
      O => \dst_ip[9]_i_1_n_0\
    );
\dst_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[0]_i_1_n_0\,
      Q => dst_ip(0),
      R => p_0_in
    );
\dst_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[10]_i_1_n_0\,
      Q => dst_ip(10),
      R => p_0_in
    );
\dst_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[11]_i_1_n_0\,
      Q => dst_ip(11),
      R => p_0_in
    );
\dst_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[12]_i_1_n_0\,
      Q => dst_ip(12),
      R => p_0_in
    );
\dst_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[13]_i_1_n_0\,
      Q => dst_ip(13),
      R => p_0_in
    );
\dst_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[14]_i_1_n_0\,
      Q => dst_ip(14),
      R => p_0_in
    );
\dst_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[15]_i_2_n_0\,
      Q => dst_ip(15),
      R => p_0_in
    );
\dst_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[16]_i_1_n_0\,
      Q => dst_ip(16),
      R => p_0_in
    );
\dst_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[17]_i_1_n_0\,
      Q => dst_ip(17),
      R => p_0_in
    );
\dst_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[18]_i_1_n_0\,
      Q => dst_ip(18),
      R => p_0_in
    );
\dst_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[19]_i_1_n_0\,
      Q => dst_ip(19),
      R => p_0_in
    );
\dst_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[1]_i_1_n_0\,
      Q => dst_ip(1),
      R => p_0_in
    );
\dst_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[20]_i_1_n_0\,
      Q => dst_ip(20),
      R => p_0_in
    );
\dst_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[21]_i_1_n_0\,
      Q => dst_ip(21),
      R => p_0_in
    );
\dst_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[22]_i_1_n_0\,
      Q => dst_ip(22),
      R => p_0_in
    );
\dst_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[23]_i_1_n_0\,
      Q => dst_ip(23),
      R => p_0_in
    );
\dst_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[24]_i_1_n_0\,
      Q => dst_ip(24),
      R => p_0_in
    );
\dst_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[25]_i_1_n_0\,
      Q => dst_ip(25),
      R => p_0_in
    );
\dst_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[26]_i_1_n_0\,
      Q => dst_ip(26),
      R => p_0_in
    );
\dst_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[27]_i_1_n_0\,
      Q => dst_ip(27),
      R => p_0_in
    );
\dst_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[28]_i_1_n_0\,
      Q => dst_ip(28),
      R => p_0_in
    );
\dst_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[29]_i_1_n_0\,
      Q => dst_ip(29),
      R => p_0_in
    );
\dst_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[2]_i_1_n_0\,
      Q => dst_ip(2),
      R => p_0_in
    );
\dst_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[30]_i_1_n_0\,
      Q => dst_ip(30),
      R => p_0_in
    );
\dst_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[31]_i_2_n_0\,
      Q => dst_ip(31),
      R => p_0_in
    );
\dst_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[3]_i_1_n_0\,
      Q => dst_ip(3),
      R => p_0_in
    );
\dst_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[4]_i_1_n_0\,
      Q => dst_ip(4),
      R => p_0_in
    );
\dst_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[5]_i_1_n_0\,
      Q => dst_ip(5),
      R => p_0_in
    );
\dst_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[6]_i_1_n_0\,
      Q => dst_ip(6),
      R => p_0_in
    );
\dst_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[7]_i_1_n_0\,
      Q => dst_ip(7),
      R => p_0_in
    );
\dst_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[8]_i_1_n_0\,
      Q => dst_ip(8),
      R => p_0_in
    );
\dst_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \dst_ip[9]_i_1_n_0\,
      Q => dst_ip(9),
      R => p_0_in
    );
\dst_mac[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA8AA88AA888"
    )
        port map (
      I0 => word_count0,
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(1),
      I3 => word_count_reg(3),
      I4 => word_count_reg(0),
      I5 => word_count_reg(2),
      O => \dst_mac[15]_i_1_n_0\
    );
\dst_mac[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(24),
      O => p_2_in(16)
    );
\dst_mac[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(25),
      O => p_2_in(17)
    );
\dst_mac[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(26),
      O => p_2_in(18)
    );
\dst_mac[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(27),
      O => p_2_in(19)
    );
\dst_mac[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(28),
      O => p_2_in(20)
    );
\dst_mac[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(29),
      O => p_2_in(21)
    );
\dst_mac[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(30),
      O => p_2_in(22)
    );
\dst_mac[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(31),
      O => p_2_in(23)
    );
\dst_mac[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(16),
      O => p_2_in(24)
    );
\dst_mac[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(17),
      O => p_2_in(25)
    );
\dst_mac[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(18),
      O => p_2_in(26)
    );
\dst_mac[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(19),
      O => p_2_in(27)
    );
\dst_mac[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(20),
      O => p_2_in(28)
    );
\dst_mac[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(21),
      O => p_2_in(29)
    );
\dst_mac[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(22),
      O => p_2_in(30)
    );
\dst_mac[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(23),
      O => p_2_in(31)
    );
\dst_mac[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(8),
      O => p_2_in(32)
    );
\dst_mac[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(9),
      O => p_2_in(33)
    );
\dst_mac[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(10),
      O => p_2_in(34)
    );
\dst_mac[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(11),
      O => p_2_in(35)
    );
\dst_mac[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(12),
      O => p_2_in(36)
    );
\dst_mac[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(13),
      O => p_2_in(37)
    );
\dst_mac[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(14),
      O => p_2_in(38)
    );
\dst_mac[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(15),
      O => p_2_in(39)
    );
\dst_mac[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(0),
      O => p_2_in(40)
    );
\dst_mac[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(1),
      O => p_2_in(41)
    );
\dst_mac[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(2),
      O => p_2_in(42)
    );
\dst_mac[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(3),
      O => p_2_in(43)
    );
\dst_mac[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(4),
      O => p_2_in(44)
    );
\dst_mac[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(5),
      O => p_2_in(45)
    );
\dst_mac[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(6),
      O => p_2_in(46)
    );
\dst_mac[47]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\dst_mac[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F010F0F0C010"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => word_count_reg(1),
      I2 => word_count0,
      I3 => word_count_reg(3),
      I4 => \dst_mac[47]_i_4_n_0\,
      I5 => word_count_reg(2),
      O => \dst_mac[47]_i_2_n_0\
    );
\dst_mac[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => word_count_reg(3),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(2),
      I3 => s_axis_tdata(7),
      O => p_2_in(47)
    );
\dst_mac[47]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \dst_mac[47]_i_5_n_0\,
      I1 => word_count_reg(9),
      I2 => word_count_reg(8),
      I3 => word_count_reg(11),
      I4 => word_count_reg(10),
      I5 => \dst_mac[47]_i_6_n_0\,
      O => \dst_mac[47]_i_4_n_0\
    );
\dst_mac[47]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word_count_reg(13),
      I1 => word_count_reg(12),
      I2 => word_count_reg(15),
      I3 => word_count_reg(14),
      O => \dst_mac[47]_i_5_n_0\
    );
\dst_mac[47]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word_count_reg(5),
      I1 => word_count_reg(4),
      I2 => word_count_reg(7),
      I3 => word_count_reg(6),
      O => \dst_mac[47]_i_6_n_0\
    );
\dst_mac_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(32),
      Q => dst_mac(0),
      R => p_0_in
    );
\dst_mac_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(42),
      Q => dst_mac(10),
      R => p_0_in
    );
\dst_mac_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(43),
      Q => dst_mac(11),
      R => p_0_in
    );
\dst_mac_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(44),
      Q => dst_mac(12),
      R => p_0_in
    );
\dst_mac_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(45),
      Q => dst_mac(13),
      R => p_0_in
    );
\dst_mac_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(46),
      Q => dst_mac(14),
      R => p_0_in
    );
\dst_mac_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(47),
      Q => dst_mac(15),
      R => p_0_in
    );
\dst_mac_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(16),
      Q => dst_mac(16),
      R => p_0_in
    );
\dst_mac_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(17),
      Q => dst_mac(17),
      R => p_0_in
    );
\dst_mac_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(18),
      Q => dst_mac(18),
      R => p_0_in
    );
\dst_mac_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(19),
      Q => dst_mac(19),
      R => p_0_in
    );
\dst_mac_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(33),
      Q => dst_mac(1),
      R => p_0_in
    );
\dst_mac_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(20),
      Q => dst_mac(20),
      R => p_0_in
    );
\dst_mac_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(21),
      Q => dst_mac(21),
      R => p_0_in
    );
\dst_mac_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(22),
      Q => dst_mac(22),
      R => p_0_in
    );
\dst_mac_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(23),
      Q => dst_mac(23),
      R => p_0_in
    );
\dst_mac_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(24),
      Q => dst_mac(24),
      R => p_0_in
    );
\dst_mac_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(25),
      Q => dst_mac(25),
      R => p_0_in
    );
\dst_mac_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(26),
      Q => dst_mac(26),
      R => p_0_in
    );
\dst_mac_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(27),
      Q => dst_mac(27),
      R => p_0_in
    );
\dst_mac_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(28),
      Q => dst_mac(28),
      R => p_0_in
    );
\dst_mac_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(29),
      Q => dst_mac(29),
      R => p_0_in
    );
\dst_mac_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(34),
      Q => dst_mac(2),
      R => p_0_in
    );
\dst_mac_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(30),
      Q => dst_mac(30),
      R => p_0_in
    );
\dst_mac_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(31),
      Q => dst_mac(31),
      R => p_0_in
    );
\dst_mac_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(32),
      Q => dst_mac(32),
      R => p_0_in
    );
\dst_mac_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(33),
      Q => dst_mac(33),
      R => p_0_in
    );
\dst_mac_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(34),
      Q => dst_mac(34),
      R => p_0_in
    );
\dst_mac_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(35),
      Q => dst_mac(35),
      R => p_0_in
    );
\dst_mac_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(36),
      Q => dst_mac(36),
      R => p_0_in
    );
\dst_mac_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(37),
      Q => dst_mac(37),
      R => p_0_in
    );
\dst_mac_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(38),
      Q => dst_mac(38),
      R => p_0_in
    );
\dst_mac_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(39),
      Q => dst_mac(39),
      R => p_0_in
    );
\dst_mac_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(35),
      Q => dst_mac(3),
      R => p_0_in
    );
\dst_mac_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(40),
      Q => dst_mac(40),
      R => p_0_in
    );
\dst_mac_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(41),
      Q => dst_mac(41),
      R => p_0_in
    );
\dst_mac_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(42),
      Q => dst_mac(42),
      R => p_0_in
    );
\dst_mac_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(43),
      Q => dst_mac(43),
      R => p_0_in
    );
\dst_mac_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(44),
      Q => dst_mac(44),
      R => p_0_in
    );
\dst_mac_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(45),
      Q => dst_mac(45),
      R => p_0_in
    );
\dst_mac_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(46),
      Q => dst_mac(46),
      R => p_0_in
    );
\dst_mac_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[47]_i_2_n_0\,
      D => p_2_in(47),
      Q => dst_mac(47),
      R => p_0_in
    );
\dst_mac_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(36),
      Q => dst_mac(4),
      R => p_0_in
    );
\dst_mac_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(37),
      Q => dst_mac(5),
      R => p_0_in
    );
\dst_mac_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(38),
      Q => dst_mac(6),
      R => p_0_in
    );
\dst_mac_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(39),
      Q => dst_mac(7),
      R => p_0_in
    );
\dst_mac_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(40),
      Q => dst_mac(8),
      R => p_0_in
    );
\dst_mac_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(41),
      Q => dst_mac(9),
      R => p_0_in
    );
eth_header_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => s_axis_tlast,
      O => eth_header_valid2_out
    );
eth_header_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => word_count_reg(0),
      I2 => word_count_reg(3),
      I3 => \dst_mac[47]_i_4_n_0\,
      I4 => word_count_reg(2),
      O => eth_header_valid_i_2_n_0
    );
eth_header_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => eth_header_valid2_out,
      D => eth_header_valid_i_2_n_0,
      Q => eth_header_valid,
      R => p_0_in
    );
\ethertype[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA8AA8A8A888"
    )
        port map (
      I0 => word_count0,
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(1),
      I3 => word_count_reg(3),
      I4 => word_count_reg(0),
      I5 => word_count_reg(2),
      O => \ethertype[15]_i_1_n_0\
    );
\ethertype_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(32),
      Q => \^ethertype\(0),
      R => p_0_in
    );
\ethertype_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(42),
      Q => \^ethertype\(10),
      R => p_0_in
    );
\ethertype_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(43),
      Q => \^ethertype\(11),
      R => p_0_in
    );
\ethertype_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(44),
      Q => \^ethertype\(12),
      R => p_0_in
    );
\ethertype_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(45),
      Q => \^ethertype\(13),
      R => p_0_in
    );
\ethertype_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(46),
      Q => \^ethertype\(14),
      R => p_0_in
    );
\ethertype_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(47),
      Q => \^ethertype\(15),
      R => p_0_in
    );
\ethertype_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(33),
      Q => \^ethertype\(1),
      R => p_0_in
    );
\ethertype_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(34),
      Q => \^ethertype\(2),
      R => p_0_in
    );
\ethertype_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(35),
      Q => \^ethertype\(3),
      R => p_0_in
    );
\ethertype_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(36),
      Q => \^ethertype\(4),
      R => p_0_in
    );
\ethertype_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(37),
      Q => \^ethertype\(5),
      R => p_0_in
    );
\ethertype_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(38),
      Q => \^ethertype\(6),
      R => p_0_in
    );
\ethertype_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(39),
      Q => \^ethertype\(7),
      R => p_0_in
    );
\ethertype_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(40),
      Q => \^ethertype\(8),
      R => p_0_in
    );
\ethertype_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ethertype[15]_i_1_n_0\,
      D => p_2_in(41),
      Q => \^ethertype\(9),
      R => p_0_in
    );
frame_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => aresetn,
      O => frame_done_i_1_n_0
    );
frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_done_i_1_n_0,
      Q => frame_done,
      R => '0'
    );
ip_header_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => word_count_reg(3),
      I2 => \dst_ip[15]_i_3_n_0\,
      O => ip_header_valid_i_1_n_0
    );
ip_header_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => eth_header_valid2_out,
      D => ip_header_valid_i_1_n_0,
      Q => ip_header_valid,
      R => p_0_in
    );
\ip_protocol[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(24),
      O => \ip_protocol[0]_i_1_n_0\
    );
\ip_protocol[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(25),
      O => \ip_protocol[1]_i_1_n_0\
    );
\ip_protocol[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(26),
      O => \ip_protocol[2]_i_1_n_0\
    );
\ip_protocol[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(27),
      O => \ip_protocol[3]_i_1_n_0\
    );
\ip_protocol[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(28),
      O => \ip_protocol[4]_i_1_n_0\
    );
\ip_protocol[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(29),
      O => \ip_protocol[5]_i_1_n_0\
    );
\ip_protocol[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(30),
      O => \ip_protocol[6]_i_1_n_0\
    );
\ip_protocol[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E000F000A000"
    )
        port map (
      I0 => \dst_mac[47]_i_4_n_0\,
      I1 => word_count_reg(3),
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => word_count_reg(2),
      I5 => word_count_reg(1),
      O => \ip_protocol[7]_i_1_n_0\
    );
\ip_protocol[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(31),
      O => \ip_protocol[7]_i_2_n_0\
    );
\ip_protocol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[0]_i_1_n_0\,
      Q => \^ip_protocol\(0),
      R => p_0_in
    );
\ip_protocol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[1]_i_1_n_0\,
      Q => \^ip_protocol\(1),
      R => p_0_in
    );
\ip_protocol_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[2]_i_1_n_0\,
      Q => \^ip_protocol\(2),
      R => p_0_in
    );
\ip_protocol_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[3]_i_1_n_0\,
      Q => \^ip_protocol\(3),
      R => p_0_in
    );
\ip_protocol_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[4]_i_1_n_0\,
      Q => \^ip_protocol\(4),
      R => p_0_in
    );
\ip_protocol_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[5]_i_1_n_0\,
      Q => \^ip_protocol\(5),
      R => p_0_in
    );
\ip_protocol_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[6]_i_1_n_0\,
      Q => \^ip_protocol\(6),
      R => p_0_in
    );
\ip_protocol_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \ip_protocol[7]_i_1_n_0\,
      D => \ip_protocol[7]_i_2_n_0\,
      Q => \^ip_protocol\(7),
      R => p_0_in
    );
\src_ip[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(8),
      O => \src_ip[0]_i_1_n_0\
    );
\src_ip[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(2),
      O => \src_ip[10]_i_1_n_0\
    );
\src_ip[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(3),
      O => \src_ip[11]_i_1_n_0\
    );
\src_ip[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(4),
      O => \src_ip[12]_i_1_n_0\
    );
\src_ip[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(5),
      O => \src_ip[13]_i_1_n_0\
    );
\src_ip[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(6),
      O => \src_ip[14]_i_1_n_0\
    );
\src_ip[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AA8AA888A888"
    )
        port map (
      I0 => word_count0,
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(1),
      I3 => word_count_reg(3),
      I4 => word_count_reg(0),
      I5 => word_count_reg(2),
      O => \src_ip[15]_i_1_n_0\
    );
\src_ip[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(7),
      O => \src_ip[15]_i_2_n_0\
    );
\src_ip[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(24),
      O => \src_ip[16]_i_1_n_0\
    );
\src_ip[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(25),
      O => \src_ip[17]_i_1_n_0\
    );
\src_ip[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(26),
      O => \src_ip[18]_i_1_n_0\
    );
\src_ip[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(27),
      O => \src_ip[19]_i_1_n_0\
    );
\src_ip[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(9),
      O => \src_ip[1]_i_1_n_0\
    );
\src_ip[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(28),
      O => \src_ip[20]_i_1_n_0\
    );
\src_ip[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(29),
      O => \src_ip[21]_i_1_n_0\
    );
\src_ip[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(30),
      O => \src_ip[22]_i_1_n_0\
    );
\src_ip[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(31),
      O => \src_ip[23]_i_1_n_0\
    );
\src_ip[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(16),
      O => \src_ip[24]_i_1_n_0\
    );
\src_ip[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(17),
      O => \src_ip[25]_i_1_n_0\
    );
\src_ip[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(18),
      O => \src_ip[26]_i_1_n_0\
    );
\src_ip[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(19),
      O => \src_ip[27]_i_1_n_0\
    );
\src_ip[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(20),
      O => \src_ip[28]_i_1_n_0\
    );
\src_ip[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(21),
      O => \src_ip[29]_i_1_n_0\
    );
\src_ip[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(10),
      O => \src_ip[2]_i_1_n_0\
    );
\src_ip[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(22),
      O => \src_ip[30]_i_1_n_0\
    );
\src_ip[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F050F0F0C000"
    )
        port map (
      I0 => word_count_reg(0),
      I1 => word_count_reg(1),
      I2 => word_count0,
      I3 => word_count_reg(3),
      I4 => \dst_mac[47]_i_4_n_0\,
      I5 => word_count_reg(2),
      O => \src_ip[31]_i_1_n_0\
    );
\src_ip[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(23),
      O => \src_ip[31]_i_2_n_0\
    );
\src_ip[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(11),
      O => \src_ip[3]_i_1_n_0\
    );
\src_ip[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(12),
      O => \src_ip[4]_i_1_n_0\
    );
\src_ip[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(13),
      O => \src_ip[5]_i_1_n_0\
    );
\src_ip[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(14),
      O => \src_ip[6]_i_1_n_0\
    );
\src_ip[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(15),
      O => \src_ip[7]_i_1_n_0\
    );
\src_ip[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(0),
      O => \src_ip[8]_i_1_n_0\
    );
\src_ip[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => word_count_reg(1),
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(3),
      I3 => s_axis_tdata(1),
      O => \src_ip[9]_i_1_n_0\
    );
\src_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[0]_i_1_n_0\,
      Q => src_ip(0),
      R => p_0_in
    );
\src_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[10]_i_1_n_0\,
      Q => src_ip(10),
      R => p_0_in
    );
\src_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[11]_i_1_n_0\,
      Q => src_ip(11),
      R => p_0_in
    );
\src_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[12]_i_1_n_0\,
      Q => src_ip(12),
      R => p_0_in
    );
\src_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[13]_i_1_n_0\,
      Q => src_ip(13),
      R => p_0_in
    );
\src_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[14]_i_1_n_0\,
      Q => src_ip(14),
      R => p_0_in
    );
\src_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[15]_i_2_n_0\,
      Q => src_ip(15),
      R => p_0_in
    );
\src_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[16]_i_1_n_0\,
      Q => src_ip(16),
      R => p_0_in
    );
\src_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[17]_i_1_n_0\,
      Q => src_ip(17),
      R => p_0_in
    );
\src_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[18]_i_1_n_0\,
      Q => src_ip(18),
      R => p_0_in
    );
\src_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[19]_i_1_n_0\,
      Q => src_ip(19),
      R => p_0_in
    );
\src_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[1]_i_1_n_0\,
      Q => src_ip(1),
      R => p_0_in
    );
\src_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[20]_i_1_n_0\,
      Q => src_ip(20),
      R => p_0_in
    );
\src_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[21]_i_1_n_0\,
      Q => src_ip(21),
      R => p_0_in
    );
\src_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[22]_i_1_n_0\,
      Q => src_ip(22),
      R => p_0_in
    );
\src_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[23]_i_1_n_0\,
      Q => src_ip(23),
      R => p_0_in
    );
\src_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[24]_i_1_n_0\,
      Q => src_ip(24),
      R => p_0_in
    );
\src_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[25]_i_1_n_0\,
      Q => src_ip(25),
      R => p_0_in
    );
\src_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[26]_i_1_n_0\,
      Q => src_ip(26),
      R => p_0_in
    );
\src_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[27]_i_1_n_0\,
      Q => src_ip(27),
      R => p_0_in
    );
\src_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[28]_i_1_n_0\,
      Q => src_ip(28),
      R => p_0_in
    );
\src_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[29]_i_1_n_0\,
      Q => src_ip(29),
      R => p_0_in
    );
\src_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[2]_i_1_n_0\,
      Q => src_ip(2),
      R => p_0_in
    );
\src_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[30]_i_1_n_0\,
      Q => src_ip(30),
      R => p_0_in
    );
\src_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[31]_i_1_n_0\,
      D => \src_ip[31]_i_2_n_0\,
      Q => src_ip(31),
      R => p_0_in
    );
\src_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[3]_i_1_n_0\,
      Q => src_ip(3),
      R => p_0_in
    );
\src_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[4]_i_1_n_0\,
      Q => src_ip(4),
      R => p_0_in
    );
\src_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[5]_i_1_n_0\,
      Q => src_ip(5),
      R => p_0_in
    );
\src_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[6]_i_1_n_0\,
      Q => src_ip(6),
      R => p_0_in
    );
\src_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[7]_i_1_n_0\,
      Q => src_ip(7),
      R => p_0_in
    );
\src_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[8]_i_1_n_0\,
      Q => src_ip(8),
      R => p_0_in
    );
\src_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_ip[15]_i_1_n_0\,
      D => \src_ip[9]_i_1_n_0\,
      Q => src_ip(9),
      R => p_0_in
    );
\src_mac[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA8AA888A8A8"
    )
        port map (
      I0 => word_count0,
      I1 => \dst_mac[47]_i_4_n_0\,
      I2 => word_count_reg(1),
      I3 => word_count_reg(3),
      I4 => word_count_reg(0),
      I5 => word_count_reg(2),
      O => \src_mac[31]_i_1_n_0\
    );
\src_mac_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(16),
      Q => src_mac(0),
      R => p_0_in
    );
\src_mac_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => src_mac(10),
      R => p_0_in
    );
\src_mac_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => src_mac(11),
      R => p_0_in
    );
\src_mac_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => src_mac(12),
      R => p_0_in
    );
\src_mac_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => src_mac(13),
      R => p_0_in
    );
\src_mac_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => src_mac(14),
      R => p_0_in
    );
\src_mac_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => src_mac(15),
      R => p_0_in
    );
\src_mac_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(32),
      Q => src_mac(16),
      R => p_0_in
    );
\src_mac_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(33),
      Q => src_mac(17),
      R => p_0_in
    );
\src_mac_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(34),
      Q => src_mac(18),
      R => p_0_in
    );
\src_mac_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(35),
      Q => src_mac(19),
      R => p_0_in
    );
\src_mac_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(17),
      Q => src_mac(1),
      R => p_0_in
    );
\src_mac_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(36),
      Q => src_mac(20),
      R => p_0_in
    );
\src_mac_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(37),
      Q => src_mac(21),
      R => p_0_in
    );
\src_mac_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(38),
      Q => src_mac(22),
      R => p_0_in
    );
\src_mac_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(39),
      Q => src_mac(23),
      R => p_0_in
    );
\src_mac_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(40),
      Q => src_mac(24),
      R => p_0_in
    );
\src_mac_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(41),
      Q => src_mac(25),
      R => p_0_in
    );
\src_mac_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(42),
      Q => src_mac(26),
      R => p_0_in
    );
\src_mac_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(43),
      Q => src_mac(27),
      R => p_0_in
    );
\src_mac_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(44),
      Q => src_mac(28),
      R => p_0_in
    );
\src_mac_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(45),
      Q => src_mac(29),
      R => p_0_in
    );
\src_mac_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(18),
      Q => src_mac(2),
      R => p_0_in
    );
\src_mac_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(46),
      Q => src_mac(30),
      R => p_0_in
    );
\src_mac_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(47),
      Q => src_mac(31),
      R => p_0_in
    );
\src_mac_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(16),
      Q => src_mac(32),
      R => p_0_in
    );
\src_mac_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(17),
      Q => src_mac(33),
      R => p_0_in
    );
\src_mac_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(18),
      Q => src_mac(34),
      R => p_0_in
    );
\src_mac_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(19),
      Q => src_mac(35),
      R => p_0_in
    );
\src_mac_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(20),
      Q => src_mac(36),
      R => p_0_in
    );
\src_mac_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(21),
      Q => src_mac(37),
      R => p_0_in
    );
\src_mac_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(22),
      Q => src_mac(38),
      R => p_0_in
    );
\src_mac_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(23),
      Q => src_mac(39),
      R => p_0_in
    );
\src_mac_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(19),
      Q => src_mac(3),
      R => p_0_in
    );
\src_mac_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(24),
      Q => src_mac(40),
      R => p_0_in
    );
\src_mac_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(25),
      Q => src_mac(41),
      R => p_0_in
    );
\src_mac_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(26),
      Q => src_mac(42),
      R => p_0_in
    );
\src_mac_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(27),
      Q => src_mac(43),
      R => p_0_in
    );
\src_mac_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(28),
      Q => src_mac(44),
      R => p_0_in
    );
\src_mac_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(29),
      Q => src_mac(45),
      R => p_0_in
    );
\src_mac_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(30),
      Q => src_mac(46),
      R => p_0_in
    );
\src_mac_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_mac[15]_i_1_n_0\,
      D => p_2_in(31),
      Q => src_mac(47),
      R => p_0_in
    );
\src_mac_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(20),
      Q => src_mac(4),
      R => p_0_in
    );
\src_mac_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(21),
      Q => src_mac(5),
      R => p_0_in
    );
\src_mac_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(22),
      Q => src_mac(6),
      R => p_0_in
    );
\src_mac_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(23),
      Q => src_mac(7),
      R => p_0_in
    );
\src_mac_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => src_mac(8),
      R => p_0_in
    );
\src_mac_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \src_mac[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => src_mac(9),
      R => p_0_in
    );
\udp_dst_port[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(8),
      O => \udp_dst_port[0]_i_1_n_0\
    );
\udp_dst_port[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(2),
      O => \udp_dst_port[10]_i_1_n_0\
    );
\udp_dst_port[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(3),
      O => \udp_dst_port[11]_i_1_n_0\
    );
\udp_dst_port[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(4),
      O => \udp_dst_port[12]_i_1_n_0\
    );
\udp_dst_port[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(5),
      O => \udp_dst_port[13]_i_1_n_0\
    );
\udp_dst_port[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(6),
      O => \udp_dst_port[14]_i_1_n_0\
    );
\udp_dst_port[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC8888CCC888C8"
    )
        port map (
      I0 => \dst_mac[47]_i_4_n_0\,
      I1 => word_count0,
      I2 => word_count_reg(2),
      I3 => word_count_reg(0),
      I4 => word_count_reg(3),
      I5 => word_count_reg(1),
      O => \udp_dst_port[15]_i_1_n_0\
    );
\udp_dst_port[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(7),
      O => \udp_dst_port[15]_i_2_n_0\
    );
\udp_dst_port[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(9),
      O => \udp_dst_port[1]_i_1_n_0\
    );
\udp_dst_port[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(10),
      O => \udp_dst_port[2]_i_1_n_0\
    );
\udp_dst_port[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(11),
      O => \udp_dst_port[3]_i_1_n_0\
    );
\udp_dst_port[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(12),
      O => \udp_dst_port[4]_i_1_n_0\
    );
\udp_dst_port[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(13),
      O => \udp_dst_port[5]_i_1_n_0\
    );
\udp_dst_port[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(14),
      O => \udp_dst_port[6]_i_1_n_0\
    );
\udp_dst_port[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(15),
      O => \udp_dst_port[7]_i_1_n_0\
    );
\udp_dst_port[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(0),
      O => \udp_dst_port[8]_i_1_n_0\
    );
\udp_dst_port[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(1),
      O => \udp_dst_port[9]_i_1_n_0\
    );
\udp_dst_port_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[0]_i_1_n_0\,
      Q => udp_dst_port(0),
      R => p_0_in
    );
\udp_dst_port_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[10]_i_1_n_0\,
      Q => udp_dst_port(10),
      R => p_0_in
    );
\udp_dst_port_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[11]_i_1_n_0\,
      Q => udp_dst_port(11),
      R => p_0_in
    );
\udp_dst_port_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[12]_i_1_n_0\,
      Q => udp_dst_port(12),
      R => p_0_in
    );
\udp_dst_port_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[13]_i_1_n_0\,
      Q => udp_dst_port(13),
      R => p_0_in
    );
\udp_dst_port_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[14]_i_1_n_0\,
      Q => udp_dst_port(14),
      R => p_0_in
    );
\udp_dst_port_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[15]_i_2_n_0\,
      Q => udp_dst_port(15),
      R => p_0_in
    );
\udp_dst_port_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[1]_i_1_n_0\,
      Q => udp_dst_port(1),
      R => p_0_in
    );
\udp_dst_port_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[2]_i_1_n_0\,
      Q => udp_dst_port(2),
      R => p_0_in
    );
\udp_dst_port_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[3]_i_1_n_0\,
      Q => udp_dst_port(3),
      R => p_0_in
    );
\udp_dst_port_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[4]_i_1_n_0\,
      Q => udp_dst_port(4),
      R => p_0_in
    );
\udp_dst_port_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[5]_i_1_n_0\,
      Q => udp_dst_port(5),
      R => p_0_in
    );
\udp_dst_port_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[6]_i_1_n_0\,
      Q => udp_dst_port(6),
      R => p_0_in
    );
\udp_dst_port_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[7]_i_1_n_0\,
      Q => udp_dst_port(7),
      R => p_0_in
    );
\udp_dst_port_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[8]_i_1_n_0\,
      Q => udp_dst_port(8),
      R => p_0_in
    );
\udp_dst_port_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_dst_port[9]_i_1_n_0\,
      Q => udp_dst_port(9),
      R => p_0_in
    );
udp_header_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \dst_mac[47]_i_4_n_0\,
      I1 => word_count_reg(2),
      I2 => word_count_reg(3),
      I3 => word_count_reg(1),
      I4 => word_count_reg(0),
      I5 => \udp_src_port[15]_i_2_n_0\,
      O => udp_header_valid0
    );
udp_header_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => eth_header_valid2_out,
      D => udp_header_valid0,
      Q => udp_header_valid,
      R => p_0_in
    );
\udp_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[0]_i_1_n_0\,
      Q => udp_length(0),
      R => p_0_in
    );
\udp_length_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[10]_i_1_n_0\,
      Q => udp_length(10),
      R => p_0_in
    );
\udp_length_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[11]_i_1_n_0\,
      Q => udp_length(11),
      R => p_0_in
    );
\udp_length_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[12]_i_1_n_0\,
      Q => udp_length(12),
      R => p_0_in
    );
\udp_length_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[13]_i_1_n_0\,
      Q => udp_length(13),
      R => p_0_in
    );
\udp_length_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[14]_i_1_n_0\,
      Q => udp_length(14),
      R => p_0_in
    );
\udp_length_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[15]_i_1_n_0\,
      Q => udp_length(15),
      R => p_0_in
    );
\udp_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[1]_i_1_n_0\,
      Q => udp_length(1),
      R => p_0_in
    );
\udp_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[2]_i_1_n_0\,
      Q => udp_length(2),
      R => p_0_in
    );
\udp_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[3]_i_1_n_0\,
      Q => udp_length(3),
      R => p_0_in
    );
\udp_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[4]_i_1_n_0\,
      Q => udp_length(4),
      R => p_0_in
    );
\udp_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[5]_i_1_n_0\,
      Q => udp_length(5),
      R => p_0_in
    );
\udp_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[6]_i_1_n_0\,
      Q => udp_length(6),
      R => p_0_in
    );
\udp_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[7]_i_1_n_0\,
      Q => udp_length(7),
      R => p_0_in
    );
\udp_length_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[8]_i_1_n_0\,
      Q => udp_length(8),
      R => p_0_in
    );
\udp_length_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \udp_dst_port[15]_i_1_n_0\,
      D => \udp_src_port[9]_i_1_n_0\,
      Q => udp_length(9),
      R => p_0_in
    );
\udp_src_port[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(24),
      O => \udp_src_port[0]_i_1_n_0\
    );
\udp_src_port[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(18),
      O => \udp_src_port[10]_i_1_n_0\
    );
\udp_src_port[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(19),
      O => \udp_src_port[11]_i_1_n_0\
    );
\udp_src_port[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(20),
      O => \udp_src_port[12]_i_1_n_0\
    );
\udp_src_port[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(21),
      O => \udp_src_port[13]_i_1_n_0\
    );
\udp_src_port[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(22),
      O => \udp_src_port[14]_i_1_n_0\
    );
\udp_src_port[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(23),
      O => \udp_src_port[15]_i_1_n_0\
    );
\udp_src_port[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \udp_src_port[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_4_n_0\,
      I2 => \udp_src_port[15]_i_5_n_0\,
      I3 => \udp_src_port[15]_i_6_n_0\,
      I4 => \udp_src_port[15]_i_7_n_0\,
      I5 => \udp_src_port[15]_i_8_n_0\,
      O => \udp_src_port[15]_i_2_n_0\
    );
\udp_src_port[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^ethertype\(10),
      I1 => \^ethertype\(11),
      I2 => \^ethertype\(9),
      I3 => \^ethertype\(8),
      O => \udp_src_port[15]_i_3_n_0\
    );
\udp_src_port[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^ethertype\(15),
      I1 => \^ethertype\(14),
      I2 => \^ethertype\(13),
      I3 => \^ethertype\(12),
      O => \udp_src_port[15]_i_4_n_0\
    );
\udp_src_port[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^ip_protocol\(3),
      I1 => \^ip_protocol\(2),
      I2 => \^ip_protocol\(1),
      I3 => \^ip_protocol\(0),
      O => \udp_src_port[15]_i_5_n_0\
    );
\udp_src_port[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^ip_protocol\(7),
      I1 => \^ip_protocol\(6),
      I2 => \^ip_protocol\(5),
      I3 => \^ip_protocol\(4),
      O => \udp_src_port[15]_i_6_n_0\
    );
\udp_src_port[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^ethertype\(7),
      I1 => \^ethertype\(6),
      I2 => \^ethertype\(5),
      I3 => \^ethertype\(4),
      O => \udp_src_port[15]_i_7_n_0\
    );
\udp_src_port[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^ethertype\(3),
      I1 => \^ethertype\(2),
      I2 => \^ethertype\(1),
      I3 => \^ethertype\(0),
      O => \udp_src_port[15]_i_8_n_0\
    );
\udp_src_port[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(25),
      O => \udp_src_port[1]_i_1_n_0\
    );
\udp_src_port[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(26),
      O => \udp_src_port[2]_i_1_n_0\
    );
\udp_src_port[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(27),
      O => \udp_src_port[3]_i_1_n_0\
    );
\udp_src_port[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(28),
      O => \udp_src_port[4]_i_1_n_0\
    );
\udp_src_port[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(29),
      O => \udp_src_port[5]_i_1_n_0\
    );
\udp_src_port[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(30),
      O => \udp_src_port[6]_i_1_n_0\
    );
\udp_src_port[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(31),
      O => \udp_src_port[7]_i_1_n_0\
    );
\udp_src_port[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(16),
      O => \udp_src_port[8]_i_1_n_0\
    );
\udp_src_port[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \dst_ip[15]_i_3_n_0\,
      I1 => \udp_src_port[15]_i_2_n_0\,
      I2 => s_axis_tdata(17),
      O => \udp_src_port[9]_i_1_n_0\
    );
\udp_src_port_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[0]_i_1_n_0\,
      Q => udp_src_port(0),
      R => p_0_in
    );
\udp_src_port_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[10]_i_1_n_0\,
      Q => udp_src_port(10),
      R => p_0_in
    );
\udp_src_port_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[11]_i_1_n_0\,
      Q => udp_src_port(11),
      R => p_0_in
    );
\udp_src_port_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[12]_i_1_n_0\,
      Q => udp_src_port(12),
      R => p_0_in
    );
\udp_src_port_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[13]_i_1_n_0\,
      Q => udp_src_port(13),
      R => p_0_in
    );
\udp_src_port_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[14]_i_1_n_0\,
      Q => udp_src_port(14),
      R => p_0_in
    );
\udp_src_port_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[15]_i_1_n_0\,
      Q => udp_src_port(15),
      R => p_0_in
    );
\udp_src_port_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[1]_i_1_n_0\,
      Q => udp_src_port(1),
      R => p_0_in
    );
\udp_src_port_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[2]_i_1_n_0\,
      Q => udp_src_port(2),
      R => p_0_in
    );
\udp_src_port_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[3]_i_1_n_0\,
      Q => udp_src_port(3),
      R => p_0_in
    );
\udp_src_port_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[4]_i_1_n_0\,
      Q => udp_src_port(4),
      R => p_0_in
    );
\udp_src_port_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[5]_i_1_n_0\,
      Q => udp_src_port(5),
      R => p_0_in
    );
\udp_src_port_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[6]_i_1_n_0\,
      Q => udp_src_port(6),
      R => p_0_in
    );
\udp_src_port_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[7]_i_1_n_0\,
      Q => udp_src_port(7),
      R => p_0_in
    );
\udp_src_port_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[8]_i_1_n_0\,
      Q => udp_src_port(8),
      R => p_0_in
    );
\udp_src_port_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dst_ip[15]_i_1_n_0\,
      D => \udp_src_port[9]_i_1_n_0\,
      Q => udp_src_port(9),
      R => p_0_in
    );
word_count0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => word_count_reg(0),
      CI_TOP => '0',
      CO(7) => word_count0_carry_n_0,
      CO(6) => word_count0_carry_n_1,
      CO(5) => word_count0_carry_n_2,
      CO(4) => word_count0_carry_n_3,
      CO(3) => word_count0_carry_n_4,
      CO(2) => word_count0_carry_n_5,
      CO(1) => word_count0_carry_n_6,
      CO(0) => word_count0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
      S(7 downto 0) => word_count_reg(8 downto 1)
    );
\word_count0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => word_count0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_word_count0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \word_count0_carry__0_n_2\,
      CO(4) => \word_count0_carry__0_n_3\,
      CO(3) => \word_count0_carry__0_n_4\,
      CO(2) => \word_count0_carry__0_n_5\,
      CO(1) => \word_count0_carry__0_n_6\,
      CO(0) => \word_count0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_word_count0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => \p_0_in__0\(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => word_count_reg(15 downto 9)
    );
\word_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word_count_reg(0),
      O => \word_count[0]_i_1_n_0\
    );
\word_count[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => aresetn,
      O => \word_count[15]_i_1_n_0\
    );
\word_count[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => word_count0
    );
\word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \word_count[0]_i_1_n_0\,
      Q => word_count_reg(0),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(10),
      Q => word_count_reg(10),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(11),
      Q => word_count_reg(11),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(12),
      Q => word_count_reg(12),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(13),
      Q => word_count_reg(13),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(14),
      Q => word_count_reg(14),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(15),
      Q => word_count_reg(15),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(1),
      Q => word_count_reg(1),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(2),
      Q => word_count_reg(2),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(3),
      Q => word_count_reg(3),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(4),
      Q => word_count_reg(4),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(5),
      Q => word_count_reg(5),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(6),
      Q => word_count_reg(6),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(7),
      Q => word_count_reg(7),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(8),
      Q => word_count_reg(8),
      R => \word_count[15]_i_1_n_0\
    );
\word_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_count0,
      D => \p_0_in__0\(9),
      Q => word_count_reg(9),
      R => \word_count[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    dst_mac : out STD_LOGIC_VECTOR ( 47 downto 0 );
    src_mac : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ethertype : out STD_LOGIC_VECTOR ( 15 downto 0 );
    src_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dst_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_protocol : out STD_LOGIC_VECTOR ( 7 downto 0 );
    udp_src_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_dst_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_length : out STD_LOGIC_VECTOR ( 15 downto 0 );
    eth_header_valid : out STD_LOGIC;
    ip_header_valid : out STD_LOGIC;
    udp_header_valid : out STD_LOGIC;
    frame_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "udp_parser_in_pl_udp_parser_0_0,udp_parser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "udp_parser,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(31 downto 0) <= s_axis_tdata(31 downto 0);
  \^s_axis_tkeep\(3 downto 0) <= s_axis_tkeep(3 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
  m_axis_tkeep(3 downto 0) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_udp_parser
     port map (
      aclk => aclk,
      aresetn => aresetn,
      dst_ip(31 downto 0) => dst_ip(31 downto 0),
      dst_mac(47 downto 0) => dst_mac(47 downto 0),
      eth_header_valid => eth_header_valid,
      ethertype(15 downto 0) => ethertype(15 downto 0),
      frame_done => frame_done,
      ip_header_valid => ip_header_valid,
      ip_protocol(7 downto 0) => ip_protocol(7 downto 0),
      m_axis_tready => \^m_axis_tready\,
      s_axis_tdata(31 downto 0) => \^s_axis_tdata\(31 downto 0),
      s_axis_tlast => \^s_axis_tlast\,
      s_axis_tvalid => \^s_axis_tvalid\,
      src_ip(31 downto 0) => src_ip(31 downto 0),
      src_mac(47 downto 0) => src_mac(47 downto 0),
      udp_dst_port(15 downto 0) => udp_dst_port(15 downto 0),
      udp_header_valid => udp_header_valid,
      udp_length(15 downto 0) => udp_length(15 downto 0),
      udp_src_port(15 downto 0) => udp_src_port(15 downto 0)
    );
end STRUCTURE;
