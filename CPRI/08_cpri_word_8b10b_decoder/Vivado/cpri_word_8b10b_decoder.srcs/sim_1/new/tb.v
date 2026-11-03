`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/28/2026 01:56:42 PM
// Design Name: tb_cpri_word_8b10b_loopback
// Module Name: tb_cpri_word_8b10b_loopback
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
module tb_cpri_word_8b10b_loopback;
    reg  [127:0] data_in;
    reg  [15:0]  k_char_in;
    reg          rd_in;

    wire [159:0] encoded_word;
    wire         encoder_rd_out;
    wire [15:0]  encoder_k_error;
    wire         encoder_any_k_error;

    wire [127:0] decoded_data;
    wire [15:0]  k_char_out;
    wire         decoder_rd_out;

    wire [15:0]  code_error;
    wire [15:0]  disparity_error;

    wire         any_code_error;
    wire         any_disparity_error;
    // Part 06 - Word Encoder
    cpri_word_8b10b_encoder encoder (
        .data_in     (data_in),
        .k_char      (k_char_in),
        .rd_in       (rd_in),

        .code_out    (encoded_word),
        .rd_out      (encoder_rd_out),

        .k_error     (encoder_k_error),
        .any_k_error (encoder_any_k_error)

    );
    // Part 08 - Word Decoder
    cpri_word_8b10b_decoder decoder (
        .code_in             (encoded_word),
        .rd_in               (rd_in),

        .data_out            (decoded_data),
        .k_char              (k_char_out),

        .rd_out              (decoder_rd_out),

        .code_error          (code_error),
        .disparity_error     (disparity_error),

        .any_code_error      (any_code_error),
        .any_disparity_error (any_disparity_error)
    );
    initial begin
        // TEST 1
        // CPRI sync control word
        // Byte15 = BC
        // K15    = 1

        data_in = 128'd0;
        data_in[127:120] = 8'hBC;
        k_char_in = 16'd0;
        k_char_in[15] = 1'b1;
        rd_in = 1'b0;
        #100;
        // TEST 2
        // Same BC but normal DATA
        k_char_in = 16'd0;
        #100;
        // TEST 3
        // Normal 16-byte pattern
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
        k_char_in = 16'd0;
        rd_in     = 1'b0;
        #100;
        // TEST 4
        // Mixed data
        data_in = 128'h123456789ABCDEF0_1122334455667788;
        k_char_in = 16'd0;
        rd_in     = 1'b1;
        #100;
        // TEST 5
        // Another K28.5 test with RD+
        data_in = 128'd0;
        data_in[127:120] = 8'hBC;
        k_char_in = 16'd0;
        k_char_in[15] = 1'b1;
        rd_in = 1'b1;
        #100;
        $finish;
    end
endmodule