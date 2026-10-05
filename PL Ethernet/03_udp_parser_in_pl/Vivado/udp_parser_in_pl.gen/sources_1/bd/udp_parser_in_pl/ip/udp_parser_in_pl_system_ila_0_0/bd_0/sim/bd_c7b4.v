//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c7b4.bd
//Design : bd_c7b4
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_c7b4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_c7b4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "udp_parser_in_pl_system_ila_0_0.hwdef" *) 
module bd_c7b4
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP" *) input [3:0]SLOT_0_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [47:0]probe0;
  input [47:0]probe1;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [15:0]probe2;
  input [31:0]probe3;
  input [31:0]probe4;
  input [7:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [0:0]probe9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn_TDATA;
  wire [3:0]Conn_TKEEP;
  wire Conn_TLAST;
  wire Conn_TREADY;
  wire Conn_TVALID;
  wire clk_1;
  wire [31:0]net_slot_0_axis_tdata;
  wire [3:0]net_slot_0_axis_tkeep;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire net_slot_0_axis_tvalid;
  wire [47:0]probe0_1;
  wire [0:0]probe10_1;
  wire [0:0]probe11_1;
  wire [0:0]probe12_1;
  wire [47:0]probe1_1;
  wire [15:0]probe2_1;
  wire [31:0]probe3_1;
  wire [31:0]probe4_1;
  wire [7:0]probe5_1;
  wire [15:0]probe6_1;
  wire [15:0]probe7_1;
  wire [15:0]probe8_1;
  wire [0:0]probe9_1;
  wire resetn_1;

  assign Conn_TDATA = SLOT_0_AXIS_tdata[31:0];
  assign Conn_TKEEP = SLOT_0_AXIS_tkeep[3:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TREADY = SLOT_0_AXIS_tready;
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[47:0];
  assign probe10_1 = probe10[0];
  assign probe11_1 = probe11[0];
  assign probe12_1 = probe12[0];
  assign probe1_1 = probe1[47:0];
  assign probe2_1 = probe2[15:0];
  assign probe3_1 = probe3[31:0];
  assign probe4_1 = probe4[31:0];
  assign probe5_1 = probe5[7:0];
  assign probe6_1 = probe6[15:0];
  assign probe7_1 = probe7[15:0];
  assign probe8_1 = probe8[15:0];
  assign probe9_1 = probe9[0];
  assign resetn_1 = resetn;
  bd_c7b4_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tkeep(net_slot_0_axis_tkeep),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tkeep(Conn_TKEEP),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tready(Conn_TREADY),
        .slot_0_axis_tvalid(Conn_TVALID));
  bd_c7b4_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(probe10_1),
        .probe11(probe11_1),
        .probe12(probe12_1),
        .probe13(net_slot_0_axis_tdata),
        .probe14(net_slot_0_axis_tkeep),
        .probe15(net_slot_0_axis_tvalid),
        .probe16(net_slot_0_axis_tready),
        .probe17(net_slot_0_axis_tlast),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(probe5_1),
        .probe6(probe6_1),
        .probe7(probe7_1),
        .probe8(probe8_1),
        .probe9(probe9_1));
endmodule
