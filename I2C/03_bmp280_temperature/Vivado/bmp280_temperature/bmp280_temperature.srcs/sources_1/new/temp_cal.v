`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 09/15/2026 08:59:02 AM
// Design Name: temp_cal
// Module Name: temp_cal
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


module temp_cal(
	input clk,
	input rst_n,
	//from bmp280_controller
	input valid_in,
	input  [8*6-1:0] calib_in,
	input  [8*3-1:0] raw_in,
	//out
	output valid_out,
	output [20:0] temp_100
    );
	// ============================================================
    // Calibration bytes
    //
    // BMP280 stores calibration data little-endian:
    //
    // 0x88 = dig_T1 LSB
    // 0x89 = dig_T1 MSB
    //
    // 0x8A = dig_T2 LSB
    // 0x8B = dig_T2 MSB
    //
    // 0x8C = dig_T3 LSB
    // 0x8D = dig_T3 MSB
    // ============================================================
	// Raw temperature bytes
    //
    // 0xFA = temp_msb
    // 0xFB = temp_lsb
    // 0xFC = temp_xlsb
    //
    // adc_T = {FA, FB, FC[7:4]}
	wire [15:0] dig_T1;//unsigned
	wire [15:0] dig_T2;//signed
	wire [15:0] dig_T3;//signed
	wire [19:0] adc_T;//unsigned
	//find var 1
	wire [16:0] var1_1;//unsigned
	wire [15:0] var1_2;//unsigned
	wire [16:0] var1_3;//signed
	wire [32:0] var1_4;//signed
	wire [21:0] var1;//signed
	//find var 2
	wire [15:0] var2_1;//unsigned
	wire [16:0] var2_2;//signed
	wire [33:0] var2_3;//signed
	wire [21:0] var2_4;//signed
	wire [37:0] var2_5;//signed
	wire [23:0] var2;
	//t_fine
	wire [24:0] t_fine;
	//find temperature
	wire [27:0] t_fine_x5;
	wire [28:0] t_fine_x5_128;
	//assign
	assign dig_T1 = calib_in[15:0];
	assign dig_T2 = calib_in[31:16];
	assign dig_T3 = calib_in[47:32];
	
	assign adc_T = {raw_in[7:0], raw_in[15:8], raw_in[23:20]};
	
	// Temperature compensation
    //
    // Bosch integer algorithm:
    //
    // var1 =
    // ((((adc_T >> 3) - (dig_T1 << 1))* dig_T2) >> 11)
    // var2 =
    // (((((adc_T >> 4) - dig_T1)* ((adc_T >> 4) - dig_T1)) >> 12)* dig_T3) >> 14)
    //
    // t_fine = var1 + var2
    //
    // T = (t_fine * 5 + 128) >> 8
    assign var1_1 = adc_T[19:3];
    assign var1_2 = {dig_T1[14:0], 1'b0};
    assign var1_3 = var1_1-{1'b0, var1_2};
	mult_gen_0 mult_gen_0 (
	  .CLK(clk),  // input wire CLK
	  .A(var1_3),      // input wire [16 : 0] A
	  .B(dig_T2),      // input wire [15 : 0] B
	  .P(var1_4)      // output wire [32 : 0] P
	);
	assign var1 = var1_4[32:11];
	//find var 2
	assign var2_1 = adc_T[19:4];
    assign var2_2 = {1'b0, var2_1} - {1'b0, dig_T1} ;
	mult_gen_1 mult_gen_1 (
	  .CLK(clk),  // input wire CLK
	  .A(var2_2),      // input wire [16 : 0] A
	  .B(var2_2),      // input wire [16 : 0] B
	  .P(var2_3)      // output wire [33 : 0] P
	);
	assign var2_4 = var2_3[33:12];
	mult_gen_2 mult_gen_2 (
	  .CLK(clk),  // input wire CLK
	  .A(var2_4),      // input wire [21 : 0] A
	  .B(dig_T3),      // input wire [15 : 0] B
	  .P(var2_5)      // output wire [37 : 0] P
	);
	assign var2 = var2_3[37:14];
	//t_fine
	assign t_fine = {var1[21],var1[21],var1[21], var1} + {var2[23], var2};
	assign t_fine_x5 = {{5{t_fine[24]}}, t_fine[24:2]} + {{3{t_fine[24]}}, t_fine} ;
	assign t_fine_x5_128 = {t_fine_x5[27], t_fine_x5} + 128;
	assign temp_100 = t_fine_x5_128[27:8];
	
endmodule
