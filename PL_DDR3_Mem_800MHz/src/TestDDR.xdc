##############################################################################
##      _______      _______                                                ##
##     / ____\ \    / /_   _|                                               ##
##    | |  __ \ \  / /  | |                                                 ##
##    | | |_ | \ \/ /   | |                                                 ##
##    | |__| |  \  /   _| |_                                                ##
##     \_____|   \/   |_____|                                               ##
##                                                                          ##
## Copyright (c) 2012-2017 Hangzhou Yanman Co. Ltd.  All rights reserved.   ##
## This code/software is controlled by a written license agreement.         ##
## Unauthorized Reproduction or Use is Expressly Prohibited.                ##
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

set_property IOSTANDARD DIFF_SSTL15 [get_ports SysCLK_200M_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports SysCLK_200M_N]
set_property PACKAGE_PIN H9 [get_ports SysCLK_200M_P]
set_property PACKAGE_PIN G9 [get_ports SysCLK_200M_N]
create_clock -period 5.000 -name SysCLK_200M_IN -waveform {0.000 2.500} [get_ports SysCLK_200M_P]

set_property PACKAGE_PIN L10 [get_ports sys_reset_i]
set_property IOSTANDARD LVCMOS15 [get_ports sys_reset_i]

set_property PACKAGE_PIN C17 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
set_property PACKAGE_PIN B16 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
set_property PACKAGE_PIN G12 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
set_property PACKAGE_PIN F12 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/CLK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {dbg_s_axi_rdata[0]} {dbg_s_axi_rdata[1]} {dbg_s_axi_rdata[2]} {dbg_s_axi_rdata[3]} {dbg_s_axi_rdata[4]} {dbg_s_axi_rdata[5]} {dbg_s_axi_rdata[6]} {dbg_s_axi_rdata[7]} {dbg_s_axi_rdata[8]} {dbg_s_axi_rdata[9]} {dbg_s_axi_rdata[10]} {dbg_s_axi_rdata[11]} {dbg_s_axi_rdata[12]} {dbg_s_axi_rdata[13]} {dbg_s_axi_rdata[14]} {dbg_s_axi_rdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 30 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {dbg_s_axi_araddr[0]} {dbg_s_axi_araddr[1]} {dbg_s_axi_araddr[2]} {dbg_s_axi_araddr[3]} {dbg_s_axi_araddr[4]} {dbg_s_axi_araddr[5]} {dbg_s_axi_araddr[6]} {dbg_s_axi_araddr[7]} {dbg_s_axi_araddr[8]} {dbg_s_axi_araddr[9]} {dbg_s_axi_araddr[10]} {dbg_s_axi_araddr[11]} {dbg_s_axi_araddr[12]} {dbg_s_axi_araddr[13]} {dbg_s_axi_araddr[14]} {dbg_s_axi_araddr[15]} {dbg_s_axi_araddr[16]} {dbg_s_axi_araddr[17]} {dbg_s_axi_araddr[18]} {dbg_s_axi_araddr[19]} {dbg_s_axi_araddr[20]} {dbg_s_axi_araddr[21]} {dbg_s_axi_araddr[22]} {dbg_s_axi_araddr[23]} {dbg_s_axi_araddr[24]} {dbg_s_axi_araddr[25]} {dbg_s_axi_araddr[26]} {dbg_s_axi_araddr[27]} {dbg_s_axi_araddr[28]} {dbg_s_axi_araddr[29]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 30 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {dbg_s_axi_awaddr[0]} {dbg_s_axi_awaddr[1]} {dbg_s_axi_awaddr[2]} {dbg_s_axi_awaddr[3]} {dbg_s_axi_awaddr[4]} {dbg_s_axi_awaddr[5]} {dbg_s_axi_awaddr[6]} {dbg_s_axi_awaddr[7]} {dbg_s_axi_awaddr[8]} {dbg_s_axi_awaddr[9]} {dbg_s_axi_awaddr[10]} {dbg_s_axi_awaddr[11]} {dbg_s_axi_awaddr[12]} {dbg_s_axi_awaddr[13]} {dbg_s_axi_awaddr[14]} {dbg_s_axi_awaddr[15]} {dbg_s_axi_awaddr[16]} {dbg_s_axi_awaddr[17]} {dbg_s_axi_awaddr[18]} {dbg_s_axi_awaddr[19]} {dbg_s_axi_awaddr[20]} {dbg_s_axi_awaddr[21]} {dbg_s_axi_awaddr[22]} {dbg_s_axi_awaddr[23]} {dbg_s_axi_awaddr[24]} {dbg_s_axi_awaddr[25]} {dbg_s_axi_awaddr[26]} {dbg_s_axi_awaddr[27]} {dbg_s_axi_awaddr[28]} {dbg_s_axi_awaddr[29]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {dbg_s_axi_wdata[0]} {dbg_s_axi_wdata[1]} {dbg_s_axi_wdata[2]} {dbg_s_axi_wdata[3]} {dbg_s_axi_wdata[4]} {dbg_s_axi_wdata[5]} {dbg_s_axi_wdata[6]} {dbg_s_axi_wdata[7]} {dbg_s_axi_wdata[8]} {dbg_s_axi_wdata[9]} {dbg_s_axi_wdata[10]} {dbg_s_axi_wdata[11]} {dbg_s_axi_wdata[12]} {dbg_s_axi_wdata[13]} {dbg_s_axi_wdata[14]} {dbg_s_axi_wdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {dbg_SM[0]} {dbg_SM[1]} {dbg_SM[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 25 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {dbg_error_cnt[0]} {dbg_error_cnt[1]} {dbg_error_cnt[2]} {dbg_error_cnt[3]} {dbg_error_cnt[4]} {dbg_error_cnt[5]} {dbg_error_cnt[6]} {dbg_error_cnt[7]} {dbg_error_cnt[8]} {dbg_error_cnt[9]} {dbg_error_cnt[10]} {dbg_error_cnt[11]} {dbg_error_cnt[12]} {dbg_error_cnt[13]} {dbg_error_cnt[14]} {dbg_error_cnt[15]} {dbg_error_cnt[16]} {dbg_error_cnt[17]} {dbg_error_cnt[18]} {dbg_error_cnt[19]} {dbg_error_cnt[20]} {dbg_error_cnt[21]} {dbg_error_cnt[22]} {dbg_error_cnt[23]} {dbg_error_cnt[24]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list dbg_app_reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list dbg_init_calib_complete]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list dbg_mmcm_locked]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list dbg_s_axi_arready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list dbg_s_axi_arvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list dbg_s_axi_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list dbg_s_axi_awvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list dbg_s_axi_rlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list dbg_s_axi_rready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list dbg_s_axi_rvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list dbg_s_axi_wlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list dbg_s_axi_wready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list dbg_s_axi_wvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list dbg_sys_reset]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets app_clk]
