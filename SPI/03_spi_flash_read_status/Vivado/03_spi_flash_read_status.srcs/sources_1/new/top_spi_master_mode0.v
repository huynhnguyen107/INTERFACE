`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/04/2026 11:05:31 AM
// Design Name: top_spi_master_mode0
// Module Name: top_spi_master_mode0
// Project Name: spi_master_mode0
// Target Devices: KRIA(KRC260)+flash W25Q64 SPI Flash 3.3V
// Tool Versions: Vivado 2022
// Description: KRIA uses spi to read flash status  (W25Q64 SPI Flash 3.3V.)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_spi_master_mode0(
	input clk_25mhz,
	input rst_n,
	input start,
	//SPI interface
	output spi_clk, //1s
	output spi_mosi, //master out
	output spi_cs_n, //chip selec n
	input spi_miso, //master in
	//status
	output reg done_led, //done_led
	output reg busy_led //busy_led
    );
	//signal defination
	wire clk_100mhz;
	wire done;
	wire busy;
	wire [3: 0] byte_transfer;
	wire [10*8-1: 0] data_in;
	wire [10*8-1: 0] data_out;
	
	//clock100mhz
    clk_wiz_0 clk_wiz_0
	   (
		// Clock out ports
		.clk_100mhz(clk_100mhz),     // output clk_100mhz
	   // Clock in ports
		.clk_25mhz(clk_25mhz)      // input clk_25mhz
	);
	//spi_master_mode0
	spi_master_mode0 #(50000000) spi_master_mode0(clk_100mhz, rst_n, start, byte_transfer, data_in, done, busy, data_out, spi_clk, spi_mosi, spi_cs_n, spi_miso);
	//out leds
	always @(posedge clk_100mhz) begin
		if (!rst_n) begin
			done_led <=0;
			busy_led <=0;
		end
		else begin
			if (done)
				done_led <=1;
			busy_led <= busy;
		end
	end
	//vio for data_in
	vio_0 vio_0 (
	  .clk(clk_100mhz),                // input wire clk
	  .probe_out0(data_in),  // output wire [31 : 0] probe_out0
	  .probe_out1(byte_transfer)  // output wire [2 : 0] probe_out1
	);
	//ila
	ila_0 ila_0 (
	.clk(clk_100mhz), // input wire clk


	.probe0(rst_n), // input wire [0:0]  probe0  
	.probe1(start), // input wire [0:0]  probe1 
	.probe2(spi_clk), // input wire [0:0]  probe2 
	.probe3(spi_mosi), // input wire [0:0]  probe3 
	.probe4(spi_cs_n), // input wire [0:0]  probe4 
	.probe5(spi_miso), // input wire [0:0]  probe5 
	.probe6(done_led), // input wire [0:0]  probe6 
	.probe7(busy_led), // input wire [0:0]  probe7 
	.probe8(byte_transfer), // input wire [2:0]  probe7 
	.probe9(data_in), // input wire [31:0]  probe8 
	.probe10(data_out) // input wire [31:0]  probe9
);

endmodule
