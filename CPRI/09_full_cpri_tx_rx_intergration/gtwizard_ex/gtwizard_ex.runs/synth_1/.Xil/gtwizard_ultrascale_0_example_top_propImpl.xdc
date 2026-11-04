set_property SRC_FILE_INFO {cfile:{d:/FPGA/Vivaldo Project/INTERFACE/CPRI/09_full_cpri_tx_rx_intergration/gtwizard_ex/gtwizard_ultrascale_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/synth/gtwizard_ultrascale_0.xdc} rfile:../../../gtwizard_ultrascale_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/synth/gtwizard_ultrascale_0.xdc id:1 order:EARLY scoped_inst:example_wrapper_inst/gtwizard_ultrascale_0_inst/inst} [current_design]
set_property SRC_FILE_INFO {cfile:{D:/FPGA/Vivaldo Project/INTERFACE/CPRI/09_full_cpri_tx_rx_intergration/gtwizard_ex/imports/gtwizard_ultrascale_0_example_top.xdc} rfile:../../../imports/gtwizard_ultrascale_0_example_top.xdc id:2} [current_design]
current_instance example_wrapper_inst/gtwizard_ultrascale_0_inst/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE4_CHANNEL_X0Y6 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]
current_instance
set_property src_info {type:SCOPED_XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins {example_wrapper_inst/gtwizard_ultrascale_0_inst/inst/gen_gtwizard_gthe4_top.gtwizard_ultrascale_0_gtwizard_gthe4_inst/gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst/gen_powergood_delay.pwr_on_fsm_reg/Q}]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property package_pin Y5 [get_ports mgtrefclk0_x0y1_n]
set_property src_info {type:XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property package_pin Y6 [get_ports mgtrefclk0_x0y1_p]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C3 [get_ports hb_gtwiz_reset_clk_freerun_in]
