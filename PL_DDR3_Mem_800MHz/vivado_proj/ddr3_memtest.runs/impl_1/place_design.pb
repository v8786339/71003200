
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z1002default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z1002default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0382default:default2
1532.6682default:default2
0.0002default:defaultZ17-268h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
1532.6682default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

BSub-optimal placement for a clock-capable IO pin and MMCM pair. %s522*place2?	
?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk<MSGMETA::END> (IBUFDS.O) is locked to IOB_X1Y274
	<MSGMETA::BEGIN::BLOCK>u_mig_7series_0/u_mig_7series_0_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i<MSGMETA::END> (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0
"?
Ru_mig_7series_0/u_mig_7series_0_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk2?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:% (IBUFDS.O) is locked to IOB_X1Y274
	"?
Ju_mig_7series_0/u_mig_7series_0_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i:O (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0
2default:default8Z30-575h px? 
h
SPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 10347e2b2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 17cfe6af1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:29 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 17cfe6af1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:29 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 17cfe6af1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:29 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
D
/Phase 2 Global Placement | Checksum: 15f9fca1b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:12 ; elapsed = 00:00:43 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 15f9fca1b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:12 ; elapsed = 00:00:43 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1ff490cbd
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:18 ; elapsed = 00:00:47 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 22c2f44e7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:18 ; elapsed = 00:00:47 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1c0256f71
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:18 ; elapsed = 00:00:47 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 1c8e46ee0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:00:48 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 1c2fb724f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:20 ; elapsed = 00:00:48 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 192798f9a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:26 ; elapsed = 00:00:54 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 210169cd8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:26 ; elapsed = 00:00:54 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 210169cd8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:27 ; elapsed = 00:00:54 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.10 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.10 Fast Optimization | Checksum: 1acf7a6a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:29 ; elapsed = 00:00:56 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1acf7a6a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:29 ; elapsed = 00:00:56 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.0642default:defaultZ30-746h px? 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: c24ab9c1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:38 ; elapsed = 00:01:02 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
M
8Phase 4.1 Post Commit Optimization | Checksum: c24ab9c1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:38 ; elapsed = 00:01:02 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: c24ab9c1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:38 ; elapsed = 00:01:03 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
E
0Phase 4.3 Placer Reporting | Checksum: c24ab9c1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:38 ; elapsed = 00:01:03 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.4 Final Placement Cleanup | Checksum: af7c6ce9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:03 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: af7c6ce9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:03 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: 94afe92e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:03 . Memory (MB): peak = 1532.668 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
12default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:442default:default2
00:01:062default:default2
1532.6682default:default2
0.0002default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:052default:default2
00:00:022default:default2
1532.6682default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]E:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_placed.dcp2default:defaultZ17-1381h px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.095 . Memory (MB): peak = 1532.668 ; gain = 0.000
*commonh px? 
?
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.214 . Memory (MB): peak = 1532.668 ; gain = 0.000
*commonh px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.061 . Memory (MB): peak = 1532.668 ; gain = 0.000
*commonh px? 


End Record