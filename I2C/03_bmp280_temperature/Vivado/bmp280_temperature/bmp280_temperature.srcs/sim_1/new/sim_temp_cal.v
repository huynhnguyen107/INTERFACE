`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 09/15/2026 10:39:01 AM
// Design Name: sim_temp_cal
// Module Name: sim_temp_cal
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

module sim_temp_cal(
    );
	reg clk;
	reg rst_n;
	reg valid_in;
	reg [8*6-1:0] calib_in;
	reg [8*3-1:0] raw_in;
	wire valid_out;
	wire [20:0] temp_100;
	//call instance
	temp_cal temp_cal(clk, rst_n, valid_in,  calib_in, raw_in, valid_out, temp_100);
	// create reset_n and initial others
	initial begin
		rst_n = 0;
		clk = 0;
		valid_in = 0;
		calib_in = 0;
		raw_in = 0;
	#50 rst_n = 1;
	end
	//create clock
	always #0.5 clk = !clk;
	//create others
	initial begin
		wait(rst_n)//=0 -> wait
		@(posedge clk) begin
			valid_in  <= 1;
			//dig_T1 = 27504, dig_T2 = 2643, dig_T3 = -1000
			calib_in  <= {16'hFC18,16'h6743,16'h6B70};
			//adc_T  = 519888=0x7EED0X
			raw_in  <= {8'h7E, 8'hED, 8'h00 };
		end
		@(posedge clk) begin
			valid_in  <= 0;
			//dig_T1 = 27504, dig_T2 = 2643, dig_T3 = -1000
			calib_in  <= 0;
			//adc_T  = 519888=0x07EED0
			raw_in  <= 0;
		end
	end
endmodule
