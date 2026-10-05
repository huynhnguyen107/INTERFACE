//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Oct  3 12:11:20 2026
//Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
//Command     : generate_target eth_mac_loopback.bd
//Design      : eth_mac_loopback
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "eth_mac_loopback,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=eth_mac_loopback,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=3,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "eth_mac_loopback.hwdef" *) 
module eth_mac_loopback
   (clk25,
    mdio_rtl_mdc,
    mdio_rtl_mdio_i,
    mdio_rtl_mdio_o,
    mdio_rtl_mdio_t,
    reset_rtl,
    rgmii_rtl_rd,
    rgmii_rtl_rx_ctl,
    rgmii_rtl_rxc,
    rgmii_rtl_td,
    rgmii_rtl_tx_ctl,
    rgmii_rtl_txc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK25 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK25, CLK_DOMAIN eth_mac_loopback_clk25, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk25;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_rtl, CAN_DEBUG false" *) output mdio_rtl_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_I" *) input mdio_rtl_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_O" *) output mdio_rtl_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_T" *) output mdio_rtl_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl RD" *) input [3:0]rgmii_rtl_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl RX_CTL" *) input rgmii_rtl_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl RXC" *) input rgmii_rtl_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl TD" *) output [3:0]rgmii_rtl_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl TX_CTL" *) output rgmii_rtl_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii_rtl TXC" *) output rgmii_rtl_txc;

  wire [31:0]axi_ethernet_1_m_axis_rxd_TDATA;
  wire [3:0]axi_ethernet_1_m_axis_rxd_TKEEP;
  wire axi_ethernet_1_m_axis_rxd_TLAST;
  wire axi_ethernet_1_m_axis_rxd_TREADY;
  wire axi_ethernet_1_m_axis_rxd_TVALID;
  wire [31:0]axi_ethernet_1_m_axis_rxs_TDATA;
  wire [3:0]axi_ethernet_1_m_axis_rxs_TKEEP;
  wire axi_ethernet_1_m_axis_rxs_TLAST;
  wire axi_ethernet_1_m_axis_rxs_TREADY;
  wire axi_ethernet_1_m_axis_rxs_TVALID;
  wire axi_ethernet_1_mdio_MDC;
  wire axi_ethernet_1_mdio_MDIO_I;
  wire axi_ethernet_1_mdio_MDIO_O;
  wire axi_ethernet_1_mdio_MDIO_T;
  wire [0:0]axi_ethernet_1_phy_rst_n;
  wire [3:0]axi_ethernet_1_rgmii_RD;
  wire axi_ethernet_1_rgmii_RXC;
  wire axi_ethernet_1_rgmii_RX_CTL;
  wire [3:0]axi_ethernet_1_rgmii_TD;
  wire axi_ethernet_1_rgmii_TXC;
  wire axi_ethernet_1_rgmii_TX_CTL;
  wire clk25_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_locked;
  wire [47:0]ethernet_frame_parser_0_dst_mac;
  wire [15:0]ethernet_frame_parser_0_ethertype;
  wire ethernet_frame_parser_0_frame_done;
  wire ethernet_frame_parser_0_header_valid;
  (* CONN_BUS_INFO = "ethernet_frame_parser_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]ethernet_frame_parser_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "ethernet_frame_parser_0_m_axis xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [3:0]ethernet_frame_parser_0_m_axis_TKEEP;
  (* CONN_BUS_INFO = "ethernet_frame_parser_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ethernet_frame_parser_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "ethernet_frame_parser_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ethernet_frame_parser_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "ethernet_frame_parser_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ethernet_frame_parser_0_m_axis_TVALID;
  wire [47:0]ethernet_frame_parser_0_src_mac;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [17:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [17:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign axi_ethernet_1_mdio_MDIO_I = mdio_rtl_mdio_i;
  assign axi_ethernet_1_rgmii_RD = rgmii_rtl_rd[3:0];
  assign axi_ethernet_1_rgmii_RXC = rgmii_rtl_rxc;
  assign axi_ethernet_1_rgmii_RX_CTL = rgmii_rtl_rx_ctl;
  assign clk25_1 = clk25;
  assign mdio_rtl_mdc = axi_ethernet_1_mdio_MDC;
  assign mdio_rtl_mdio_o = axi_ethernet_1_mdio_MDIO_O;
  assign mdio_rtl_mdio_t = axi_ethernet_1_mdio_MDIO_T;
  assign reset_rtl[0] = axi_ethernet_1_phy_rst_n;
  assign rgmii_rtl_td[3:0] = axi_ethernet_1_rgmii_TD;
  assign rgmii_rtl_tx_ctl = axi_ethernet_1_rgmii_TX_CTL;
  assign rgmii_rtl_txc = axi_ethernet_1_rgmii_TXC;
  eth_mac_loopback_axi_ethernet_1_0 axi_ethernet_1
       (.axi_rxd_arstn(proc_sys_reset_0_peripheral_aresetn),
        .axi_rxs_arstn(proc_sys_reset_0_peripheral_aresetn),
        .axi_txc_arstn(proc_sys_reset_0_peripheral_aresetn),
        .axi_txd_arstn(proc_sys_reset_0_peripheral_aresetn),
        .axis_clk(clk_wiz_0_clk_out1),
        .gtx_clk(clk_wiz_0_clk_out2),
        .m_axis_rxd_tdata(axi_ethernet_1_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_ethernet_1_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_ethernet_1_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_ethernet_1_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_ethernet_1_m_axis_rxd_TVALID),
        .m_axis_rxs_tdata(axi_ethernet_1_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axi_ethernet_1_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axi_ethernet_1_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axi_ethernet_1_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axi_ethernet_1_m_axis_rxs_TVALID),
        .mdio_mdc(axi_ethernet_1_mdio_MDC),
        .mdio_mdio_i(axi_ethernet_1_mdio_MDIO_I),
        .mdio_mdio_o(axi_ethernet_1_mdio_MDIO_O),
        .mdio_mdio_t(axi_ethernet_1_mdio_MDIO_T),
        .phy_rst_n(axi_ethernet_1_phy_rst_n),
        .ref_clk(clk_wiz_0_clk_out3),
        .rgmii_rd(axi_ethernet_1_rgmii_RD),
        .rgmii_rx_ctl(axi_ethernet_1_rgmii_RX_CTL),
        .rgmii_rxc(axi_ethernet_1_rgmii_RXC),
        .rgmii_td(axi_ethernet_1_rgmii_TD),
        .rgmii_tx_ctl(axi_ethernet_1_rgmii_TX_CTL),
        .rgmii_txc(axi_ethernet_1_rgmii_TXC),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_lite_clk(clk_wiz_0_clk_out1),
        .s_axi_lite_resetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .s_axis_txc_tdata(axi_ethernet_1_m_axis_rxs_TDATA),
        .s_axis_txc_tkeep(axi_ethernet_1_m_axis_rxs_TKEEP),
        .s_axis_txc_tlast(axi_ethernet_1_m_axis_rxs_TLAST),
        .s_axis_txc_tready(axi_ethernet_1_m_axis_rxs_TREADY),
        .s_axis_txc_tvalid(axi_ethernet_1_m_axis_rxs_TVALID),
        .s_axis_txd_tdata(ethernet_frame_parser_0_m_axis_TDATA),
        .s_axis_txd_tkeep(ethernet_frame_parser_0_m_axis_TKEEP),
        .s_axis_txd_tlast(ethernet_frame_parser_0_m_axis_TLAST),
        .s_axis_txd_tready(ethernet_frame_parser_0_m_axis_TREADY),
        .s_axis_txd_tvalid(ethernet_frame_parser_0_m_axis_TVALID));
  eth_mac_loopback_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk25_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .locked(clk_wiz_0_locked));
  eth_mac_loopback_ethernet_frame_parser_0_0 ethernet_frame_parser_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .dst_mac(ethernet_frame_parser_0_dst_mac),
        .ethertype(ethernet_frame_parser_0_ethertype),
        .frame_done(ethernet_frame_parser_0_frame_done),
        .header_valid(ethernet_frame_parser_0_header_valid),
        .m_axis_tdata(ethernet_frame_parser_0_m_axis_TDATA),
        .m_axis_tkeep(ethernet_frame_parser_0_m_axis_TKEEP),
        .m_axis_tlast(ethernet_frame_parser_0_m_axis_TLAST),
        .m_axis_tready(ethernet_frame_parser_0_m_axis_TREADY),
        .m_axis_tvalid(ethernet_frame_parser_0_m_axis_TVALID),
        .s_axis_tdata(axi_ethernet_1_m_axis_rxd_TDATA),
        .s_axis_tkeep(axi_ethernet_1_m_axis_rxd_TKEEP),
        .s_axis_tlast(axi_ethernet_1_m_axis_rxd_TLAST),
        .s_axis_tready(axi_ethernet_1_m_axis_rxd_TREADY),
        .s_axis_tvalid(axi_ethernet_1_m_axis_rxd_TVALID),
        .src_mac(ethernet_frame_parser_0_src_mac));
  eth_mac_loopback_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  eth_mac_loopback_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_AXI_araddr(1'b0),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_arid(1'b0),
        .S01_AXI_arlen(1'b0),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot({1'b0,1'b0,1'b0}),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_aruser(1'b0),
        .S01_AXI_arvalid(1'b0),
        .S01_AXI_awaddr(1'b0),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_awid(1'b0),
        .S01_AXI_awlen(1'b0),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot({1'b0,1'b0,1'b0}),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awuser(1'b0),
        .S01_AXI_awvalid(1'b0),
        .S01_AXI_bready(1'b0),
        .S01_AXI_rready(1'b0),
        .S01_AXI_wdata(1'b0),
        .S01_AXI_wid(1'b0),
        .S01_AXI_wlast(1'b0),
        .S01_AXI_wstrb(1'b1),
        .S01_AXI_wuser(1'b0),
        .S01_AXI_wvalid(1'b0),
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  eth_mac_loopback_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(ethernet_frame_parser_0_m_axis_TDATA),
        .SLOT_0_AXIS_tkeep(ethernet_frame_parser_0_m_axis_TKEEP),
        .SLOT_0_AXIS_tlast(ethernet_frame_parser_0_m_axis_TLAST),
        .SLOT_0_AXIS_tready(ethernet_frame_parser_0_m_axis_TREADY),
        .SLOT_0_AXIS_tvalid(ethernet_frame_parser_0_m_axis_TVALID),
        .clk(clk_wiz_0_clk_out1),
        .probe0(ethernet_frame_parser_0_dst_mac),
        .probe1(ethernet_frame_parser_0_src_mac),
        .probe2(ethernet_frame_parser_0_ethertype),
        .probe3(ethernet_frame_parser_0_header_valid),
        .probe4(ethernet_frame_parser_0_frame_done),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  eth_mac_loopback_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(clk_wiz_0_clk_out1),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
