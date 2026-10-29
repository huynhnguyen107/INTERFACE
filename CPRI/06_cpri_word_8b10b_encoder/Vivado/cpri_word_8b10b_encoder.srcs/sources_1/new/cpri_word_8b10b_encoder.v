`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/29/2026 10:05:15 AM
// Design Name: cpri_word_8b10b_encoder
// Module Name: cpri_word_8b10b_encoder
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

module cpri_word_8b10b_encoder (
    input   [127:0] data_in,
    input   [15:0]  k_char,
    // Running disparity entering Byte15
    // 0 = RD-
    // 1 = RD+
    input           rd_in,
    // 16 × 10-bit symbols
    output  [159:0] code_out,
    // Running disparity after Byte0
    output          rd_out,
    // One error flag for each byte
    output  [15:0]  k_error,
    // Convenience output
    output          any_k_error
);
    // Running disparity chain
    // rd_chain[16] = RD entering Byte15
    // Byte15 -> rd_chain[15]
    // Byte14 -> rd_chain[14]
    // ...
    // Byte0  -> rd_chain[0]
    wire [16:0] rd_chain;
    assign rd_chain[16] = rd_in;
    assign rd_out       = rd_chain[0];
    // Byte15
    // data_in[127:120]
    // code_out[159:150]
    encoder_8b10b enc15 (
        .data_in  (data_in[127:120]),
        .k_in     (k_char[15]),
        .rd_in    (rd_chain[16]),
        .code_out (code_out[159:150]),
        .rd_out   (rd_chain[15]),
        .k_error  (k_error[15])
    );
    // Byte14
    encoder_8b10b enc14 (
        .data_in  (data_in[119:112]),
        .k_in     (k_char[14]),
        .rd_in    (rd_chain[15]),
        .code_out (code_out[149:140]),
        .rd_out   (rd_chain[14]),
        .k_error  (k_error[14])
    );
    // Byte13
    encoder_8b10b enc13 (
        .data_in  (data_in[111:104]),
        .k_in     (k_char[13]),
        .rd_in    (rd_chain[14]),
        .code_out (code_out[139:130]),
        .rd_out   (rd_chain[13]),
        .k_error  (k_error[13])
    );
    // Byte12
    encoder_8b10b enc12 (
        .data_in  (data_in[103:96]),
        .k_in     (k_char[12]),
        .rd_in    (rd_chain[13]),
        .code_out (code_out[129:120]),
        .rd_out   (rd_chain[12]),
        .k_error  (k_error[12])
    );
    // Byte11
    encoder_8b10b enc11 (
        .data_in  (data_in[95:88]),
        .k_in     (k_char[11]),
        .rd_in    (rd_chain[12]),
        .code_out (code_out[119:110]),
        .rd_out   (rd_chain[11]),
        .k_error  (k_error[11])
    );
    // Byte10
    encoder_8b10b enc10 (
        .data_in  (data_in[87:80]),
        .k_in     (k_char[10]),
        .rd_in    (rd_chain[11]),
        .code_out (code_out[109:100]),
        .rd_out   (rd_chain[10]),
        .k_error  (k_error[10])
    );
    // Byte9
    encoder_8b10b enc9 (
        .data_in  (data_in[79:72]),
        .k_in     (k_char[9]),
        .rd_in    (rd_chain[10]),
        .code_out (code_out[99:90]),
        .rd_out   (rd_chain[9]),
        .k_error  (k_error[9])
    );
    // Byte8
    encoder_8b10b enc8 (
        .data_in  (data_in[71:64]),
        .k_in     (k_char[8]),
        .rd_in    (rd_chain[9]),
        .code_out (code_out[89:80]),
        .rd_out   (rd_chain[8]),
        .k_error  (k_error[8])
    );
    // Byte7
    encoder_8b10b enc7 (
        .data_in  (data_in[63:56]),
        .k_in     (k_char[7]),
        .rd_in    (rd_chain[8]),
        .code_out (code_out[79:70]),
        .rd_out   (rd_chain[7]),
        .k_error  (k_error[7])
    );
    // Byte6
    encoder_8b10b enc6 (
        .data_in  (data_in[55:48]),
        .k_in     (k_char[6]),
        .rd_in    (rd_chain[7]),
        .code_out (code_out[69:60]),
        .rd_out   (rd_chain[6]),
        .k_error  (k_error[6])
    );
    // Byte5
    encoder_8b10b enc5 (
        .data_in  (data_in[47:40]),
        .k_in     (k_char[5]),
        .rd_in    (rd_chain[6]),
        .code_out (code_out[59:50]),
        .rd_out   (rd_chain[5]),
        .k_error  (k_error[5])
    );
    // Byte4
    encoder_8b10b enc4 (
        .data_in  (data_in[39:32]),
        .k_in     (k_char[4]),
        .rd_in    (rd_chain[5]),
        .code_out (code_out[49:40]),
        .rd_out   (rd_chain[4]),
        .k_error  (k_error[4])
    );
    // Byte3
    encoder_8b10b enc3 (
        .data_in  (data_in[31:24]),
        .k_in     (k_char[3]),
        .rd_in    (rd_chain[4]),
        .code_out (code_out[39:30]),
        .rd_out   (rd_chain[3]),
        .k_error  (k_error[3])
    );
    // Byte2
    encoder_8b10b enc2 (
        .data_in  (data_in[23:16]),
        .k_in     (k_char[2]),
        .rd_in    (rd_chain[3]),
        .code_out (code_out[29:20]),
        .rd_out   (rd_chain[2]),
        .k_error  (k_error[2])
    );
    // Byte1
    encoder_8b10b enc1 (
        .data_in  (data_in[15:8]),
        .k_in     (k_char[1]),
        .rd_in    (rd_chain[2]),
        .code_out (code_out[19:10]),
        .rd_out   (rd_chain[1]),
        .k_error  (k_error[1])
    );
    // Byte0
    encoder_8b10b enc0 (
        .data_in  (data_in[7:0]),
        .k_in     (k_char[0]),
        .rd_in    (rd_chain[1]),
        .code_out (code_out[9:0]),
        .rd_out   (rd_chain[0]),
        .k_error  (k_error[0])
    );
    assign any_k_error = |k_error;
endmodule
