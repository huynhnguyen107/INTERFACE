`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 07/29/2026 10:39:04 AM
// Design Name: top_spi_master_loopback
// Module Name: top_spi_master_loopback
// Project Name: SPI MASTER LOOPBACK
// Target Devices: KRIA (KR260)
// Tool Versions: Vivado
// Description: TOP module for spi_master_loopback
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_spi_master_loopback(
	input clk_25mhz,
	input rst_n,
	//start
	input start,
	//in/out SPI
	output spi_clk,
	output spi_mosi,
	output spi_cs_n,
	input spi_miso,
	//output for check
	output reg done_led,
	output reg busy_led
    );
	wire clk100mhz;

	wire [7:0] data_in;
	wire [7:0] data_out;
	wire done;
	wire busy;
//clock 100MHz generation
  clk_wiz_0 clk_wiz_0
   (
    // Clock out ports
    .clk_out1(clk100mhz),     // output clk_out1 100MHz
   // Clock in ports
    .clk_in1(clk_25mhz)      // input clk_in1 25MHZ
);
//vio for start and data_in
	vio_0 vio_0 (
	  .clk(clk100mhz),                // input wire clk
	  .probe_out0(data_in)  // output wire [7 : 0] probe_out1
	);

//call  spi_master_mode0 instance 
	spi_master_mode0 #(50000000) spi_master_mode1(clk100mhz, rst_n, start, data_in, done, busy, data_out, spi_clk, spi_mosi, spi_cs_n, spi_miso);
//ila 
	ila_0 ila_0 (
		.clk(clk100mhz), // input wire clk
		.probe0(rst_n), // input wire [0:0]  probe0  
		.probe1(start), // input wire [0:0]  probe1 
		.probe2(data_in), // input wire [7:0]  probe2 
		.probe3(done_led), // input wire [0:0]  probe3 
		.probe4(busy_led), // input wire [0:0]  probe4 
		.probe5(data_out), // input wire [7:0]  probe5 
		.probe6(spi_clk), // input wire [0:0]  probe6 
		.probe7(spi_mosi), // input wire [0:0]  probe7 
		.probe8(spi_cs_n), // input wire [0:0]  probe8 
		.probe9(spi_miso) // input wire [0:0]  probe9
	);
	//leds
	always @(posedge clk100mhz) begin
		if (!rst_n) begin
			done_led <= 0;
			busy_led <= 0;
		end else begin
			if (done)
				done_led <= 1'b1;

			busy_led <= busy;
		end
end

endmodule
