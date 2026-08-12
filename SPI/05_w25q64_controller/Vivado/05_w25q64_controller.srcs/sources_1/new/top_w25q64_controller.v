`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/12/2026 08:26:50 AM
// Design Name: top_w25q64_controller
// Module Name: top_w25q64_controller
// Project Name: w25q64_controller
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


module top_w25q64_controller(
	input clk_25mhz,
	input rst_n,
	input start,
	output spi_clk,
	output spi_mosi,
	input spi_miso,
	output spi_cs_n,
	output done_led,
	output busy_led
    );
	wire clk_100mhz;
	wire [2:0] command;
	wire [23:0] address;
	wire [15:0] data_in;
	wire [15:0] read_data;
	wire [23:0] jedec_id;
	wire [7:0] status_reg;
	wire  verify_led;
	//call instance
	w25q64_controller #(50000000, 10) w25q64_controller (clk_100mhz, rst_n, start, command, address, data_in,
		read_data, jedec_id, status_reg, verify_ok, spi_clk, spi_mosi, spi_cs_n, spi_miso, done_led, busy_led);
	//clock 100
	  clk_wiz_0 clk_wiz_0
	   (
		// Clock out ports
		.clk_out1(clk_100mhz),     // output clk_out1
	   // Clock in ports
		.clk_in1(clk_25mhz)      // input clk_in1
	);
	//vio
	vio_0 vio_0 (
	  .clk(clk_100mhz),                // input wire clk
	  .probe_out0(command),  // output wire [2 : 0] probe_out0
	  .probe_out1(address),  // output wire [23 : 0] probe_out1
	  .probe_out2(data_in)  // output wire [15 : 0] probe_out2
	);
	//ila
	ila_0 ila_0 (
		.clk(clk_100mhz), // input wire clk


		.probe0(rst_n), // input wire [0:0]  probe0  
		.probe1(start), // input wire [0:0]  probe1 
		.probe2(command), // input wire [2:0]  probe2 
		.probe3(address), // input wire [23:0]  probe3 
		.probe4(data_in), // input wire [15:0]  probe4 
		.probe5(read_data), // input wire [15:0]  probe5 
		.probe6(jedec_id), // input wire [23:0]  probe6 
		.probe7(status_reg), // input wire [7:0]  probe7 
		.probe8(verify_ok), // input wire [0:0]  probe8 
		.probe9(spi_clk), // input wire [0:0]  probe9 
		.probe10(spi_mosi), // input wire [0:0]  probe10 
		.probe11(spi_cs_n), // input wire [0:0]  probe11 
		.probe12(spi_miso), // input wire [0:0]  probe12 
		.probe13(done_led), // input wire [0:0]  probe13 
		.probe14(busy_led) // input wire [0:0]  probe14 
	);
endmodule
