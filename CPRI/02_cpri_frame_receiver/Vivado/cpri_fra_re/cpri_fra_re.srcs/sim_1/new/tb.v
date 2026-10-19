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
	//recever
	wire sync_locked;
	wire [3:0] w_index_o;
    wire [7:0] x_index_o;
    wire [7:0] z_index_o;
    wire  iq_valid;
	wire [15:0] i0;
	wire [15:0] i1;
	wire [15:0] i2;
	wire [15:0] i3;
	wire [15:0] q0;
	wire [15:0] q1;
	wire [15:0] q2;
	wire [15:0] q3;
	wire [31:0] frame_error_count;
    // Instances
	//gen
    cpri_fra_gen dut_gen (

        .clk          (clk),
        .rst_n        (rst_n),

        .tx_word      (tx_word),

        .w_index      (w_index),
        .x_index      (x_index),
        .z_index      (z_index),

        .control_word (control_word)

    );
	//recever
	    cpri_fra_re dut_re (

        .clk          (clk),
        .rst_n        (rst_n),

        .rx_word      (tx_word),
        .sync_locked      (sync_locked),
        .rx_w_index      (rx_w_index_o),
        .rx_x_index      (rx_x_index_o),
        .rx_z_index      (rx_z_index_o),
        .iq_valid      (iq_valid),
        .i0      (i0),
        .q0      (q0),
        .i1      (i1),
        .q1      (q1),
        .i2      (i2),
        .q2      (q2),
        .i3      (i3),
        .q3      (q3),
        .frame_error_count (frame_error_count)

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