`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/13/2026 09:39:38 AM
// Design Name: frame_gen
// Module Name: frame_gen
// Project Name: 03_sfp_10g_data_path
// Target Devices: PC (scapy app) +KRC260
// Tool Versions: Vivado 2022
// Description: 03_sfp_10g_data_path using ETH 10G +SFP +external lookback
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module frame_generator (
    input  wire        clk,
    input  wire        rst,       // active HIGH
    input  wire        start,

    output wire [63:0] m_axis_tdata,
    output wire [7:0]  m_axis_tkeep,
    output wire        m_axis_tvalid,
    output wire        m_axis_tlast,
    output wire        m_axis_tuser,
    input  wire        m_axis_tready,

    output reg         done,
    output wire         [3:0] debug_beat_cnt
);

    reg [3:0] beat_cnt;
    reg       sending_flag;
    reg       r_start;
    wire       rasing_edge_start;
    // AXI Stream control
    assign m_axis_tvalid = sending_flag;

    // No TX frame error
    assign m_axis_tuser = 1'b0;
	//rasing_edge_start
	assign rasing_edge_start = (!r_start) & start;
    // ---------------------------------------------------------
    // AXI Stream state machine
    // ---------------------------------------------------------

    always @(posedge clk) begin

        if (rst) begin

            r_start <= 0;
            beat_cnt <= 0;
            sending_flag  <= 0;
            done     <= 0;

        end
        else begin
            // Start one frame
			r_start <= start;
            if (!sending_flag) begin

                if (rasing_edge_start) begin
                    sending_flag  <= 1'b1;
                    beat_cnt <= 4'd0;
                end
				else 
					done     <= 1'b0;

            end

            // Only advance when AXI handshake occurs
            else if (m_axis_tvalid && m_axis_tready) begin

                if (beat_cnt == 4'd7) begin

                    sending_flag  <= 1'b0;
                    beat_cnt <= 4'd0;
                    done     <= 1'b1;

                end
                else begin

                    beat_cnt <= beat_cnt + 1'b1;

                end
            end
        end
    end

    // ---------------------------------------------------------
    // 60-byte Ethernet frame
    //
    // Byte 0 is placed at TDATA[7:0]
    //
    // DST MAC   = FF:FF:FF:FF:FF:FF
    // SRC MAC   = 02:00:00:00:00:01
    // EtherType = 88:B5
    // Payload   = 00 01 02 03 04 05 06 07
				// 08 09 0A 0B 0C 0D 0E 0F
				// 10 11 12 13 14 15 16 17
				// 18 19 1A 1B 1C 1D 1E 1F
				// 20 21 22 23 24 25 26 27
				// 28 29 2A 2B 2C 2D
    // ---------------------------------------------------------

    reg [63:0] data_r ;
    reg [7:0]  keep_r ;
    reg        last_r ;

    always @(*) begin
        case (beat_cnt)

            // Bytes 0..7
            //
            // FF FF FF FF FF FF 02 00
            //
            4'd0: begin
                data_r = 64'h0002_FFFF_FFFF_FFFF;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 8..15
            //
            // 00 00 00 01 88 B5 00 01
            //
            4'd1: begin
                data_r = 64'h0100_B588_0100_0000;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 16..23
            //
            // Payload 02..09
            //
            4'd2: begin
                data_r = 64'h0908_0706_0504_0302;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 24..31
            //
            // Payload 0A..11
            //
            4'd3: begin
                data_r = 64'h1110_0F0E_0D0C_0B0A;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 32..39
            //
            // Payload 12..19
            //
            4'd4: begin
                data_r = 64'h1918_1716_1514_1312;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 40..47
            //
            // Payload 1A..21
            //
            4'd5: begin
                data_r = 64'h2120_1F1E_1D1C_1B1A;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 48..55
            //
            // Payload 22..29
            //
            4'd6: begin
                data_r = 64'h2928_2726_2524_2322;
				keep_r = 8'hFF;
                last_r = 1'b0;
            end
            // Bytes 56..59
            //
            // Payload 2A 2B 2C 2D
            //
            4'd7: begin
                data_r = 64'h0000_0000_2D2C_2B2A;
                keep_r = 8'h0F;
                last_r = 1'b1;
            end

            default: begin
                data_r = 64'd0;
                keep_r = 8'd0;
                last_r = 1'b0;
            end
        endcase
    end


    assign m_axis_tdata = data_r;
    assign m_axis_tkeep = keep_r;
    assign m_axis_tlast = last_r;
    assign debug_beat_cnt = beat_cnt;



endmodule