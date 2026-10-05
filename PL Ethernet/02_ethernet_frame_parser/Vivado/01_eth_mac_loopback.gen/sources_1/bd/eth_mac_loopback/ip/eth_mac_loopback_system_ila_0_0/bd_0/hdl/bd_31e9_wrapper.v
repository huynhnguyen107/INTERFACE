//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_31e9_wrapper.bd
//Design : bd_31e9_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_31e9_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    resetn);
  input [31:0]SLOT_0_AXIS_tdata;
  input [3:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input clk;
  input [47:0]probe0;
  input [47:0]probe1;
  input [15:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input resetn;

  wire [31:0]SLOT_0_AXIS_tdata;
  wire [3:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire clk;
  wire [47:0]probe0;
  wire [47:0]probe1;
  wire [15:0]probe2;
  wire [0:0]probe3;
  wire [0:0]probe4;
  wire resetn;

  bd_31e9 bd_31e9_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .resetn(resetn));
endmodule
