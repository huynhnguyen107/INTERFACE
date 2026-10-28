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
module tb;
    reg  [7:0] data_in;
    reg        k_in;
    reg        rd_in;
    wire [9:0] code_out;
    wire       rd_out;
    wire       k_error;
    encoder_8b10b dut (
        .data_in  (data_in),
        .k_in     (k_in),
        .rd_in    (rd_in),
        .code_out (code_out),
        .rd_out   (rd_out),
        .k_error  (k_error)
    );
    initial begin
        // TEST 1
        // K28.5 with RD-
        // BC = K28.5
        // Expected:
        // 001111 1010
        data_in = 8'hBC;
        k_in    = 1'b1;
        rd_in   = 1'b0;
        #100;
        // TEST 2
        // K28.5 with RD+
        // Expected:
        // 110000 0101
        rd_in = 1'b1;
        #100;
        // TEST 3
        // 0xBC but NORMAL DATA
        // This is D28.5, NOT K28.5.
        data_in = 8'hBC;
        k_in    = 1'b0;
        rd_in   = 1'b0;
        #100;
        // TEST 4
        // D0.0 with RD-
        // Expected:
        // 100111 0100
        data_in = 8'h00;
        k_in    = 1'b0;
        rd_in   = 1'b0;
        #100;
        // TEST 5
        // D0.0 with RD+
        // Expected:
        // 011000 1011
        rd_in = 1'b1;
        #100;
        // TEST 6
        // Invalid K-character
        // K0.0 does not exist.
        data_in = 8'h00;
        k_in    = 1'b1;
        rd_in   = 1'b0;
        #100;
        $finish;
    end
endmodule
