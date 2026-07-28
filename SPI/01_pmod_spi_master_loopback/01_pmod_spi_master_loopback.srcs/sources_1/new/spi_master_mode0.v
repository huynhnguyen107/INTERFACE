`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 07/24/2026 08:54:13 AM
// Design Name: spi_master_mode0
// Module Name: spi_master_mode0
// Project Name: SPI loopback
// Target Devices: KR260(KRIA)
// Tool Versions: Vivado
// Description: spi_master_mode
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module spi_master_mode0
	#(parameter CLK_DIV=50)//100/(2*50)=1MHz
	(	input clk,
		input rst_n,
		//data_in flow 
		input start,
		input [7:0] data_in,
		//data_out flow
		output done,
		output busy,
		output reg [7:0] data_out,
		//MASTER-SLAVE SPI
		output reg spi_clk, //1MHz
		output reg spi_mosi, //master out
		output reg spi_cs_n, //chip select
		input  spi_miso //master in
    );
	localparam IDLE = 2'b00;
	localparam INSE = 2'b01;
	localparam TRAN = 2'b10;
	localparam FINI = 2'b11;
	reg [7:0] reg_data_in;
	reg [1:0] state;
	reg [1:0] next_state;
	reg [$clog2(CLK_DIV)-1:0] cnt_clk;
	reg [$clog2(8):0] cnt_data;
	reg [7:0] data_shift;
	
	//state transition
	always @(posedge clk) begin
		if(!rst_n) begin
			state <= 0;
		end
		else begin
			state <= next_state;
		end
	end
	//next_state selection
	always @(*) begin
		case (state)
			IDLE: begin
				next_state =  start ? INSE : IDLE;
			end
			INSE: begin
				next_state =  TRAN;
			end
			TRAN: begin
				next_state =  (cnt_data==8&(cnt_clk==CLK_DIV-2)) ? FINI: TRAN;
			end
			FINI: begin
				next_state =  IDLE ;
			end
			default: 
				next_state =  IDLE;
		endcase
	end
	//clock divider and transfer data_in
	always @(posedge clk) begin
		if (!rst_n) begin
			reg_data_in <= 0;
			cnt_clk <= 0;
			cnt_data <= 0;
			spi_clk <= 0;
			data_out <= 0;
			data_shift <= 0;
			spi_mosi <= 0;
			spi_cs_n <= 1;
		end
		else begin
			if (state==IDLE) begin
				spi_clk <= 0;
				cnt_clk <= 0;
				spi_cs_n <= 0;
				cnt_data <= 0;
				if (start)
					reg_data_in <= data_in;
			end
			else if (state==INSE) begin
				data_shift <= reg_data_in;
				spi_mosi <= reg_data_in[7];
			end
			else if (state==TRAN) begin
				cnt_clk <= (cnt_clk==CLK_DIV-1) ?  0 : cnt_clk+1;
				if (cnt_clk==CLK_DIV-1) begin
					if (!spi_clk) begin//sample at spi_clk 0->1
						spi_clk <= 1;
						data_out <= {data_out[6:0], spi_miso};
					end
					else if (spi_clk) begin//update at spi_clk 1->0
						spi_clk <= 0;
						spi_mosi <= data_shift[6];
						data_shift <= {data_shift[6:0], 1'b0};
						cnt_data <= cnt_data +1;
					end
				end	
			end
			else if (state==FINI) begin
				spi_cs_n <= 1;
				spi_clk <= 0;
				cnt_clk <= 0;
				cnt_data <= 0;
			end
		end
	end
	//output 
	assign done = state==FINI;
	assign busy = !(state==IDLE);
endmodule

