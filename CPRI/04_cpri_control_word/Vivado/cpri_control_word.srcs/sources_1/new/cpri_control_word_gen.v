`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/21/2026 10:02:49 AM
// Design Name: cpri_control_word_gen
// Module Name: cpri_control_word_gen
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
module cpri_control_word_gen (

    input  wire [7:0]   x_index,
    input  wire [7:0]   z_index,

    // 12-bit CPRI 10-ms frame number of hyperframe 
    input  wire [11:0]  bfn,

    output reg  [127:0] control_word,

    // For future 8B/10B encoder.
    // One bit per byte of the 128-bit word.
    //
    // k_char[15] corresponds to control_word[127:120]
    output reg  [15:0]  k_char

);

    always @(*) begin
        case (x_index)

            // ====================================================
            // X = 0
            // Start of Hyperframe
            // K28.5
            // For now we store the byte value 0xBC.
            // k_char marks it as a K-character for the future
            // 8B/10B encoder.
            // ====================================================

            8'd0: begin

                control_word[127:120] = 8'hBC;
                control_word[119:0] = 120'd0;
                k_char= {1'b1,15'd0};


            end


            // ====================================================
            // X = 64
            // HFN = Hyperframe Number
            // Z = 0 ... 149
            // ====================================================

            8'd64: begin

                control_word[127:120] = z_index;
                control_word[119:0] = 120'd0;
                k_char= 0;
            end


            // ====================================================
            // X = 128
            // BFN low byte
            // BFN[7:0]
            // ====================================================
            8'd128: begin

                control_word[127:120] = bfn[7:0];
                control_word[119:0] = 120'd0;
                k_char= 0;

            end

            // ====================================================
            // X = 192
            // BFN high nibble
            // [3:0] = BFN[11:8]
            // [7:4] = reserved
            // ====================================================

            8'd192: begin

                control_word[123:120] = bfn[11:8];
                control_word[127:124] = 4'd0;
			    control_word[119:0] = 120'd0;
                k_char= 0;

            end


            // ====================================================
            // Other control subchannels
            //
            // Not implemented yet.
            // ====================================================

            default: begin

                control_word = 128'd0;
                 k_char= 0; 
            end

        endcase

    end

endmodule