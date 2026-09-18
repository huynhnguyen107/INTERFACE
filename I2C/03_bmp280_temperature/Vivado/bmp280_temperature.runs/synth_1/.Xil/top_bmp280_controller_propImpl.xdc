set_property SRC_FILE_INFO {cfile:{d:/FPGA/Vivaldo Project/INTERFACE/I2C/03_bmp280_temperature/Vivado/bmp280_temperature.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc} rfile:../../../bmp280_temperature.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:{D:/FPGA/Vivaldo Project/INTERFACE/I2C/03_bmp280_temperature/Vivado/bmp280_temperature.srcs/constrs_1/new/xdc_top_bmp280_controller.xdc} rfile:../../../bmp280_temperature.srcs/constrs_1/new/xdc_top_bmp280_controller.xdc id:2} [current_design]
current_instance clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.400
current_instance
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C3 [get_ports clk_25mhz]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B10 [get_ports rst_n]
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E12 [get_ports start]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H12 [get_ports scl]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E10 [get_ports sda]
