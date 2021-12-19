# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z100ffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.cache/wt [current_project]
set_property parent.project_path E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/ip_repo [current_project]
set_property ip_cache_permissions disable [current_project]
read_vhdl -library xil_defaultlib {
  E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/gvi_breathing_led.vhd
  E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/embedded_design.vhd
}
add_files E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ps_subsys.bd
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_xbar_0/ps_subsys_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_auto_pc_0/ps_subsys_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ps_subsys_ooc.xdc]
set_property is_locked true [get_files E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ps_subsys.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/system.xdc
set_property used_in_implementation false [get_files E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top embedded_design -part xc7z100ffg900-2


write_checkpoint -force -noxdef embedded_design.dcp

catch { report_utilization -file embedded_design_utilization_synth.rpt -pb embedded_design_utilization_synth.pb }