`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/21/2026 11:34:57 AM
// Design Name: top_i2c_bmp280_read_id
// Module Name: top_i2c_bmp280_read_id
// Project Name: top_i2c_bmp280_read_id
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


module top_i2c_bmp280_read_id
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
	//i2c_bmp280_read_id
	i2c_bmp280_read_id #(7'h76,50000000) i2c_bmp280_read_id(clk_100mhz, rst_n, start, done, busy,
	   ack_err, chip_id, scl, sda);
	//clock
    clk_wiz_0 clk_wiz_0
	   (
		// Clock out ports
		.clk_out1(clk_100mhz),     // output clk_out1
	   // Clock in ports
		.clk_in1(clk_25mhz)      // input clk_in1
		);
	//ila
	assign ila_scl = !scl ? 0: 1;
	assign ila_sda = !scl ? 0: 1;
	ila_0 ila_0 (
	.clk(clk_100mhz), // input wire clk
	.probe0(rst_n), // input wire [0:0]  probe0  
	.probe1(start), // input wire [0:0]  probe1 
	.probe2(done), // input wire [0:0]  probe2 
	.probe3(busy), // input wire [0:0]  probe3 
	.probe4(ila_scl), // input wire [0:0]  probe4 
	.probe5(ila_sda), // input wire [0:0]  probe5 
	.probe6(chip_id), // input wire [7:0]  probe6 
	.probe7(ack_err) // input wire [0:0]  probe7
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
