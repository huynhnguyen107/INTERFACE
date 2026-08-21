`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/20/2026 08:42:40 AM
// Design Name: i2c_bmp280_read_id
// Module Name: i2c_bmp280_read_id
// Project Name: i2c_bmp280_read_id
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


module i2c_bmp280_read_id
#(
	parameter [31:0] CLK_DIV =5000000,
	parameter [6:0] BMP280_ADD =7'h76
)
(
	//in
	input clk,
	input rst_n,
	input start,
	//out
	output done,
	output busy,
	output reg ack_err,
	output reg [7:0] chip_id,
	//inout
	inout scl,
	inout sda
);
	//constants
	localparam [7:0] BMP280_ADD_W= {BMP280_ADD,1'b0};
	localparam [7:0] BMP280_ADD_R= {BMP280_ADD,1'b1};
	localparam [7:0] BMP280_REG_ID= 8'hD0;
	//finite state machine
	localparam [3:0] 
		IDLE= 4'd0, 
		START= 4'd1, 
		IC_ADD_W= 4'd2, 
		ACK_IC_ADD_W= 4'd3, 
		REG_ADD= 4'd4, 
		ACK_REG_ADD= 4'd5, 
		RE_START= 4'd6, 
		IC_ADD_R= 4'd7, 
		ACK_IC_ADD_R= 4'd8, 
		READ_ID= 4'd9, 
		NACK_READ_ID= 4'd10, 
		STOP= 4'd11;
	//reg and wire
	reg [3:0] state;
	reg [3:0] next_state;
	reg d_start;
	reg phase;
	wire rasing_start;
	reg [1:0] cnt_re_start;
	reg [3:0] cnt_bit;
	reg r_scl;
	reg r_sda;
	//state transition and rasing edge start, phase
	always @(posedge clk) begin
		if (!rst_n) begin
			d_start <=0;
			state <=0;
		end
		else begin
			d_start <=start;
			state <=next_state;
		end
	end
	//rasing_start
	assign rasing_start = (!d_start) & start;
	//FSM
	always @(*) begin
		case(state)
			IDLE: next_state = rasing_start ? START : IDLE;
			START: next_state = IC_ADD_W;
			IC_ADD_W: next_state = (cnt_bit==7)&phase ? ACK_IC_ADD_W: IC_ADD_W;
			ACK_IC_ADD_W: next_state = phase? (sda ? STOP: REG_ADD): ACK_IC_ADD_W;
			REG_ADD: next_state = (cnt_bit==7)&phase ? ACK_REG_ADD: REG_ADD;
			ACK_REG_ADD: next_state =  phase? (sda ? STOP: RE_START): ACK_REG_ADD;
			RE_START: next_state = cnt_re_start==1 ? IC_ADD_R : RE_START;
			IC_ADD_R: next_state = (cnt_bit==7)&phase ? ACK_IC_ADD_R: IC_ADD_R;
			ACK_IC_ADD_R: next_state = phase? (sda ? STOP: READ_ID): ACK_IC_ADD_R;
			READ_ID: next_state = (cnt_bit==7)&phase ? NACK_READ_ID: READ_ID;
			NACK_READ_ID: next_state = phase ? STOP: NACK_READ_ID;
			STOP: next_state = phase ? IDLE: STOP;
			default: next_state = IDLE;
		endcase
	end
	//transmit data
	always @(posedge clk) begin
		if (!rst_n) begin
			phase <=0 ;
			ack_err <=0 ;
			r_scl <=0 ;
			r_sda <=0 ;
			cnt_re_start <=0 ;
			cnt_bit <=0 ;
			chip_id <=0 ;
		end
		else begin
			if (state == IDLE) begin
				r_scl <=1 ;
				r_sda <=1 ;
			end
			else if (state== START) begin
				//r_scl=1 & r_sda from 1 to 0
				r_scl <=1 ;
				r_sda <=0 ;
			end
			else if (state== IC_ADD_W) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					cnt_bit <= (cnt_bit==7) ? 0 : cnt_bit +1 ;
				end
				//update
				else begin
					r_scl <=0;
					r_sda <=BMP280_ADD_W[7-cnt_bit];	
				end
			end
			else if (state== ACK_IC_ADD_W) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					if (sda)
						ack_err <= 1;
					else
						ack_err <= 0;
				end
				//update
				else begin
					r_scl <=0;
				end
			end
			else if (state== REG_ADD) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					cnt_bit <= (cnt_bit==7) ? 0 : cnt_bit +1 ;
				end
				//update
				else begin
					r_scl <=0;
					r_sda <=BMP280_REG_ID[7-cnt_bit];
				end
			end
			else if (state== ACK_REG_ADD) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					if (sda)
						ack_err <= 1;
					else
						ack_err <= 0;
				end
				//update
				else begin
					r_scl <=0;
				end
			end
			else if (state== RE_START) begin
				cnt_re_start <= (cnt_re_start==1) ? 0 : cnt_re_start +1;
				if (cnt_re_start ==0) begin
					r_scl <=1;
					r_sda <=1;
				end
				else if (cnt_re_start ==1) begin
					r_scl <=1;
					r_sda <=0;
				end
			end
			else if (state== IC_ADD_R) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					cnt_bit <= (cnt_bit==7) ? 0 : cnt_bit +1 ;
				end
				//update
				else begin
					r_scl <=0;
					r_sda <=BMP280_ADD_R[7-cnt_bit];
				end
			end
			else if (state== ACK_IC_ADD_R) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					if (sda)
						ack_err <= 1;
					else
						ack_err <= 0;
				end
				//update
				else begin
					r_scl <=0;
				end
			end
			else if (state== READ_ID) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
					cnt_bit <= (cnt_bit==7) ? 0 : cnt_bit +1 ;
					chip_id[7-cnt_bit] <=sda;
				end
				//update
				else begin
					r_scl <=0;
				end
			end
			else if (state== NACK_READ_ID) begin
				phase <= !phase ;
				//sample
				if (phase) begin
					r_scl <=1 ;
				end
				//update
				else begin
					r_scl <=0;
					r_sda <=0;
				end
			end
			else if (state== STOP) begin
				phase <= !phase ;
				//sample(r_scl=1, sda from 0 to 1)
				if (phase) begin
					r_scl <=1 ;
				end
				//update
				else begin
					r_scl <=1;
					r_sda <=1;
				end
			end
		end
	end
endmodule
