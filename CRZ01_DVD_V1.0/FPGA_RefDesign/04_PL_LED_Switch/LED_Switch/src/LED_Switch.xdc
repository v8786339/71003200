##############################################################################
##      _______      _______                                                ##
##     / ____\ \    / /_   _|                                               ##
##    | |  __ \ \  / /  | |                                                 ##
##    | | |_ | \ \/ /   | |                                                 ##
##    | |__| |  \  /   _| |_                                                ##
##     \_____|   \/   |_____|                                               ##
##                                                                          ##
## Copyright (c) 2012-2017 Hangzhou Yanman Co. Ltd.  All rights reserved.   ##
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

set_property IOSTANDARD LVDS [get_ports SYS_CLK_P]
set_property IOSTANDARD LVDS [get_ports SYS_CLK_N]
set_property PACKAGE_PIN H9 [get_ports SYS_CLK_P]
set_property PACKAGE_PIN G9 [get_ports SYS_CLK_N]
create_clock -period 5.000 -name SYS_CLK_P [get_ports SYS_CLK_P]

set_property PACKAGE_PIN C17 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
set_property PACKAGE_PIN B16 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
set_property PACKAGE_PIN G12 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
set_property PACKAGE_PIN F12 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]

set_property PACKAGE_PIN L12 [get_ports {dip_switches[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {dip_switches[0]}]
set_property PULLDOWN true [get_ports {dip_switches[0]}]
set_property PACKAGE_PIN K12 [get_ports {dip_switches[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {dip_switches[1]}]
set_property PULLDOWN true [get_ports {dip_switches[1]}]
set_property PACKAGE_PIN K10 [get_ports {dip_switches[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {dip_switches[2]}]
set_property PULLDOWN true [get_ports {dip_switches[2]}]
set_property PACKAGE_PIN K11 [get_ports {dip_switches[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {dip_switches[3]}]
set_property PULLDOWN true [get_ports {dip_switches[3]}]

set_property PACKAGE_PIN L10 [get_ports {push_buttons[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {push_buttons[0]}]
set_property PACKAGE_PIN L9 [get_ports {push_buttons[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {push_buttons[1]}]

