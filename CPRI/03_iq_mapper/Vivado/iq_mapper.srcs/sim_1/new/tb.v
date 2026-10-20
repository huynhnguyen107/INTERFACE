`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/16/2026 09:50:40 AM
// Design Name: tb
// Module Name: tb
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
`timescale 1ns / 1ps

module tb_cpri_iq_mapper;

    reg [15:0] i0, q0;
    reg [15:0] i1, q1;
    reg [15:0] i2, q2;
    reg [15:0] i3, q3;

    wire [127:0] iq_word;

    wire [15:0] rx_i0, rx_q0;
    wire [15:0] rx_i1, rx_q1;
    wire [15:0] rx_i2, rx_q2;
    wire [15:0] rx_i3, rx_q3;


    cpri_iq_mapper mapper (

        .i0(i0),
        .q0(q0),

        .i1(i1),
        .q1(q1),

        .i2(i2),
        .q2(q2),

        .i3(i3),
        .q3(q3),

        .iq_word(iq_word)

    );


    cpri_iq_demapper demapper (

        .iq_word(iq_word),

        .i0(rx_i0),
        .q0(rx_q0),

        .i1(rx_i1),
        .q1(rx_q1),

        .i2(rx_i2),
        .q2(rx_q2),

        .i3(rx_i3),
        .q3(rx_q3)

    );


    initial begin

        i0 = 16'h0001;
        q0 = 16'h1001;

        i1 = 16'h0002;
        q1 = 16'h1002;

        i2 = 16'h0003;
        q2 = 16'h1003;

        i3 = 16'h0004;
        q3 = 16'h1004;

        #100;


        // Second test pattern

        i0 = 16'h1111;
        q0 = 16'hAAAA;

        i1 = 16'h2222;
        q1 = 16'hBBBB;

        i2 = 16'h3333;
        q2 = 16'hCCCC;

        i3 = 16'h4444;
        q3 = 16'hDDDD;

        #100;

        $finish;

    end

endmodule