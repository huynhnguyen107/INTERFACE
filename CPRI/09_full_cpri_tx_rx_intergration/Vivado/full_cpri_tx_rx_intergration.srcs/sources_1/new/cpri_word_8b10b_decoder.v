`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 11/03/2026 08:45:23 AM
// Design Name: cpri_word_8b10b_decoder
// Module Name: cpri_word_8b10b_decoder
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
module cpri_word_8b10b_decoder (
    input   [159:0] code_in,
    input           rd_in,

    output  [127:0] data_out,
    output  [15:0]  k_char,

    output          rd_out,

    output  [15:0]  code_error,
    output  [15:0]  disparity_error,

    output          any_code_error,
    output          any_disparity_error
);
    // Running disparity chain
    wire [16:0] rd_chain;
    assign rd_chain[16] = rd_in;
    assign rd_out       = rd_chain[0];
    // Symbol15
    // code_in[159:150] -> data_out[127:120]
    decoder_8b10b dec15 (
        .code_in          (code_in[159:150]),
        .rd_in            (rd_chain[16]),

        .data_out         (data_out[127:120]),
        .k_out            (k_char[15]),

        .rd_out           (rd_chain[15]),
		
        .code_error       (code_error[15]),
        .disparity_error  (disparity_error[15])
    );
	// Symbol14
    decoder_8b10b dec14 (
        .code_in          (code_in[149:140]),
        .rd_in            (rd_chain[15]),

        .data_out         (data_out[119:112]),
        .k_out            (k_char[14]),

        .rd_out           (rd_chain[14]),

        .code_error       (code_error[14]),
        .disparity_error  (disparity_error[14])
    );
	// Symbol13
    decoder_8b10b dec13 (
        .code_in          (code_in[139:130]),
        .rd_in            (rd_chain[14]),

        .data_out         (data_out[111:104]),
        .k_out            (k_char[13]),

        .rd_out           (rd_chain[13]),

        .code_error       (code_error[13]),
        .disparity_error  (disparity_error[13])
    );
	// Symbol12
    decoder_8b10b dec12 (
        .code_in          (code_in[129:120]),
        .rd_in            (rd_chain[13]),

        .data_out         (data_out[103:96]),
        .k_out            (k_char[12]),

        .rd_out           (rd_chain[12]),

        .code_error       (code_error[12]),
        .disparity_error  (disparity_error[12])
    );
	// Symbol11
    decoder_8b10b dec11 (
        .code_in          (code_in[119:110]),
        .rd_in            (rd_chain[12]),

        .data_out         (data_out[95:88]),
        .k_out            (k_char[11]),

        .rd_out           (rd_chain[11]),

        .code_error       (code_error[11]),
        .disparity_error  (disparity_error[11])
    );
	// Symbol10
    decoder_8b10b dec10 (
        .code_in          (code_in[109:100]),
        .rd_in            (rd_chain[11]),

        .data_out         (data_out[87:80]),
        .k_out            (k_char[10]),

        .rd_out           (rd_chain[10]),

        .code_error       (code_error[10]),
        .disparity_error  (disparity_error[10])
    );
	// Symbol9
    decoder_8b10b dec9 (
        .code_in          (code_in[99:90]),
        .rd_in            (rd_chain[10]),

        .data_out         (data_out[79:72]),
        .k_out            (k_char[9]),

        .rd_out           (rd_chain[9]),

        .code_error       (code_error[9]),
        .disparity_error  (disparity_error[9])
    );
	// Symbol8
    decoder_8b10b dec8 (
        .code_in          (code_in[89:80]),
        .rd_in            (rd_chain[9]),

        .data_out         (data_out[71:64]),
        .k_out            (k_char[8]),

        .rd_out           (rd_chain[8]),

        .code_error       (code_error[8]),
        .disparity_error  (disparity_error[8])
    );
	// Symbol7
    decoder_8b10b dec7 (
        .code_in          (code_in[79:70]),
        .rd_in            (rd_chain[8]),

        .data_out         (data_out[63:56]),
        .k_out            (k_char[7]),

        .rd_out           (rd_chain[7]),

        .code_error       (code_error[7]),
        .disparity_error  (disparity_error[7])
    );
	// Symbol6
    decoder_8b10b dec6 (
        .code_in          (code_in[69:60]),
        .rd_in            (rd_chain[7]),

        .data_out         (data_out[55:48]),
        .k_out            (k_char[6]),

        .rd_out           (rd_chain[6]),

        .code_error       (code_error[6]),
        .disparity_error  (disparity_error[6])
    );
	// Symbol15
    decoder_8b10b dec5 (
        .code_in          (code_in[59:50]),
        .rd_in            (rd_chain[6]),

        .data_out         (data_out[47:40]),
        .k_out            (k_char[5]),

        .rd_out           (rd_chain[5]),

        .code_error       (code_error[5]),
        .disparity_error  (disparity_error[5])
    );
	// Symbol4
    decoder_8b10b dec4 (

        .code_in          (code_in[49:40]),
        .rd_in            (rd_chain[5]),

        .data_out         (data_out[39:32]),
        .k_out            (k_char[4]),

        .rd_out           (rd_chain[4]),

        .code_error       (code_error[4]),
        .disparity_error  (disparity_error[4])
    );
	// Symbol3
    decoder_8b10b dec3 (
        .code_in          (code_in[39:30]),
        .rd_in            (rd_chain[4]),

        .data_out         (data_out[31:24]),
        .k_out            (k_char[3]),

        .rd_out           (rd_chain[3]),

        .code_error       (code_error[3]),
        .disparity_error  (disparity_error[3])
    );
	// Symbol2
    decoder_8b10b dec2 (
        .code_in          (code_in[29:20]),
        .rd_in            (rd_chain[3]),

        .data_out         (data_out[23:16]),
        .k_out            (k_char[2]),

        .rd_out           (rd_chain[2]),

        .code_error       (code_error[2]),
        .disparity_error  (disparity_error[2])
    );
	// Symbol1
    decoder_8b10b dec1 (
        .code_in          (code_in[19:10]),
        .rd_in            (rd_chain[2]),

        .data_out         (data_out[15:8]),
        .k_out            (k_char[1]),

        .rd_out           (rd_chain[1]),

        .code_error       (code_error[1]),
        .disparity_error  (disparity_error[1])
    );
	// Symbol0
    decoder_8b10b dec0 (
        .code_in          (code_in[9:0]),
        .rd_in            (rd_chain[1]),

        .data_out         (data_out[7:0]),
        .k_out            (k_char[0]),

        .rd_out           (rd_chain[0]),

        .code_error       (code_error[0]),
        .disparity_error  (disparity_error[0])
    );
    assign any_code_error      = |code_error;
    assign any_disparity_error = |disparity_error;

endmodule
