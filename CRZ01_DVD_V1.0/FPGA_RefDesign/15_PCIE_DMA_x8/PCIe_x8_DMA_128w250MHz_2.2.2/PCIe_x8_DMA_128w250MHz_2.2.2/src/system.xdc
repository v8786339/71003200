##############################################################################
##      _______      _______                                                ##
##     / ____\ \    / /_   _|                                               ##
##    | |  __ \ \  / /  | |                                                 ##
##    | | |_ | \ \/ /   | |                                                 ##
##    | |__| |  \  /   _| |_                                                ##
##     \_____|   \/   |_____|                                               ##
##                                                                          ##
## Copyright (c) 2012-2017 Hangzhou Yanman Co. Ltd. All rights reserved.    ##
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

set_property IOSTANDARD LVCMOS33 [get_ports PCIE_RESET_N]
set_property PACKAGE_PIN AC19 [get_ports PCIE_RESET_N]
set_property PULLUP true [get_ports PCIE_RESET_N]

set_property PACKAGE_PIN C17 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
set_property PACKAGE_PIN B16 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
set_property PACKAGE_PIN G12 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
set_property PACKAGE_PIN F12 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]

##############################################################################
# Start: PCIE Related Constraints
##############################################################################

# set_property PACKAGE_PIN R8 [get_ports PCIE_REFCLK_P]
# set_property PACKAGE_PIN R7 [get_ports PCIE_REFCLK_N]
create_clock -period 10.000 -name pcie_ref_clk [get_ports PCIE_REFCLK_P]

set_property LOC PCIE_X0Y0 [get_cells PCIeGen2x8If128_i/inst/inst/pcie_top_i/pcie_7x_i/pcie_block_i]
set_property LOC IBUFDS_GTE2_X0Y7 [get_cells {refclk_ibuf}]
# PCIe Lane 0
set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 1
set_property LOC GTXE2_CHANNEL_X0Y14 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 2
set_property LOC GTXE2_CHANNEL_X0Y13 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 3
set_property LOC GTXE2_CHANNEL_X0Y12 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 4
set_property LOC GTXE2_CHANNEL_X0Y11 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 5
set_property LOC GTXE2_CHANNEL_X0Y10 [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 6
set_property LOC GTXE2_CHANNEL_X0Y9  [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 7
set_property LOC GTXE2_CHANNEL_X0Y8  [get_cells {PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]


set_false_path -from [get_ports PCIE_RESET_N]

##############################################################################
# END: PCIE Related Constraints
##############################################################################

