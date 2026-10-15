`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/15/2026 08:04:56 AM
// Design Name: cpri_fra_gen
// Module Name: cpri_fra_gen
// Project Name: CPRI_Fronthaul
// Target Devices: KR260 +10Gtek SFP +Bucacoz optical loopback
// Tool Versions: Vivado 2022
// Description: CPRI_Fronthaul using SFP +external lookback
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpri_fra_gen(
	input clk,
	input rst_n,
	
	input reg  [127:0] tx_word,
	
	input reg  [3:0] w_index,
	input reg  [7:0] x_index,
	input reg  [7:0] z_index,
	
	input control_word
    );
endmodule
