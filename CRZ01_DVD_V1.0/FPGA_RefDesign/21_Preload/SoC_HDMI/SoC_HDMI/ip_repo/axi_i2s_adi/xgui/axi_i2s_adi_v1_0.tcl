# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set C_HAS_RX [ipgui::add_param $IPINST -parent $Page0 -name C_HAS_RX]
	set C_HAS_TX [ipgui::add_param $IPINST -parent $Page0 -name C_HAS_TX]
	set C_NUM_CH [ipgui::add_param $IPINST -parent $Page0 -name C_NUM_CH]
	set C_DMA_TYPE [ipgui::add_param $IPINST -parent $Page0 -name C_DMA_TYPE]
	set C_S_AXI_MIN_SIZE [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXI_MIN_SIZE]
	set C_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXI_ADDR_WIDTH]
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXI_DATA_WIDTH]
	set C_BCLK_POL [ipgui::add_param $IPINST -parent $Page0 -name C_BCLK_POL]
	set C_LRCLK_POL [ipgui::add_param $IPINST -parent $Page0 -name C_LRCLK_POL]
	set C_SLOT_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_SLOT_WIDTH]
}

proc update_PARAM_VALUE.C_HAS_RX { PARAM_VALUE.C_HAS_RX } {
	# Procedure called to update C_HAS_RX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RX { PARAM_VALUE.C_HAS_RX } {
	# Procedure called to validate C_HAS_RX
	return true
}

proc update_PARAM_VALUE.C_HAS_TX { PARAM_VALUE.C_HAS_TX } {
	# Procedure called to update C_HAS_TX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TX { PARAM_VALUE.C_HAS_TX } {
	# Procedure called to validate C_HAS_TX
	return true
}

proc update_PARAM_VALUE.C_NUM_CH { PARAM_VALUE.C_NUM_CH } {
	# Procedure called to update C_NUM_CH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_CH { PARAM_VALUE.C_NUM_CH } {
	# Procedure called to validate C_NUM_CH
	return true
}

proc update_PARAM_VALUE.C_DMA_TYPE { PARAM_VALUE.C_DMA_TYPE } {
	# Procedure called to update C_DMA_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DMA_TYPE { PARAM_VALUE.C_DMA_TYPE } {
	# Procedure called to validate C_DMA_TYPE
	return true
}

proc update_PARAM_VALUE.C_S_AXI_MIN_SIZE { PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to update C_S_AXI_MIN_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_MIN_SIZE { PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to validate C_S_AXI_MIN_SIZE
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BCLK_POL { PARAM_VALUE.C_BCLK_POL } {
	# Procedure called to update C_BCLK_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BCLK_POL { PARAM_VALUE.C_BCLK_POL } {
	# Procedure called to validate C_BCLK_POL
	return true
}

proc update_PARAM_VALUE.C_LRCLK_POL { PARAM_VALUE.C_LRCLK_POL } {
	# Procedure called to update C_LRCLK_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LRCLK_POL { PARAM_VALUE.C_LRCLK_POL } {
	# Procedure called to validate C_LRCLK_POL
	return true
}

proc update_PARAM_VALUE.C_SLOT_WIDTH { PARAM_VALUE.C_SLOT_WIDTH } {
	# Procedure called to update C_SLOT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SLOT_WIDTH { PARAM_VALUE.C_SLOT_WIDTH } {
	# Procedure called to validate C_SLOT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_SLOT_WIDTH { MODELPARAM_VALUE.C_SLOT_WIDTH PARAM_VALUE.C_SLOT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SLOT_WIDTH}] ${MODELPARAM_VALUE.C_SLOT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_LRCLK_POL { MODELPARAM_VALUE.C_LRCLK_POL PARAM_VALUE.C_LRCLK_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LRCLK_POL}] ${MODELPARAM_VALUE.C_LRCLK_POL}
}

proc update_MODELPARAM_VALUE.C_BCLK_POL { MODELPARAM_VALUE.C_BCLK_POL PARAM_VALUE.C_BCLK_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BCLK_POL}] ${MODELPARAM_VALUE.C_BCLK_POL}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_MIN_SIZE { MODELPARAM_VALUE.C_S_AXI_MIN_SIZE PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_MIN_SIZE}] ${MODELPARAM_VALUE.C_S_AXI_MIN_SIZE}
}

proc update_MODELPARAM_VALUE.C_DMA_TYPE { MODELPARAM_VALUE.C_DMA_TYPE PARAM_VALUE.C_DMA_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DMA_TYPE}] ${MODELPARAM_VALUE.C_DMA_TYPE}
}

proc update_MODELPARAM_VALUE.C_NUM_CH { MODELPARAM_VALUE.C_NUM_CH PARAM_VALUE.C_NUM_CH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_CH}] ${MODELPARAM_VALUE.C_NUM_CH}
}

proc update_MODELPARAM_VALUE.C_HAS_TX { MODELPARAM_VALUE.C_HAS_TX PARAM_VALUE.C_HAS_TX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TX}] ${MODELPARAM_VALUE.C_HAS_TX}
}

proc update_MODELPARAM_VALUE.C_HAS_RX { MODELPARAM_VALUE.C_HAS_RX PARAM_VALUE.C_HAS_RX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RX}] ${MODELPARAM_VALUE.C_HAS_RX}
}

