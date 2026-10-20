`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/20/2026 09:27:12 AM
// Design Name: cpri_iq_mapper
// Module Name: cpri_iq_mapper
// Project Name: CPRI_Fronthaul
// Target Devices: KR260 +10Gtek SFP +Bucacoz optical loopback
// Tool Versions: Vivado 2022
// Description: CPRI_Fronthaul using SFP +external lookback
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module cpri_iq_mapper (

    input  wire [15:0] i0,
    input  wire [15:0] q0,

    input  wire [15:0] i1,
    input  wire [15:0] q1,

    input  wire [15:0] i2,
    input  wire [15:0] q2,

    input  wire [15:0] i3,
    input  wire [15:0] q3,

    output wire [127:0] iq_word

);

    // ------------------------------------------------------------
    // 128-bit CPRI IQ word
    //
    // [127:96] : AxC3 = {Q3, I3}
    // [ 95:64] : AxC2 = {Q2, I2}
    // [ 63:32] : AxC1 = {Q1, I1}
    // [ 31: 0] : AxC0 = {Q0, I0}
    // ------------------------------------------------------------

    assign iq_word = {
        q3, i3,
        q2, i2,
        q1, i1,
        q0, i0
    };

endmodule
