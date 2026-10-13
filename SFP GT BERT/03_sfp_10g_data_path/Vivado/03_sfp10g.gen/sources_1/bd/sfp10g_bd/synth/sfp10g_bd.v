//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Oct 13 11:50:56 2026
//Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
//Command     : generate_target sfp10g_bd.bd
//Design      : sfp10g_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "sfp10g_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sfp10g_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "sfp10g_bd.hwdef" *) 
module sfp10g_bd
   (clk_25mhz,
    gt_refclk_n,
    gt_refclk_p,
    gt_rxn_in,
    gt_rxp_in,
    gt_txn_out,
    gt_txp_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_25MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_25MHZ, CLK_DOMAIN sfp10g_bd_clk_25mhz, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_25mhz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GT_REFCLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GT_REFCLK_N, CLK_DOMAIN sfp10g_bd_gt_refclk_n, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input gt_refclk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GT_REFCLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GT_REFCLK_P, CLK_DOMAIN sfp10g_bd_gt_refclk_p, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input gt_refclk_p;
  input gt_rxn_in;
  input gt_rxp_in;
  output [0:0]gt_txn_out;
  output [0:0]gt_txp_out;

  wire clk_25mhz_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire frame_generator_0_done;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]frame_generator_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]frame_generator_0_m_axis_TKEEP;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire frame_generator_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire frame_generator_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire frame_generator_0_m_axis_TUSER;
  (* CONN_BUS_INFO = "frame_generator_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire frame_generator_0_m_axis_TVALID;
  wire gt_refclk_n_1;
  wire gt_refclk_p_1;
  wire gt_rnx_in_1;
  wire gt_rxp_in_1;
  wire reset_gen_0_rx_reset;
  wire reset_gen_0_sys_reset;
  wire reset_gen_0_tx_reset;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]xlconstant_0_dout;
  wire [2:0]xlconstant_1_dout;
  wire [2:0]xlconstant_2_dout;
  wire [55:0]xlconstant_3_dout;
  wire xxv_ctrl_0_ctl_rx_check_preamble_0;
  wire xxv_ctrl_0_ctl_rx_check_sfd_0;
  wire xxv_ctrl_0_ctl_rx_custom_preamble_enable_0;
  wire xxv_ctrl_0_ctl_rx_data_pattern_select_0;
  wire xxv_ctrl_0_ctl_rx_delete_fcs_0;
  wire xxv_ctrl_0_ctl_rx_enable_0;
  wire xxv_ctrl_0_ctl_rx_force_resync_0;
  wire xxv_ctrl_0_ctl_rx_ignore_fcs_0;
  wire [14:0]xxv_ctrl_0_ctl_rx_max_packet_len_0;
  wire [7:0]xxv_ctrl_0_ctl_rx_min_packet_len_0;
  wire xxv_ctrl_0_ctl_rx_process_lfi_0;
  wire xxv_ctrl_0_ctl_rx_test_pattern_0;
  wire xxv_ctrl_0_ctl_rx_test_pattern_enable_0;
  wire xxv_ctrl_0_ctl_tx_enable_0;
  wire xxv_ctrl_0_ctl_tx_fcs_ins_enable_0;
  wire xxv_ctrl_0_ctl_tx_ignore_fcs_0;
  wire [3:0]xxv_ctrl_0_ctl_tx_ipg_value_0;
  wire xxv_ctrl_0_ctl_tx_send_idle_0;
  wire xxv_ctrl_0_ctl_tx_send_lfi_0;
  wire xxv_ctrl_0_ctl_tx_send_rfi_0;
  wire xxv_ctrl_0_ctl_tx_test_pattern_0;
  wire xxv_ctrl_0_ctl_tx_test_pattern_enable;
  wire xxv_ctrl_0_ctl_tx_test_pattern_enable_0;
  wire [57:0]xxv_ctrl_0_ctl_tx_test_pattern_seed_a_0;
  wire [57:0]xxv_ctrl_0_ctl_tx_test_pattern_seed_b_0;
  wire xxv_ctrl_0_ctl_tx_test_pattern_select;
  wire xxv_ctrl_0_ctl_tx_test_pattern_select_0;
  (* CONN_BUS_INFO = "xxv_ethernet_1_axis_rx_0 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]xxv_ethernet_1_axis_rx_0_TDATA;
  (* CONN_BUS_INFO = "xxv_ethernet_1_axis_rx_0 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]xxv_ethernet_1_axis_rx_0_TKEEP;
  (* CONN_BUS_INFO = "xxv_ethernet_1_axis_rx_0 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire xxv_ethernet_1_axis_rx_0_TLAST;
  (* CONN_BUS_INFO = "xxv_ethernet_1_axis_rx_0 xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire xxv_ethernet_1_axis_rx_0_TUSER;
  (* CONN_BUS_INFO = "xxv_ethernet_1_axis_rx_0 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire xxv_ethernet_1_axis_rx_0_TVALID;
  wire [0:0]xxv_ethernet_1_gt_txn_out;
  wire [0:0]xxv_ethernet_1_gt_txp_out;
  wire xxv_ethernet_1_gtpowergood_out_0;
  wire xxv_ethernet_1_rx_clk_out_0;
  wire xxv_ethernet_1_stat_rx_block_lock_0;
  wire xxv_ethernet_1_stat_rx_hi_ber_0;
  wire xxv_ethernet_1_stat_rx_status_0;
  wire xxv_ethernet_1_tx_clk_out_0;
  wire xxv_ethernet_1_user_rx_reset_0;
  wire xxv_ethernet_1_user_tx_reset_0;

  assign clk_25mhz_1 = clk_25mhz;
  assign gt_refclk_n_1 = gt_refclk_n;
  assign gt_refclk_p_1 = gt_refclk_p;
  assign gt_rnx_in_1 = gt_rxn_in;
  assign gt_rxp_in_1 = gt_rxp_in;
  assign gt_txn_out[0] = xxv_ethernet_1_gt_txn_out;
  assign gt_txp_out[0] = xxv_ethernet_1_gt_txp_out;
  sfp10g_bd_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_25mhz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked));
  sfp10g_bd_frame_generator_0_0 frame_generator_0
       (.clk(xxv_ethernet_1_tx_clk_out_0),
        .done(frame_generator_0_done),
        .m_axis_tdata(frame_generator_0_m_axis_TDATA),
        .m_axis_tkeep(frame_generator_0_m_axis_TKEEP),
        .m_axis_tlast(frame_generator_0_m_axis_TLAST),
        .m_axis_tready(frame_generator_0_m_axis_TREADY),
        .m_axis_tuser(frame_generator_0_m_axis_TUSER),
        .m_axis_tvalid(frame_generator_0_m_axis_TVALID),
        .rst(xxv_ethernet_1_user_tx_reset_0),
        .start(vio_0_probe_out0));
  sfp10g_bd_reset_gen_0_0 reset_gen_0
       (.clk(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .rx_reset(reset_gen_0_rx_reset),
        .sys_reset(reset_gen_0_sys_reset),
        .tx_reset(reset_gen_0_tx_reset));
  sfp10g_bd_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(frame_generator_0_m_axis_TDATA),
        .SLOT_0_AXIS_tkeep(frame_generator_0_m_axis_TKEEP),
        .SLOT_0_AXIS_tlast(frame_generator_0_m_axis_TLAST),
        .SLOT_0_AXIS_tready(frame_generator_0_m_axis_TREADY),
        .SLOT_0_AXIS_tuser(frame_generator_0_m_axis_TUSER),
        .SLOT_0_AXIS_tvalid(frame_generator_0_m_axis_TVALID),
        .clk(xxv_ethernet_1_tx_clk_out_0),
        .probe0(xxv_ethernet_1_user_tx_reset_0),
        .probe1(xxv_ethernet_1_gtpowergood_out_0),
        .probe2(frame_generator_0_done),
        .probe3(vio_0_probe_out0),
        .resetn(util_vector_logic_0_Res));
  sfp10g_bd_system_ila_0_1 system_ila_1
       (.SLOT_0_AXIS_tdata(xxv_ethernet_1_axis_rx_0_TDATA),
        .SLOT_0_AXIS_tkeep(xxv_ethernet_1_axis_rx_0_TKEEP),
        .SLOT_0_AXIS_tlast(xxv_ethernet_1_axis_rx_0_TLAST),
        .SLOT_0_AXIS_tuser(xxv_ethernet_1_axis_rx_0_TUSER),
        .SLOT_0_AXIS_tvalid(xxv_ethernet_1_axis_rx_0_TVALID),
        .clk(xxv_ethernet_1_rx_clk_out_0),
        .probe0(xxv_ethernet_1_stat_rx_block_lock_0),
        .probe1(xxv_ethernet_1_stat_rx_status_0),
        .probe2(xxv_ethernet_1_stat_rx_hi_ber_0),
        .probe3(xxv_ethernet_1_user_rx_reset_0),
        .resetn(util_vector_logic_1_Res));
  sfp10g_bd_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(xxv_ethernet_1_user_tx_reset_0),
        .Res(util_vector_logic_0_Res));
  sfp10g_bd_util_vector_logic_0_2 util_vector_logic_1
       (.Op1(xxv_ethernet_1_user_rx_reset_0),
        .Res(util_vector_logic_1_Res));
  sfp10g_bd_vio_0_0 vio_0
       (.clk(xxv_ethernet_1_tx_clk_out_0),
        .probe_out0(vio_0_probe_out0));
  sfp10g_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  sfp10g_bd_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  sfp10g_bd_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  sfp10g_bd_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  sfp10g_bd_xxv_ctrl_0_0 xxv_ctrl_0
       (.ctl_rx_check_preamble_0(xxv_ctrl_0_ctl_rx_check_preamble_0),
        .ctl_rx_check_sfd_0(xxv_ctrl_0_ctl_rx_check_sfd_0),
        .ctl_rx_custom_preamble_enable_0(xxv_ctrl_0_ctl_rx_custom_preamble_enable_0),
        .ctl_rx_data_pattern_select_0(xxv_ctrl_0_ctl_rx_data_pattern_select_0),
        .ctl_rx_delete_fcs_0(xxv_ctrl_0_ctl_rx_delete_fcs_0),
        .ctl_rx_enable_0(xxv_ctrl_0_ctl_rx_enable_0),
        .ctl_rx_force_resync_0(xxv_ctrl_0_ctl_rx_force_resync_0),
        .ctl_rx_ignore_fcs_0(xxv_ctrl_0_ctl_rx_ignore_fcs_0),
        .ctl_rx_max_packet_len_0(xxv_ctrl_0_ctl_rx_max_packet_len_0),
        .ctl_rx_min_packet_len_0(xxv_ctrl_0_ctl_rx_min_packet_len_0),
        .ctl_rx_process_lfi_0(xxv_ctrl_0_ctl_rx_process_lfi_0),
        .ctl_rx_test_pattern_0(xxv_ctrl_0_ctl_rx_test_pattern_0),
        .ctl_rx_test_pattern_enable_0(xxv_ctrl_0_ctl_rx_test_pattern_enable_0),
        .ctl_tx_custom_preamble_enable_0(xxv_ctrl_0_ctl_tx_test_pattern_enable),
        .ctl_tx_data_pattern_select_0(xxv_ctrl_0_ctl_tx_test_pattern_select),
        .ctl_tx_enable_0(xxv_ctrl_0_ctl_tx_enable_0),
        .ctl_tx_fcs_ins_enable_0(xxv_ctrl_0_ctl_tx_fcs_ins_enable_0),
        .ctl_tx_ignore_fcs_0(xxv_ctrl_0_ctl_tx_ignore_fcs_0),
        .ctl_tx_ipg_value_0(xxv_ctrl_0_ctl_tx_ipg_value_0),
        .ctl_tx_send_idle_0(xxv_ctrl_0_ctl_tx_send_idle_0),
        .ctl_tx_send_lfi_0(xxv_ctrl_0_ctl_tx_send_lfi_0),
        .ctl_tx_send_rfi_0(xxv_ctrl_0_ctl_tx_send_rfi_0),
        .ctl_tx_test_pattern_0(xxv_ctrl_0_ctl_tx_test_pattern_0),
        .ctl_tx_test_pattern_enable_0(xxv_ctrl_0_ctl_tx_test_pattern_enable_0),
        .ctl_tx_test_pattern_seed_a_0(xxv_ctrl_0_ctl_tx_test_pattern_seed_a_0),
        .ctl_tx_test_pattern_seed_b_0(xxv_ctrl_0_ctl_tx_test_pattern_seed_b_0),
        .ctl_tx_test_pattern_select_0(xxv_ctrl_0_ctl_tx_test_pattern_select_0));
  sfp10g_bd_xxv_ethernet_1_0 xxv_ethernet_1
       (.ctl_rx_check_preamble_0(xxv_ctrl_0_ctl_rx_check_preamble_0),
        .ctl_rx_check_sfd_0(xxv_ctrl_0_ctl_rx_check_sfd_0),
        .ctl_rx_custom_preamble_enable_0(xxv_ctrl_0_ctl_rx_custom_preamble_enable_0),
        .ctl_rx_data_pattern_select_0(xxv_ctrl_0_ctl_rx_data_pattern_select_0),
        .ctl_rx_delete_fcs_0(xxv_ctrl_0_ctl_rx_delete_fcs_0),
        .ctl_rx_enable_0(xxv_ctrl_0_ctl_rx_enable_0),
        .ctl_rx_force_resync_0(xxv_ctrl_0_ctl_rx_force_resync_0),
        .ctl_rx_ignore_fcs_0(xxv_ctrl_0_ctl_rx_ignore_fcs_0),
        .ctl_rx_max_packet_len_0(xxv_ctrl_0_ctl_rx_max_packet_len_0),
        .ctl_rx_min_packet_len_0(xxv_ctrl_0_ctl_rx_min_packet_len_0),
        .ctl_rx_process_lfi_0(xxv_ctrl_0_ctl_rx_process_lfi_0),
        .ctl_rx_test_pattern_0(xxv_ctrl_0_ctl_rx_test_pattern_0),
        .ctl_rx_test_pattern_enable_0(xxv_ctrl_0_ctl_rx_test_pattern_enable_0),
        .ctl_tx_custom_preamble_enable_0(xxv_ctrl_0_ctl_tx_test_pattern_enable),
        .ctl_tx_data_pattern_select_0(xxv_ctrl_0_ctl_tx_test_pattern_select),
        .ctl_tx_enable_0(xxv_ctrl_0_ctl_tx_enable_0),
        .ctl_tx_fcs_ins_enable_0(xxv_ctrl_0_ctl_tx_fcs_ins_enable_0),
        .ctl_tx_ignore_fcs_0(xxv_ctrl_0_ctl_tx_ignore_fcs_0),
        .ctl_tx_ipg_value_0(xxv_ctrl_0_ctl_tx_ipg_value_0),
        .ctl_tx_send_idle_0(xxv_ctrl_0_ctl_tx_send_idle_0),
        .ctl_tx_send_lfi_0(xxv_ctrl_0_ctl_tx_send_lfi_0),
        .ctl_tx_send_rfi_0(xxv_ctrl_0_ctl_tx_send_rfi_0),
        .ctl_tx_test_pattern_0(xxv_ctrl_0_ctl_tx_test_pattern_0),
        .ctl_tx_test_pattern_enable_0(xxv_ctrl_0_ctl_tx_test_pattern_enable_0),
        .ctl_tx_test_pattern_seed_a_0(xxv_ctrl_0_ctl_tx_test_pattern_seed_a_0),
        .ctl_tx_test_pattern_seed_b_0(xxv_ctrl_0_ctl_tx_test_pattern_seed_b_0),
        .ctl_tx_test_pattern_select_0(xxv_ctrl_0_ctl_tx_test_pattern_select_0),
        .dclk(clk_wiz_0_clk_out1),
        .gt_loopback_in_0(xlconstant_1_dout),
        .gt_refclk_n(gt_refclk_n_1),
        .gt_refclk_p(gt_refclk_p_1),
        .gt_rxn_in(gt_rnx_in_1),
        .gt_rxp_in(gt_rxp_in_1),
        .gt_txn_out(xxv_ethernet_1_gt_txn_out),
        .gt_txp_out(xxv_ethernet_1_gt_txp_out),
        .gtpowergood_out_0(xxv_ethernet_1_gtpowergood_out_0),
        .gtwiz_reset_rx_datapath_0(xlconstant_0_dout),
        .gtwiz_reset_tx_datapath_0(xlconstant_0_dout),
        .qpllreset_in_0(xlconstant_0_dout),
        .rx_axis_tdata_0(xxv_ethernet_1_axis_rx_0_TDATA),
        .rx_axis_tkeep_0(xxv_ethernet_1_axis_rx_0_TKEEP),
        .rx_axis_tlast_0(xxv_ethernet_1_axis_rx_0_TLAST),
        .rx_axis_tuser_0(xxv_ethernet_1_axis_rx_0_TUSER),
        .rx_axis_tvalid_0(xxv_ethernet_1_axis_rx_0_TVALID),
        .rx_clk_out_0(xxv_ethernet_1_rx_clk_out_0),
        .rx_core_clk_0(xxv_ethernet_1_rx_clk_out_0),
        .rx_reset_0(reset_gen_0_rx_reset),
        .rxoutclksel_in_0(xlconstant_2_dout),
        .stat_rx_block_lock_0(xxv_ethernet_1_stat_rx_block_lock_0),
        .stat_rx_hi_ber_0(xxv_ethernet_1_stat_rx_hi_ber_0),
        .stat_rx_status_0(xxv_ethernet_1_stat_rx_status_0),
        .sys_reset(reset_gen_0_sys_reset),
        .tx_axis_tdata_0(frame_generator_0_m_axis_TDATA),
        .tx_axis_tkeep_0(frame_generator_0_m_axis_TKEEP),
        .tx_axis_tlast_0(frame_generator_0_m_axis_TLAST),
        .tx_axis_tready_0(frame_generator_0_m_axis_TREADY),
        .tx_axis_tuser_0(frame_generator_0_m_axis_TUSER),
        .tx_axis_tvalid_0(frame_generator_0_m_axis_TVALID),
        .tx_clk_out_0(xxv_ethernet_1_tx_clk_out_0),
        .tx_preamblein_0(xlconstant_3_dout),
        .tx_reset_0(reset_gen_0_tx_reset),
        .txoutclksel_in_0(xlconstant_2_dout),
        .user_rx_reset_0(xxv_ethernet_1_user_rx_reset_0),
        .user_tx_reset_0(xxv_ethernet_1_user_tx_reset_0));
endmodule
