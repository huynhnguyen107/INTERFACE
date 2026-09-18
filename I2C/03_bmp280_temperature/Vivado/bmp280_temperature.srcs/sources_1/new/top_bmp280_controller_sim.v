`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2026 11:34:04 AM
// Design Name: 
// Module Name: top_bmp280_controller_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_bmp280_controller_sim
#(
	parameter [31:0] CLK_DIV =50000000
)
(
	//input
	input clk,
	input rst_n,
	input start,
	//BMP280
	inout scl,
	inout sda
    );
	wire clk_100mhz;
	//output to generic_i2c_master
	wire  	   start_i2c;
	wire [6:0] slave_addr;
	wire [7:0] reg_addr;
	wire [7:0] write_data;
	wire 		 rw;
	//input for generic_i2c_master
	wire done;
	wire busy;
	wire ack_err;
	wire [7:0] in_read_data;
	//output to temperature calculation
	wire 		     valid_o;
	wire  [8*6-1:0] calib_o;
	wire  [8*3-1:0] raw_o;
	//output from temp_cal
	wire valid_out;
	wire [20:0] temp_100;

	//output to bmp280_controller
	//call instance
	bmp280_controller #(CLK_DIV) bmp280_controller_0 (clk, rst_n, start, done, busy, ack_err, in_read_data,
						start_i2c, slave_addr, reg_addr, write_data, rw, valid_o, calib_o, raw_o);
	generic_i2c_master #(CLK_DIV) generic_i2c_master (clk, rst_n, start_i2c, slave_addr, reg_addr,
									write_data, rw, done, busy, ack_err, in_read_data, scl, sda);





	
endmodule
