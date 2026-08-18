`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/07/2026 08:33:00 AM
// Design Name: w25q64_controller
// Module Name: w25q64_controller
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


module w25q64_controller #(parameter CLK_DIV=50000000, MAX_BYTE=10)
	(
	input clk,
	input rst_n,
	//command
	input start,
	input [2:0] command,
	input [23:0] address,
	input [15:0] data_in,
	//read data
	output reg [15:0] o_read_data,
	output reg [23:0] o_jedec_id,
	output reg [7:0] o_status_reg,
	output reg verify_led,
	//out interface
	output spi_clk, //1s
	output spi_mosi, //master out
	output spi_cs_n, //chip selec n
	input spi_miso, //master in
	//status
	output reg done_led, //done_led
	output reg busy_led //busy_led
    );
	//state
	reg [2:0] state;
	reg [2:0] next_state;
	localparam IDLE=3'd0;
	localparam JEDEC_ID=3'd1;
	localparam STATUS_READ=3'd2;
	localparam DATA_READ=3'd3;
	localparam PAGE_PRO=3'd4;
	localparam SEC_ERASE=3'd5;
	localparam FINISH=3'd6;
	//register input
	reg  d_start;
	wire  rasing_start;
	reg [2:0] r_command;
	reg [23:0] r_address;
	reg [15:0] r_data_in;
	//send to spi_master_mode0
	reg spi_start;
	reg [3:0] spi_byte_transfer;
	reg [MAX_BYTE*8-1:0] spi_data_in;
	
	//register process
	reg [3:0] counter;
	reg [MAX_BYTE*8-1:0] r_spi_data_out;
	reg done_page_pro;
	reg done_sec_erase;
	reg verify_ok;
	//call instance
	wire [MAX_BYTE*8-1:0] spi_data_out;
	wire spi_done;
	wire spi_busy;
	//spi_master_mode0
	spi_master_mode0 #(CLK_DIV, MAX_BYTE) spi_master_mode0(clk, rst_n, spi_start, spi_byte_transfer, spi_data_in, 
		spi_done, spi_busy, spi_data_out, spi_clk, spi_mosi, spi_cs_n, spi_miso);
	//latch input and state transition
	always @(posedge clk) begin
		if(!rst_n) begin
			state <= 0;
			d_start <= 0;
			r_command <= 0;
			r_address <= 0;
			r_data_in <= 0;
		end
		else begin
			state <= next_state;
			d_start <= start;
			if (start) begin
				r_command <= command;
				r_address <= address;
				r_data_in <= data_in;
			end
		end
	end
	assign rasing_start =  start&(!d_start);
	//state machine
	always @(*) begin
		case (state)
			IDLE: next_state = (rasing_start)&(!spi_busy) ?  command: IDLE;
			JEDEC_ID: next_state = spi_done ? FINISH: JEDEC_ID;
			STATUS_READ: next_state = spi_done ? FINISH: STATUS_READ;
			DATA_READ: next_state = spi_done ? FINISH: DATA_READ;
			PAGE_PRO: next_state = done_page_pro ?  FINISH : PAGE_PRO;
			SEC_ERASE: next_state = done_sec_erase ?  FINISH : SEC_ERASE;
			FINISH: next_state = IDLE;
			default: next_state = IDLE;
		endcase
	end
	//process
	always @(posedge clk) begin
		if (!rst_n) begin
			//in
			spi_start <= 0;
			spi_byte_transfer <= 0;
			spi_data_in <= 0;
			done_page_pro <= 0;
			done_sec_erase <= 0;
			counter <=0;
			r_spi_data_out <=0;
			//out
			verify_ok <=0;
			o_read_data <=0;
			o_jedec_id <=0;
			o_status_reg <=0;
		end
		else begin
			//JEDEC_ID
			if (state==JEDEC_ID) begin
				o_read_data <=0;
				o_jedec_id <=0;
				o_status_reg <=0;
				spi_start <=1;
				spi_byte_transfer <=4;
				spi_data_in <={8'h9F, {{MAX_BYTE*8-8}{1'b0}}};
				if (spi_done)
					r_spi_data_out <= spi_data_out;
			end
			//STATUS_READ
			else if (state==STATUS_READ) begin
				spi_start <=1;
				spi_byte_transfer <=2;
				spi_data_in <={8'h05, {{MAX_BYTE*8-8}{1'b0}}};
				if (spi_done)
					r_spi_data_out <= spi_data_out;
			end
			//DATA_READ
			else if (state==DATA_READ) begin
					spi_start <=1;
					spi_byte_transfer <=6;
					spi_data_in <={8'h03,r_address, 16'd0, {{MAX_BYTE*8-8*6}{1'b0}}};
					if (spi_done)
						r_spi_data_out <= spi_data_out;
				end
			//PAGE_PRO
			else if (state==PAGE_PRO) begin
				if (spi_done) begin
					counter <= counter +1;
					spi_start <= 0;
					r_spi_data_out <= spi_data_out;
				end
				else begin
					//write enable
					if (counter==0) begin
						spi_start <=1;
						spi_byte_transfer <=1;
						spi_data_in <={8'h06, {{MAX_BYTE*8-8}{1'b0}}};
					end
					//Page Program
					else if (counter==1) begin
						spi_start <=1;
						spi_byte_transfer <=6;
						spi_data_in <={8'h02, r_address, r_data_in, {{MAX_BYTE*8-8*6}{1'b0}}};
					end
					// read status to check complete
					else if (counter==2) begin
						spi_start <=1;
						spi_byte_transfer <=2;
						spi_data_in <={8'h05, {{MAX_BYTE*8-8}{1'b0}}};
					end
					//re-check status again or read-data
					else if (counter==3) begin
						if (r_spi_data_out[0])
						//re-check status again
							counter <=2;
						else begin
						//read-data
							spi_start <=1;
							spi_byte_transfer <=6;
							spi_data_in <={8'h03,r_address, 16'd0, {{MAX_BYTE*8-8*6}{1'b0}}};
						end
					end
					//verificate
					else if (counter==4) begin
						if (r_spi_data_out[15:0]==r_data_in) begin
							verify_ok <=1;
						end
						done_page_pro <=1;
					end
				end
			end	
			//SECTOR ERASE
			else if (state==SEC_ERASE) begin
				if (spi_done) begin
					counter <= counter +1;
					spi_start <= 0;
					r_spi_data_out <= spi_data_out;
					// r_spi_data_out[0] <= !r_spi_data_out[0];
				end
				else begin
					//write enable
					if (counter==0) begin
						spi_start <=1;
						spi_byte_transfer <=1;
						spi_data_in <={8'h06, {{MAX_BYTE*8-8}{1'b0}}};
					end
					//sector erase
					else if (counter==1) begin
						spi_start <=1;
						spi_byte_transfer <=4;
						spi_data_in <={8'h20,r_address,{{MAX_BYTE*8-8*4}{1'b0}}};
					end
					// status read
					else if (counter==2) begin
						spi_start <=1;
						spi_byte_transfer <=2;
						spi_data_in <={8'h05, {{MAX_BYTE*8-8}{1'b0}}};
					end
					//re-check status again or read data after erase
					else if (counter==3) begin
						if (r_spi_data_out[0])
						//re-check status again
							counter <=2;
						else begin
						//read-data
							spi_start <=1;
							spi_byte_transfer <=6;
							spi_data_in <={8'h03,r_address, 16'd0, {{MAX_BYTE*8-8*6}{1'b0}}};
						end
					end
					//VERIFICATION
					else if (counter==4) begin
						if (r_spi_data_out[15:0]==16'hFFFF) begin
							verify_ok <=1;
						end
						done_sec_erase <=1;
					end
				end
			end
			//REST AGAIN
			else if (state==FINISH) begin
				spi_start <= 0;
				spi_byte_transfer <= 0;
				spi_data_in <= 0;
				r_spi_data_out <= 0;
				done_page_pro <= 0;
				done_sec_erase <= 0;
				counter <=0;
				verify_ok <=0;
				//capture
				o_read_data <= (r_command==DATA_READ)|(r_command==PAGE_PRO)|(r_command==SEC_ERASE) ? r_spi_data_out[15:0] : 0;
				o_jedec_id <= r_command==JEDEC_ID ? r_spi_data_out[23:0]: 0;
				o_status_reg <=r_command==STATUS_READ ? r_spi_data_out[7:0] : 0;
			end
		end
	end
	//output
	always @(posedge clk) begin
		if(!rst_n) begin
			done_led <= 0;
			busy_led <= 0;
			verify_led <= 0;
		end
		else begin
			if (state==FINISH) begin
				done_led <= 1;
				verify_led <= verify_ok;
			end
			
			if (state==IDLE) begin
				busy_led <= 0;
			end
			else begin
				busy_led <= 1;
			end
				
		end
	end



endmodule
