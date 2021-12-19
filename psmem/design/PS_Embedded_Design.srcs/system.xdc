##############################################################################
##      _______      _______                                                ##
##     / ____\ \    / /_   _|                                               ##
##    | |  __ \ \  / /  | |                                                 ##
##    | | |_ | \ \/ /   | |                                                 ##
##    | |__| |  \  /   _| |_                                                ##
##     \_____|   \/   |_____|                                               ##
##                                                                          ##
## Copyright (c) 2012-2017 Yanman Co. Ltd. All rights reserved.             ##
##                                                                          ##
## THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY   ##
## KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE      ##
## IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A               ##
## PARTICULAR PURPOSE.                                                      ##
##                                                                          ##
## Website: http://www.gvi-tech.com/                                        ##
## Email: support@gvi-tech.com                                              ##
##                                                                          ##
##############################################################################

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#
# pin constraints
#

# hdmi
set_property  -dict {PACKAGE_PIN  L13  IOSTANDARD LVCMOS18} [get_ports hdmi_out_clk]
set_property  -dict {PACKAGE_PIN  D15  IOSTANDARD LVCMOS18} [get_ports hdmi_vsync]
set_property  -dict {PACKAGE_PIN  B12  IOSTANDARD LVCMOS18} [get_ports hdmi_hsync]
set_property  -dict {PACKAGE_PIN  C12  IOSTANDARD LVCMOS18} [get_ports hdmi_data_e]
set_property  -dict {PACKAGE_PIN  C13  IOSTANDARD LVCMOS18} [get_ports hdmi_data[0]]
set_property  -dict {PACKAGE_PIN  C14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[1]]
set_property  -dict {PACKAGE_PIN  A12  IOSTANDARD LVCMOS18} [get_ports hdmi_data[2]]
set_property  -dict {PACKAGE_PIN  A13  IOSTANDARD LVCMOS18} [get_ports hdmi_data[3]]
set_property  -dict {PACKAGE_PIN  A14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[4]]
set_property  -dict {PACKAGE_PIN  B14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[5]]
set_property  -dict {PACKAGE_PIN  H13  IOSTANDARD LVCMOS18} [get_ports hdmi_data[6]]
set_property  -dict {PACKAGE_PIN  J13  IOSTANDARD LVCMOS18} [get_ports hdmi_data[7]]
set_property  -dict {PACKAGE_PIN  H14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[8]]
set_property  -dict {PACKAGE_PIN  J14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[9]]
set_property  -dict {PACKAGE_PIN  L14  IOSTANDARD LVCMOS18} [get_ports hdmi_data[10]]
set_property  -dict {PACKAGE_PIN  L15  IOSTANDARD LVCMOS18} [get_ports hdmi_data[11]]
set_property  -dict {PACKAGE_PIN  K13  IOSTANDARD LVCMOS18} [get_ports hdmi_data[12]]
set_property  -dict {PACKAGE_PIN  B11  IOSTANDARD LVCMOS18} [get_ports hdmi_data[13]]
set_property  -dict {PACKAGE_PIN  C11  IOSTANDARD LVCMOS18} [get_ports hdmi_data[14]]
set_property  -dict {PACKAGE_PIN  E17  IOSTANDARD LVCMOS18} [get_ports hdmi_data[15]]

# spdif
set_property  -dict {PACKAGE_PIN  D14  IOSTANDARD LVCMOS18} [get_ports spdif]

# i2s
set_property  -dict {PACKAGE_PIN  B17   IOSTANDARD LVCMOS18} [get_ports i2s_mclk]
set_property  -dict {PACKAGE_PIN  E15   IOSTANDARD LVCMOS18} [get_ports i2s_bclk]
set_property  -dict {PACKAGE_PIN  E16   IOSTANDARD LVCMOS18} [get_ports i2s_lrclk]
set_property  -dict {PACKAGE_PIN  E13   IOSTANDARD LVCMOS18} [get_ports i2s_sdata_out]
set_property  -dict {PACKAGE_PIN  D13   IOSTANDARD LVCMOS18} [get_ports i2s_sdata_in]

# iic
set_property  -dict {PACKAGE_PIN  U26  IOSTANDARD LVCMOS18 PULLTYPE PULLUP} [get_ports iic_scl]
set_property  -dict {PACKAGE_PIN  U27  IOSTANDARD LVCMOS18 PULLTYPE PULLUP} [get_ports iic_sda]

# PL UART
set_property  -dict {PACKAGE_PIN  AB19   IOSTANDARD LVCMOS33} [get_ports pl_uart_rxd]
set_property  -dict {PACKAGE_PIN  AB20   IOSTANDARD LVCMOS33} [get_ports pl_uart_txd]

# gpio (switches, leds and such)
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS18} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS18} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN G12 IOSTANDARD LVCMOS18} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN F12 IOSTANDARD LVCMOS18} [get_ports {LED[3]}]

set_property -dict {PACKAGE_PIN L12 IOSTANDARD LVCMOS15 PULLDOWN true} [get_ports {dip_switches[0]}]
set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS15 PULLDOWN true} [get_ports {dip_switches[1]}]
set_property -dict {PACKAGE_PIN K10 IOSTANDARD LVCMOS15 PULLDOWN true} [get_ports {dip_switches[2]}]
set_property -dict {PACKAGE_PIN K11 IOSTANDARD LVCMOS15 PULLDOWN true} [get_ports {dip_switches[3]}]

set_property -dict {PACKAGE_PIN L10 IOSTANDARD LVCMOS15} [get_ports {push_buttons[0]}]
set_property -dict {PACKAGE_PIN L9  IOSTANDARD LVCMOS15} [get_ports {push_buttons[1]}]
set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS15} [get_ports {push_buttons[2]}]




