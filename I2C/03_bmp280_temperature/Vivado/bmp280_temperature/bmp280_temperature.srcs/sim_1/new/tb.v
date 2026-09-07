`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 09/07/2026 10:43:08 AM
// Design Name: tb
// Module Name: tb
// Project Name: bmp280_temperature
// Target Devices: KRIA+BMP280
// Tool Versions: Vivado2022
// Description: Read BMP280 temperature using generic I2C master.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb(

    );
	reg clk;
	reg rst_n;
	reg start;
	//call instance
	top_bmp280_controller #(2) top_bmp280_controller (clk, rst_n, start);
	// create reset_n and initial others
	initial begin
		rst_n = 0;
		clk = 0;
		start = 0;
	#50 rst_n = 1;
	end
	//create clock
	always #50 clk = !clk;
	//create others
	initial begin
		wait(!rst_n)
		@(posedge clk) begin
			start 		 <= 0;
		end
		@(posedge clk) begin
			start 		 <= 1;
		end
		@(posedge clk) begin
			start 		 <= 0;
		end
	
	end
endmodule
