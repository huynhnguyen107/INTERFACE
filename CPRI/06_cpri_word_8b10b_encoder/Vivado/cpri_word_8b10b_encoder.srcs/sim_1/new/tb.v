`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/28/2026 01:56:42 PM
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

module tb_cpri_word_8b10b_encoder;
    reg  [127:0] data_in;
    reg  [15:0]  k_char;
    reg          rd_in;
    wire [159:0] code_out;
    wire         rd_out;
    wire [15:0]  k_error;
    wire         any_k_error;
    cpri_word_8b10b_encoder dut (
        .data_in     (data_in),
        .k_char      (k_char),
        .rd_in       (rd_in),
        .code_out    (code_out),
        .rd_out      (rd_out),
        .k_error     (k_error),
        .any_k_error (any_k_error)
    );
    initial begin
        // TEST 1
        // CPRI synchronization control word:
        // Byte15 = BC
        // K[15]  = 1
        // Remaining bytes = normal zero data
        data_in = 128'd0;
        data_in[127:120] = 8'hBC;
        k_char = 16'd0;
        k_char[15] = 1'b1;
        rd_in = 1'b0;
        #100;
        // TEST 2
        // Same BC but normal data
        k_char[15] = 1'b0;
        #100;
        // TEST 3
        // Simple data pattern
        data_in = {
            8'h00,
            8'h01,
            8'h02,
            8'h03,
            8'h04,
            8'h05,
            8'h06,
            8'h07,
            8'h08,
            8'h09,
            8'h0A,
            8'h0B,
            8'h0C,
            8'h0D,
            8'h0E,
            8'h0F
        };
        k_char = 16'd0;
        rd_in = 1'b0;
        #100;
        // TEST 4
        // Illegal K-character
        // Byte15 = 00
        // K=1
        data_in = 128'd0;
        k_char = 16'd0;
        k_char[15] = 1'b1;
        rd_in = 1'b0;
        #100;
        $finish;
    end
endmodule