`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 08/26/2026 08:48:06 AM
// Design Name: tb
// Module Name: tb
// Project Name: generic_i2c_master
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
module tb ();
	reg clk;
	reg rst_n;
	reg start;
	reg [6:0] slave_addr;
	reg [7:0] reg_addr;
	reg [7:0] write_data;
	reg 	  rw;
	wire done;
	wire busy;
	wire ack_err;
	wire [7:0] chip_id;
	wire scl;
	wire sda;
	reg in_scl;
	reg in_sda;
	reg write_en;
	integer i=0;
	//call instance
	generic_i2c_master #( 1) generic_i2c_master (clk, rst_n, start, slave_addr, reg_addr,
									write_data, rw, done, busy, ack_err, chip_id, scl, sda);
	// create rst and initial others
	initial begin
		clk=0;
		rst_n=0;
		start=0;
		slave_addr=0;
		reg_addr=0;
		write_data=0;
		rw=0;
		write_en=0;
		in_scl=0;
		in_sda=0;
	#50 rst_n=1;
	end
	// create clock
	always #0.5 clk = !clk;
	//create others
	initial begin
		wait(rst_n)
		@(posedge clk) begin
			start <=1;
			write_en <=0;
			in_scl <=0;
			in_sda <=0;
			slave_addr <=7'h76;
			reg_addr <=8'hD0;
			write_data <=0;
			rw <=1;
		end
		@(posedge clk) begin
			start <=0;
			write_en <=0;
			in_scl <=0;
			in_sda <=0;
			slave_addr <=0;
			reg_addr <=0;
			write_data <=0;
			rw <=0;
		end
		@(posedge clk);
		//ACK0
		for (i=0;i<20;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==18|i==19;
			end
		end
		//ACK1
		for (i=0;i<20;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==16|i==17;
			end
		end
		//ACK2
		for (i=0;i<18;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==16|i==17;
			end
		end
		//IC_ID
		for (i=0;i<16;i=i+1) begin
			@(posedge clk) begin
				in_sda <=1;
				write_en <= 1;
			end
		end
		@(posedge clk) begin
			in_sda <=0;
			write_en <=0;
		end
		// start write_data
		for (i=0;i<1000;i=i+1) begin
			@(posedge clk) ;
		end
		@(posedge clk) begin
			start <=1;
			write_en <=0;
			in_scl <=0;
			in_sda <=0;
			slave_addr <=7'h76;
			reg_addr <=8'h10;
			write_data <=8'h77;
			rw <=0;
		end
		@(posedge clk) begin
			start <=0;
			write_en <=0;
			in_scl <=0;
			in_sda <=0;
			slave_addr <=0;
			reg_addr <=0;
			write_data <=0;
			rw <=0;
		end
		@(posedge clk);
		//ACK0
		for (i=0;i<20;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==17|i==18;
			end
		end
		//ACK1
		for (i=0;i<20;i=i+1) begin
			@(posedge clk) begin
				in_sda <=0;
				write_en <= i==16|i==17;
			end
		end
		//END
		@(posedge clk) begin
			in_sda <=0;
			write_en <=0;
		end
	end
	
	
	
	assign scl = write_en ? in_scl : 1'bz;
	assign sda = write_en ? in_sda : 1'bz;
endmodule
