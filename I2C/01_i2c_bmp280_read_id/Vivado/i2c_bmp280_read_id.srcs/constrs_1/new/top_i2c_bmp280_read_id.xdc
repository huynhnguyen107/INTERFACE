# 25 MHz board clock
#oscilator for BANK A
set_property PACKAGE_PIN C3 [get_ports clk_25mhz] 
set_property IOSTANDARD LVCMOS18 [get_ports clk_25mhz]
create_clock -name clk_25mhz -period 40.000 [get_ports clk_25mhz]

#reset_n #PMOD1-PIN2
set_property PACKAGE_PIN B10 [get_ports rst_n] 
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
#start #PMOD1-PIN4
set_property PACKAGE_PIN E12 [get_ports start] 
set_property IOSTANDARD LVCMOS33 [get_ports start]
#LEDs for done and busy
#User defined LED1-#PMOD1-PIN6
 set_property PACKAGE_PIN D11 [get_ports done_led] 
 set_property IOSTANDARD LVCMOS33 [get_ports done_led]
#User defined LED2-#PMOD1-PIN8
 set_property PACKAGE_PIN B11 [get_ports busy_led] 
 set_property IOSTANDARD LVCMOS33 [get_ports busy_led]
#PMOD
#PMOD1-PIN1
set_property PACKAGE_PIN H12 [get_ports scl] 
#PMOD1-PIN3
set_property PACKAGE_PIN E10 [get_ports sda] 

set_property IOSTANDARD LVCMOS33 [get_ports scl]

set_property IOSTANDARD LVCMOS33 [get_ports sda]
