//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Aug 17 11:15:23 2026
//Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
//Command     : generate_target system_integration_wrapper.bd
//Design      : system_integration_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_integration_wrapper
   (busy_led,
    done_led,
    spi_clk,
    spi_cs_n,
    spi_miso,
    spi_mosi);
  output busy_led;
  output done_led;
  output spi_clk;
  output spi_cs_n;
  input spi_miso;
  output spi_mosi;

  wire busy_led;
  wire done_led;
  wire spi_clk;
  wire spi_cs_n;
  wire spi_miso;
  wire spi_mosi;

  system_integration system_integration_i
       (.busy_led(busy_led),
        .done_led(done_led),
        .spi_clk(spi_clk),
        .spi_cs_n(spi_cs_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi));
endmodule
