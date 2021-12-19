###############################################################################
##
## Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
##
## Xilinx, Inc.
## XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
## COURTESY TO YOU. BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS 
## ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
## STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
## IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
## FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION. 
## XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
## THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
## ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
## FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
## AND FITNESS FOR A PARTICULAR PURPOSE. 
##
## xmdterm.tcl
##
## XMD Terminal User Interface
##
## $Header: /devl/xcs/repo/env/Jobs/MDT/sw/Apps/debug/new_xmd/DataFiles/Attic/xmdterm.tcl,v 1.1.2.101.4.15.2.1 2013/10/09 11:01:42 sadanan Exp $
## $Id: xmdterm.tcl,v 1.1.2.101.4.15.2.1 2013/10/09 11:01:42 sadanan Exp $
##
###############################################################################

set _mb_reg_names [list dummy pc msr ear esr fsr btr pvr0 pvr1 pvr2 pvr3 pvr4 pvr5 pvr6 pvr7 pvr8 pvr9 pvr10 pvr11 edr pid zpr tlbx tlbsx tlblo tlbhi slr shr]

set _mb_dbg_reg_names [list dbcr dbsr]

set _gpr_reg_names [list r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 pc msr]

set _cortex_gpr_reg_names [list r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 sp lr pc f0 f1 f2 f3 f4 f5 f6 f7 fpscr cpsr]

set _cortex_spr_reg_names [list ctrl debug dma tcm id etc vfp]

# Cortex special registers
set SRRD_CTRL { list
		"SCTRL         System Control" \
		"ACTRL         Auxiliary Control" \
		"CPACR         Coprocessor Access Control" \
		"SCR           Secure Configuration" \
		"SDER          Secure Debug Enable" \
		"NSACR         Non-Secure Access Control" \
		"TTBR0         Translation Table Base 0" \
		"TTBR1         Translation Table Base 1" \
		"TTBCR         Translation Table Base Control" \
		"DACR          Domain Access Control" \
		"DFSR          Data Fault Status" \
		"IFSR          Instruction Fault Status" \
		"DFAR          Data Fault Address" \
		"WFAR          Watchpoint Fault Address" \
		"IFAR          Instruction Fault Address" \
		"VBAR          Secure or Non-secure Vector Base Address" \
		"MVBAR         Monitor Vector Base Address" \
		"ISR           Interrupt Status" \
		"FCSEIDR       FCSE PID" \
		"CONTEXTIDR    Context ID" \
		"TPIDRURW      User Read/Write Thread and Process ID" \
		"TPIDRURO      User Read-only Thread and Process ID" \
		"TPIDRPRW      Privileged Only Thread and Process ID" }

set SRRD_ID {   list
		"MIDR          Main ID" \
		"CTR           Cache Type" \
		"TCMTR         TCM Type" \
		"TLBTR         TLB Type" \
		"ID_PFR0       Processor Feature 0" \
		"ID_PFR1       Processor Feature 1" \
		"ID_DFR0       Debug Feature 0" \
		"ID_AFR0       Auxiliary Feature 0" \
		"ID_MMFR0      Memory Model Feature 0" \
		"ID_MMFR1      Memory Model Feature 1" \
		"ID_MMFR2      Memory Model Feature 2" \
		"ID_MMFR3      Memory Model Feature 3" \
		"ID_ISAR0      Instruction Set Feature Attribute 0" \
		"ID_ISAR1      Instruction Set Feature Attribute 1" \
		"ID_ISAR2      Instruction Set Feature Attribute 2" \
		"ID_ISAR3      Instruction Set Feature Attribute 3" \
		"ID_ISAR4      Instruction Set Feature Attribute 4" \
		"ID_ISAR5      Instruction Set Feature Attribute 5" }
set SRRD_DBG {  list
		"DBGDIDR       Debug ID" \
		"DBGDSCR       Debug Status and Control" \
		"DBGDTRRX      Host to Target Data Transfer" \
		"DBGWFAR       Watchpoint Fault Address" \
		"DBGVCR        Vector Catch" \
		"DBGDSCCR      Debug State Cache Control" \
		"DBGDSMCR      Debug State MMU Control"
		"DBGBVR0       Breakpoint Value 0" \
		"DBGBVR1       Breakpoint Value 1" \
		"DBGBVR2       Breakpoint Value 2" \
		"DBGBVR3       Breakpoint Value 3" \
		"DBGBVR4       Breakpoint Value 4" \
		"DBGBVR5       Breakpoint Value 5" \
		"DBGBCR0       Breakpoint Control 0" \
		"DBGBCR1       Breakpoint Control 1" \
		"DBGBCR2       Breakpoint Control 2" \
		"DBGBCR3       Breakpoint Control 3" \
		"DBGBCR4       Breakpoint Control 4" \
		"DBGBCR5       Breakpoint Control 5" \
		"DBGWVR0       Watchpoint Value 0" \
		"DBGWVR1       Watchpoint Value 1" \
		"DBGWCR0       Watchpoint Control 0" \
		"DBGWCR1       Watchpoint Control 1" }
set SRRD_ETC {  list
		"PAR           Physical Address" \
		"TLBLR         TLB Lockdown" \
		"PRRR          Primary Region Remap" \
		"NRRR          Normal Region Remap" \
		"PMCR          Performance Monitor Control" \
		"PMCNTENSET    Count Enable Set"
		"PMCNTENCLR    Count Enable Clear"
		"PMOVSR        Overflow Flag Status"
		"PMSELR        Event Counter Selection"
		"PMCCNTR       Cycle Counter" \
		"PMXEVTYPER    Event Type Selection"
		"PMXEVCNTR     Event Count"
		"TLBVAR        TLB Lockdown VA" \
		"TLBPAR        TLB Lockdown PA" \
		"TLBLAR        TLB Lockdown Attributes" }

set SRRD_VFP {  list
		"FPSID         Floating-Point System ID" \
		"FPSCR         Floating-Point Status and Control" \
		"FPEXC         Floating-Point Exception Control" \
		"MVFR0         Media and VFP Feature 0" \
		"MVFR1         Media and VFP Feature 1" }

## from targets.h
set _target_names [list \
		       {MicroBlaze Cycle-accurate Simulation Target}  \
		       {MicroBlaze ModelSim Target} \
		       {Generic Target(Tcl based)} \
		       {MicroBlaze MDM-based (hw) Target} \
		       {MicroBlaze Simulation System Target}\
		       {Cortex Target}\
		      ]

set _system_types [ list \
			{Hardware System} \
			{Virtual Platform System} \
			{Simulator System} \
		       ]

set _target_arch [ list \
		       {MicroBlaze} \
		       {UNKNOWN} \
		       {UnSupported}\
		      ]

set _target_state [list \
		       {Stopped} \
		       {Running} \
		       {Blocked on FSL Instr}\
		       {Blocked on Mem Instr}\
		       {Blocked on Instr Access}\
		       {UNKNOWN State} \
		      ]

if {![info exists _cur_system]} {
    set _cur_system -1
}

if {![info exists _cur_target]} {
    set _cur_target -1
    set elf_file ""
}

set tcl_prompt1 {puts -nonewline "XMD% "}
set tcl_prompt2 {puts -nonewline "> "}
set silent_mode 0

###############################################################################
#
# Evaluate XMD commands.
#    When XMD commands are evaluated, XMD returns Command Execution
# Status (Success, Error, Info, Warn, etc) and also related o/p string.
#
# Protocol:
# 1. Success: X [Return Values] # [String to Print on stdo] $
# 2. Error: 
#        Usage: E01 <Usage> [String to Print on stderr] #
#                   [String to Print on stdo] $
#        Error: E02 <Msg to stderr> [String to Print on stderr] #
#                   [String to Print on stdo] $
# 3. Info: I <Information printed on stdo> $
# 4. Warn: W <Warning printed on stderr> $
#
###############################################################################
proc eval_xmd_cmd { xcmd } {
    global silent_mode

    if { [catch {eval $xcmd} retval] } {
	if { ![string compare -length 3 $retval "E01"] } {
	    set slist [split $retval]
	    set cmd [lindex $slist 2]
	    #puts "Cmd $cmd"
	    if { ![catch {get_cmd_syntax $cmd} rval] } {
		error ""
	    }
	}
	set endindex [string first "$" $retval]
	set strindex [string first "\#" $retval]
	if { $strindex != -1 } {
	    puts -nonewline [string range $retval [incr strindex 1] [incr endindex -1]]
	    #puts stderr [string range $retval 3 [incr strindex -2]]
	    set errstr [string range $retval 3 [incr strindex -2]]
	    flush stdout
	    #flush stderr
	    error $errstr
	} else {
	    #puts -nonewline stderr [string range $retval 3 [incr endindex -1]]
	    #flush stderr
	    set errstr [string range $retval 3 [incr endindex -1]]
	    error $errstr
	}
    } else {
	set endindex [string first "$" $retval]
	set strindex [string first "\#" $retval]
	if { $strindex != -1 } {
	    set ostr [string range $retval [incr strindex 1] [incr endindex -1]]
	    if { [string length $ostr] } {
		if { !$silent_mode } {
		    puts $ostr
		    flush stdout
		}
	    }
	    set ret [string range $retval 2 [incr strindex -2]]
	} else {
	    set ret [string range $retval 2 [incr endindex -1]]
	}
	return $ret
    }
}

# The "curSysID" arguments sets the _cur_system to Current XMD System
proc set_cur_system { {sysID curSysID} } {
    global _cur_system

    if { $sysID == "curSysID" } {
	set _cur_system [eval_xmd_cmd "xtargets -curSysID"]
    } else {
	set xcmd "xtargets -system $sysID"
	if { [catch {eval_xmd_cmd $xcmd} retval] } {
	    error "Error: Invalid XMD System ID: $sysID
Use \"targets\" command to get current list of systems or change system"
	} else {
	    set _cur_system $sysID
	}
    }
    return
}

proc get_cur_system {} {
    global _cur_system

    set xcmd "xtargets -system $_cur_system"
    if { [catch {eval_xmd_cmd $xcmd} retval] } {
	error "Error: Invalid XMD System ID: $_cur_system
Use \"targets\" command to get current list of systems or change system"
    } else {
	return $_cur_system
    }
}

proc set_cur_target { {tgtID curTgtID} } {
    global _cur_target

    if { $tgtID == "curTgtID" } {
	if { $_cur_target == -1 } {
	    error "Error: No Active Target in the System.
Use \"targets\" command to get current list of targets or change target
Use \"connect mb\" command to connect to a MicroBlaze target
Use \"connect arm\" command to connect to a ARM Cortex A9 target"
	}
	set tgtID $_cur_target
    } 

    set xcmd "xtargets -target $tgtID"
    if { [catch {set tgtlist [eval_xmd_cmd $xcmd]} retval] } {
	error "Error: Invalid xmd target: $_cur_target
Use \"targets\" command to get current list of targets"
    } else {
	set _cur_target $tgtID
	return $_cur_target
    }
}

proc get_cur_target {} {
    global _cur_target

    set xcmd "xtargets -target $_cur_target"
    if { [catch {set tgtlist [eval_xmd_cmd $xcmd]} retval] } {
	error "Error: Invalid xmd target: $_cur_target
Use \"targets\" command to get current list of targets or change target
Use \"connect mb\" command to connect to a MicroBlaze target
Use \"connect arm\" command to connect to a ARM Cortex A9 target"
    } else {
	return $_cur_target
    }
}

# This procedure is called after Target/System Disconnect.
# This procedure identifies the next available target in the system or
# next available system
proc set_cur_system_target { } {
    global _cur_target
    global _cur_system

    #
    # Find the Next Target. If No Active Target in the System, look at other Systems
    #
    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $_cur_system -listTgtID"]} retval] } {
	set _cur_system -1
	set _cur_target -1
	if { [catch {set sysList [eval_xmd_cmd "xtargets -listSysID"]} retval] } {
	    return
	}
	set _cur_system [lindex $sysList 0]
	foreach newSysID $sysList {
	    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $newSysID -listTgtID"]} retval] } {
	    } else {
		set _cur_system $newSysID
		set _cur_target [lindex $tgtsList 0]
		break;
	    }
	}
	eval_xmd_cmd "xtargets -system $_cur_system"
	if { $_cur_target != -1 } {
	    eval_xmd_cmd "xtargets -target $_cur_target"
	}
    } else {
	set _cur_target [lindex $tgtsList 0]
	eval_xmd_cmd "xtargets -target $_cur_target"
    }
    return
}

# Target type number in targets.h
proc is_mdmuart_target { tgt_id } {
    set xcmd "xtargets -target $tgt_id -prop"
    set t_info [eval_xmd_cmd $xcmd]
    set t_sys [lindex $t_info 0]
    set t_type [lindex $t_info 1]
    if { ($t_sys == 0) && ($t_type == 8) } {
	return 1
    } else {
	return 0
    }
}

proc is_cortex_target {{tgt_id}} {
    set xcmd "xtargets -target $tgt_id -prop"
    set t_info [eval_xmd_cmd $xcmd]
    set t_arch [lindex $t_info 2]
    if { $t_arch == 4 || $t_arch == 5 } {
	return 1
    } else {
	return 0
    }
}

proc is_microblaze_target {{tgt_id}} {
    set xcmd "xtargets -target $tgt_id -prop"
    set t_info [eval_xmd_cmd $xcmd]
    set t_arch [lindex $t_info 2]
    if { $t_arch == 0 } {
	return 1
    } else {
	return 0
    }
}

proc debugconfig { args } {
    set tgt [get_cur_target]
    set xcmd "xdebugconfig $tgt $args"
    eval_xmd_cmd $xcmd
    return
}

proc mdmuart_target_exists { } {
    set cur_system [eval_xmd_cmd "xtargets -curSysID"]
    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $cur_system -listTgtID"]} retval] } {
	return 0
    } else {
	foreach tgtID $tgtsList {
	    if { [is_mdmuart_target $tgtID] == 1 } {
		return 1
	    }
	}
	return 0
    }
}

proc connect {{target " "} args} {
    global _cur_system
    global _cur_target

    set sysList {}
    set tgtsList {}
    set xcmd "xtargets -listSysID"
    if { [catch {set sysList [eval_xmd_cmd $xcmd]} retval] } {
        #no active systems
    } else {
        foreach sys $sysList {
            # get an existing list of already connected targets
            set xcmd "xtargets -system $sys -listTgtID"
            if { [catch {set tgts [eval_xmd_cmd $xcmd]} retval] } {
                #no targets connected
            } else {
                foreach trgt $tgts {
                    lappend tgtsList $trgt
                }
            }
        }
    }

    set xcmd "xconnect $target $args"
    if { [catch {set tgt_list [eval_xmd_cmd $xcmd]} retval] } {
            error $retval
    }

    if { $target == "board" } {
	return $retval
    } elseif { $target == "mdm" || $target == "dcc" } {
	puts "Connected to [string toupper $target] UART Target"
	set_cur_system
	return
    } elseif { $target == "dap" } {
	puts "Connected to [string toupper $target] Target"
	set_cur_target 352
	set_cur_system
	return
    }

    foreach tgt $tgt_list {
        set is_connected 0
        foreach trgt $tgtsList {
            if { $tgt == $trgt } {
                # if the target is already connected, skip it
                set is_connected 1
                break;
            }
        }

        if { $is_connected == 1 } {
           continue;
        }

	set_cur_target $tgt
	# set port [expr 1234 + $tgt]
	set port 1234
	set xcmd "xgdbserver $tgt $port"
	while { [catch {eval $xcmd} retval] } {
	    #     puts $retval
	    incr port
	    if { $port > 1362} {
		error "$retval\nUnable to open GDB server on any port from 1234 to 1362"
	    }
	    set xcmd "xgdbserver $tgt $port"
	}
	puts "Connected to \"$target\" target. id = $tgt"
	puts "Starting GDB server for \"$target\" target (id = $tgt) at TCP port no $port"
    }
    set_cur_system
    return
}

proc mbconnect {{target mdm } args} {
    global _cur_target

    set xcmd "xconnect mb $target $args"
    if { [catch {set tgt_list [eval_xmd_cmd $xcmd]} retval] } {
	#puts "$retval"
	error ""
    } else {
	foreach tgt $tgt_list {
	    set _cur_target $tgt
	    # set port [expr 1234 + $tgt]
	    set port 1234
	    set xcmd "xgdbserver $tgt $port"
	    while { [catch {eval_xmd_cmd $xcmd} retval] } {
		#     puts $retval
		incr port
		if { $port > 1362} {
		    error "$retval\nUnable to open GDB server on any port from 1234 to 1362"
		}
		set xcmd "xgdbserver $tgt $port"
	    }
	    puts "Connected to MicroBlaze \"$target\" target. id = $tgt"
	    puts "Starting GDB server for \"$target\" target (id = $tgt) at TCP port no $port"
	}
    }
    puts "\nNote:: \"mbconnect\" command is Deprecated. Use \"connect mb\" command"
}

proc ppcconnect {args} {
    puts "Warning: PowerPC is no longer supported."
}

proc vpconnect {{target mb} args} {
    puts "Warning: Virtual Platform is no longer supported by Xilinx."
}

proc vpio { } {
    puts "Warning: VPIO is no longer supported by Xilinx."
}

proc disconnect {target_id} {
    global _cur_system

    set xcmd "xtargets -target $target_id -prop"
    if { [catch {set tgtProp [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }

    # GDB Exists Only for Debug Target - Value 1
    if { [lindex $tgtProp 1] == 1 } {
	set xcmd "xgdbclose $target_id"
	if { [catch {eval_xmd_cmd $xcmd} retval] } {
	    error $retval
	}
    }
    set xcmd "xdisconnect $target_id"
    if { [catch {eval_xmd_cmd $xcmd} retval] } {
	error $retval
    }
    #puts "Disconnected from Target $target_id"

    # disconnect from the coresight too, when the last arm target is disconnected
    set xcmd "xtargets -system $_cur_system -listTgtID"
    if { [catch {set tgtsList [eval_xmd_cmd $xcmd]} retval] } {
	#puts "No Active Targets on the System\n"
    } else {
        if { [llength $tgtsList] == 1 && [lindex $tgtsList 0] == 352 } {
            set xcmd "xdisconnect 352"
            if { [catch {eval_xmd_cmd $xcmd} retval] } {
        	error $retval
            }
     #       puts "Disconnected from Target 352"
        }
    }

    set_cur_system_target
    return
}

proc mrc { coproc opc1 crn crm opc2 } {

    set tgt [get_cur_target]

    if { [is_cortex_target $tgt] == 0 } {
	error "Command supported only on Cortex processor"
    }

    set xcmd "xmrc $tgt $coproc $opc1 $crn $crm $opc2"
    if { [catch {set reg_val [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
   }

    append line [format "%08x  " $reg_val]

    return $line
}

proc mcr { coproc opc1 crn crm opc2 data} {

    set tgt [get_cur_target]

    if { [is_cortex_target $tgt] == 0 } {
	error "Command supported only on Cortex processor"
    }

    set xcmd "xmcr $tgt $coproc $opc1 $crn $crm $opc2 $data"
    if { [catch {eval_xmd_cmd $xcmd} retval] } {
	error $retval
   }
}

proc rrd { {reg_name all} } {
    global _gpr_reg_names
    global _cortex_gpr_reg_names

    set tgt [get_cur_target]

    set cortex_tgt 0
    if { [is_cortex_target $tgt] } {
	set gpr_reg_list $_cortex_gpr_reg_names
        set cortex_tgt 1
    } else {
	set gpr_reg_list $_gpr_reg_names
    }

    if { $reg_name != "all" } {  
	if { [string is integer $reg_name] } {
	    set reg_index $reg_name
	} else {
	    set reg_name [string tolower $reg_name]
	    set reg_index [lsearch $gpr_reg_list $reg_name]
	    if {$reg_index == -1} {
		error "Unknown GPR name $reg_name"
	    }
	}
	set xcmd "xrreg $tgt $reg_index"
	if { [catch {set reg_val [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	append line [format "%6s: %08x  " $reg_name $reg_val]
    } else {
	set xcmd "xrreg $tgt"
	set all_regstr [eval_xmd_cmd $xcmd]
	set all_regs [split $all_regstr]
	set line ""
	set ngprs [llength $gpr_reg_list]
	for {set reg 0} {$reg < $ngprs} {incr reg} {
            # Ignore f0-f7 (r16-r23) in case of arm. They are used by gdb
            # and xmd returns dummy values
            if { $cortex_tgt == 1 && $reg >= 16 && $reg <=23 } {
                continue;
            }
	    if { [expr $reg % 4] == 0 } {
		append line "\n"
	    }
	    set regstr [lindex $gpr_reg_list $reg]
	    set regvalue [format "%6s: 0x%08x  " $regstr [lindex $all_regs $reg]]
	    append line $regvalue
	}
	append line "\n"
    }
    return $line
}

proc srrd { {reg_name all} } {
    global _mb_reg_names
    global _cortex_spr_reg_names

    global SRRD_CTRL
    global SRRD_ID
    #global SRRD_DMA
    #global SRRD_TCM
    global SRRD_DBG
    global SRRD_ETC
    global SRRD_VFP

    set tgt [get_cur_target]
    set fpu_reg 0

    # handle cortex specially, as we read a group of coprocessor registers
    # specified by reg_name
    if { [is_cortex_target $tgt] } {
	set reg_name [string tolower $reg_name]
	switch -exact -- $reg_name {
	    all     -
            ctrl    { set reg_grp $SRRD_CTRL; set reg_name "ctrl" }
	    id      { set reg_grp $SRRD_ID }
	    debug   { set reg_grp $SRRD_DBG }
	    etc     { set reg_grp $SRRD_ETC }
	    vfp     { set reg_grp $SRRD_VFP }
            default { error "Unknown Cortex Register name $reg_name"}
        }

        set xcmd "xrcpregs $tgt $reg_name"
	set all_regs [lrange [split [eval_xmd_cmd $xcmd]] 0 end]
	set i 1
	set line ""
	append line "<Value>      <Register>    <Description>\n"
	foreach reg $all_regs {
	    append line [format "0x%08x    %s \n" $reg [lindex $reg_grp $i]]
	    incr i
	}

        return $line
    }

    if { $reg_name != "all" } {
	set reg_name [string tolower $reg_name]
	set reg_index [lsearch $_mb_reg_names $reg_name]
	if {$reg_index == -1} {
	    error "Unknown MicroBlaze Register name $reg_name"
	}
	set xcmd "xrreg $tgt [expr $reg_index + 31]"
	if { [catch {set reg_val [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	if { $fpu_reg == 0 } {
	    append line [format "%6s: %08x  " $reg_name $reg_val]
	} else {
	    append line [format "%6s: %16s  " $reg_name $reg_val]
	}
	return $line
    }

    set xcmd "xrreg $tgt"
    set all_regs [lrange [split [eval_xmd_cmd $xcmd]] 32 end]
    set i 1
    set line ""

    foreach reg $all_regs {
	#if { ![string is integer -strict $reg] } {
	# continue
	#}
	append line [format "%6s: %08x  " [lindex $_mb_reg_names $i] $reg]
	if {[expr $i%4] == 0} {
	    append line "\n"
	}
	set i [expr $i + 1]
    }
    return $line
}

proc rwr {num_reg data} {
    global _mb_reg_names
    global _cortex_gpr_reg_names

    set tgt [get_cur_target]
    if { ([string is integer $num_reg]) || (([string equal -nocase -length 1 $num_reg "r"]) && ([string is integer [string range $num_reg 1 end]])) } {
	set xcmd "xwreg $tgt $num_reg $data"   
    } else {
	set num_reg [string tolower $num_reg]
	if { [is_cortex_target $tgt] } {
	    set reg_index [lsearch $_cortex_gpr_reg_names $num_reg]
	    if {$reg_index == -1} {
		error "Unknown Cortex Register name $num_reg"
	    }
	    set num_reg $reg_index
	} else {
	    set reg_index [lsearch $_mb_reg_names $num_reg]
	    if {$reg_index == -1} {
		error "Unknown MicroBlaze Register name $num_reg"
	    }
	    set num_reg [expr $reg_index+31]
	}
	set xcmd "xwreg $tgt $num_reg $data"   
    }
    eval_xmd_cmd $xcmd
    return
}

proc mb_drwr { cmd regval bitlen } {
    set tgt [get_cur_target]
    set xcmd "xwmbreg $tgt $cmd $regval $bitlen"
    eval_xmd_cmd $xcmd
    return
}

proc mb_drrd { cmd bitlen } {
    set tgt [get_cur_target]
    set xcmd "xrmbreg $tgt $cmd $bitlen"
    set regVal [eval_xmd_cmd $xcmd]
    return $regVal
}

proc mdm_drwr { cmd regval bitlen } {
    set tgt [get_cur_target]
    set xcmd "xwmdmreg $tgt $cmd $regval $bitlen"
    eval_xmd_cmd $xcmd
    return
}

proc mdm_drrd { cmd bitlen } {
    set tgt [get_cur_target]
    set xcmd "xrmdmreg $tgt $cmd $bitlen"
    set regVal [eval_xmd_cmd $xcmd]
    return $regVal
}

proc mem_read_word {addr} {
    set tgt [get_cur_target]
    set start_addr [expr $addr & ~0x3] 
    #    set word 0
    set xcmd "xrmem $tgt $start_addr 1 w"
    #    set byte_list [eval_xmd_cmd $xcmd]
    set word [eval_xmd_cmd $xcmd]

    #     for {set i 0} {$i < 4} {incr i} {
    #  set word [expr ($word << 8) + [lindex $byte_list $i]] 
    #     }
    return $word
}

proc mem_write_word {addr data} {
    set tgt [get_cur_target]
    set start_addr [expr $addr & ~0x3]
    #     set byte_list {}
    #     for {set i 0} {$i < 4} {incr i} {
    #  set byte_list "[expr $data & 0xFF] $byte_list"
    #  set data [expr $data >> 8]
    #     }
    #     set xcmd "xwmem $tgt $start_addr 1 w \{$byte_list\}"
    set xcmd "xwmem $tgt $start_addr 1 w \{$data\}"
    eval_xmd_cmd $xcmd
}

proc mem_read_half {addr} {
    set tgt [get_cur_target]
    set start_addr [expr $addr & ~0x1]
    #    set half 0
    set xcmd "xrmem $tgt $start_addr 1 h"
    set half [eval_xmd_cmd $xcmd]
    #     set byte_list [eval_xmd_cmd $xcmd]
    #     for {set i 0} {$i < 2} {incr i} {
    #         set half [expr ($half << 8) + [lindex $byte_list $i]]
    #     }
    return $half
}

proc mem_write_half {addr data} {
    set tgt [get_cur_target]
    set start_addr [expr $addr & ~0x1]
    #     set byte_list {}
    #     for {set i 0} {$i < 2} {incr i} {
    #         set byte_list "[expr $data & 0xFF] $byte_list"
    #         set data [expr $data >> 8]
    #     }
    #     set xcmd "xwmem $tgt $start_addr 1 h \{$byte_list\}"
    set xcmd "xwmem $tgt $start_addr 1 h \{$data\}"
    eval_xmd_cmd $xcmd
} 

proc find_symbol_read {myfile symbol} {
    set tgt [get_cur_target]
    if { [is_microblaze_target $tgt] } {
        if { [catch {set addr [exec mb-objdump -t $myfile | grep -w -h $symbol]} err] } {
	    puts $err
	    error "Unable to find address for symbol \"$symbol\" in file \"$myfile\""
        }
    } elseif { [is_cortex_target $tgt] } {
        if { [catch {set addr [exec arm-xilinx-eabi-objdump -t $myfile | grep -w -h $symbol]} err] } {
	    puts $err
	    error "Unable to find address for symbol \"$symbol\" in file \"$myfile\""
        }
    } else {
        error "Unsupported processor architecture"
    }
    set addr_list [split $addr]
    set symbol_addr "0x[lindex $addr_list 0]"
    return $symbol_addr
}

proc mrd_var {symbol {myfile default}} {
    global elf_file

    if {$myfile == "default"} {
	if {$elf_file != ""} {
	    set myfile $elf_file
	} else {
	    error "No Elf executable containing variable \"$symbol\" downloaded to target.
Use \"dow\" command to download an executable OR
Specify an elf file: \"mrd_var <variable name> <elf_file>\""
	}
    } else {
	set elf_file $myfile
    }

    set symbol_addr [find_symbol_read $myfile $symbol]
    set value [mem_read_word $symbol_addr]
    puts [format "%s :: %s(0x%08x):    0x%08x" $myfile $symbol $symbol_addr $value]
    return $value
}

proc bps_func {symbol {myfile default} {breakpoint_type sw}} {
    global elf_file

    if {$myfile == "default"} {
	if {$elf_file != ""} {
	    set myfile $elf_file
	} else {
	    error "No Elf executable containing function \"$symbol\" downloaded to target.
Use \"dow\" command to download an executable OR
Specify an elf file: \"bps_func <function name> <elf_file>\""
	}
    } else {
	set elf_file $myfile
    }
    set symbol_addr [find_symbol_read $myfile $symbol]
    puts "Setting Breakpoint at $myfile :: $symbol:$symbol_addr"    
    bps $symbol_addr $breakpoint_type
    
    puts "\nNote:: \"bps_func\" command is Deprecated. Use \"bps\" command"
    return
}

proc bpr_func {symbol {myfile default}} {
    global elf_file

    #set tgt [get_cur_target]
    #if { [is_microblaze_target $tgt] == 0 } {
	#error "Command supported only on MicroBlaze processor"
    #}

    if {$myfile == "default"} {
	if {$elf_file != ""} {
	    set myfile $elf_file
	} else {
	    error "No Elf executable containing function \"$symbol\" downloaded to target.
Use \"dow\" command to download an executable OR
Specify an elf file: \"bpr_func <function name> <elf_file>\""
	}
    } else {
	set elf_file $myfile
    }
    set symbol_addr [find_symbol_read $myfile $symbol]
    puts "Removing Breakpoint at $myfile :: $symbol:$symbol_addr"    
    bpr $symbol_addr

    puts "\nNote:: \"bpr_func\" command is Deprecated. Use \"bpr\" command"
    return
}

proc mrd {addr {num 1} {dsize w}} {
    set tgt [get_cur_target]
    set outstr ""
    
    # Check for Variable Name
    if { ![expr [string is xdigit -strict $addr] || [string is xdigit -strict [string range $addr 2 end]]] } {
	set varname $addr
	set xcmd "xrmem $tgt -var $varname"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	set num [llength $byte_list]
	incr num -1
	set addr [lindex $byte_list 0]
	if { $num == 4 } {
	    append outstr [format "%8X:   %02X%02X%02X%02X\n" $addr [lindex $byte_list 1] [lindex $byte_list 2] [lindex $byte_list 3] [lindex $byte_list 4]]
	} else {
	    for {set i 1} {$i <= $num} {incr i} {
		set mem [lindex $byte_list $i]
		append outstr [format "%8X:   %02X\n" $addr $mem]
		incr addr
	    }
	}
	return $outstr
    }

    if {$dsize == "b"} {
	set start_addr $addr
	set xcmd "xrmem $tgt $start_addr $num b"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i} {
	    set mem [lindex $byte_list $i]
            append outstr [format "%8X:   %02X\n" $addr $mem]
	    incr addr
	}
    } elseif {$dsize == "h"} {
	set start_addr [expr $addr & ~0x1]
	set nbytes [expr $num * 2]
	set xcmd "xrmem $tgt $start_addr $num h"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i 1} {
	    set half ""
	    set half [lindex $byte_list $i]
            append outstr [format "%8X:   %04X\n" $start_addr $half]
	    incr start_addr 2
	}
    } else {
	set start_addr [expr $addr & ~0x3]
	set nbytes [expr $num * 4]
	set xcmd "xrmem $tgt $start_addr $num w"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i 1} {
	    set word ""
	    set word [lindex $byte_list $i]
            append outstr [format "%8X:   %08X\n" $start_addr $word]
	    incr start_addr 4
	}
    }
    return $outstr
}

proc mrd_phys {addr {num 1} {dsize w} {ocm -ddr}} {
    set tgt [get_cur_target]

    set outstr ""
    if {$dsize == "b"} {
	set start_addr $addr
	set xcmd "xrmem_phys $tgt $start_addr $num b"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i} {
	    set mem [lindex $byte_list $i]
            append outstr [format "%8X:   %02X\n" $addr $mem]
	    incr addr
	}
    } elseif {$dsize == "h"} {
	set start_addr [expr $addr & ~0x1]
	set nbytes [expr $num * 2]
	set xcmd "xrmem_phys $tgt $start_addr $num h"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i 1} {
	    set half ""
	    set half [lindex $byte_list $i]
            append outstr [format "%8X:   %04X\n" $start_addr $half]
	    incr start_addr 2
	}
    } else {
	set start_addr [expr $addr & ~0x3]
	set nbytes [expr $num * 4]
	set xcmd "xrmem_phys $tgt $start_addr $num w"
	if { [catch {set byte_list [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
	}
	for {set i 0} {$i < $num} {incr i 1} {
	    set word ""
	    set word [lindex $byte_list $i]
            append outstr [format "%8X:   %08X\n" $start_addr $word]
	    incr start_addr 4
	}
    }
    return $outstr
}

proc mask_write { args } {

    if { [lindex $args 0] == "-force" } {
        set args [lrange $args 1 end]
    }
    if { [llength $args] != 3 } {
        error "wrong # of args: should be \"mask_write addr mask data\""
    }

    set addr [lindex $args 0]
    set mask [lindex $args 1]
    set data [lindex $args 2]
    set tgt [get_cur_target]
    #if { ![expr [string is xdigit -strict $addr] || [string is xdigit -strict [string range $addr 2 end]]] } {
        set xcmd "xmwmem $tgt [expr $addr & ~0x3] $mask $data"
    #}

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc configparams { args } {
    # dummy command to make new ps7_init scripts compatible with XMD
}

# addr data {num 1} {dsize w}
proc mwr { args } {
    if { [lindex $args 0] == "-force" } {
        set args [lrange $args 1 end]
    }
    if { [llength $args] < 2 ||  [llength $args] > 4 } {
        error "wrong # of args: should be \"mwr addr data \[num\] \[dsize\]\""
    }

    set addr [lindex $args 0]
    set data [lindex $args 1]
    if { [llength $args] > 2 } {
        set num [lindex $args 2]
    } else {
        set num 1
    }
    if { [llength $args] > 3 } {
        set dsize [lindex $args 3]
    } else {
        set dsize "w"
    }
    set tgt [get_cur_target]
    set xcmd ""

    # Check for Variable Name
    if { ![expr [string is xdigit -strict $addr] || [string is xdigit -strict [string range $addr 2 end]]] } {
	set varname $addr
	if {$dsize == "b"} {
	    set xcmd "xwmem $tgt -var $varname b \{$data\}"
	} elseif {$dsize == "h"} {
	    set xcmd "xwmem $tgt -var $varname h \{$data\}"
	} else {
	    set xcmd "xwmem $tgt -var $varname w \{$data\}"
	}
    } else {
	if {$dsize == "b"} {
	    set start_addr $addr
	    set xcmd "xwmem $tgt $start_addr $num b \{$data\}"
	} elseif {$dsize == "h"} {
	    set start_addr [expr $addr & ~0x1]
	    set xcmd "xwmem $tgt $start_addr $num h \{$data\}"
	} else {
	    set start_addr [expr $addr & ~0x3]
	    set xcmd "xwmem $tgt $start_addr $num w \{$data\}"
	}
    }

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc mwr_phys {addr data {num 1} {dsize w} {ocm -ddr}} {
    set tgt [get_cur_target]
    
    set xcmd ""
    if {$dsize == "b"} {
	set start_addr $addr
	set xcmd "xwmem_phys $tgt $start_addr $num b \{$data\}"
    } elseif {$dsize == "h"} {
	set start_addr [expr $addr & ~0x1]
	set xcmd "xwmem_phys $tgt $start_addr $num h \{$data\}"
    } else {
	set start_addr [expr $addr & ~0x3]
	set xcmd "xwmem_phys $tgt $start_addr $num w \{$data\}"
    }

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc ap_abort {} {
    set tgt 352

    set xcmd "xap_abort $tgt"
    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }

    return
}

proc ap_rrd {addr} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xap_rrd $tgt $start_addr"

    if { [catch {set mem [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }
    append outstr [format "%8X:   %08X\n" $start_addr $mem]
    return $outstr
}

proc ap_rwr {addr data} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xap_rwr $tgt $start_addr \{$data\}"

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc dp_rrd {addr} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xdp_rrd $tgt $start_addr"

    if { [catch {set mem [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }
    append outstr [format "%8X:   %08X\n" $start_addr $mem]
    return $outstr
}

proc dp_rwr {addr data} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xdp_rwr $tgt $start_addr \{$data\}"

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc dmrd {addr} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xrdmem $tgt $start_addr"

    if { [catch {set mem [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }
    append outstr [format "%8X:   %08X\n" $start_addr $mem]
    return $outstr
}

proc dmwr {addr data} {
    set tgt 352
    set xcmd ""

    set start_addr [expr $addr & ~0x3]
    set xcmd "xwdmem $tgt $start_addr \{$data\}"

    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc vector_catch { event enable {mode "sec"} } {
    set tgt [get_cur_target]
    set xcmd "xvector_catch $tgt $mode $event $enable"
    if { [catch {set retval [eval_xmd_cmd $xcmd]} errval] } {
	error $errval
    }
    return
}

proc dis {{addr pc} {num 1} } {
    set tgt [get_cur_target]
    set retval ""

    if {$addr == "pc"} {
	set xcmd "xrreg $tgt pc"
	set addr [eval_xmd_cmd $xcmd]
    }
    set start_addr [expr $addr & ~0x3] 
    set end_addr [expr $start_addr + (4 * $num)]
    for {set i $start_addr} {$i < $end_addr} {incr i 4} {
	set inst [mem_read_word $i]
	if { [is_microblaze_target $tgt] } {
	    set xcmd "xdisassemble $tgt $inst"
	    append retval [format "%8X:   %08X  %s\n" $i $inst [eval_xmd_cmd $xcmd]]
	} else {
	    append $retval [format "%8X:   %08X\n" $i $inst]
	} 
    }
    return $retval
}

proc disInstr { addr } {
    set tgt [get_cur_target]
    set retval ""
    set done 0

    set start_addr [expr $addr & ~0x3] 
    while { $done == 0 } {
	set inst [mem_read_word $start_addr]
	if { [is_microblaze_target $tgt] } {
	    set xcmd "xdisassemble $tgt $inst -query atomic"
	    set isAtomic [eval_xmd_cmd $xcmd]
	    if { $isAtomic == 0 } {
		set done 1
	    }
	    set xcmd "xdisassemble $tgt $inst"
	    append retval [format "%8X:   %08X  %s\n" $start_addr $inst [eval_xmd_cmd $xcmd]]
	} else {
	    append retval [format "%8X:   %08X\n" $start_addr $inst]
	    set done 1
	} 
	incr start_addr 4
    }
    return $retval
}

proc run {} {
    set tgt [get_cur_target]
    eval_xmd_cmd "xrun $tgt"
}

set timeout 0
proc settimeout { } {
    global timeout
    set timeout 1
}


proc con {args} {
    global timeout
    set con_block 0
    set block_timeout 0
    set con_args ""

    set tgt [get_cur_target]
    for {set i 0} {$i < [llength $args]} {incr i} {
	set arg [lindex $args $i]
	if {$arg == "-quit"} {
	    continue
	}
	if {$arg == "-block"} {
	    set con_block 1
	    continue
	}
	if {$arg == "-timeout"} {
	    incr i
	    set block_timeout [lindex $args $i]
	    continue
	}
	append con_args $arg " "
    }
    set xcmd "xcontinue $tgt $con_args"
    set signal [eval_xmd_cmd $xcmd]
    
    if { $con_block } {
	set status  1 
	set timeout 0
	while { $status != 0 } {
	    after 1000 "settimeout"
	    vwait timeout
	    set status [eval_xmd_cmd "xstate $tgt"]
	    # If User Set a Timeout for Blocking, Get Out on Blocking
	    if { $block_timeout } {
		incr block_timeout -1
		if { !$block_timeout } {
		    break
		}
	    }
	}
    }
}

proc stp {{n 1}} {
    set tgt [get_cur_target]
    set retval ""

    #     while {$n} {
    #  set xcmd "xstep $tgt"
    #  set signal [eval_xmd_cmd $xcmd]
    #  incr n -1
    #     }
    set xcmd "xstep $tgt $n"
    set signal [eval_xmd_cmd $xcmd]

    # Ignore the exceptions caused by debugger
    if { ![is_cortex_target $tgt] } {
	set xcmd "xrreg $tgt msr"
	set ss [eval_xmd_cmd $xcmd]
    }

    set xcmd "xrreg $tgt pc"
    set addr [eval_xmd_cmd $xcmd]
    
    set retval [disInstr $addr]

    # Restore the MSR value
    if { ![is_cortex_target $tgt] } {
	set xcmd "rwr msr $ss"
	eval_xmd_cmd $xcmd
    }

    return $retval
}

proc istp { } {
    set tgt [get_cur_target]
    set retval ""

    set xcmd "xistep $tgt"
    set signal [eval_xmd_cmd $xcmd]
    set xcmd "xrreg $tgt pc"
    set addr [eval_xmd_cmd $xcmd]
    if { [is_microblaze_target $tgt] } {
	set retval [disInstr $addr]
    } else {
	set retval "[format "%08x" $addr]:"
    }
    return $retval
}

proc cstp {{n 1}} {
    set tgt [get_cur_target]
    set retval ""

    set xcmd "xcycle_step $tgt $n"
    set signal [eval_xmd_cmd $xcmd]
    set xcmd "xrreg $tgt pc"
    set addr [eval_xmd_cmd $xcmd]
    if { [is_microblaze_target $tgt] } {
	set retval [disInstr $addr]
    } else {
	set retval "[format "%08x" $addr]:"
    }
    return $retval
}

proc stop { {which_processor ""} } {
    set tgt [get_cur_target]
    eval_xmd_cmd "xstop $tgt $which_processor"
    #    set addr [xrreg $tgt pc]
    #    dis $addr 1
    return
}

proc srst { {args ""} } {
    global _cur_system
    set xcmd "xtargets -system $_cur_system -listTgtID"
    if { [catch {set tgtsList [eval_xmd_cmd $xcmd]} retval] } {
        # There are no active targets. Issue SRST
        if { [catch {eval_xmd_cmd "xsrst $args"} retval] } {
            error $retval
        }
	return $retval
    }

    # Issue rst so that active targets are re-initialized after srst
    rst -srst
    return
}

proc rst { {reset_type "-system"} } {
    global _cur_system

    set rst_type 0x40
    if { [string match "-system" $reset_type] } {
	set rst_type 0x40
    } elseif { [string match "-processor" $reset_type] } {
	set rst_type 0x80
    } elseif { [string match "-debug_sys" $reset_type] } {
	set rst_type 0x100
    } elseif { [string match "-srst" $reset_type] } {
	set rst_type 0x200
    } elseif { [string match "-slcr" $reset_type] } {
	set rst_type 0x400
    } else {
	if { ![catch {get_cmd_syntax "xreset"} rval] } {
	    error $ rval
	}
    }
    set tgt [get_cur_target]
    if { (![is_cortex_target $tgt]) && ($rst_type == 0x100 || $rst_type == 0x400) } {
	#if { ![catch {get_cmd_syntax "xreset"} rval] } {
	#    error $ rval
	#}
        error "Command supported only on Cortex target"
    }

    # Execute SRST for ARM differently
    if { [is_cortex_target $tgt] && $rst_type == 0x200 } {
        set boot_mode 0 
	set xcmd "xtargets -system $_cur_system -listTgtID"
        if { [catch {set tgtsList [eval_xmd_cmd $xcmd]} retval] } {
	    error $retval
        }

	# Clear the saved status of each processor
        foreach trgt $tgtsList {
            if { [is_cortex_target $trgt] } {
		# Stop each ARM target before reset
		set xcmd "xprereset $trgt"
		eval_xmd_cmd $xcmd
            }
        }

        if { [catch {eval_xmd_cmd "xsrst"} retval] } {
            error $retval
        }

	if { $boot_mode == 0x05} {
	    puts "Waiting for Bootrom to re-enable DAP after reset"
	    # Allow bootrom to run
            after 30000
	} else {
	    # Allow bootrom to run
            after 1000
	}

        # Re-initialize DAP after reset
	set xcmd "xsetupdap 352"
	if { [catch {eval_xmd_cmd $xcmd} retval] } {
	    error $retval
	}
	set xcmd "xsetupect 352"
	if { [catch {eval_xmd_cmd $xcmd} retval] } {
	    error $retval
	}

        foreach trgt $tgtsList {
	    if { [is_cortex_target $trgt] } {
		# Stop each ARM target after reset
		set xcmd "xstop $trgt"
		if { [catch {eval_xmd_cmd $xcmd} retval] } {
		    error $retval
		}
	    }
        }

	puts "System reset successfully"
    } else {
        eval_xmd_cmd "xreset $tgt $rst_type"
    }
}

proc bps {addr {breakpoint_type sw} } {
    set tgt [get_cur_target]
    eval_xmd_cmd "xbreakpoint $tgt $addr $breakpoint_type"
    return
}

proc watch { args } {
    set tgt [get_cur_target]
    eval_xmd_cmd "xwatch $tgt $args"
    return
}

proc bpr {addr} {
    set tgt [get_cur_target]
    eval_xmd_cmd "xremove $tgt $addr"
    return
}

proc bpl {} {
    set tgt [get_cur_target]
    set xcmd "xlist $tgt"
    set bplist [eval_xmd_cmd $xcmd]
    return
}

proc dow { filename args } {
    set tgt [get_cur_target]

#    if { [is_cortex_target $tgt] } {
#	set xcmd "xmrc $tgt 15 0 1 0 0"
#	if { [catch {set reg_val [eval_xmd_cmd $xcmd]} retval] } {
#	    error $retval
#	}
#	if { $reg_val & 0x4 } {
#	    puts "warning: Data caches are enabled in the system control register. 
#This could reduce the download speed and if the processor is in 
#unknown state, it could lead to interrupt failures, etc. Please 
#run \"rst \[-processor\]\" command before dow, to overcome this issue"
#	}
#    }

    global elf_file
    set elf_file $filename
    eval_xmd_cmd "xdownload $tgt $filename $args"
    return
}

proc elf_verify { args } {
    set tgt [get_cur_target]

    set xcmd "xelf_verify $tgt $args"
    eval_xmd_cmd $xcmd
    return
}

proc data_verify { args } {
    set tgt [get_cur_target]

    set xcmd "xdata_verify $tgt $args"
    eval_xmd_cmd $xcmd
    return
}

proc stackcheck { } {
    set tgt [get_cur_target]
    eval_xmd_cmd "xstack_check $tgt"
    return
}

proc profile {args} {
    set tgt [get_cur_target]
    eval_xmd_cmd "xprofile $tgt $args"
    return
}

# Check if the Elf file has been compiled with -pg option. Profiling done 
# only for program with _mcount function.
proc is_mbprogram_prof { elffile } {
    if { [catch {set call_count [exec mb-objdump -d $elffile | grep -w -h _mcount | wc -l]} err] } {
	return -code error
    }
    if { $call_count == 0 } {
	return -code error
    }
}

proc is_ppcprogram_prof { elffile } {
    puts "Warning: PowerPC is no longer supported."
}

#######################################################################
#    Calculates the Memory required for storing histogram and
#    call graph information, when performing s/w profiling.
#######################################################################
proc eval_mbprof_mem { elffile proftype profmem binsize } {
    set mb_histstruct_size   2
    set mb_fromtostruct_size 12
    set mb_libprofile_froms  7
    set mb_fromstruct_size   8
    set mb_tostruct_size     12
    set mb_tos_per_fp        5 

    if { ![file exists $elffile] } {
	puts "Error: File $elffile not found\n"
	return -code error
    }

    # Text Size of the Program
    if { [catch {set text_size [exec mb-size $elffile]} err] } {
	puts "Error: $err"
	return -code error
    }
    set size_list [split $text_size "\n"]
    set size_list [lindex $size_list 1]
    set size_list [string trim $size_list]
    set size_list [split $size_list]
    set text_size [lindex $size_list 0]
    set text_size [expr $text_size + ((4 - ($text_size % 4)) % 4)]
    #puts "Text size: $text_size"

    # Num. of Function Calls.
    if { [catch {set call_count [exec mb-objdump -d $elffile | grep -w -h brlid | wc -l]} err] } {
	puts "Error: Executable $elffile does not contain Function Calls ?? !!"
	return -code error
    }
    set count_list [string trimleft $call_count]
    set call_count [lindex $call_count 0]
    set call_count [expr $call_count - $mb_libprofile_froms]
    #puts "Call count $call_count\n"

    # Num. of Function Ptr. Calls.
    if { [catch {set fp_count [exec mb-objdump -d $elffile | grep -w -h brald | wc -l]} err] } {
	set fp_count 0
    } else {
	set count_list [string trimleft $fp_count]
	set fp_count [lindex $count_list 0]
	#puts "Func ptr count $fp_count" 
    }

    set hist_size [expr ($text_size / (4 * $binsize)) * $mb_histstruct_size]
    if { $proftype == 1 } {
	set froms_size [expr ($call_count + $fp_count) * $mb_fromstruct_size]
	set tos_size [expr ($call_count + ($fp_count * $mb_tos_per_fp)) * $mb_tostruct_size]
	set cgtable_size [expr $froms_size + $tos_size]
    } else {
	set cgtable_size [expr $call_count * $mb_fromtostruct_size]
    }
    set mem_size [expr $hist_size + $cgtable_size]
    
    puts ""
    puts "****************************************************************"
    puts "**           Profiling Memory Test"
    puts "** Executable: $elffile"
    puts "** Memory Allocated: $profmem"
    puts -nonewline "** Profile Type: "
    if { $proftype == 1 } {
	puts "PROFILE_FUNCPTR"
    } else {
	puts "PROFILE_NO_FUNCPTR"
    }
    puts "** Histogram BinSize: $binsize"
    puts "****************************************************************"
    puts "Program Text Size........................$text_size"
    puts "No. of Func. Calls.......................$call_count"
    puts "No. of Func. Ptr. Calls..................$fp_count"
    puts ""
    puts "Memory Histogram Tables..................$hist_size"
    puts "Memory Call Graph Tables.................$cgtable_size"
    puts ""
    puts -nonewline "Total Profile Memory required............$mem_size"
    if { $profmem >= $mem_size } {
	puts "\[SUCCESS\]"
	return
    } else {
	puts "\[FAIL\]"
	return -code error
    }
}

proc calc_mbprof_cgmem { elffile section_name textsize binsize } {
    set mb_histstruct_size   2
    set mb_fromtostruct_size 12
    set mb_libprofile_froms  7
    set mb_fromstruct_size   8
    set mb_tostruct_size     12
    set mb_tos_per_fp        5 

    if { ![file exists $elffile] } {
	puts "Error: File $elffile not found\n"
	return -code error
    }

    # Num. of Function Calls.
    if { [catch {set call_count [exec mb-objdump -d $elffile --section=$section_name | grep -w -h brlid | wc -l]} err] } {
	set call_count 0
    } else {
	set count_list [string trimleft $call_count]
	set call_count [lindex $call_count 0]
	#puts "Call count $call_count\n"
    }

    # Num. of Function Ptr. Calls.
    if { [catch {set fp_count [exec mb-objdump -d $elffile --section=$section_name | grep -w -h brald | wc -l]} err] } {
	set fp_count 0
    } else {
	set count_list [string trimleft $fp_count]
	set fp_count [lindex $count_list 0]
	#puts "Func ptr count $fp_count" 
    }

    set froms_size [expr ($call_count + $fp_count) * $mb_fromstruct_size]
    set tos_size [expr ($call_count + ($fp_count * $mb_tos_per_fp)) * $mb_tostruct_size]
    set cgtable_size [expr $froms_size + $tos_size]
    #puts "Call Graph Memory Size: $cgtable_size"
    return $cgtable_size
}

proc calc_ppcprof_cgmem { elffile section_name textsize binsize } {
    puts "Warning: PowerPC is no longer supported."
}

proc eval_ppcprof_mem { elffile proftype profmem binsize } {
    puts "Warning: PowerPC is no longer supported."
}

proc stats {args } {
    set tgt [get_cur_target]
    set xcmd "xstats $tgt $args"
    eval_xmd_cmd $xcmd
    return    
}

set start_trace 0

proc tracestart { {pctrace "isstrace.out"} } {
    global start_trace 

    set tgt [get_cur_target]
    if { !$start_trace } {
	eval_xmd_cmd "xtrace $tgt -config pc_trace enable fname $pctrace function_trace enable fname fn_$pctrace"
	set start_trace 1
    }
    eval_xmd_cmd "xtracestart $tgt"
    return 
}

proc tracestop { args } {
    global start_trace

    set tgt [get_cur_target]
    eval_xmd_cmd "xtracestop $tgt"
    if { $args == "done" } {
	eval_xmd_cmd "xtrace $tgt -config pc_trace disable function_trace disable"
	set start_trace 0
    }
    return 
}

#
# Load MHS and MSS file
#
proc xload { args } {
    set xcmd "xload_sysfile $args"
    if { [catch {[eval_xmd_cmd $xcmd]} retval] } {
	#puts "$retval"
    }
    return 
}


#
# Backdoor Commands in XMD
#
proc force_use_fsl_dow { } {
    set tgt [get_cur_target]
    eval_xmd_cmd "xforce_use_fsl_dow $tgt"
    return 
}

proc verbose { {logdetail 0xf} } {
    eval_xmd_cmd "xverbose $logdetail"
}

# For Backwards compatibility
proc ver { {logdetail 0xf} } {
    eval_xmd_cmd "xverbose $logdetail"
}

proc verify {} {
    set tgt [get_cur_target]
    eval_xmd_cmd "xverify $tgt"
}

proc system_display { sysID } {
    global _cur_target
    global _cur_system

    set sysP [eval_xmd_cmd "xtargets -system $sysID -print"]
    append sysPrint "------------------------------------------------\n"
    append sysPrint "System($sysID) - " $sysP " Targets:\n"
    append sysPrint "------------------------------------------------\n"
    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $sysID -listTgtID"]} retval] } {
	append sysPrint "\tNo Active Targets on the System\n"
    } else {
	eval_xmd_cmd "xtargets -system $sysID"
	foreach tgtID $tgtsList {
	    if { [catch {set tgts [eval_xmd_cmd "xtargets -target $tgtID -print"]} retval] } {
	    } else {
		append sysPrint "\t" $tgts
		if { ($_cur_system == $sysID) && ($_cur_target == $tgtID) } {
		    append sysPrint "*"
		}
		append sysPrint "\n"
	    }
	}
    }
    append sysPrint "\n"
    
    # Since the Current System is changed above, restore the Current System
    set_cur_system $_cur_system
    return $sysPrint
}

proc targets { args } {
    global _cur_target
    global _cur_system
    set usage "targets \[\[<Target ID>\] | \[-system <System ID>\]\]"
    set changeSystem 0
    set changeTarget 0
    set newSysID $_cur_system

    #
    # Display the Target List
    #
    if { [llength $args] == 0 } {
	if { [catch {set sysList [eval_xmd_cmd "xtargets -listSysID"]} retval] } {
	    error "XMD Not Connected to Any Target"
	}
	set sysPrint ""
	foreach sysID $sysList {
	    append sysPrint [system_display $sysID]
	}
	return $sysPrint
    }

    if { [llength $args] == 1 } {
	set tgtID [lindex $args 0]
	set changeTarget 1
    } else {
	set arg [lindex $args 0]
	if {$arg == "-system"} {
	    set newSysID [lindex $args 1]
	    if { $newSysID == "" } {
		error "Syntax Error: $usage"
	    }
	    set changeSystem 1
	} else {
	    error "Syntax Error: $usage"
	}
    }

    #
    # Change the Current System - Set the Current Target to First Available
    #
    if {$changeSystem == 1} {
	if { [catch {eval_xmd_cmd "xtargets -system $newSysID"} retval] } {
	    error $retval
	} else {
	    set _cur_system $newSysID
	    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $newSysID -listTgtID"]} retval] } {
	    } else {
		set _cur_target [lindex $tgtsList 0]
		eval_xmd_cmd "xtargets -target [lindex $tgtsList 0]"
	    }
	}
    }

    #
    # Change the Target
    #
    if { $changeTarget == 1 } {
	if { [catch {eval_xmd_cmd "xtargets -target $tgtID"} retval] } {
	    error $retval
	}
	set _cur_target $tgtID
        set _cur_system [eval_xmd_cmd "xtargets -curSysID"]
        set newSysID $_cur_system
    }
    set sysPrint [system_display $newSysID]
    return $sysPrint
}

proc system_state_display { sysID } {
    global _target_state
    global _cur_target
    global _cur_system

    set sysP [eval_xmd_cmd "xtargets -system $sysID -print"]
    append sysPrint "--------------------------------------------------------\n"
    append sysPrint "System($sysID) - " $sysP " Targets:\n"
    append sysPrint "--------------------------------------------------------\n"
    if { [catch {set tgtsList [eval_xmd_cmd "xtargets -system $sysID -listTgtID"]} retval] } {
	append sysPrint "\tNo Active Targets on the System\n"
    } else {
	eval_xmd_cmd "xtargets -system $sysID"
	foreach tgtID $tgtsList {
	    if { [catch {set tgts [eval_xmd_cmd "xtargets -target $tgtID -print"]} retval] } {
	    } else {
		if { [catch {set tState [eval_xmd_cmd "xstate $tgtID"]} retval] } {
		    continue
		}
		append sysPrint [lindex $_target_state $tState] "\t\t" $tgts
		if { ($_cur_system == $sysID) && ($_cur_target == $tgtID) } {
		    append sysPrint "*"
		}
		append sysPrint "\n"
	    }
	}
    }
    append sysPrint "\n"
    
    # Since the Current System is changed above, restore the Current System
    set_cur_system $_cur_system
    return $sysPrint
}

proc state { args } {
    global _target_state
    global _cur_target
    global _cur_system
    set usage "state \[\[<Target ID>\] | \[-system <System ID>\]\]"
    set displaySystem 0
    set displayTarget 0

    #
    # Display the Targets State
    #
    if { [llength $args] == 0 } {
	if { [catch {set sysList [eval_xmd_cmd "xtargets -listSysID"]} retval] } {
	    error "XMD Not Connected to Any Target"
	}
	set sysPrint ""
	foreach sysID $sysList {
	    append sysPrint [system_state_display $sysID]
	}
	return $sysPrint
    }

    if { [llength $args] == 1 } {
	set tgtID [lindex $args 0]
	set displayTarget 1
    } else {
	set arg [lindex $args 0]
	if {$arg == "-system"} {
	    set newSysID [lindex $args 1]
	    if { $newSysID == "" } {
		error "Syntax Error: $usage"
	    }
	    set displaySystem 1
	} else {
	    error "Syntax Error: $usage"
	}
    }

    # Display State Info for System
    if { $displaySystem == 1 } {
	set sysPrint [system_state_display $newSysID]
	return $sysPrint
    }

    #Display State Info for the Target
    if { $displayTarget == 1 } {
	set sysPrint ""
	if { [catch {set tgts [eval_xmd_cmd "xtargets -target $tgtID -print"]} retval] } {
            error $retval
	} else {
	    if { [catch {set tState [eval_xmd_cmd "xstate $tgtID"]} retval] } {
                error $retval
                #continue
	    }
	    append sysPrint [lindex $_target_state $tState] "\t\t" $tgts
	    # if { ($_cur_system == $sysID) && ($_cur_target == $tgtID) } {
	    #    append sysPrint "*"
	    # }
	    append sysPrint "\n"
	}
	return $sysPrint
    }
    return
}


# Read the DCC/MDM's UART port (JTAG-based UART)
# Usage :
#    (i)  DCC/MDM UART output on XMD console
#           XMD% connect mdm -uart | connect dcc -uart
#--->       XMD% read_jtag_uart <dcc|mdm>
#           - Note : Command not needed For MicroBlaze target. Output gets printed automatically.
#
#           # To stop printing output, use following command
#           XMD% read_jtag_uart <dcc|mdm> stop
#
#    (ii) DCC/MDM UART output into a file
#           XMD% connect mdm -uart | connect dcc -uart
#           XMD% set uf [open "uart.log" w]
#--->       XMD% read_jtag_uart <dcc|mdm> start $uf
#
#           # To stop printing output, use following command
#           XMD% read_jtag_uart <dcc|mdm> stop $uf
#
#    (iii) DCC/MDM UART input/output on a JTAG Hyperterminal
#           XMD% connect mdm -uart
#           XMD% terminal
#

proc open_jtag_uart { chanTgtID  {terminal_sock stdout} {baudrate "med"} } {
    set xcmd "xchan_open $chanTgtID"
    if { [catch {eval_xmd_cmd $xcmd} retval] } {
	error "Failed to Open Uart Channel\n\t $retval"
    }
    set xcmd "xchan_configure $chanTgtID -set_out_channel $terminal_sock -baudrate $baudrate"
    if { [catch {eval_xmd_cmd $xcmd} retval] } {
	set xcmd "xchan_close $chanTgtID"
	eval_xmd_cmd $xcmd
	error "Failed to Set the Channel Output to $terminal_sock"
    }
    return
}

proc open_uart { chanTgtID  {terminal_sock stdout} {baudrate "med"} } {
    # Nothing different from open_jtag_uart, but deprecate for completeness
    open_jtag_uart $chanTgtID $terminal_sock $baudrate
    puts "\nNote:: \"open_uart\" command is Deprecated. Use \"open_jtag_uart\" command"
}

proc close_jtag_uart { chanTgtID } {
    set xcmd "xchan_close $chanTgtID"
    eval_xmd_cmd $xcmd
    return
}

proc close_uart { chanTgtID } {
    # Nothing different from close_jtag_uart, but deprecate for completeness
    close_jtag_uart $chanTgtID
    puts "\nNote:: \"close_uart\" command is Deprecated. Use \"close_jtag_uart\" command"
}

proc read_jtag_uart { {uart_type "mdm"} {op start} {terminal_sock stdout} } {
    set cmd_syntax "read_jtag_uart <mdm|dcc> <start|stop> \[TCL Channel ID\]"

    if { ![expr [string match "mdm" $uart_type] || [string match "dcc" $uart_type]] } {
	error "Usage: $cmd_syntax" 
    }

    if { ![expr [string match "start" $op] || [string match "stop" $op]] } {
	error "Usage: $cmd_syntax" 
    }

    if { [file channels $terminal_sock] == {} } {
	error "Invalid File handle argument to read_jtag_uart : $terminal_sock
Usage :
        XMD% set uartf \[open test.log w\]
        XMD% read_jtag_uart start \$uartf
"
    }

    # Check if Connectinon to DCC/MDM Uart Exists and get the Target ID of the Channel Target
    if { [catch {set chanTgtID [check_if_jtag_uart_exists $uart_type]} retval] } {
	error $retval
    }


    if { $op == "stop" } {
	puts "Stopping [string toupper $uart_type] Uart reads"
	if { [catch {eval "close_jtag_uart $chanTgtID"} retval] } {
	    error $retval
	}
    } else {
	# Open the Channel Target
	if { [catch {eval "open_jtag_uart $chanTgtID $terminal_sock"} retval] } {
	    error $retval
	}
    }
    return
}

proc read_uart { {op start} {terminal_sock stdout} } {
    # Deprecate and use the new read_jtag_uart command, with mdm as uart_type (for backward compatability)
    read_jtag_uart "mdm" $op $terminal_sock
    puts "\nNote:: \"read_uart\" command is Deprecated. Use \"read_jtag_uart\" command"
}

# 
# Start a new JTAG-based Hyperterminal
# Usage :
#          XMD% connect mdm -uart | connect dcc -uart
#          XMD% terminal
#
#  NOTE: If port 4321 is used or not available for some reason, change it using :
#          XMD% terminal 54321
#
#  NOTE: for Arm/MicroBlaze targets, some output might show up in the XMD console
# 
#     

proc jtag_terminal { {uart_type "mdm"} {cpunr 1} {server "-jtag_uart_tcl_terminal"} {terminal_portno 4321} {baudrate "med"} } {
    global env tcl_platform
    
    # Check if Connectinon to DCC/MDM Uart Exists and get the Target ID of the Channel Target
    if { [catch {set chanTgtID [check_if_jtag_uart_exists $uart_type $cpunr]} retval] } {
	error $retval
    }

    # Open the Channel Target
    if { [catch {eval "open_jtag_uart $chanTgtID stdout $baudrate"} retval] } {
	error $retval
    }

    # Start the Terminal Server
    set tportno_limit [expr $terminal_portno + 10]
    puts "opening terminal server"
    set tserver "terminal_server $chanTgtID $terminal_portno"
    while { [catch {eval $tserver} retval] } {
	incr terminal_portno
	if { $terminal_portno > $tportno_limit} {
	    error "$retval\nUnable to open Terminal server on any port from [expr $tportno_limit - 10] to $tportno_limit"
	}
	set tserver "terminal_server $chanTgtID $terminal_portno"
    }

    # If -jtag_terminal, Open a Jtag MDM Uart terminal
    if { [string match "-jtag_uart_tcl_terminal" $server] } {
	set uart_script [file join $env(XILINX_SDK) "scripts" "xmd" "jtag_mdmuart_terminal.tcl"]
	if { ![file exists $uart_script] } {
	    error "ERROR: Unable to find JTAG-based Hyperterminal script: $uart_script"
	}
	after 1000
	switch -glob $tcl_platform(os) {
	    "Windows*" {
		exec cmd /c start tclsh $uart_script $terminal_portno &
	    }

	    "Linux" {
		exec xterm -e tclsh $uart_script $terminal_portno &
	    }

	    default {
		error "ERROR: JTAG-based Hyperterminal not supported on $tcl_platform(os) platform"
	    }
	}
	return $terminal_portno
    }
    return $terminal_portno
}

proc terminal { {server "-jtag_uart_tcl_terminal"} {terminal_portno 4321} {baudrate "med"} } {
    # Deprecate and use the new jtag_terminal command, with mdm as uart_type (for backward compatability)
    puts "\nNote:: \"terminal\" command is Deprecated. Use \"jtag_terminal\" command"
    return [jtag_terminal "mdm" 1 $server $terminal_portno $baudrate]
}

proc close_jtag_terminal { {uart_type "mdm"} {cpunr 1}} {
    # Check if Connectinon to DCC/MDM Uart Exists and get the Target ID of the Channel Target
    set xcmd "xchan_exists $uart_type $cpunr"
    if { [catch {set chanTgtID [eval_xmd_cmd $xcmd]} retval] } {
	#error $retval
        error "JTAG [string toupper $uart_type] UART connection to CPU $cpunr doesn't exist"
    }

    # Close the Terminal Connection and Server
    terminal_server_close

    # Close the MDM UART connection
    if { [catch {eval "close_jtag_uart $chanTgtID"} retval] } {
	error $retval
    }
    return
}

proc close_terminal {} {
    # Deprecate and use the new close_jtag_terminal command, with mdm as uart_type (for backward compatability)
    close_jtag_terminal "mdm"
    puts "\nNote:: \"close_terminal\" command is Deprecated. Use \"close_jtag_terminal\" command"
}

proc check_if_jtag_uart_exists { {uart_type "mdm"} {cpunr 1} } {
    # Check if the Channel Exists. If Not Create a Channel Target
    set xcmd "xchan_exists $uart_type $cpunr"
    if { [catch {set chanTgtID [eval_xmd_cmd $xcmd]} retval] } {
	# Create the MDM Uart Target

        if { $uart_type == "mdm" } {
	    # HACK - This command will be changed
	    # Check if a Hardware System exists and the Hardware System Contains a MDM Uart Interface
	    if { ![catch {set cur_system [eval_xmd_cmd "xtargets -curSysID"]} retval] && 
	         [catch {eval_xmd_cmd "xmdmuart_exists"} retval] } {
	        error "$retval"
	    } else {
	        # MDM Uart Exists - Connect to the UART Interface
	        set xcmd "xconnect mdm -uart"
	    }
        } elseif { $uart_type == "dcc" } {
            # connect dcc will check whether Coresight target exists
            # Could be a better idea to expliciltly check if CoreSight
            # target exists and throw an apprpriate error, like its done
            # for MDM above
	    set xcmd "xconnect dcc -uart -debugdevice cpunr $cpunr"
        }
	    if { [catch {set chanTgtID [eval_xmd_cmd $xcmd]} retval] } {
		error "Connection to JTAG UART Target Failed. $retval"
	    } else {
		puts "Connected to JTAG UART Target"
		set_cur_system
		return $chanTgtID
	    }
    } else {
	return $chanTgtID
    }
}

proc check_if_mdm_uart_exists { } {
    # Deprecate and use the new check_if_jtag_uart_exists command, with mdm as uart_type (for backward compatability)
    check_if_jtag_uart_exists "mdm"
    puts "\nNote:: \"check_if_mdm_uart_exists\" command is Deprecated. Use \"check_if_jtag_uart_exists\" command"
}

proc silent_mode { {mode "on"} } {
    global silent_mode

    if { $mode == "on" } {
	set silent_mode 1
	eval "xsilentmode on"
    } else {
	set silent_mode 0
	eval "xsilentmode off"
    }
}

proc readjtagchain { args } {
    set xcmd "xrjtagchain $args"
    if { [catch {set jtagList [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }

    return $jtagList
}

proc cableesn { args } {
    set xcmd "xrcableesn $args"
    if { [catch {set esnList [eval_xmd_cmd $xcmd]} retval] } {
	error $retval
    }

    return $esnList
}

set _xmd_cmd [list \
		  xload_sysfile \
		  xconnect \
		  xdisconnect \
		  xtargets \
		  xdownload \
		  xelf_verify \
		  xdata_verify \
		  xstackcheck \
		  xcontinue \
		  xstep \
		  xcycle_step \
		  xreset \
		  xstop \
		  xmrc \
		  xrreg \
		  xdp_rrd \
		  xap_rrd \
		  xmcr \
		  xwreg \
		  xdp_rwr \
		  xap_rwr \
                  xrmbreg \
                  xwmbreg \
                  xrmdmreg \
                  xwmdmreg \
		  xrmem \
		  xrmem_phys \
		  xrdmem \
		  xwmem \
		  xwmem_phys \
		  xrwmem \
		  xbreakpoint \
		  xwatch \
		  xremove \
		  xlist \
                  xvector_catch \
		  xtraceopen \
		  xtracestart \
		  xtracestop \
		  xtraceclose \
		  xstats \
		  xprofile \
		  xstate \
		  xdisassemble \
		  xverbose \
		  xdebugconfig \
		  xsafemode \
		  xfpga \
		  xfpga_isconfigured \
		  xxmdconfig \
                  xrjtagchain \
                  xrcableesn \
		 ]

set _xmd_cmd_syntax [list \
	 { xload <hw|mss> <HARDWARE|MSS file> } \
	 { connect <Target> <Target Type> [options]
	     Target: arm|mb|mdm
	     Target Type:
             arm (CortexA9 Target):
	     hw   : [Jtag Options] [Debug Device Options] 
	     mb (MicroBlaze Target): 
	     sim  : [-memsize <Memory Address Bus Length>]
	     [Debug Device Options]
	     mdm  : [Jtag Options] [Debug Device Options] 
	     [FSL Connection Options]
	     mdm (Microprocessor Debug Module Target): 
	     -uart 

	     Serial Options: 
	     [-port <serial port>]
	     [-baud <baud rate>] 
	     [-timeout <serial port timeout in secs>]

	     Jtag Options: 
	     [-cable type <xilinx_tcf> esn <cable_esn> url <URL of the Xilinx hw_server>]
	      Cable ESN can be obtained by running \"cableesn\" command
	     [-configdevice \{devicenr <jtag chain device no> 
	      idcode <device idcode> irlength <instr. addr length> 
	      partname <name\}] 

	     Debug Device Options: 
	     [-debugdevice {deviceNr <jtag chain no> cpunr <Processor num>
	                    proctype <Processor type>}]

	     FSL Connection Options:  
	     [-pfsl port <Processor FSL port> type <s|m|ms>] } \
	 { disconnect <target id> } \
	 { targets [target id] | [-system <system id>] } \
	 { dow [<-data>] <filename> [<addr>] } \
	 { elf_verify [<filename>] } \
	 { data_verify <filename> <addr> } \
	 { stackcheck } \
	 { con [address] [-block [-timeout <in secs>]] } \
	 { stp [num_instrns] } \
	 { cstp [num_cycles] } \
	 { rst [-processor | -slcr | -debug_sys | -srst] } \
	 { stop } \
	 { mrc <CPx> <op1> <CRn> <CRm> <op2> } \
	 { rrd [reg num] or srrd [reg name] } \
	 { dp_rrd <reg offset> } \
	 { ap_rrd <reg offset> } \
	 { mcr <CPx> <op1> <CRn> <CRm> <op2> <word> } \
	 { rwr <register> <word> } \
	 { dp_rwr <reg offset> } \
	 { ap_rwr <reg offset> } \
         { mb_drrd <cmd> <bitlen> } \
         { mb_drwr <cmd> <hex data> <bitlen> } \
         { mdm_drrd <cmd> <bitlen> } \
         { mdm_drwr <cmd> <hex data> <bitlen> } \
	 { mrd <address> [num] [w|h|b] } \
	 { mrd_phys <address> [num] [w|h|b] } \
	 { dmrd <address> } \
	 { mwr <address> <values> [num] [w|h|b] } \
	 { mwr_phys <address> <values> [num] [w|h|b] } \
	 { dmwr <address> <data> } \
	 { bps <address|func name> [sw|hw] } \
	 { watch <r|w> <addr> [data] } \
	 { bpr <address|func name|bp id|all> [sw|hw] } \
	 { bpl } \
         { vector_catch <event> <enable | disable> }\
	 { tracestart [<filename>] } \
	 { tracestart [<filename>] } \
	 { tracestop [done] } \
	 { tracestop [done] } \
	 { stats [filename] } \
	 { profile [-o <Gmon output File>]  
	     [-config [sampling_freq_hz <value>] [binsize <value>] [profile_mem <Start Address>] } \
	 { state [target id] } \
	 { dis <address> [num_words] } \
	 { verbose <log_detail> } \
	 { debugconfig [-step_mode <disable_interrupt | enable_interupt>]
	     [-memory_datawidth_matching <disable | enable>] 
	     [-reset_on_data_dow <system | processor> <enable | disable>] 
	     [-reset_on_run <system | processor> <enable | disable>]
             [-delay_on_reset <time in millisec>]
             [-memory_access_check <enable | disable>] } \
	 { safemode [on|off] [-config mode <MASK>] [-info] [-elf <elf_file>]} \
	 { fpga -f <bitstream> [options]
	     Jtag Options: 
	     [-cable type <xilinx_tcf> esn <cable_esn> url <URL of the Xilinx hw_server>]
	      Cable ESN can be obtained by running \"cableesn\" command

	     Debug Device Options: 
	     [-debugdevice {deviceNr <jtag chain no> cpunr <Processor num> proctype <Processor type>}] } \
	 { fpga_isconfigured [-devicenr <devicenr the JTAG Chain>]
	     Jtag Options: 
	     [-cable type <xilinx_tcf> esn <cable_esn> url <URL of the Xilinx hw_server>]
	      Cable ESN can be obtained by running \"cableesn\" command

	     Debug Device Options: 
	     [-debugdevice {deviceNr <jtag chain no> cpunr <Processor num> proctype <Processor type>}] } \
	 { xmdconfig [-mb_trap_mask] <MASK>} \
	 { readjtagchain [Jtag Options]
	     Jtag Options: 
	     [-cable type <xilinx_tcf> esn <cable_esn> url <URL of the Xilinx hw_server>] } \
	 { cableesn [Jtag Options]
	     Jtag Options: 
	     [-cable type <xilinx_tcf> url <URL of the Xilinx hw_server>] } \
	 ]

proc get_cmd_syntax { cmd } {
    global _xmd_cmd
    global _xmd_cmd_syntax
    
    set cmd_index [lsearch $_xmd_cmd $cmd]
    if {$cmd_index == -1} {
	error ""
    }
    set cmd_syntax [lindex $_xmd_cmd_syntax $cmd_index]
    puts "Usage: $cmd_syntax"
}

proc fpga { args } {
    if { [catch {eval_xmd_cmd "xfpga $args"} retval] } {
	error $retval
    }
    return $retval
}

proc fpga_isconfigured { args } {
    if { [catch {eval_xmd_cmd "xfpga_isconfigured $args"} retval] } {
	error $retval
    }
    if { $retval == "1" } {
	return "FPGA is Configured"
    } else {
	return "FPGA is NOT Configured. Use \"fpga\" command to Configure the FPGA"
    }
}

proc safemode  {args} {
    set tgt [get_cur_target]
    if { [catch {eval_xmd_cmd "xsafemode $tgt $args"} retval]} {
	error $retval
    }
    return $retval
}

proc xmdconfig {args} {
    catch {eval_xmd_cmd "xxmdconfig $args"} retval
    return $retval
}

proc help { {option all} args } {
    switch $option {
	all
	{
            puts "\nWARNING: XMD has been deprecated and will be removed in future." 
            puts "         XSDB replaces XMD and provides additional functionality."
            puts "         We recommend you switch to XSDB for commandline debugging."
            puts "         Please refer to SDK help for more details."

	    puts "\nXMD Terminal Commands Types:"
	    puts "commands..... List all Commands"
	    puts "init......... Load/Initialize the System Files"
	    puts "connect...... Connect to System Target"
	    puts "files........ Load ELF/Data files"
	    puts "running...... Program Execution"
	    puts "breakpoints.. Setting Breakpoints/Watchpoints"
	    puts "memory....... Target Memory"
	    puts "registers.... Target Registers"
	    puts "trace........ Tracing and Profiling options"
	    puts "misc......... Miscellaneous Options"
	    puts "help......... Help on help"
	    puts "\nType \"help\" to display XMD command types"
	    puts "Type \"help\" followed by above \"type\" for more options"
	}
	init -
	xload
	{
	    help_init
	}
	connect
	{
	    help_connect $args
	}
	files 
	{
	    help_files
	}
	running
	{
	    help_running
	}
	memory
	{
		help_memory
	}
	registers
	{
		help_registers
	}
	breakpoints
	{
	    help_breakpoints
	}
	trace
	{
	    help_trace
	}
	misc
	{
	    help_misc
	}
	commands
	{
	    help_commands
	}
	help
	{
	    puts "\nType \"help\" to display Main XMD Command Types"
	    puts "Type \"help commands\" to display all the available commands"
	    puts "Type \"help\" followed by \"type\" to display Command Options"
	    puts "\tex: help connect"
	    puts "\nSymbol Conventions:"
	    puts "\t<> - Required Field"
	    puts "\t\[\] - Optional Field"
	    puts "\t|  - Different possible Options Seperator"
	}
	targets
	{
	    help_targets
	}
	disconnect
	{
	    help_discon
	}
	dow
	{
	    help_dow
	}
	elf_verify
	{
	    help_elf_verify
	}
	data_verify
	{
	    help_data_verify
	}
	stackcheck
	{
	    help_stackcheck
	}
	run
	{
	    help_run
	}
	con
	{
	    help_con
	}
	stp
	{
	    help_stp
	}
	cstp
	{
	    help_cstp
	}
	rst
	{
	    help_rst
	}
	stop
	{
	    help_stop
	}
	safemode
	{
	    help_safemode
	}
	mrd
	{
	    help_mrd
	}
	mrd_var
	{
	    help_mrd_var
	}
	mrd_phys
	{
	    help_mrd_phys
	}
	dmrd
	{
	    help_dmrd
	}
	mwr
	{
	    help_mwr
	}
	mwr_phys
	{
	    help_mwr_phys
	}
	dmwr
	{
	    help_dmwr
	}
        vector_catch
        {
            help_vector_catch
        }
	rrd
	{
	    help_rrd
	}
	srrd
	{
	    help_srrd
	}
	mrc
	{
	    help_mrc
	}
	dp_rrd
	{
	    help_dp_rrd
	}
	ap_rrd
	{
	    help_ap_rrd
	}
	rwr
	{
	    help_rwr
	}
	mcr
	{
	    help_mcr
	}
	dp_rwr
	{
	    help_dp_rwr
	}
	ap_rwr
	{
	    help_ap_rwr
	}
        mb_drwr
        {
            help_mb_drwr
        }
        mb_drrd
        {
            help_mb_drrd
        }
        mdm_drwr
        {
            help_mdm_drwr
        }
        mdm_drrd
        {
            help_mdm_drrd
        }
	bps
	{
	    help_bps
	}
	watch
	{
	    help_watch
	}
	bpr
	{
	    help_bpr
	}
	bpl
	{
	    help_bpl
	}
        tracestart
        {
	    help_tracestart
        }
        tracestop
        {
            help_tracestop
        }
        stats
        {
            help_stats
        }
        profile
        {
            help_profile
        }
        debugconfig
        {
            help_debugconfig
        }
        state
        {
            help_state
        }
        dis
        {
            help_dis
        }
        jtag_terminal
        {
            help_jtag_terminal
        }
        terminal
        {
            help_terminal
        }
        read_jtag_uart
        {
            help_read_jtag_uart
        }
        read_uart
        {
            help_read_uart
        }
        verbose
        {
            help_verbose
        }
        fpga
        {
            help_fpga
        }
        fpga_isconfigured
        {
            help_fpga_isconfigured
        }
        xmdconfig
        {
            help_xmdconfig
        }
        cableesn
        {
            help_cableesn
        }
        readjtagchain
        {
            help_readjtagchain
        }
	default
	{
	    puts "Undefined Command Type, Use \"help\" command"
	}
    }
}

proc help_init { } {
    puts "\n      Load the System Initialization files"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  xload hw <hardware specification file>"
    puts "                                     Load System XML file. "
    puts ""
}

proc help_connect { option } {
    switch $option {
	arm
	{
	    puts "\n      Connect to Cortex A9 System Target"
	    puts "----- Syntax -----                    ----- Description -----"
	    puts " connect arm <Connect type>           Connect to Cortex A9 Target"
	    puts ""
	    puts " Connect type:"
	    puts "  hw \[Jtag Options\]                   Cortex A9 Hardware"
	    puts "      \[Debug Device Options\]"
	    puts "       \[-ipcport IP:port\]"
	    puts ""
	    puts " Jtag Options:"
	    puts "  \[-cable "
	    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
	    puts "                    \[frequency <Cable Frequency>\]"
	    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
	    puts ""
	    puts "  \[-configdevice "
	    puts "                  { devicenr <jtag chain device no>"
	    puts "                    idcode <device idcode>"
	    puts "                    irlength <instr. addr length>"
	    puts "                    partname <name> }\]"
	    puts ""
	    puts " Debug Device Options:"
	    puts "  \[-debugdevice "
	    puts "                  \[deviceNr <jtag chain no>\] \[cpunr <Processor num>\]"
	    puts ""
	}
	mb 
	{
	    puts "\n      Connect to Miroblaze System Target"
	    puts "----- Syntax -----                   ----- Description -----"
	    puts " connect mb <Connect type>           Connect to MicroBlaze Target"
	    puts ""
	    puts " Connect type:"
	    puts "  sim \[-memsize <Addr Bus Len>\]      MicroBlaze Simulator"
	    puts ""
	    puts "  mdm  \[Jtag Options\]                MicroBlaze MDM on Hardware"
	    puts "       \[Debug Device Options\] "
	    puts "       \[BSCAN options]"
	    puts ""
	    puts " Serial Options:"
	    puts "  \[-port <serial port>\] \[-baud <baud rate>\]"
	    puts "  \[-timeout <serial port timeout in secs>\]"
	    puts ""
	    puts " Jtag Options:"
	    puts "  \[-cable "
	    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
	    puts "                    \[frequency <Cable Frequency>\]"
	    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
	    puts ""
	    puts "  \[-configdevice "
	    puts "                  {devicenr <jtag chain device no>"
	    puts "                   idcode <device idcode>"
	    puts "                   irlength <instr. addr length>"
	    puts "                   partname <name>}\]"
	    puts ""
	    puts " Debug Device Options:"
	    puts "  \[-debugdevice "
	    puts "                  \[deviceNr <jtag chain no>\] \[cpunr <Processor num>\]"
	    puts "                  \[romemStartAdr <ROM Start Address> romemSize <Size in Bytes>\]\]"
	    puts ""
	    puts " BSCAN Options:"
	    puts "  \[-bscan "
	    puts "                  \[<JTAG scan chain>\]"
	    puts "                   In multiple MDM systems, each MDM is connected to JTAG scan chain(USER1 to USER4)\]"
	    puts ""
	}
	mdm 
	{
	    puts "\n        Connect to MDM Target"
	    puts "----- Syntax -----                    ----- Description -----"
	    puts " connect mdm <Connect type>           Connect to MDM Target"
	    puts ""
	    puts " Connect type:"
	    puts "  -uart                               Connect to MDM Uart"
	}
	default
	{
	    puts "\n      Connect to System Target"
	    puts "----- Syntax -----                   ----- Description -----"
	    puts " connect <Target> <Connect type>     Connect to Target, where:"
	    puts "         \[Options\]                   <Target> =  arm | mb | mdm"
	    puts "                                     <Connect Type>   sim | hw | mdm"
	    puts ""
	    puts " targets                             List all current targets"
	    puts ""
	    puts " targets \[target id\]                 Change to <target id> target"
	    puts ""
	    puts " targets \[-system <System ID>\]       Change to <System ID> system"
	    puts ""
	    puts " disconnect <target id>              Disconnect target"
	    puts "\n"
	    puts "Type \"help connect\" followed by \"Target type (arm|mb|mdm)\" for more options"
	    puts ""
	}
    }
}

proc help_targets { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts " targets                             List all current targets"
    puts ""
    puts " targets \[target id\]                 Change to <target id> target"
    puts ""
    puts " targets \[-system <System ID>\]       Change to <System ID> system"
    puts ""
}

proc help_discon { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts " disconnect <target id>              Disconnect target"
    puts ""
}

proc help_files { } {
    puts "\n      Download/Verify ELF or Data files to System Target"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dow <filename>                     Download Elf File"
    puts ""
    puts "  dow <filename> <addr>              Download PIC Elf File from <addr>"
    puts ""
    puts "  dow <-data> <filename> <addr>      Download Data/Binary File from <addr>"
    puts ""
    puts "  elf_verify \[filename\]              Verify if ELF file was downloaded correctly"
    puts ""
    puts "  data_verify <filename> <addr>      Verify if Data file was downloaded correctly"
    puts ""
    puts "  stackcheck                         Get the Stack Usage of the Program"
    puts ""
}

proc help_dow { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dow <filename>                     Download Elf File"
    puts ""
    puts "  dow <filename> <addr>              Download PIC Elf File from <addr>"
    puts ""
    puts "  dow <-data> <filename> <addr>      Download Data/Binary File from <addr>"
    puts ""
}

proc help_elf_verify { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  elf_verify \[filename\]              Verify if ELF file was downloaded correctly"
    puts ""
}

proc help_data_verify { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  data_verify <filename> <addr>      Verify if Data file was downloaded correctly"
    puts ""
}

proc help_stackcheck { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  stackcheck                         Get the Stack Usage of the Program"
    puts ""
}

proc help_running { } {
    puts "\n      Program Execution"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  run                                Run program from <Start Address>"
    puts ""
    puts "  con \[address\]                      Continue program execution from"
    puts "                                     current address"
    puts "      \[-block \[-timeout <in secs>\]\]"
    puts ""
    puts "  stp \[num_instrns\]                  Step"
    puts ""
    puts "  cstp \[num_cycles\]                  Cycle Step (Simulator/VP targets)"
    puts ""
    puts "  rst                                Reset the System."
    puts "                                     For Zynq, get the active processor"
    puts "                                     to trigger soft reset. In flash"
    puts "                                     bootmode, the processor will be"
    puts "                                     stopped at the beginning of the"
    puts "                                     bootloader"
    puts "                                     This is useful for debugging code"
    puts "                                     booting from flash."
    puts ""
    puts "      \[-processor\]                   Reset the processor."
    puts ""
    puts "      \[-slcr\]                        Trigger SLCR reset on Zynq."
    puts ""
    puts "      \[-debug_sys\]                   Trigger Debug System Reset through"
    puts "                                     DAP, on Zynq."
    puts ""
    puts "      \[-srst\]                        Assert the SRST pin on the JTAG"
    puts "                                     cable to trigger reset on Zynq."
    puts "                                     Note: SRST is only supported through"
    puts "                                     Xilinx Platform USB cable II on ZC702"
    puts "                                     (Rev-C and above) and on ZC706 (Rev-B"
    puts "                                     and above)"
    puts ""
    puts "  stop                               Stop"
    puts ""
    puts "  safemode \[-config mode <exception_mask>\]"
    puts "                                     Enable/disable & configure safemode."
    puts ""
    puts "           \[-config <exception_id> <exception_address>\]"
    puts "                                     Change exception handler addresses"
    puts ""
    puts "           \[on|off\]                  Enable/disable safemode."
    puts "           \[-info\]                   Display current safemode configuration"
    puts "           \[-elf <elf_file>\]         Specify the elf file to be debugged."
    puts ""
}

proc help_run { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  run                                Run program from <Start Address>"
    puts ""
}

proc help_con { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  con \[address\]                      Continue program execution from"
    puts "                                     current address"
    puts "      \[-block \[-timeout <in secs>\]\]"
    puts ""
}

proc help_stp { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  stp \[num_instrns\]                  Single Step \[Number of Instructions\]"
    puts ""
}

proc help_cstp { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  cstp \[num_cycles\]                  Cycle Step (Simulator/VP targets)"
    puts ""
}

proc help_rst { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  rst                                Reset the System."
    puts "                                     For Zynq Silicon version 3.0 and above,"
    puts "                                     trigger the Debug System Reset"
    puts "                                     For Zynq Silicon version 1.0 and 2.0, trigger"
    puts "                                     SLCR reset by running some instructions on the"
    puts "                                     processor such that the processor is halted at"
    puts "                                     the beginning of the user code in non-jtag"
    puts "                                     bootmode"
    puts ""
    puts "      \[-processor\]                   Reset the active processor."
    puts ""
    puts "      \[-slcr\]                        Trigger SLCR reset on Zynq."
    puts "                                     This is done by running some instructions"
    puts "                                     on the processor such that the processor is"
    puts "                                     halted at the beginning of the user code in"
    puts "                                     non-jtag bootmode"
    puts ""
    puts "      \[-debug_sys\]                   Trigger Debug System Reset through"
    puts "                                     DAP, on Zynq."
    puts ""
    puts "      \[-srst\]                        Assert the SRST pin on the JTAG"
    puts "                                     cable to trigger reset on Zynq."
    puts "                                     Note: SRST is only supported through"
    puts "                                     Xilinx Platform USB cable II on ZC702"
    puts "                                     (Rev-C and above) and on ZC706 (Rev-B"
    puts "                                     and above)"
    puts ""
}

proc help_stop { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  stop                               Stop the Processor"
    puts ""
}

proc help_safemode { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  safemode \[-config mode <exception_mask>\]"
    puts "                                     Enable/disable & configure safemode."
    puts ""
    puts "           \[-config <exception_id> <exception_address>\]"
    puts "                                     Change exception handler addresses"
    puts ""
    puts "           \[on|off\]                  Enable/disable safemode."
    puts "           \[-info\]                   Display current safemode"
    puts "                                     configuration."
    puts "           \[-elf <elf_file>\]         Specify the elf file to be debugged."
    puts ""
}

proc help_memory {} {
    puts "\n      Reading/Writing Memory"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mrd <address> \[num\] \[w|h|b\]        Memory Read 'w'ord/'h'alfword/'b'yte"
    puts "                                     (default: w)"
    puts ""
    puts "  mrd_var <var name> \[ELF file\]      Read memory at global variable"
    puts ""
    puts "  mrd_phys <address> \[num\] \[w|h|b\]   ARM Physical Memory Read through"
    puts "                                     AHB Access Port"
    puts "                                     MB based system Physical Memory Read"
    puts "                                     through MDM"
    puts "                                     Read 'num' bytes/half-words/words at"
    puts "                                     the address specified by <address>"
    puts "                                     (default: 'w'ord)"
    puts ""
    puts "  dmrd <address>                     Read CoreSight Memory available on"
    puts "                                     ARM Debug Interface"
    puts ""
    puts "  mwr <address> <values> \[<num> <w|h|b>\]"
    puts "                                     Memory Write (default: 'w'ord)"
    puts ""
    puts "  mwr_phys <addr> <values> \[<num> <w|h|b>\]"
    puts "                                     ARM Physical Memory Write through"
    puts "                                     AHB Access Port"
    puts "                                     MB based system Physical Memory"
    puts "                                     Write through MDM"
    puts "                                     Write 'num' bytes/half-words/words at"
    puts "                                     the address specified by <address>"
    puts "                                     (default: 'w'ord)"
    puts ""
    puts "  dmwr <address> <data>              Write to CoreSight Memory available on"
    puts "                                     ARM Debug Interface"
    puts ""
}

proc help_mrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mrd <address> \[num\] \[w|h|b\]        Memory Read 'w'ord/'h'alfword/'b'yte"
    puts "                                     (default: w)"
    puts ""
}

proc help_mrd_var { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mrd_var <var name> \[ELF file\]      Read memory at global variable"
    puts ""
}

proc help_mrd_phys { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mrd_phys <address> \[num\] \[w|h|b\]   ARM Physical Memory Read through"
    puts "                                     AHB Access Port"
    puts "                                     MB based system Physical Memory Read"
    puts "                                     through MDM"
    puts "                                     Read 'num' bytes/half-words/words at"
    puts "                                     the address specified by <address>"
    puts "                                     (default: 'w'ord)"
    puts ""
}

proc help_dmrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dmrd <address>                     Read CoreSight Memory available on"
    puts "                                     ARM Debug Interface"
    puts ""
}

proc help_mwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mwr <address> <values> \[<num> <w|h|b>\]"
    puts "                                     Memory Write (default: 'w'ord)"
    puts ""
}

proc help_mwr_phys { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mwr_phys <addr> <values> \[<num> <w|h|b>\]"
    puts "                                     ARM Physical Memory Write through"
    puts "                                     AHB Access Port"
    puts "                                     MB based system Physical Memory"
    puts "                                     Write through MDM"
    puts "                                     Write 'num' bytes/half-words/words at"
    puts "                                     the address specified by <address>"
    puts "                                     (default: 'w'ord)"
    puts ""
}

proc help_dmwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dmwr <address> <data>              Write to CoreSight Memory available on"
    puts "                                     ARM Debug Interface"
    puts ""
}

proc help_registers {} {
    puts "\n      Reading/Writing Registers"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  rrd \[reg num\]                      Register Read"
    puts ""
    puts "  srrd \[reg name\]                    Special Register Read. For ARM,"
    puts "                                     read a set of CoProcessor regs,"
    puts "                                     identified by \[reg name\]."
    puts "                                    \[reg name\] can be any of ctrl, id,"
    puts "                                     debug, etc, vfp. (default: ctrl)"
    puts "                                           "
    puts ""
    puts "  mrc <CPx> <op1> <CRn> <CRm> <op2>  Read ARM CoProcessor CPx Register"
    puts "                                     specified by the parameters CRn, CRm"
    puts "                                     and opcodes op1, op2. The order of"
    puts "                                     these parameters and opcodes is same"
    puts "                                     as the generic ARM MRC instruction"

    puts ""
    puts "  dp_rrd <reg offset>                Read Debug Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
    puts "  ap_rrd <reg offset>                Read Access Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
    puts "  rwr <register> <word>              General purpose Register Write"
    puts ""
    puts "  mcr <CPx> <op1> <CRn> <CRm> <op2> <word>"
    puts "                                     Write to ARM CoProcessor CPx Register"
    puts "                                     specified by the parameters CRn, CRm"
    puts "                                     and opcodes op1, op2. The order of"
    puts "                                     these parameters and opcodes is same"
    puts "                                     as the generic ARM MCR instruction"
    puts ""
    puts "  dp_rwr <reg offset>                Write to Debug Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
    puts "  ap_rwr <reg offset>                Write to Access Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
    puts "  mb_drwr <cmd> <hex data> <bitlen>  Write to MicroBlaze Debug Register"
    puts "                                     available on MDM. cmd is 8-bit MDM"
    puts "                                     command to access a Debug Register."
    puts "                                     hex data is the register value and"
    puts "                                     bitlen is the register width"
    puts "    Ex. Write to MB Control Reg"
    puts "      mb_drwr 1 0x282 10"
    puts ""
    puts "  mb_drrd <cmd> <bitlen>             Read a MicroBlaze Debug Register"
    puts "                                     available on MDM. cmd is 8-bit MDM"
    puts "                                     command to access a Debug Register."
    puts "                                     bitlen is the register width"
    puts "                                     Returns hex register value"
    puts "    Ex. Read MB Status Reg"
    puts "      mb_drwr 3 28"
    puts ""
    puts "  mdm_drwr <cmd> <hex data> <bitlen> Write to MDM Debug Register"
    puts "                                     cmd is 8-bit MDM command to access"
    puts "                                     a Debug Register. hex data is the"
    puts "                                     register value and bitlen is the"
    puts "                                     register width"
    puts "    Ex. Write to MDM Break/Reset Control Reg"
    puts "      mdm_drwr 8 0x40 8"
    puts ""
    puts "  mdm_drrd <cmd> <bitlen>            Read a MDM Debug Register"
    puts "                                     cmd is 8-bit MDM command to access"
    puts "                                     a Debug Register and bitlen is the"
    puts "                                     register width"
    puts "                                     Returns hex register value"
    puts "    Ex. Read XMDC ID Reg"
    puts "      mdm_drwr 0 32"
    puts ""
}

proc help_rrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  rrd \[reg num\]                      Register Read"
    puts ""
}

proc help_srrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  srrd \[reg name\]                    Special Register Read. For ARM,"
    puts "                                     read a set of CoProcessor regs,"
    puts "                                     identified by \[reg name\]."
    puts "                                    \[reg name\] can be any of ctrl, id,"
    puts "                                     debug, etc, vfp. (default: ctrl)"
    puts ""
}

proc help_mrc { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mrc <CPx> <op1> <CRn> <CRm> <op2>  Read ARM CoProcessor CPx Register"
    puts "                                     specified by the parameters CRn, CRm"
    puts "                                     and opcodes op1, op2. The order of"
    puts "                                     these parameters and opcodes is same"
    puts "                                     as the generic ARM MRC instruction"
    puts ""
}

proc help_dp_rrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dp_rrd <reg offset>                Read Debug Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
}

proc help_ap_rrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  ap_rrd <reg offset>                Read Access Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
}

proc help_rwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  rwr <register> <word>              General purpose Register Write"
    puts ""
}

proc help_mcr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mcr <CPx> <op1> <CRn> <CRm> <op2> <word>"
    puts "                                     Write to ARM CoProcessor CPx Register"
    puts "                                     specified by the parameters CRn, CRm"
    puts "                                     and opcodes op1, op2. The order of"
    puts "                                     these parameters and opcodes is same"
    puts "                                     as the generic ARM MCR instruction"
    puts ""
}

proc help_dp_rwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dp_rwr <reg offset>                Write to Debug Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
}

proc help_ap_rwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  ap_rwr <reg offset>                Write to Access Port Register available"
    puts "                                     on ARM Debug Access Port (DAP)"
    puts ""
}

proc help_mb_drwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mb_drwr <cmd> <hex data> <bitlen>  Write to MicroBlaze Debug Register"
    puts "                                     available on MDM. cmd is 8-bit MDM"
    puts "                                     command to access a Debug Register."
    puts "                                     hex data is the register value and"
    puts "                                     bitlen is the register width"
    puts "    Ex. Write to MB Control Reg"
    puts "      mb_drwr 1 0x282 10"
    puts ""
}

proc help_mb_drrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mb_drrd <cmd> <bitlen>             Read a MicroBlaze Debug Register"
    puts "                                     available on MDM. cmd is 8-bit MDM"
    puts "                                     command to access a Debug Register."
    puts "                                     bitlen is the register width"
    puts "                                     Returns hex register value"
    puts "    Ex. Read MB Status Reg"
    puts "      mb_drwr 3 28"
    puts ""
}

proc help_mdm_drwr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mdm_drwr <cmd> <hex data> <bitlen> Write to MDM Debug Register"
    puts "                                     cmd is 8-bit MDM command to access"
    puts "                                     a Debug Register. hex data is the"
    puts "                                     register value and bitlen is the"
    puts "                                     register width"
    puts "    Ex. Write to MDM Break/Reset Control Reg"
    puts "      mdm_drwr 8 0x40 8"
    puts ""
}

proc help_mdm_drrd { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  mdm_drrd <cmd> <bitlen>            Read a MDM Debug Register"
    puts "                                     cmd is 8-bit MDM command to access"
    puts "                                     a Debug Register and bitlen is the"
    puts "                                     register width"
    puts "                                     Returns hex register value"
    puts "    Ex. Read XMDC ID Reg"
    puts "      mdm_drwr 0 32"
    puts ""
}

proc help_breakpoints { } {
    puts "\n      Setting Breakpoints and Watchpoints"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  bps <address|func name> \[sw|hw\]    Breakpoint Set. XMD uses last"
    puts "                                     downloaded ELF file for function name"
    puts ""
    puts "  watch <r|w> <addr> \[data\]          Set Read/Write Watchpoints."
    puts ""
    puts "  bpr <address|func name|bp id|all>  Breakpoint/Watchpoint Remove. XMD uses"
    puts "                                     last downloaded ELF file for function name"
    puts ""
    puts "  bpl                                Breakpoints List"
    puts ""
    puts " vector_catch <event> <enable | disable>"
    puts "                                     Enable or disable vector catch for an event"
    puts "                                     specified by event. Currently, only Secure"
    puts "                                     mode is supported"
    puts "                                     This command is supported only on ARM"
    puts "                                     event can be reset, undef, svc, prefetch_abt,"
    puts "                                     data_abt, irq or fiq"
    puts ""
}

proc help_bps { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  bps <address|func name> \[sw|hw\]    Breakpoint Set. XMD uses last"
    puts "                                     downloaded ELF file for function name"
    puts ""
}

proc help_watch { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  watch <r|w> <addr> \[data\]          Set Read/Write Watchpoints."
    puts ""
}

proc help_bpr { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  bpr <address|func name|bp id|all>  Breakpoint/Watchpoint Remove. XMD uses"
    puts "                                     last downloaded ELF file for function name"
    puts ""
}

proc help_bpl { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  bpl                                Breakpoints List"
    puts ""
}

proc help_vector_catch { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts " vector_catch <event> <enable | disable>"
    puts "                                     Enable or disable vector catch for an event"
    puts "                                     specified by event. Currently, only Secure"
    puts "                                     mode is supported"
    puts "                                     This command is supported only on ARM"
    puts "                                     event can be reset, undef, svc, prefetch_abt,"
    puts "                                     data_abt, irq or fiq"
    puts ""
}

proc help_trace { } {
    puts "\n      Trace/Statistics/Profile Commands"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  tracestart \[<filename>\]            Start Tracing (For ISS Targets)"
    puts ""
    puts "  tracestop \[done\]                   Stop Tracing"
    puts ""
    puts "  stats \[filename\]                   Generate Trace Stats (For Simulator"
    puts "                                     Targets)"
    puts ""
    puts "  profile \[-o <Gmon output File>\]    Configure or Write Profile Output File"
    puts "          \[-config \[sampling_freq_hz <value>\]"
    puts "          \[binsize <value>\]"
    puts "          \[profile_mem <Start Address>\]"
    puts ""
}

proc help_tracestart { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  tracestart \[<filename>\]            Start Tracing (For ISS Targets)"
    puts ""
}

proc help_tracestop { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  tracestop \[done\]                   Stop Tracing"
    puts ""
}

proc help_stats { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  stats \[filename\]                   Generate Trace Stats (For Simulator"
    puts "                                     Targets)"
    puts ""
}

proc help_profile { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  profile \[-o <Gmon output File>\]    Configure or Write Profile Output File"
    puts "          \[-config \[sampling_freq_hz <value>\]"
    puts "          \[binsize <value>\]"
    puts "          \[profile_mem <Start Address>\]"
    puts ""
}

proc help_misc { } {
    puts "\n      Misc Commands"
    puts "----- Syntax -----                   ----- Description -----"
    puts "  debugconfig \[-step_mode <value>\]   Configure the Debug Session"
    puts "    \[-memory_datawidth_matching <value>\]"
    puts "    \[-reset_on_data_dow <system | processor> <enable | disable>\]"
    puts "    \[-reset_on_run <system | processor> <enable | disable>\]"
    puts "    \[-delay_on_reset <time in millisec>\]"
    puts "                                       Delay between System reset and"
    puts "                                       elf download, to allow calibration"
    puts "                                       of MIG controller. This option is"
    puts "                                       valid only for MicroBlaze"
    puts "    \[-memory_access_check <enable | disable>\]"
    puts "                                       memory_access_check is only"
    puts "                                       valid for Zynq"
    puts ""
    puts "  state \[target id\]                  Display the Current State of all"
    puts "                                     targets or <target id> target."
    puts ""
    puts "  dis <address> \[num_words\]          Disassemble (MicroBlaze Only)"
    puts ""
    puts "  jtag_terminal <dcc|mdm> \[cpunr\]    Start JTAG-based Hyperterminal to"
    puts "           \[-jtag_uart_server\]       communicate with DCC/MDM UART interface"
    puts "           \[portno\] \[high|med|low\]"
    puts ""
    puts "  terminal \[-jtag_uart_server\]       Start JTAG-based Hyperterminal to"
    puts "           \[portno\] \[high|med|low\]   communicate with MDM UART interface"
    puts ""
    puts "  read_uart <start|stop> \[TCL Channel ID\]"
    puts "                                     Read from MDM UART interface"
    puts ""
    puts "  read_jtag_uart <dcc|mdm> <start|stop> \[TCL Channel ID\]"
    puts "                                     Read from DCC/MDM UART interface"
    puts ""
    puts "  verbose <log_detail>               Set verbose level"
    puts "                                     The following log levels are available"
    puts "                                      0 - Disable all verbose messages"
    puts "                                      1 - Enable generic debug messages"
    puts "                                      2 - Enable Tcl Server debug messages"
    puts "                                      4 - Enable GDB Server debug messages"
    puts "                                     Multiple log levels can be enabled by"
    puts "                                     ORing individual log levels"
    puts ""
    puts "  fpga \[-f <bitstream_file>\] \[options\]"
    puts "                                     Configure FPGA with the given bit file"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    \[frequency <Cable Frequency>\]"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
    puts " Debug Device Options:"
    puts "  \[-debugdevice "
    puts "                  \[deviceNr <jtag chain no>\]"
    puts ""
    puts "  fpga_isconfigured \[options\]        Check if FPGA is Configured"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    \[frequency <Cable Frequency>\]"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
    puts " Debug Device Options:"
    puts "  \[-debugdevice "
    puts "                  \[deviceNr <jtag chain no>\]"
    puts ""
    puts "  cableesn \[Jtag Options\]"
    puts "                                     Read the Electronic Signature of the cable"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[url <URL of the Xilinx hw_server>\] }"
    puts ""
    puts "  readjtagchain \[Jtag Options\]"
    puts "                                     Get a list of Devices on a JTAG chain"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
    puts "  xmdconfig \[-mb_trap_mask\] \[MASK\]" 
    puts "                                     Global setup for current XMD session"
    puts ""
}

proc help_debugconfig { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  debugconfig \[-step_mode <value>\]   Configure the Debug Session"
    puts "    \[-memory_datawidth_matching <value>\]"
    puts "    \[-reset_on_data_dow <system | processor> <enable | disable>\]"
    puts "    \[-reset_on_run <system | processor> <enable | disable>\]"
    puts "    \[-delay_on_reset <time in millisec>\]"
    puts "                                       Delay between System reset and"
    puts "                                       elf download, to allow calibration"
    puts "                                       of MIG controller. This option is"
    puts "                                       valid only for MicroBlaze"
    puts "    \[-memory_access_check <enable | disable>\]"
    puts "                                       memory_access_check is valid"
    puts "                                       only for Zynq"
    puts ""
}

proc help_state { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  state \[target id\]                  Display the Current State of all"
    puts "                                     targets or <target id> target."
    puts ""
}

proc help_dis { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  dis <address> \[num_words\]          Disassemble (MicroBlaze Only)"
    puts ""
}

proc help_jtag_terminal { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  jtag_terminal <dcc|mdm> \[cpunr\]    Start JTAG-based Hyperterminal to"
    puts "           \[-jtag_uart_server\]       communicate with DCC/MDM UART interface"
    puts "           \[portno\] \[high|med|low\]"
    puts ""
}

proc help_terminal { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  terminal \[-jtag_uart_server\]       Start JTAG-based Hyperterminal to"
    puts "           \[portno\] \[high|med|low\]   communicate with MDM UART interface"
    puts ""
}

proc help_read_jtag_uart { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  read_jtag_uart <dcc|mdm> <start|stop> \[TCL Channel ID\]"
    puts "                                     Read from DCC/MDM UART interface"
    puts ""
}

proc help_read_uart { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  read_uart <start|stop> \[TCL Channel ID\]"
    puts "                                     Read from MDM UART interface"
    puts ""
}

proc help_verbose { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  verbose <log_detail>               Set verbose level"
    puts "                                     The following log levels are available"
    puts "                                      0 - Disable all verbose messages"
    puts "                                      1 - Enable generic debug messages"
    puts "                                      2 - Enable Tcl Server debug messages"
    puts "                                      4 - Enable GDB Server debug messages"
    puts "                                     Multiple log levels can be enabled by"
    puts "                                     ORing individual log levels"
    puts ""
}

proc help_fpga { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  fpga \[-f <bitstream_file>\] \[options\]"
    puts "                                     Configure FPGA with the given bit file"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    \[frequency <Cable Frequency>\]"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
    puts " Debug Device Options:"
    puts "  \[-debugdevice "
    puts "                  \[deviceNr <jtag chain no>\]"
    puts ""
}

proc help_fpga_isconfigured { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  fpga_isconfigured \[options\]        Check if FPGA is Configured"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    \[frequency <Cable Frequency>\]"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
    puts " Debug Device Options:"
    puts "  \[-debugdevice "
    puts "                  \[deviceNr <jtag chain no>\]"
    puts ""
}

proc help_cableesn { } {
    puts "  cableesn \[Jtag Options\]"
    puts "                                     Read the Electronic Signature of the cable"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[url <URL of the Xilinx hw_server>\] }"
    puts ""
}

proc help_readjtagchain { } {    
    puts "  readjtagchain \[Jtag Options\]"
    puts "                                     Get the list of Devices on a JTAG cable"
    puts " Jtag Options:"
    puts "  \[-cable "
    puts "                  { type <xilinx_tcf> \[esn <cable_esn> url <URL of the Xilinx hw_server>\] }"
    puts "                    Cable ESN can be obtained by running \"cableesn\" command"
    puts ""
}

proc help_xmdconfig { } {
    puts "----- Syntax -----                   ----- Description -----"
    puts "  xmdconfig \[-mb_trap_mask\] \[MASK\]" 
    puts "                                     Global setup for current XMD session"
    puts ""
}

proc help_commands { } {
    puts "\n      All XMD Commands"
    puts "----- Command -----                  ----- Description -----"
    puts "  ap_rrd                             ARM Access Port Register Read"
    puts "  ap_rwr                             ARM Access Port Register Write"
    puts "  bpl                                List Breakpoints"
    puts "  bpr                                Remove Breakpoint/Watchpoint"
    puts "  bps                                Set Breakpoint"
    puts "  cableesn                           Read Cable Electronic Signature"
    puts "  con                                Continue program execution"
    puts "  connect                            Connect to a System Target"
    puts "  cstp                               Cycle Step (Simulator/VP targets)"
    puts "  data_verify                        Verify if Data file was downloaded correctly"
    puts "  debugconfig                        Configure the Debug Session"
    puts "  dis                                Disassemble (MicroBlaze Only)"
    puts "  disconnect                         Disconnect target"
    puts "  dmrd                               Read ARM CoreSight Memory"
    puts "  dmwr                               Write to ARM CoreSight Memory"
    puts "  dow                                Download Elf/Data/Binary File"
    puts "  dp_rrd                             ARM Debug Port Register Read"
    puts "  dp_rwr                             ARM Debug Port Register Write"
    puts "  elf_verify                         Verify if Elf file was downloaded correctly"
    puts "  fpga                               Configure FPGA with the given bit file"
    puts "  fpga_isconfigured                  Check if FPGA is Configured"
    puts "  jtag_terminal                      Start JTAG-based Hyperterminal"
    puts "  mb_drrd                            Read a MicroBlaze Debug Register"
    puts "  mb_drwr                            Write to MicroBlaze Debug Register"
    puts "  mcr                                ARM CoProcessor Register Write"
    puts "  mdm_drrd                           Read a MDM Debug Register"
    puts "  mdm_drwr                           Write to a MDM Debug Register"
    puts "  mrc                                ARM CoProcessor Register Read"
    puts "  mrd                                Memory Read"
    puts "  mrd_phys                           ARM Memory Read through AHB AP"
    puts "  mrd_var                            Read memory at global variable"
    puts "  mwr                                Memory Write"
    puts "  mwr_phys                           ARM Memory Write through AHB AP"
    puts "  profile                            Configure or Write Profile Output File"
    puts "  readjtagchain                      Get the list of Devices on a JTAG cable"
    puts "  read_jtag_uart                     Read from DCC/MDM UART interface"
    puts "  read_uart                          Read from MDM UART interface"
    puts "  rrd                                Register Read"
    puts "  rst                                Reset the System/Target"
    puts "  run                                Run program from <Start Address>"
    puts "  rwr                                General purpose Register Write"
    puts "  safemode                           Enable/disable & configure safemode"
    puts "  stackcheck                         Get the Stack Usage of the Program"
    puts "  state                              Display the Current State of targets"
    puts "  stats                              Generate Trace Stats (For Simulator"
    puts "  stop                               Stop the Target"
    puts "  stp                                Single Step"
    puts "  srrd                               Special Register Read"
    puts "  targets                            List targets or switch between targets"
    puts "  terminal                           Start JTAG-based Hyperterminal"
    puts "  tracestart                         Start Tracing (For ISS Targets)"
    puts "  tracestop                          Stop Tracing"
    puts "  vector_catch                       Enable or Disable a vector catch event"
    puts "  verbose                            Set Verbose level"
    puts "  watch                              Set Read/Write Watchpoints"
    puts "  xmdconfig                          Global setup for current XMD session"
    puts "  xload                              Load a System XML file"
    puts "Type \"help\" followed by above \"command\" for more help"
    puts ""
}

proc bgerror { msg } {
    global errorInfo
    puts "errorInfo is $errorInfo"
    puts "error msg is $msg"
}


# Launch the terminal_server TCL Script
set tserver_script [file join $env(XILINX_SDK) "scripts" "xmd" "terminal_server.tcl"]
if { ![file exists $tserver_script] } {
    error "ERROR: Unable to find JTAG-based Hyperterminal script: $tserver_script\n Check SDK Installation"
}
source $tserver_script

# temp work around to reset the PL before reprogramming
proc reset_zynqpl { } {
    set tgt [get_cur_target]

    if { [is_cortex_target $tgt] == 0 } {
	error "Command supported only on Cortex processor"
    }

    mwr_phys 0xf8000900 0xffffffff
    mwr_phys 0xf8007034 0x757bdf0d
    mwr_phys 0xf8007000 0x4200e07f
}

### Zynq Utilities
set zynqutils [file join $env(XILINX_SDK) "scripts" "xmd" "zynqutils.tcl"]
if { [file exists $zynqutils] } {
    source $zynqutils
}

### Zynq Cross-trigerring script
set zynqctg [file join $env(XILINX_SDK) "scripts" "xmd" "zynq_ctg.tcl"]
if { [file exists $zynqctg] } {
    source $zynqctg
}

if { $argc > 1 } {
    set xmd_arg [lindex $argv 1]
    # ignore xmd executable name and script name
    set argc [expr $argc - 2]
    set argv [lrange $argv 2 end]

    if { [file exists $xmd_arg] } {
	set tcl_interactive 0
	puts "Executing user script : $xmd_arg"
	if { [catch { source $xmd_arg } rc] } {
	    puts "Error Executing User Script : $xmd_arg"
	    puts "Error :: $rc"
	    exit -1 
	}
    } else {
	set xilinx_sdk_path [lindex [array get env XILINX_SDK] 1]
	set xmd_arg_script [file join $xilinx_sdk_path "scripts" "xmd" $xmd_arg]
	if { [file exists $xmd_arg_script] } {
	    puts "Executing xmd script : $xmd_arg_script"
	    set tcl_interactive 0
	    if { [catch { source $xmd_arg_script } rc] } {
		puts "Error Executing xmd Script : $xmd_arg_script"
		puts "Error :: $rc"
		exit -1 
	    }
	} else {
	    puts "ERROR: Unable to source Tcl script file : $xmd_arg"
	    exit -1
	}
    }
    exit
} else {
    set tcl_interactive 1

}


# 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
