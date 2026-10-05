-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Oct  4 12:12:58 2026
-- Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/FPGA/Vivaldo Project/INTERFACE/PL
--               Ethernet/03_udp_parser_in_pl/Vivado/udp_parser_in_pl.gen/sources_1/bd/udp_parser_in_pl/ip/udp_parser_in_pl_clk_wiz_0_0/udp_parser_in_pl_clk_wiz_0_0_stub.vhdl}
-- Design      : udp_parser_in_pl_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udp_parser_in_pl_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end udp_parser_in_pl_clk_wiz_0_0;

architecture stub of udp_parser_in_pl_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_out3,locked,clk_in1";
begin
end;
