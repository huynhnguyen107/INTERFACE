//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c7b4_wrapper.bd
//Design : bd_c7b4_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_c7b4_wrapper
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
  input [31:0]SLOT_0_AXIS_tdata;
  input [3:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input clk;
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
  input resetn;

  wire [31:0]SLOT_0_AXIS_tdata;
  wire [3:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire clk;
  wire [47:0]probe0;
  wire [47:0]probe1;
  wire [0:0]probe10;
  wire [0:0]probe11;
  wire [0:0]probe12;
  wire [15:0]probe2;
  wire [31:0]probe3;
  wire [31:0]probe4;
  wire [7:0]probe5;
  wire [15:0]probe6;
  wire [15:0]probe7;
  wire [15:0]probe8;
  wire [0:0]probe9;
  wire resetn;

  bd_c7b4 bd_c7b4_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5),
        .probe6(probe6),
        .probe7(probe7),
        .probe8(probe8),
        .probe9(probe9),
        .resetn(resetn));
endmodule
