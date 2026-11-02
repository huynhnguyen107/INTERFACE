`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 11/02/2026 10:04:20 AM
// Design Name: decoder_8b10b
// Module Name: decoder_8b10b
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

module decoder_8b10b (
    input  [9:0] code_in,
    // Running disparity BEFORE this symbol
    // 0 = RD-
    // 1 = RD+
    input  wire       rd_in,

    output reg  [7:0] data_out,
	// k_out
	// 0 = normal DATA character
    // 1 =  control character
    output reg        k_out,
    // Running disparity AFTER this symbol
    output reg        rd_out,
    output reg        code_error,
    output reg        disparity_error
);
    // Split 10-bit symbol
    // code_in = abcdei fghj
    wire [5:0] code_6b;
    wire [3:0] code_4b;
    assign code_6b = code_in[9:4];
    assign code_4b = code_in[3:0];
    reg [4:0] x;       // EDCBA
    reg [2:0] y;       // HGF
    reg valid_6b;
    reg valid_4b;
    reg is_k28;
    reg rd_6b_ok;
    reg rd_mid;
    reg [2:0] ones_6b;
    reg [2:0] ones_4b;

    always @(*) begin
        // Defaults
        x = 5'd0;
        y = 3'd0;
        data_out = 8'd0;
        k_out = 1'b0;
        valid_6b = 1'b0;
        valid_4b = 1'b0;
        is_k28 = 1'b0;
        rd_6b_ok = 1'b1;
        rd_mid = rd_in;
        rd_out = rd_in;
        code_error      = 1'b0;
        disparity_error = 1'b0;
        // 6B → 5B DECODER
        // Reverse of the Part-05 5B/6B table.
        case (code_6b)
            // x = 0
            6'b100111: begin
                x = 5'd0;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b0);
            end
            6'b011000: begin
                x = 5'd0;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b1);
            end
            // x = 1
            6'b011101: begin
                x = 5'd1;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b0);
            end
            6'b100010: begin
                x = 5'd1;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b1);
            end
            // x = 2
            6'b101101: begin
                x = 5'd2;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b0);
            end
            6'b010010: begin
                x = 5'd2;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b1);
            end
			// x = 3
            6'b110001: begin
                x = 5'd3;
                valid_6b = 1'b1;
            end
            // x = 4
            6'b110101: begin
                x = 5'd4;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b0);
            end
            6'b001010: begin
                x = 5'd4;
                valid_6b = 1'b1;
                rd_6b_ok = (rd_in == 1'b1);
            end
			// x = 5
            6'b101001: begin x=5'd5;  valid_6b=1'b1; end
			// x = 6
            6'b011001: begin x=5'd6;  valid_6b=1'b1; end
            // x = 7
            6'b111000: begin
                x=5'd7;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b000111: begin
                x=5'd7;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 8
            6'b111001: begin
                x=5'd8;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b000110: begin
                x=5'd8;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
			// x=[9:14]
            6'b100101: begin x=5'd9;  valid_6b=1'b1; end
            6'b010101: begin x=5'd10; valid_6b=1'b1; end
            6'b110100: begin x=5'd11; valid_6b=1'b1; end
            6'b001101: begin x=5'd12; valid_6b=1'b1; end
            6'b101100: begin x=5'd13; valid_6b=1'b1; end
            6'b011100: begin x=5'd14; valid_6b=1'b1; end
            // x = 15
            6'b010111: begin
                x=5'd15;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end

            6'b101000: begin
                x=5'd15;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 16
            6'b011011: begin
                x=5'd16;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b100100: begin
                x=5'd16;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
			// x = [17:22]
            6'b100011: begin x=5'd17; valid_6b=1'b1; end
            6'b010011: begin x=5'd18; valid_6b=1'b1; end
            6'b110010: begin x=5'd19; valid_6b=1'b1; end
            6'b001011: begin x=5'd20; valid_6b=1'b1; end
            6'b101010: begin x=5'd21; valid_6b=1'b1; end
            6'b011010: begin x=5'd22; valid_6b=1'b1; end
            // x = 23
            6'b111010: begin
                x=5'd23;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b000101: begin
                x=5'd23;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 24
            6'b110011: begin
                x=5'd24;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b001100: begin
                x=5'd24;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
			// x = 25-26
            6'b100110: begin x=5'd25; valid_6b=1'b1; end
            6'b010110: begin x=5'd26; valid_6b=1'b1; end
            // x = 27
            6'b110110: begin
                x=5'd27;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b001001: begin
                x=5'd27;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // D28.x
            6'b001110: begin
                x=5'd28;
                valid_6b=1'b1;
            end
            // K28.x special code
            6'b001111: begin
                x=5'd28;
                valid_6b=1'b1;
                is_k28=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b110000: begin
                x=5'd28;
                valid_6b=1'b1;
                is_k28=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 29
            6'b101110: begin
                x=5'd29;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b010001: begin
                x=5'd29;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 30
            6'b011110: begin
                x=5'd30;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b100001: begin
                x=5'd30;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            // x = 31
            6'b101011: begin
                x=5'd31;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b0);
            end
            6'b010100: begin
                x=5'd31;
                valid_6b=1'b1;
                rd_6b_ok=(rd_in==1'b1);
            end
            default: begin
                valid_6b = 1'b0;
            end
        endcase
        // Running Disparity after first 6 bits
        ones_6b =
            code_6b[0] +
            code_6b[1] +
            code_6b[2] +
            code_6b[3] +
            code_6b[4] +
            code_6b[5];
        if (ones_6b > 3)
            rd_mid = 1'b1;
        else if (ones_6b < 3)
            rd_mid = 1'b0;
        else
            rd_mid = rd_in;
        // 4B → 3B DECODER
        if (valid_6b) begin
            // K28.x
            if (is_k28) begin
                k_out = 1'b1;
                if (rd_mid == 1'b0) begin
                    case (code_4b)
                        4'b1011: begin y=3'd0; valid_4b=1'b1; end
                        4'b0110: begin y=3'd1; valid_4b=1'b1; end
                        4'b1010: begin y=3'd2; valid_4b=1'b1; end
                        4'b1100: begin y=3'd3; valid_4b=1'b1; end
                        4'b1101: begin y=3'd4; valid_4b=1'b1; end
                        4'b0101: begin y=3'd5; valid_4b=1'b1; end
                        4'b1001: begin y=3'd6; valid_4b=1'b1; end
                        4'b0111: begin y=3'd7; valid_4b=1'b1; end
                        default:
                            valid_4b = 1'b0;
                    endcase
                end
                else begin
                    case (code_4b)
                        4'b0100: begin y=3'd0; valid_4b=1'b1; end
                        4'b1001: begin y=3'd1; valid_4b=1'b1; end
                        4'b0101: begin y=3'd2; valid_4b=1'b1; end
                        4'b0011: begin y=3'd3; valid_4b=1'b1; end
                        4'b0010: begin y=3'd4; valid_4b=1'b1; end
                        4'b1010: begin y=3'd5; valid_4b=1'b1; end
                        4'b0110: begin y=3'd6; valid_4b=1'b1; end
                        4'b1000: begin y=3'd7; valid_4b=1'b1; end
                        default:
                            valid_4b = 1'b0;
                    endcase
                end
            end
            // Normal DATA or K23.7/K27.7/K29.7/K30.7
            else begin
                // Other legal K.x.7 characters
                if (((x == 5'd23) ||(x == 5'd27) ||(x == 5'd29) ||(x == 5'd30))
                    &&((!rd_mid && (code_4b == 4'b0111)) ||( rd_mid && (code_4b == 4'b1000)))) 
				begin
                    y = 3'd7;
                    k_out = 1'b1;
                    valid_4b = 1'b1;
                end
                // Normal DATA
                else begin
                    k_out = 1'b0;
                    // RD-
                    if (rd_mid == 1'b0) begin
                        case (code_4b)
                            4'b1011:
                                begin y=3'd0; valid_4b=1'b1; end
                            4'b1001:
                                begin y=3'd1; valid_4b=1'b1; end
                            4'b0101:
                                begin y=3'd2; valid_4b=1'b1; end
                            4'b1100:
                                begin y=3'd3; valid_4b=1'b1; end
                            4'b1101:
                                begin y=3'd4; valid_4b=1'b1; end
                            4'b1010:
                                begin y=3'd5; valid_4b=1'b1; end
                            4'b0110:
                                begin y=3'd6; valid_4b=1'b1; end
                            // Primary-7
                            4'b1110:
                                begin y=3'd7; valid_4b=1'b1; end
                            // Alternate-7
                            4'b0111: begin
                                if ((x == 5'd17) ||(x == 5'd18) ||(x == 5'd20)) 
								begin
                                    y = 3'd7;
                                    valid_4b = 1'b1;

                                end
                            end
                            default:
                                valid_4b = 1'b0;
                        endcase
                    end
                    // RD+
                    else begin
                        case (code_4b)
                            4'b0100:
                                begin y=3'd0; valid_4b=1'b1; end
                            4'b1001:
                                begin y=3'd1; valid_4b=1'b1; end
                            4'b0101:
                                begin y=3'd2; valid_4b=1'b1; end
                            4'b0011:
                                begin y=3'd3; valid_4b=1'b1; end
                            4'b0010:
                                begin y=3'd4; valid_4b=1'b1; end
                            4'b1010:
                                begin y=3'd5; valid_4b=1'b1; end
                            4'b0110:
                                begin y=3'd6; valid_4b=1'b1; end
                            // Primary-7
                            4'b0001:
                                begin y=3'd7; valid_4b=1'b1; end
                            // Alternate-7
                            4'b1000: begin
                                if ((x == 5'd11) ||(x == 5'd13) ||(x == 5'd14)) 
								begin
                                    y = 3'd7;
                                    valid_4b = 1'b1;
                                end
                            end
                            default:
                                valid_4b = 1'b0;
                        endcase
                    end
                end
            end
        end
        // Final output
        if (valid_6b && valid_4b) begin
            data_out = {y, x};
            code_error = 1'b0;
            // ----------------------------------------------------
            // Final running disparity
            // ----------------------------------------------------
            ones_4b =
                code_4b[0] +
                code_4b[1] +
                code_4b[2] +
                code_4b[3];
            if (ones_4b > 2)
                rd_out = 1'b1;
            else if (ones_4b < 2)
                rd_out = 1'b0;
            else
                rd_out = rd_mid;
            if (!rd_6b_ok)
                disparity_error = 1'b1;
        end
        else begin
            code_error = 1'b1;
            data_out = 8'd0;
            k_out    = 1'b0;
            rd_out = rd_in;
        end
    end
endmodule
