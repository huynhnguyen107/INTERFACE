`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/15/2026 08:04:56 AM
// Design Name: cpri_fra_gen
// Module Name: cpri_fra_gen
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

module cpri_fra_gen (
    input               clk,
    input               rst_n,

    output reg  [127:0] tx_word,

    output reg  [3:0]   w_index,   // 0 ... 15
    output reg  [7:0]   x_index,   // 0 ... 255
    output reg  [7:0]   z_index,   // 0 ... 149

    output              control_word
);

    // ============================================================
    // CPRI Option 7 educational model
    //
    // Word clock : 61.44 MHz
    // Word width : 128 bits
    //
    // Hierarchy:
    //
    // 16 words       -> 1 Basic Frame Z
    // 256 BasicFrame -> 1 Hyperframe X
    // 150 Hyperframe -> 10 ms CPRI frame W
    //
    // W = 0       : Control Word
    // W = 1..15   : IQ data
    //
    // IQ format used in this project:
    //
    // 1 complex sample = {Q[15:0], I[15:0]} = 32 bits
    // 4 samples / word = 128 bits
    //
    // NOTE:
    // Control-word contents below are only for Phase 1 debug.
    // They are NOT yet the complete standard CPRI control-word map.
    // ============================================================
    // IQ sample counter
    reg [15:0] sample_counter;
    // Current four IQ samples

    wire [15:0] i0;
    wire [15:0] i1;
    wire [15:0] i2;
    wire [15:0] i3;

    wire [15:0] q0;
    wire [15:0] q1;
    wire [15:0] q2;
    wire [15:0] q3;


    assign i0 = sample_counter;
    assign i1 = sample_counter + 16'd1;
    assign i2 = sample_counter + 16'd2;
    assign i3 = sample_counter + 16'd3;

    // Easy pattern for RX verification later
    assign q0 = ~i0;
    assign q1 = ~i1;
    assign q2 = ~i2;
    assign q3 = ~i3;
	
    // W = 0 ?
    assign control_word = (w_index == 4'd0);
	    // ------------------------------------------------------------
    // W / X / Z counters
    // ------------------------------------------------------------

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin

            w_index        <= 4'd0;
            x_index        <= 8'd0;
            z_index        <= 8'd0;
            sample_counter <= 16'd0;

        end
        else begin

            // IQ samples exist only in W = 1 ... 15
            if (w_index != 4'd0) begin
                sample_counter <= sample_counter + 16'd4;
            end
            // W counter
            if (w_index == 4'd15) begin
                w_index <= 4'd0;
                if (x_index == 8'd255) begin
                    x_index <= 8'd0;
                    if (z_index == 8'd149)
                        z_index <= 8'd0;
                    else
                        z_index <= z_index + 8'd1;

                end
                else begin

                    x_index <= x_index + 8'd1;

                end

            end
            else begin

                w_index <= w_index + 4'd1;

            end

        end

    end
    // Generate output word
    always @(*) begin

        tx_word = 128'd0;

        if (w_index == 4'd0) begin

            // ====================================================
            // CONTROL WORD
            //
            // Phase-1 debug/control format.
            //
            // Special X positions are made visually different so
            // they are easy to recognize in simulation / ILA.
            //
            // X =   0 : Hyperframe synchronization marker
            // X =  64 : Hyperframe number
            // X = 128 : reserved for future BFN/timing
            // X = 192 : reserved for future BFN/timing
            //
            // Other X positions -> idle/debug control word.
            // ====================================================

            case (x_index)

                8'd0: begin
                    // Hyperframe sync training marker
                    tx_word[127:120] = 8'hBC;

                    // Debug visibility only
                    tx_word[119:112] = z_index;
                end


                8'd64: begin
                    // Hyperframe number debug field
                    tx_word[127:120] = 8'h64;
                    tx_word[119:112] = z_index;
                end


                8'd128: begin
                    // Placeholder for future timing/BFN field
                    tx_word[127:120] = 8'h80;
                    tx_word[119:112] = z_index;
                end


                8'd192: begin
                    // Placeholder for future timing/BFN field
                    tx_word[127:120] = 8'hC0;
                    tx_word[119:112] = z_index;
                end


                default: begin
                    // Idle control word
                    tx_word[127:120] = 8'h00;

                    // Keep X visible for debugging
                    tx_word[119:112] = x_index;

                    // Keep Z visible for debugging
                    tx_word[111:104] = z_index;
                end

            endcase

        end
        else begin
            // USER-PLANE / IQ DATA
            tx_word[31:0]   = {q0, i0};
            tx_word[63:32]  = {q1, i1};
            tx_word[95:64]  = {q2, i2};
            tx_word[127:96] = {q3, i3};

        end

    end




endmodule