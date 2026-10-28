`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/28/2026 09:14:29 AM
// Design Name: encoder_8b10b
// Module Name: encoder_8b10b
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
module encoder_8b10b (

    input  wire [7:0] data_in,
    // 0 = normal DATA character
    // 1 = K control character
    input  wire       k_in,
    // 0 = RD-
    // 1 = RD+
    input  wire       rd_in,
    output reg  [9:0] code_out,
    // Running disparity after this character
    output reg        rd_out,
    // Asserted when k_in=1 but data_in is not one of the 12 legal K characters
    output reg        k_error
);
    //		8-bit character:
    //      H G F E D C B A
    // x = EDCBA = lower 5 bits
    // y = HGF   = upper 3 bits
    // Character name:
    //
    //     D.x.y
    // or
    //     K.x.y
    wire [4:0] x;
    wire [2:0] y;
    assign x = data_in[4:0];
    assign y = data_in[7:5];
    reg [5:0] code_6b;
    reg [3:0] code_4b;
    reg rd_mid;
    // 5B / 6B DATA TABLE
    // Output order:
    //      a b c d e i
    // rd = 0 -> RD-
    // rd = 1 -> RD+
    function [5:0] encode_5b6b_data;
        input [4:0] xin;
        input       rd;
        begin
            case (xin)
                5'd0:
                    encode_5b6b_data =  rd ? 6'b011000 : 6'b100111;
                5'd1:
                    encode_5b6b_data =  rd ? 6'b100010 : 6'b011101;
                5'd2:
                    encode_5b6b_data =  rd ? 6'b010010 : 6'b101101;
                5'd3:
                    encode_5b6b_data = 6'b110001;
                5'd4:
                    encode_5b6b_data =  rd ? 6'b001010 : 6'b110101;
                5'd5:
                    encode_5b6b_data = 6'b101001;
                5'd6:
                    encode_5b6b_data = 6'b011001;

                5'd7:
                    encode_5b6b_data = rd ? 6'b000111 : 6'b111000;
                5'd8:
                    encode_5b6b_data = rd ? 6'b000110 : 6'b111001;
                5'd9:
                    encode_5b6b_data = 6'b100101;
                5'd10:
                    encode_5b6b_data = 6'b010101;
                5'd11:
                    encode_5b6b_data = 6'b110100;

                5'd12:
                    encode_5b6b_data = 6'b001101;
                5'd13:
                    encode_5b6b_data = 6'b101100;
                5'd14:
                    encode_5b6b_data = 6'b011100;
                5'd15:
                    encode_5b6b_data =
                        rd ? 6'b101000 : 6'b010111;
                5'd16:
                    encode_5b6b_data = rd ? 6'b100100 : 6'b011011;
                5'd17:
                    encode_5b6b_data = 6'b100011;
                5'd18:
                    encode_5b6b_data = 6'b010011;
                5'd19:
                    encode_5b6b_data = 6'b110010;
                5'd20:
                    encode_5b6b_data = 6'b001011;
                5'd21:
                    encode_5b6b_data = 6'b101010;
                5'd22:
                    encode_5b6b_data = 6'b011010;
                5'd23:
                    encode_5b6b_data = rd ? 6'b000101 : 6'b111010;
                5'd24:
                    encode_5b6b_data = rd ? 6'b001100 : 6'b110011;
                5'd25:
                    encode_5b6b_data = 6'b100110;
                5'd26:
                    encode_5b6b_data = 6'b010110;
                5'd27:
                    encode_5b6b_data = rd ? 6'b001001 : 6'b110110;
                // D28 is different from K28
                5'd28:
                    encode_5b6b_data = 6'b001110;
                5'd29:
                    encode_5b6b_data =rd ? 6'b010001 : 6'b101110;
                5'd30:
                    encode_5b6b_data = rd ? 6'b100001 : 6'b011110;
                5'd31:
                    encode_5b6b_data = rd ? 6'b010100 : 6'b101011;
                default:
                    encode_5b6b_data = 6'b000000;
            endcase
        end
    endfunction
    // 3B / 4B NORMAL DATA TABLE
    // Output order:
    //      f g h j
    function [3:0] encode_3b4b_data;
        input [2:0] yin;
        input [4:0] xin;
        input       rd;
        begin
            case (yin)
                3'd0:
                    encode_3b4b_data =rd ? 4'b0100 : 4'b1011;
                // Neutral disparity
                3'd1:
                    encode_3b4b_data = 4'b1001;
                // Neutral disparity
                3'd2:
                    encode_3b4b_data = 4'b0101;
                3'd3:
                    encode_3b4b_data =rd ? 4'b0011 : 4'b1100;
                3'd4:
                    encode_3b4b_data =rd ? 4'b0010 : 4'b1101;
                // Neutral disparity
                3'd5:
                    encode_3b4b_data = 4'b1010;
                // Neutral disparity
                3'd6:
                    encode_3b4b_data = 4'b0110;
                // y = 7
                // Primary and Alternate 7 encodings exist.
                // Alternate-7 prevents illegal long runs and false comma patterns.
				// prevents (fghj + abcdei)  continuous patterns(11111 or 00000)
                3'd7: begin
                    // RD-
                    if (!rd &&((xin == 5'd17) ||(xin == 5'd18) ||(xin == 5'd20)))
                        encode_3b4b_data = 4'b0111;
                    // RD+
                    else if (rd &&((xin == 5'd11) ||(xin == 5'd13) ||(xin == 5'd14)))
                        encode_3b4b_data = 4'b1000;
                    else
                        encode_3b4b_data =rd ? 4'b0001 : 4'b1110;
                end
                default:
                    encode_3b4b_data = 4'b0000;
            endcase
        end
    endfunction
    // K CHARACTER 3B / 4B TABLE
    // Used for valid K characters.
    function [3:0] encode_3b4b_k;
        input [2:0] yin;
        input       rd;
        begin
            case (yin)
                3'd0:
                    encode_3b4b_k = rd ? 4'b0100 : 4'b1011;
                3'd1:
                    encode_3b4b_k =rd ? 4'b1001 : 4'b0110;
                3'd2:
                    encode_3b4b_k =rd ? 4'b0101 : 4'b1010;
                3'd3:
                    encode_3b4b_k =rd ? 4'b0011 : 4'b1100;
                3'd4:
                    encode_3b4b_k = rd ? 4'b0010 : 4'b1101;
                3'd5:
                    encode_3b4b_k =rd ? 4'b1010 : 4'b0101;
                3'd6:
                    encode_3b4b_k =rd ? 4'b0110 : 4'b1001;
                3'd7:
                    encode_3b4b_k =rd ? 4'b1000 : 4'b0111;
                default:
                    encode_3b4b_k = 4'b0000;
            endcase
        end
    endfunction
    // Update disparity after a 6-bit block
    function next_rd6;
        input [5:0] code;
        input       current_rd;
        integer ones;
        integer i;
        begin
            ones = 0;
            for (i = 0; i < 6; i = i + 1)
                ones = ones + code[i];
            if (ones > 3)
                // More ones than zeros
                next_rd6 = 1'b1;
            else if (ones < 3)
                // More zeros than ones
                next_rd6 = 1'b0;
            else
                // Equal number of ones and zeros
                next_rd6 = current_rd;
        end
    endfunction
    // Update disparity after a 4-bit block
    function next_rd4;
        input [3:0] code;
        input       current_rd;
        integer ones;
        integer i;
        begin
            ones = 0;
            for (i = 0; i < 4; i = i + 1)
                ones = ones + code[i];
            if (ones > 2)
                next_rd4 = 1'b1;
            else if (ones < 2)
                next_rd4 = 1'b0;
            else
                next_rd4 = current_rd;
        end
    endfunction
    // Main Encoder
    always @(*) begin
        code_out = 10'd0;
        rd_out   = rd_in;
        k_error  = 1'b0;
        code_6b  = 6'd0;
        code_4b  = 4'd0;
        rd_mid   = rd_in;
        // K CHARACTER
        if (k_in) begin
            // Legal K characters:
            // K28.0
            // K28.1
            // K28.2
            // K28.3
            // K28.4
            // K28.5
            // K28.6
            // K28.7
            //
            // K23.7
            // K27.7
            // K29.7
            // K30.7
            if ((x == 5'd28) ||((y == 3'd7) &&((x == 5'd23) ||(x == 5'd27) ||(x == 5'd29) ||(x == 5'd30)))) 
			begin
                // First 5B/6B section
                if (x == 5'd28) begin
                    // K28.x has its own special 6-bit code
                    if (rd_in == 1'b0)
                        // RD-
                        code_6b = 6'b001111;
                    else
                        // RD+
                        code_6b = 6'b110000;
                end
                else begin
                    // K23.7, K27.7, K29.7, K30.7
                    // reuse their normal data 5B/6B coding.
                    code_6b = encode_5b6b_data(x, rd_in);
                end
                // Running disparity after first six bits
                rd_mid =next_rd6(code_6b, rd_in);
                // Then 3B/4B K encoding
                code_4b =encode_3b4b_k(y, rd_mid);
                // Final running disparity
                rd_out =next_rd4(code_4b, rd_mid);
                // Complete 10-bit symbol:
                // abcdei fghj
                code_out = {code_6b,code_4b};
            end
            else begin
                // Illegal K character
                k_error = 1'b1;
                code_out = 10'd0;
                rd_out = rd_in;
            end
        end
        // NORMAL DATA CHARACTER
        else begin
            // 5B -> 6B
            code_6b =encode_5b6b_data( x,rd_in );
            // Running disparity after first 6 bits
            rd_mid =next_rd6(code_6b,rd_in);
            // 3B -> 4B
            code_4b =encode_3b4b_data(y,x,rd_mid);
            // Final RD
            rd_out =next_rd4(code_4b,rd_mid );
            // Final symbol
            code_out = { code_6b,code_4b};
        end
    end
endmodule
