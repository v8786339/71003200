# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z100ffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.cache/wt [current_project]
set_property parent.project_path D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/ip_repo [current_project]
set_property ip_cache_permissions disable [current_project]
read_vhdl -library xil_defaultlib D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/embedded_design.vhd
add_files D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ps_subsys.bd
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_hdmi_tx_0_0/axi_hdmi_tx_constr.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_spdif_tx_0_0/axi_spdif_tx_constr.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_xbar_0/ps_subsys_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_auto_pc_1/ps_subsys_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_auto_pc_0/ps_subsys_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ps_subsys_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/system.xdc
set_property used_in_implementation false [get_files D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top embedded_design -part xc7z100ffg900-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef embedded_design.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file embedded_design_utilization_synth.rpt -pb embedded_design_utilization_synth.pb"