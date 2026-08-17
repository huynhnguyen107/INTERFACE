# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_BYTE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to update CLK_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to validate CLK_DIV
	return true
}

proc update_PARAM_VALUE.MAX_BYTE { PARAM_VALUE.MAX_BYTE } {
	# Procedure called to update MAX_BYTE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_BYTE { PARAM_VALUE.MAX_BYTE } {
	# Procedure called to validate MAX_BYTE
	return true
}


proc update_MODELPARAM_VALUE.CLK_DIV { MODELPARAM_VALUE.CLK_DIV PARAM_VALUE.CLK_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_DIV}] ${MODELPARAM_VALUE.CLK_DIV}
}

proc update_MODELPARAM_VALUE.MAX_BYTE { MODELPARAM_VALUE.MAX_BYTE PARAM_VALUE.MAX_BYTE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_BYTE}] ${MODELPARAM_VALUE.MAX_BYTE}
}

