`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/20/2026 09:27:27 AM
// Design Name: cpri_iq_demapper
// Module Name: cpri_iq_demapper
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
module cpri_iq_demapper (

    input wire [127:0] iq_word,

    output wire [15:0] i0,
    output wire [15:0] q0,

    output wire [15:0] i1,
    output wire [15:0] q1,

    output wire [15:0] i2,
    output wire [15:0] q2,

    output wire [15:0] i3,
    output wire [15:0] q3

);

    assign i0 = iq_word[15:0];
    assign q0 = iq_word[31:16];

    assign i1 = iq_word[47:32];
    assign q1 = iq_word[63:48];

    assign i2 = iq_word[79:64];
    assign q2 = iq_word[95:80];

    assign i3 = iq_word[111:96];
    assign q3 = iq_word[127:112];

endmodule