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
module tb_8b10b_loopback;
    reg [7:0] data_in;
    reg       k_in;
    reg       rd_in;
    wire [9:0] encoded_data;
    wire       encoder_rd_out;
    wire       k_error;
    wire [7:0] decoded_data;
    wire       decoded_k;
    wire       decoder_rd_out;
    wire       code_error;
    wire       disparity_error;
    encoder_8b10b encoder (
        .data_in  (data_in),
        .k_in     (k_in),
        .rd_in    (rd_in),
        .code_out (encoded_data),
        .rd_out   (encoder_rd_out),
        .k_error  (k_error)
    );
    decoder_8b10b decoder (
        .code_in          (encoded_data),
        .rd_in            (rd_in),
        .data_out         (decoded_data),
        .k_out            (decoded_k),
        .rd_out           (decoder_rd_out),
        .code_error       (code_error),
        .disparity_error  (disparity_error)
    );
    initial begin

        // K28.5 RD-
        data_in = 8'hBC;
        k_in    = 1'b1;
        rd_in   = 1'b0;
        #100;
        // K28.5 RD+
        rd_in = 1'b1;
        #100;
        // D28.5
        data_in = 8'hBC;
        k_in    = 1'b0;
        rd_in   = 1'b0;
        #100;
        // D0.0
        data_in = 8'h00;
        k_in    = 1'b0;
        rd_in   = 1'b0;
        #100;
        // Normal data
        data_in = 8'h55;
        k_in    = 1'b0;
        rd_in   = 1'b0;
        #100;
        // K23.7
        // HGF = 111
        // EDCBA = 10111 = 23
        // 11110111 = F7
        data_in = 8'hF7;
        k_in    = 1'b1;
        rd_in   = 1'b0;
        #100;
        $finish;
    end
endmodule