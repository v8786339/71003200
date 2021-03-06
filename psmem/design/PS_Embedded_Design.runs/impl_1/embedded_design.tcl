proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.cache/wt [current_project]
  set_property parent.project_path E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.xpr [current_project]
  set_property ip_repo_paths E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/ip_repo [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.runs/synth_1/embedded_design.dcp
  read_xdc -ref ps_subsys_processing_system7_0_0 -cells inst e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref ps_subsys_axi_iic_0_0 -cells U0 e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_board.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref ps_subsys_proc_sys_reset_0_0 -cells U0 e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref ps_subsys_proc_sys_reset_0_0 -cells U0 e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xdc]
  read_xdc -prop_thru_buffers -ref ps_subsys_axi_uartlite_0_0 -cells U0 e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_board.xdc]
  read_xdc -ref ps_subsys_axi_uartlite_0_0 -cells U0 e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files e:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xdc]
  read_xdc E:/workspace/KXZ7C01/SoC_Embedded_Design_PL_UART/PS_Embedded_Design.srcs/system.xdc
  link_design -top embedded_design -part xc7z100ffg900-2
  write_hwdef -file embedded_design.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force embedded_design_opt.dcp
  catch { report_drc -file embedded_design_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force embedded_design_placed.dcp
  catch { report_io -file embedded_design_io_placed.rpt }
  catch { report_utilization -file embedded_design_utilization_placed.rpt -pb embedded_design_utilization_placed.pb }
  catch { report_control_sets -verbose -file embedded_design_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force embedded_design_routed.dcp
  catch { report_drc -file embedded_design_drc_routed.rpt -pb embedded_design_drc_routed.pb -rpx embedded_design_drc_routed.rpx }
  catch { report_methodology -file embedded_design_methodology_drc_routed.rpt -rpx embedded_design_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file embedded_design_timing_summary_routed.rpt -rpx embedded_design_timing_summary_routed.rpx }
  catch { report_power -file embedded_design_power_routed.rpt -pb embedded_design_power_summary_routed.pb -rpx embedded_design_power_routed.rpx }
  catch { report_route_status -file embedded_design_route_status.rpt -pb embedded_design_route_status.pb }
  catch { report_clock_utilization -file embedded_design_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force embedded_design_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force embedded_design.mmi }
  write_bitstream -force -no_partial_bitfile embedded_design.bit 
  catch { write_sysdef -hwdef embedded_design.hwdef -bitfile embedded_design.bit -meminfo embedded_design.mmi -file embedded_design.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

