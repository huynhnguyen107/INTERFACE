`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/16/2026 10:21:55 AM
// Design Name: cpri_fra_re
// Module Name: cpri_fra_re
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

module cpri_fra_re (

    input           clk,
    input           rst_n,

    input   [127:0] rx_word,

    output reg          sync_locked,

    output reg  [3:0]   rx_w_index,
    output reg  [7:0]   rx_x_index,
    output reg  [7:0]   rx_z_index,

    output reg          iq_valid,

    output reg  [15:0]  i0,
    output reg  [15:0]  q0,

    output reg  [15:0]  i1,
    output reg  [15:0]  q1,

    output reg  [15:0]  i2,
    output reg  [15:0]  q2,

    output reg  [15:0]  i3,
    output reg  [15:0]  q3,

    output reg  [31:0]  frame_error_count
);

    reg [3:0] expected_w;
    reg [7:0] expected_x;
    reg [7:0] expected_z;


    // ============================================================
    // Phase-1 synchronization marker
    //
    // TX sends:
    //
    // W = 0
    // X = 0
	//rx_word
    // [127:120] = BC
    // [119:112] = Z
    wire sync_marker;

    assign sync_marker =
        (rx_word[127:120] == 8'hBC);


    // ============================================================
    // Receiver
    // ============================================================

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin
            sync_locked       <= 1'b0;
            rx_w_index        <= 4'd0;
            rx_x_index        <= 8'd0;
            rx_z_index        <= 8'd0;
            expected_w        <= 4'd0;
            expected_x        <= 8'd0;
            expected_z        <= 8'd0;
            iq_valid          <= 1'b0;
            i0                <= 16'd0;
            q0                <= 16'd0;
            i1                <= 16'd0;
            q1                <= 16'd0;
            i2                <= 16'd0;
            q2                <= 16'd0;
            i3                <= 16'd0;
            q3                <= 16'd0;
            frame_error_count <= 32'd0;

        end
        else begin
            // SEARCH STATE
            if (!sync_locked) begin
                // Search continuous word stream for the Hyperframe synchronization marker.
                if (sync_marker) begin
                    sync_locked <= 1'b1;
                    // Current received word is:
                    // Z = rx_word[119:112]
                    // X = 0
                    // W = 0
                    rx_w_index <= 4'd0;
                    rx_x_index <= 8'd0;
                    rx_z_index <= rx_word[119:112];
                    // Therefore NEXT incoming word must be:
                    // W = 1
                    // X = 0
                    expected_w <= 4'd1;
                    expected_x <= 8'd0;
                    expected_z <= rx_word[119:112];
                end

            end
            // LOCKED STATE
            else begin
				//Update W, X, Z
                // Current word belongs to expected W/X/Z
                rx_w_index <= expected_w;
                rx_x_index <= expected_x;
                rx_z_index <= expected_z;
				// Advance expected W / X / Z
                if (expected_w == 4'd15) begin
                    expected_w <= 4'd0;
                    // End Basic Frame
                    if (expected_x == 8'd255) begin
                        expected_x <= 8'd0;
                        // End Hyperframe
                        if (expected_z == 8'd149)
                            expected_z <= 8'd0;
                        else
                            expected_z <= expected_z + 8'd1;
                    end
                    else begin
                        expected_x <= expected_x + 8'd1;
                    end
                end
                else begin
                    expected_w <= expected_w + 4'd1;
                end
				
				
                // check frame_error_count for CONTROL WORD and extract IQ
                if (expected_w == 4'd0) begin
                    iq_valid <= 1'b0;
                    // At X=0 we expect Hyperframe Sync
                    if (expected_x == 8'd0) begin
                        if (!sync_marker) begin
                            // Expected synchronization marker disappeared.
                            sync_locked <= 1'b0;
                            frame_error_count <= frame_error_count + 32'd1;
                        end
                        else if (rx_word[119:112]!= expected_z) begin
                            // Hyperframe number mismatch
                            sync_locked <= 1'b0;
                            frame_error_count <= frame_error_count + 32'd1;
                        end

                    end
                end
                // IQ DATA WORD
                else begin
                    iq_valid <= 1'b1;
                    // Sample 0
                    i0 <= rx_word[15:0];
                    q0 <= rx_word[31:16];
                    // Sample 1
                    i1 <= rx_word[47:32];
                    q1 <= rx_word[63:48];
                    // Sample 2
                    i2 <= rx_word[79:64];
                    q2 <= rx_word[95:80];
                    // Sample 3
                    i3 <= rx_word[111:96];
                    q3 <= rx_word[127:112];

                end

            end

        end

    end

endmodule
