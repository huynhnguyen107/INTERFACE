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
	reg write_en;
	reg in_scl;
	reg in_sda;
	wire scl;
	wire sda;
	integer i=0;
	//call instance
	top_bmp280_controller #(2) top_bmp280_controller (clk, rst_n, start, scl, sda);
	// create reset_n and initial others
	initial begin
		rst_n = 0;
		clk = 0;
		start = 0;
		write_en = 0;
		in_scl = 0;
		in_sda = 0;
	#50 rst_n = 1;
	end
	//create clock
	always #0.5 clk = !clk;
	//create others
	initial begin
		wait(rst_n)//=0 -> wait
		@(posedge clk) begin
			start 		 <= 0;
		end
		@(posedge clk) begin
			start 		 <= 1;
		end
		@(posedge clk) begin
			start 		 <= 0;
		end
		//control scl, sda
		for (i=0;i<20;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==18|i==19;
			end
		end
	end
	//output
	assign scl = write_en ? in_scl : 1'bz;
	assign sda = write_en ? in_sda : 1'bz;
endmodule
