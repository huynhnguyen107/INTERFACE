// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:xxv_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "xxv_ctrl,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "sfp10g_bd_xxv_ctrl_0_0,xxv_ctrl,{}" *)
(* CORE_GENERATION_INFO = "sfp10g_bd_xxv_ctrl_0_0,xxv_ctrl,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=xxv_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module sfp10g_bd_xxv_ctrl_0_0 (
  ctl_tx_custom_preamble_enable_0,
  ctl_tx_data_pattern_select_0,
  ctl_tx_enable_0,
  ctl_tx_fcs_ins_enable_0,
  ctl_tx_ignore_fcs_0,
  ctl_tx_ipg_value_0,
  ctl_tx_send_idle_0,
  ctl_tx_send_lfi_0,
  ctl_tx_send_rfi_0,
  ctl_tx_test_pattern_0,
  ctl_tx_test_pattern_enable_0,
  ctl_tx_test_pattern_seed_a_0,
  ctl_tx_test_pattern_seed_b_0,
  ctl_tx_test_pattern_select_0,
  ctl_rx_check_preamble_0,
  ctl_rx_check_sfd_0,
  ctl_rx_custom_preamble_enable_0,
  ctl_rx_data_pattern_select_0,
  ctl_rx_delete_fcs_0,
  ctl_rx_enable_0,
  ctl_rx_force_resync_0,
  ctl_rx_ignore_fcs_0,
  ctl_rx_max_packet_len_0,
  ctl_rx_min_packet_len_0,
  ctl_rx_process_lfi_0,
  ctl_rx_test_pattern_0,
  ctl_rx_test_pattern_enable_0
);

output wire ctl_tx_custom_preamble_enable_0;
output wire ctl_tx_data_pattern_select_0;
output wire ctl_tx_enable_0;
output wire ctl_tx_fcs_ins_enable_0;
output wire ctl_tx_ignore_fcs_0;
output wire [3 : 0] ctl_tx_ipg_value_0;
output wire ctl_tx_send_idle_0;
output wire ctl_tx_send_lfi_0;
output wire ctl_tx_send_rfi_0;
output wire ctl_tx_test_pattern_0;
output wire ctl_tx_test_pattern_enable_0;
output wire [57 : 0] ctl_tx_test_pattern_seed_a_0;
output wire [57 : 0] ctl_tx_test_pattern_seed_b_0;
output wire ctl_tx_test_pattern_select_0;
output wire ctl_rx_check_preamble_0;
output wire ctl_rx_check_sfd_0;
output wire ctl_rx_custom_preamble_enable_0;
output wire ctl_rx_data_pattern_select_0;
output wire ctl_rx_delete_fcs_0;
output wire ctl_rx_enable_0;
output wire ctl_rx_force_resync_0;
output wire ctl_rx_ignore_fcs_0;
output wire [14 : 0] ctl_rx_max_packet_len_0;
output wire [7 : 0] ctl_rx_min_packet_len_0;
output wire ctl_rx_process_lfi_0;
output wire ctl_rx_test_pattern_0;
output wire ctl_rx_test_pattern_enable_0;

  xxv_ctrl inst (
    .ctl_tx_custom_preamble_enable_0(ctl_tx_custom_preamble_enable_0),
    .ctl_tx_data_pattern_select_0(ctl_tx_data_pattern_select_0),
    .ctl_tx_enable_0(ctl_tx_enable_0),
    .ctl_tx_fcs_ins_enable_0(ctl_tx_fcs_ins_enable_0),
    .ctl_tx_ignore_fcs_0(ctl_tx_ignore_fcs_0),
    .ctl_tx_ipg_value_0(ctl_tx_ipg_value_0),
    .ctl_tx_send_idle_0(ctl_tx_send_idle_0),
    .ctl_tx_send_lfi_0(ctl_tx_send_lfi_0),
    .ctl_tx_send_rfi_0(ctl_tx_send_rfi_0),
    .ctl_tx_test_pattern_0(ctl_tx_test_pattern_0),
    .ctl_tx_test_pattern_enable_0(ctl_tx_test_pattern_enable_0),
    .ctl_tx_test_pattern_seed_a_0(ctl_tx_test_pattern_seed_a_0),
    .ctl_tx_test_pattern_seed_b_0(ctl_tx_test_pattern_seed_b_0),
    .ctl_tx_test_pattern_select_0(ctl_tx_test_pattern_select_0),
    .ctl_rx_check_preamble_0(ctl_rx_check_preamble_0),
    .ctl_rx_check_sfd_0(ctl_rx_check_sfd_0),
    .ctl_rx_custom_preamble_enable_0(ctl_rx_custom_preamble_enable_0),
    .ctl_rx_data_pattern_select_0(ctl_rx_data_pattern_select_0),
    .ctl_rx_delete_fcs_0(ctl_rx_delete_fcs_0),
    .ctl_rx_enable_0(ctl_rx_enable_0),
    .ctl_rx_force_resync_0(ctl_rx_force_resync_0),
    .ctl_rx_ignore_fcs_0(ctl_rx_ignore_fcs_0),
    .ctl_rx_max_packet_len_0(ctl_rx_max_packet_len_0),
    .ctl_rx_min_packet_len_0(ctl_rx_min_packet_len_0),
    .ctl_rx_process_lfi_0(ctl_rx_process_lfi_0),
    .ctl_rx_test_pattern_0(ctl_rx_test_pattern_0),
    .ctl_rx_test_pattern_enable_0(ctl_rx_test_pattern_enable_0)
  );
endmodule
