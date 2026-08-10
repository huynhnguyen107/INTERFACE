`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/10/2026 08:16:40 AM
// Design Name: tb
// Module Name: tb
// Project Name: w25q64_controller
// Target Devices: KRIA(KRC260)+flash W25Q64 SPI Flash 3.3V
// Tool Versions:  Vivado 2022
// Description: KRIA uses a controller to read flash status using spi  (W25Q64 SPI Flash 3.3V.)
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
	reg clk;
	reg rst_n;
	//command
	reg start;
	reg [2:0] command;
	reg [23:0] address;
	reg [15:0] data_in;
	//read data
	wire [15:0] read_data;
	wire [23:0] jedec_id;
	wire [7:0] status_reg;
	wire  verify_ok;
	//out interface
	wire spi_clk; //1s
	wire spi_mosi; //master out
	wire spi_cs_n; //chip selec n
	reg spi_miso; //master in
	//status
	wire  done; //done_led
	wire  busy; //busy_led
	
	//call instance
	w25q64_controller #(50, 10) w25q64_controller (clk, rst_n, start, command, address, data_in,
						read_data, jedec_id, status_reg, verify_ok, spi_clk, spi_mosi, spi_cs_n, spi_miso, done, busy);
	//create reset_n and initial others
	initial begin
		rst_n =0;
		clk =0;
		start =0;
		command =0;
		address =0;
		data_in =0;
		spi_miso =0;
	#200 rst_n =1;
	end
	//create clock
	always #0.5 clk = !clk;
	//create others
	initial begin
		wait(rst_n)
		@(posedge clk) begin
			start <=0;
			command <=0;
			address <=0;
			data_in <=0;
			spi_miso <=0;
		end
		@(posedge clk) begin
			start <=1;
			command <=3'd5;
			address <=24'h001000;
			data_in <=16'h1070;
			spi_miso <=spi_mosi;
		end
		@(posedge clk) begin
			start <=0;
			command <=3'd0;
			address <=24'h001000;
			data_in <=16'h1070;
			spi_miso <=0;
		end
	
	end
endmodule
