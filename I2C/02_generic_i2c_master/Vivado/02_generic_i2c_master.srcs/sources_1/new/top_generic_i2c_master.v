`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/26/2026 11:54:19 AM
// Design Name: top_generic_i2c_master
// Module Name: top_generic_i2c_master
// Project Name: generic_i2c_master
// Target Devices: KRIA+BMP280
// Tool Versions: Vivado 2022
// Description: KRIA read BMP280 ID using I2C
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_generic_i2c_master
(
	//in
	input clk_25mhz,
	input rst_n,
	input start,
	//out
	output done_led,
	output busy_led,

	//inout
	inout scl,
	inout sda
);
	//wire or reg definations
	reg  [$clog2(500000000)-1:0] cnt;//10s
	reg  valid_cnt;//10s
	wire  [7:0] chip_id;
	wire  ack_err;
	wire done;
	wire busy;
	wire clk_100mhz;
	wire ila_scl;
	wire ila_sda;
	//vio
	//master parameter 
	wire [6:0] slave_addr;
	wire [7:0] reg_addr;
	wire [7:0] write_data;
	wire 		rw;
	//vio
	vio_0 vio_0 (
	  .clk(clk_100mhz),                // input wire clk
	  .probe_out0(slave_addr),  // output wire [6 : 0] probe_out0
	  .probe_out1(reg_addr),  // output wire [7 : 0] probe_out1
	  .probe_out2(write_data),  // output wire [7 : 0] probe_out2
	  .probe_out3(rw)  // output wire [0 : 0] probe_out3
	);
	//generic_i2c_master
	generic_i2c_master #( 50000000) generic_i2c_master (clk_100mhz, rst_n, start, slave_addr, reg_addr,
									write_data, rw, done, busy, ack_err, chip_id, scl, sda);
	//clock
    clk_wiz_0 clk_wiz_0
	   (
		// Clock out ports
		.clk_out1(clk_100mhz),     // output clk_out1
	   // Clock in ports
		.clk_in1(clk_25mhz)      // input clk_in1
		);
		
	//led
	always @(posedge clk_100mhz) begin
		if (!rst_n) begin
			cnt <=0;
			valid_cnt <=0;
		end
		else begin
			if (done)
				valid_cnt <=1;
			else if (cnt==500000000-1) begin
				valid_cnt <=0;
				cnt <=0;
			end
			if (valid_cnt)
				cnt <= cnt +1;
		
		end
	end
	assign done_led = valid_cnt;
	assign busy_led = busy;
endmodule
