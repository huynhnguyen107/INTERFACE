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
module tb_cpri_control_word_gen;

    reg  [7:0]  x_index;
    reg  [7:0]  z_index;
    reg  [11:0] bfn;

    wire [127:0] control_word;
    wire [15:0]  k_char;


    cpri_control_word_gen dut (

        .x_index      (x_index),
        .z_index      (z_index),
        .bfn          (bfn),

        .control_word (control_word),
        .k_char       (k_char)

    );


    initial begin
        z_index = 8'd25;
        bfn     = 12'hABC;
        // Sync
        x_index = 8'd0;
        #100;
        // HFN
        x_index = 8'd64;
        #100;
        // BFN low
        x_index = 8'd128;
        #100;
        // BFN high
        x_index = 8'd192;
        #100;
        // Other subchannel
        x_index = 8'd10;
        #100;
    end

endmodule