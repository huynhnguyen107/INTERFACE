`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer:  Van-Huynh Nguyen
// 
// Create Date: 07/27/2026 09:37:02 AM
// Design Name: tb
// Module Name: tb
// Project Name: spi_master_mode0
// Target Devices: KRIA (KR260)
// Tool Versions: Vivado
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(
    );
	reg clk ;
	reg rest_n ;
	//data_in
	reg start ;
	reg [7:0] data_in ;
	//data_out flow
	wire done;
	wire busy;
	wire [7:0] data_out;
	//MASTER-SLAVE SPI
	wire spi_clk; //1MHz
	wire spi_mosi; //master out
	wire spi_cs_n; //chip select
	reg  spi_miso ;//master in
	//loop
	integer i=0;
	//call instance 
	spi_master_mode0 #(50) spi_master_mode0(clk, rest_n, start, data_in, done, busy, data_out, spi_clk, spi_mosi, spi_cs_n, spi_miso);
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
			data_in <= 8'b10101010;
			spi_miso <= spi_mosi;
		end
		@(posedge clk) begin
			start <=0;
			data_in <= 8'h00;
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
			data_in <= 8'hFF;
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
