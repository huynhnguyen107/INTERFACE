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
	parameter [31:0] CLK_DIV =50000000
)
(
	//input
	input clk_25mhz,
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
	bmp280_controller #(CLK_DIV) bmp280_controller_0 (clk_100mhz, rst_n, start, done, busy, ack_err, in_read_data,
						start_i2c, slave_addr, reg_addr, write_data, rw, valid_o, calib_o, raw_o);
	generic_i2c_master #(CLK_DIV) generic_i2c_master (clk_100mhz, rst_n, start_i2c, slave_addr, reg_addr,
									write_data, rw, done, busy, ack_err, in_read_data, scl, sda);

	temp_cal temp_cal0(clk_100mhz, rst_n, valid_o,  calib_o, raw_o, valid_out, temp_100);	

	//clock 100mhz
	  clk_wiz_0 clk_wiz_0
	   (
		// Clock out ports
		.clk_out1(clk_100mhz),     // output clk_out1
	   // Clock in ports
		.clk_in1(clk_25mhz)      // input clk_in1
	);
	//debug
	ila_0 ila_0 (
	.clk(clk_100mhz), // input wire clk


	.probe0(rst_n), // input wire [0:0]  probe0  
	.probe1(start), // input wire [0:0]  probe1 
	.probe2(done), // input wire [0:0]  probe2 
	.probe3(busy), // input wire [0:0]  probe3 
	.probe4(ack_err), // input wire [0:0]  probe4 
	.probe5(in_read_data), // input wire [7:0]  probe5 
	.probe6(start_i2c), // input wire [0:0]  probe6 
	.probe7(slave_addr), // input wire [6:0]  probe7 
	.probe8(reg_addr), // input wire [7:0]  probe8 
	.probe9(write_data), // input wire [7:0]  probe9 
	.probe10(rw), // input wire [0:0]  probe10 
	.probe11(valid_o), // input wire [0:0]  probe11 
	.probe12(calib_o), // input wire [47:0]  probe12 
	.probe13(raw_o), // input wire [23:0]  probe13 
	.probe14(valid_out), // input wire [0:0]  probe14 
	.probe15(temp_100) // input wire [20:0]  probe15
);


	
endmodule
