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
	parameter [6:0] BMP280_ADD =7'h76,
	parameter [31:0] CLK_DIV =50000000
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
		START= 4'd1, //START: SDA ↓ when  SCL already = 1
		IC_ADD_W= 4'd2, 
		ACK_IC_ADD_W= 4'd3, 
		REG_ADD= 4'd4, 
		ACK_REG_ADD= 4'd5, 
		RE_START= 4'd6, //START: SDA ↓ when  SCL already = 1
		IC_ADD_R= 4'd7, 
		ACK_IC_ADD_R= 4'd8, 
		READ_ID= 4'd9, 
		NACK_READ_ID= 4'd10, 
		STOP= 4'd11;//START: SDA ↑ when  SCL already = 1
	//reg and wire
	reg [3:0] state;
	reg [3:0] d_state;
	reg [3:0] next_state;
	reg d_start;
	reg phase;
	wire rasing_start;
	reg [1:0] cnt_re_start;
	reg [1:0] cnt_stop;
	reg [3:0] cnt_bit;
	reg r_scl;
	reg r_sda;
	//clock 1mhz
	reg [$clog2(CLK_DIV)-1:0] cnt_1s;
	wire tick1s;
	//state transition and rasing edge start, phase, clock1s
	always @(posedge clk) begin
		if (!rst_n) begin
			d_start <=0;
			state <=IDLE;
			cnt_1s <=0;
		end
		else begin
			d_start <=start;
			//tick
			if (tick1s|rasing_start)
				cnt_1s <=0;
			else
				cnt_1s <=cnt_1s+1;
			// state transition
			if (rasing_start)
				state <= next_state;
			else if (tick1s)
				state <= next_state;

		end
	end
	//tick1s
	assign tick1s = cnt_1s==CLK_DIV-1;
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
			RE_START: next_state = cnt_re_start==2 ? IC_ADD_R : RE_START;
			IC_ADD_R: next_state = (cnt_bit==7)&phase ? ACK_IC_ADD_R: IC_ADD_R;
			ACK_IC_ADD_R: next_state = phase? (sda ? STOP: READ_ID): ACK_IC_ADD_R;
			READ_ID: next_state = (cnt_bit==7)&phase ? NACK_READ_ID: READ_ID;
			NACK_READ_ID: next_state = phase ? STOP: NACK_READ_ID;
			STOP: next_state = !phase&cnt_stop==2 ? IDLE: STOP;
			default: next_state = IDLE;
		endcase
	end
	//transmit data
	always @(posedge clk) begin
		if (!rst_n) begin
			phase <=0 ;
			ack_err <=0 ;
			r_scl <=1 ;
			r_sda <=1 ;
			cnt_re_start <=0 ;
			cnt_stop <=0 ;
			cnt_bit <=0 ;
			chip_id <=0 ;
			d_state <=0 ;
		end
		else if (tick1s) begin
			d_state <= state;//for check timming scl, sda with d_state
			if (state == IDLE) begin
				cnt_stop <=0 ;
				cnt_bit <=0 ;
				cnt_re_start <=0 ;
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
					r_scl <=1;
					if (sda)
						ack_err <= 1;
					else
						ack_err <= 0;
				end
				//update--realease sda to z
				else begin
					r_scl <=0;
					r_sda <=1;
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
					r_sda <=1;
				end
			end
			else if (state== RE_START) begin
				cnt_re_start <= cnt_re_start +1;
				if (cnt_re_start ==0) begin
					r_scl <=0;
					r_sda <=1;
				end
				else if (cnt_re_start ==1) begin
					r_scl <=1;
					r_sda <=1;
				end
				else if (cnt_re_start ==2) begin
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
					r_sda <=1;
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
					r_sda <=1;
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
					r_sda <=1;
				end
			end
			else if (state== STOP) begin
				phase <= !phase ;
				cnt_stop <= cnt_stop+1;
				if (!phase&cnt_stop==0) begin//SCL=SDA=0
					r_scl <=0 ;
					r_sda <=0;
				end
				else if(phase&cnt_stop==1) begin//SCL=1 first, SDA=0
					r_scl <=1;
					r_sda <=0;
				end
				else if(!phase&cnt_stop==2) begin//SCL=1, SDA=1 
					r_scl <=1;
					r_sda <=1;
				end
			end
		end
	end
	//output 
	assign scl = r_scl ? 1'bz: 1'b0; 
	assign sda = r_sda ? 1'bz: 1'b0; 
	assign done = state == STOP; 
	assign busy =state !=IDLE ;
	assign sda_in  =sda;
	assign scl_in  =scl;
	//debug
	ila_1 ila_1 (
		.clk(clk), // input wire clk


		.probe0(cnt_1s), // input wire [24:0]  probe0  
		.probe1(tick1s), // input wire [0:0]  probe1 
		.probe2(d_state), // input wire [3:0]  probe2 
		.probe3(phase), // input wire [0:0]  probe3 
		.probe4(r_scl), // input wire [0:0]  probe4 
		.probe5(r_sda), // input wire [0:0]  probe5 
		.probe6(cnt_bit), // input wire [3:0]  probe6 
		.probe7(chip_id), // input wire [7:0]  probe7 
		.probe8(done), // input wire [0:0]  probe8 
		.probe9(busy), // input wire [0:0]  probe9
		.probe10(cnt_re_start), // input wire [1:0]  probe10
		.probe11(sda_in), // input wire [0:0]  probe11
		.probe12(scl_in) // input wire [0:0]  probe12
	);

	
endmodule
