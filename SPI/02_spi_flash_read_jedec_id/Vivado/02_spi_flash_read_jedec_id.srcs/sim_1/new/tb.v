`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 07/31/2026 10:36:03 AM
// Design Name: tb
// Module Name: tb
// Project Name: spi_flash_read_jedec_id
// Target Devices: KRIA (KR260)
// Tool Versions: Vivado
// Description:  KRIA uses spi to read flas jedec id (W25Q64 SPI Flash 3.3V.)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();
	reg clk ;
	reg rest_n ;
	//data_in
	reg start ;
	reg [31:0] data_in ;
	//data_out flow
	wire done;
	wire busy;
	wire [31:0] data_out;
	//MASTER-SLAVE SPI
	wire spi_clk; //1MHz
	wire spi_mosi; //master out
	wire spi_cs_n; //chip select
	reg  spi_miso ;//master in
	//loop
	integer i=0;
	//call instance 
	spi_flash_read_jedec_id #(50,4) spi_flash_read_jedec_id(clk, rest_n, start, data_in, done, busy, data_out, spi_clk, spi_mosi, spi_cs_n, spi_miso);
	//create reset_n and initial others
	initial begin
		rest_n = 0;
		clk = 0;
		start = 0;
		data_in = 0;
		spi_miso = 0;
	#50 rest_n = 1;
	end
	//create clk
	always #5 clk=!clk;
	//create others
	initial begin
		wait(rest_n)
		@(posedge clk) begin
			start <=1;
			data_in <= 32'h9f000000;
			spi_miso <= spi_mosi;
		end
		@(posedge clk) begin
			start <=0;
			data_in <= 32'h00;
			spi_miso <= spi_mosi;
		end
		for (i=0;i<15000;i=i+1) begin
			@(posedge clk) begin
				start <=0;
				spi_miso <= spi_mosi;
			end
		end
		//new one
		@(posedge clk) begin
			start <=1;
			data_in <= 32'hFF;
			spi_miso <= spi_mosi;
		end
		for (i=0;i<15000;i=i+1) begin
			@(posedge clk) begin
				start <=0;
				spi_miso <= spi_mosi;
			end
		end
	end
endmodule
