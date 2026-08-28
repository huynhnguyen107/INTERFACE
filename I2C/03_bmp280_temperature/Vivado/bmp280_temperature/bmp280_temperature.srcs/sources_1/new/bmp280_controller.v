`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/28/2026 09:15:52 AM
// Design Name: bmp280_controller
// Module Name: bmp280_controller
// Project Name: bmp280_temperature
// Target Devices: KRIA+BMP280
// Tool Versions: Vivado2022
// Description: Read BMP280 temperature using generic I2C master.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bmp280_controller
#(
	parameter [31:0] CLK_DIV =50000000
)
(
	//input
	input clk,
	input rst_n,
	input start,
	//input from generic_i2c_master
	input done,
	input busy,
	input ack_err,
	input [7:0] in_read_data,
	//output to generic_i2c_master
	output [6:0] slave_addr,
	output [7:0] reg_addr,
	output [7:0] write_data,
	output 		 rw,
	//output to temperature calculation
	output reg		     valid_o,
	output reg [8*5-1:0] calib_o,
	output reg [8*3-1:0] raw_o
    );
	//state
	localparam [3:0] 
		IDLE=			4'd0,
		CALIB_LOAD=		4'd1,
		CALIB_START=	4'd2,
		CALIB_WAIT=		4'd3,
		CONFIG_LOAD=	4'd5,
		CONFIG_START=	4'd6,
		CONFIG_WAIT=	4'd7,
		WAIT_MEASURE=	4'd8,
		RAW_LOAD=		4'd9,
		RAW_START=		4'd10,
		RAW_WAIT=		4'd11,
		FINISH=			4'd12;
	localparam [6:0] SLAVE_ADDR= 7'h76;
	localparam [7:0] INI_CALIB_REG= 8'h88;
	localparam [7:0] CONFIG_REG= 8'hF4;
	localparam [7:0] CONFIG_DATA_WRITE= 8'h27;
	localparam [7:0] RAW_REG= 8'hFA;
	//data defination
	reg [3:0] 				  state;
	reg [3:0] 				  next_state;
	reg 	  				  d_start;
	wire 	  				  rasing_edge;
	reg [$clog2(CLK_DIV)-1:0] cnt_1s;
	wire 	  				  tick_1s;
	//next state logic
	reg [2:0] cnt_wait;
	reg [1:0] cnt_raw;
	reg [6:0] r_slave_addr;
	reg [7:0] r_reg_addr;
	reg [7:0] r_write_data;
	reg r_rw;
	reg r_start;
	reg [3:0] cnt_wtm;
	//create rasign edge, state transition and tick 1s
	always @(posedge clk) begin
		if (!rst_n) begin
			state <=0 ;
			d_start <=0 ;
			cnt_1s <=0 ;
		end
		else begin
			d_start <=start ;
			//counter 1s
			if (rasing_edge)
				cnt_1s <= 0 ;
			else
				cnt_1s <= cnt_1s +1;
			//state	
			if (rasing_edge)
				state <= IDLE;
			else if (tick_1s)
				state <= next_state;
		end
	end
	assign rasing_edge = !d_start & start ;
	assign tick_1s = cnt_1s == CLK_DIV-1 ;
	// next_state			
	always @(*) begin
		case (state)
			IDLE: next_state = rasing_edge ? CALIB_LOAD: IDLE;
			CALIB_LOAD: next_state = CALIB_START;
			CALIB_START: next_state = CALIB_WAIT;
			CALIB_WAIT: next_state = done ? (ack_err ? FINISH : (cnt_wait==5 ? CONFIG_LOAD: CALIB_START)) : CALIB_WAIT;
			CONFIG_LOAD: next_state = CONFIG_START;
			CONFIG_START: next_state = CONFIG_WAIT;
			CONFIG_WAIT: next_state = done ? (ack_err ? FINISH : WAIT_MEASURE) : CONFIG_WAIT;
			WAIT_MEASURE: next_state = cnt_wtm==3 ? RAW_LOAD: WAIT_MEASURE;
			RAW_LOAD: next_state = RAW_START;
			RAW_START: next_state = RAW_WAIT;
			RAW_WAIT: next_state = done ? (ack_err ? FINISH : (cnt_raw==2 ? FINISH: RAW_START)) : RAW_WAIT;
			FINISH: next_state = IDLE;
			default: next_state =  IDLE;
		endcase
	end
	//state transition logic
	always @(posedge clk) begin
		if (!rst_n) begin
			cnt_wait <=0;
			cnt_wtm <=0;
			cnt_raw <=0;
			r_slave_addr <= 0;
			r_reg_addr <= 0;
			r_write_data <= 0;
			r_rw <= 0;
			r_start <= 0;
			//output to temperature calculation
			valid_o <= 0;
			calib_o <= 0;
			raw_o <= 0;
		end
		else if (tick_1s) begin
			if (state==IDLE) begin
				valid_o <= 0;
			end
			if (state==CALIB_LOAD) begin
				r_slave_addr <= SLAVE_ADDR;
				r_reg_addr <= INI_CALIB_REG;
				r_write_data <= 0;
				r_rw <= 1;
				r_start <= 0;
				cnt_wait <= 0;
			end
			else if (state==CALIB_START) begin
				r_reg_addr <= INI_CALIB_REG+ cnt_wait;
				r_start <= 1;
				cnt_wait <= cnt_wait+1;
			end
			else if (state==CALIB_WAIT) begin
				r_start <= 0;	
				if (done)
					calib_o [cnt_wait>>3 +: 8] <= in_read_data;
			end
			else if (state==CONFIG_LOAD) begin
				r_slave_addr <= SLAVE_ADDR;
				r_reg_addr <= CONFIG_REG;
				r_write_data <= CONFIG_DATA_WRITE;
				r_rw <= 0;
				r_start <= 0;
			end
			else if (state==CONFIG_WAIT) begin
				r_start <= 1;
			end
			else if (state==CONFIG_WAIT) begin
				r_start <= 0;
			end
			else if (state==WAIT_MEASURE) begin
				cnt_wtm <= cnt_wtm +1;
			end
			else if (state==RAW_LOAD) begin
				r_slave_addr <= SLAVE_ADDR;
				r_reg_addr <= RAW_REG;
				r_write_data <= 0;
				r_rw <= 0;
				r_start <= 0;
			end
			else if (state==RAW_START) begin
				r_reg_addr <= RAW_REG+ cnt_wait;
				r_start <= 1;
				cnt_raw <= cnt_raw+1;
			end
			else if (state==RAW_WAIT) begin
				r_start <= 0;
				if (done)
					raw_o [cnt_raw>>3 +: 8] <= in_read_data;
			end
			else if (state==FINISH) begin
				cnt_wait <=0;
				cnt_wtm <=0;
				cnt_raw <=0;
				r_slave_addr <= 0;
				r_reg_addr <= 0;
				r_write_data <= 0;
				r_rw <= 0;
				r_start <= 0;
				//output
				valid_o <= 1;
			end
		end
	end
endmodule
