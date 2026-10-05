`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/04/2026 11:09:51 AM
// Design Name: udp_parser
// Module Name: udp_parser
// Project Name: PL Ethernet
// Target Devices: PC (scapy app) +KRC260
// Tool Versions: Vivado 2022
// Description: Paser The received udp frame using the J10B Ethernet port.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module udp_parser (
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
	//eth header
    output reg  [47:0]  dst_mac,
    output reg  [47:0]  src_mac,
    output reg  [15:0]  ethertype,
	//Ipv4 header
	output reg [31:0] src_ip,
	output reg [31:0] dst_ip,
	output reg [7:0]  ip_protocol,
	//udp header
	output reg [15:0] udp_src_port,
	output reg [15:0] udp_dst_port,
	output reg [15:0] udp_length,
	
	output reg        eth_header_valid,
	output reg        ip_header_valid,
	output reg        udp_header_valid,
	output reg        frame_done
);

reg [15:0] word_count;
wire is_udp;


//Backpressure from TX MAC propagates to RX MAC.

assign s_axis_tready = m_axis_tready;
//check udp or not
assign is_udp = ethertype==16'h0800 & ip_protocol==8'h11; 
//udp parser
always @(posedge aclk) begin

    if (!aresetn) begin

        word_count   <= 0;

        dst_mac      <= 0;
        src_mac      <= 0;
        ethertype    <= 0;
		
		src_ip      <= 0;
        dst_ip      <= 0;
        ip_protocol    <= 0;
		
		udp_src_port      <= 0;
        udp_dst_port      <= 0;
        udp_length    <= 0;
		
		
        eth_header_valid <= 0;
        ip_header_valid   <= 0;
        udp_header_valid   <= 0;
        frame_done   <= 0;

    end
    else begin
       
        if (s_axis_tvalid && s_axis_tready) begin
			if (s_axis_tlast) begin

                word_count <= 16'd0;
                frame_done <= 1'b1;

            end
            else begin
				eth_header_valid <= word_count==3;
				ip_header_valid <= word_count==8;
				
				udp_header_valid <= (word_count==10) & is_udp;

				frame_done   <= 1'b0;
                word_count <= word_count + 1'b1;

            end
			
            case (word_count)
				//word_count 0-DST MAC
                16'd0: begin

                    dst_mac[47:16] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8],
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end
				//word_count 1-DST MAC,  SRC MAC
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
				//word_count 2-SRC MAC
                16'd2: begin

                    src_mac[31:0] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8],
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end
				//word_count 3-SRC MAC,Version + IHL,  DSCP/ECN		
                16'd3: begin          

                    ethertype <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    };

                end
				//word_count 4- Total Length, Identification          
				//word_count 5-Flags/Fragment, TTL, Protocol                			       
                16'd5: begin          

                    ip_protocol <= {
                        s_axis_tdata[31:24]
                    };

                end
				//word_count 6- Header checksum,  Source IP  
                16'd6: begin          

                    src_ip[31:16] <= {
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end
				//word_count 7- Header checksum,    Destination IP 
                16'd7: begin          

                     src_ip[15:0] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    };
					 dst_ip[31:16] <= {
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    };

                end
				//word_count 8- Destination IP ,   Source Port  
                16'd8: begin          

                     dst_ip[15:0] <= {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    };
					 
					 udp_src_port[15:0] <= is_udp ? {
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    } : 0;
                end
				//word_count 9-Destination Port, UDP Length  
                16'd9: begin          

                     udp_dst_port[15:0] <= is_udp ?  {
                        s_axis_tdata[7:0],
                        s_axis_tdata[15:8]
                    } : 0;
					
					udp_length[15:0] <= is_udp ? {
                        s_axis_tdata[23:16],
                        s_axis_tdata[31:24]
                    } : 0;
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
