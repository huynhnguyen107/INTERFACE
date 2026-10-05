`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/03/2026 11:00:46 AM
// Design Name: ethernet_frame_parser
// Module Name: ethernet_frame_parser
// Project Name: PL Ethernet
// Target Devices: PC (scapy app) +KRC260
// Tool Versions: Vivado 2022
// Description: The received Ethernet frame is looped directly from the RX AXI-Stream interface back to the TX AXI-Stream interface using the J10B Ethernet port.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ethernet_frame_parser (
    input  wire         aclk,
    input  wire         aresetn,

    // RX stream from Ethernet MAC
    input  wire [31:0]  s_axis_tdata,
    input  wire [3:0]   s_axis_tkeep,
    input  wire         s_axis_tvalid,
    output wire         s_axis_tready,
    input  wire         s_axis_tlast,

    // TX stream back to Ethernet MAC
    output wire [31:0]  m_axis_tdata,
    output wire [3:0]   m_axis_tkeep,
    output wire         m_axis_tvalid,
    input  wire         m_axis_tready,
    output wire         m_axis_tlast,

    // Parsed fields
    output reg  [47:0]  dst_mac,
    output reg  [47:0]  src_mac,
    output reg  [15:0]  ethertype,

    output reg          header_valid,
    output reg          frame_done
);

reg [15:0] word_count;




//Backpressure from TX MAC propagates to RX MAC.

assign s_axis_tready = m_axis_tready;

//Ethernet header parser
always @(posedge aclk) begin

    if (!aresetn) begin

        word_count   <= 0;

        dst_mac      <= 0;
        src_mac      <= 0;
        ethertype    <= 0;

        header_valid <= 0;
        frame_done   <= 0;

    end
    else begin
       
        if (s_axis_tvalid && s_axis_tready) begin
			if (s_axis_tlast) begin

                word_count <= 16'd0;
                frame_done <= 1'b1;

            end
            else begin
				header_valid <= word_count==3;
				frame_done   <= 1'b0;
                word_count <= word_count + 1'b1;

            end
			
            case (word_count)

                /*
                 * word_count 0
                 */
                16'd0: begin

                    dst_mac[47:16] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8],
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end


                /*
                 * Beat 1
                 *
                 * byte 4  DST[15:8]
                 * byte 5  DST[7:0]
                 *
                 * byte 6  SRC[47:40]
                 * byte 7  SRC[39:32]
                 */

                16'd1: begin

                    dst_mac[15:0] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    };


                    src_mac[47:32] <= {
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end


                /*
                 * Beat 2
                 *
                 * byte 8..11
                 * remaining Source MAC
                 */

                16'd2: begin

                    src_mac[31:0] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8],
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end


                /*
                 * Beat 3
                 *
                 * byte 12 = EtherType MSB
                 * byte 13 = EtherType LSB
                 *
                 * byte 14,15 = beginning of payload
                 */

                16'd3: begin

                    ethertype <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    };

                end

            endcase

        end
		else 
			frame_done <= 1'b0;
    end

end

//output AXI-Stream pass-through
assign m_axis_tdata  = s_axis_tdata;
assign m_axis_tkeep  = s_axis_tkeep;
assign m_axis_tvalid = s_axis_tvalid;
assign m_axis_tlast  = s_axis_tlast;


endmodule
