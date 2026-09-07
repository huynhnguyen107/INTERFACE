`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 09/07/2026 11:36:00 AM
// Design Name: bmp280_controller
// Module Name: bmp280_controller
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


module top_bmp280_controller
#(
	parameter [31:0] CLK_DIV =2
)
(
	//input
	input clk,
	input rst_n,
	input start
    );
	//output to generic_i2c_master
	wire  	   start_i2c;
	wire [6:0] slave_addr;
	wire [7:0] reg_addr;
	wire [7:0] write_data;
	wire 		 rw;
	//output to temperature calculation
	wire 		     valid_o;
	wire  [8*5-1:0] calib_o;
	wire  [8*3-1:0] raw_o;
	//output to bmp280_controller
	//call instance
	bmp280_controller #(CLK_DIV) bmp280_controller_0 (clk, rst_n, start, done, busy, ack_err, in_read_data,
						start_i2c, slave_addr, reg_addr, write_data, rw, valid_o, calib_o, raw_o);
	generic_i2c_master #(CLK_DIV) generic_i2c_master (clk, rst_n, start_i2c, slave_addr, reg_addr,
									write_data, rw, done, busy, ack_err, in_read_data, scl, sda);
			
endmodule
