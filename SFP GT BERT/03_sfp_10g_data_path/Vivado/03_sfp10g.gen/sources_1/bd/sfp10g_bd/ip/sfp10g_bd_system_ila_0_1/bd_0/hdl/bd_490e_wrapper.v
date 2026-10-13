//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_490e_wrapper.bd
//Design : bd_490e_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_490e_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    resetn);
  input [63:0]SLOT_0_AXIS_tdata;
  input [7:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input resetn;

  wire [63:0]SLOT_0_AXIS_tdata;
  wire [7:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire [0:0]probe2;
  wire [0:0]probe3;
  wire resetn;

  bd_490e bd_490e_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .resetn(resetn));
endmodule
