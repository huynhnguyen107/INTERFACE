`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 10/09/2026 11:41:32 AM
// Design Name: reset_gen
// Module Name: reset_gen
// Project Name: 03_sfp_10g_data_path
// Target Devices: KR260 +10Gtek SFP +Bucacoz iotical loopback
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


module reset_gen (
    input  wire clk,
    input  wire locked,

    output wire sys_reset,
    output wire tx_reset,
    output wire rx_reset
);

    reg [19:0] cnt;
    reg rst;

    always @(posedge clk) begin
        if (!locked) begin
            cnt <= 20'd0;
            rst <= 1'b1;
        end
        else if (!(&cnt)) begin
            cnt <= cnt + 1'b1;
            rst <= 1'b1;
        end
        else begin
            rst <= 1'b0;
        end
    end

    assign sys_reset = rst;
    assign tx_reset  = rst;
    assign rx_reset  = rst;

endmodule