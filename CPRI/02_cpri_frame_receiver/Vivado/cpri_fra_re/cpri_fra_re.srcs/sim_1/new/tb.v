`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/16/2026 09:50:40 AM
// Design Name: tb
// Module Name: tb
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


`timescale 1ns / 1ps

module tb;
    reg clk;
    reg rst_n;
    wire [127:0] tx_word;
    wire [3:0] w_index;
    wire [7:0] x_index;
    wire [7:0] z_index;
    wire control_word;

    // DUT
    cpri_fra_gen dut (

        .clk          (clk),
        .rst_n        (rst_n),

        .tx_word      (tx_word),

        .w_index      (w_index),
        .x_index      (x_index),
        .z_index      (z_index),

        .control_word (control_word)

    );
	//create rst_n and initial clk
	initial begin
		clk = 0;
		rst_n = 0;
	#50 rst_n = 1;
	end
	//create clock
	always #0.5 clk =!clk; 

endmodule