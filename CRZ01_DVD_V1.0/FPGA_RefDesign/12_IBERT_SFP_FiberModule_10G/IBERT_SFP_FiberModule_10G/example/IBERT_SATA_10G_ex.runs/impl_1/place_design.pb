
?
?No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px? 
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
00:00:00.0242default:default2
1316.5822default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0252default:default2
1316.5822default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: f7283be1
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 183a4579f
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 183a4579f
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 183a4579f
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:08 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
D
/Phase 2 Global Placement | Checksum: 1c3340785
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 1c3340785
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1a6d4f422
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:19 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 276114e62
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:19 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 20b54d36b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:19 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 2842aae38
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:19 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 208f01386
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:25 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 21036e85e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:25 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1c5840250
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:25 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1c5840250
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:25 . Memory (MB): peak = 1346.219 ; gain = 29.6372default:defaulth px? 
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
0.6402default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 11a45b998
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 11a45b998
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 11a45b998
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 11a45b998
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 13b0029e6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 13b0029e6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
=
(Ending Placer Task | Checksum: 80d33d28
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:28 . Memory (MB): peak = 1356.891 ; gain = 40.3092default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:00:462default:default2
00:00:312default:default2
1356.8912default:default2
40.3092default:defaultZ17-268h px? 
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
00:00:042default:default2
00:00:012default:default2
1356.8912default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
uE:/workspace/KXZ7C01/ProductCD/IBERT_SATA_10G/example/IBERT_SATA_10G_ex.runs/impl_1/example_IBERT_SATA_10G_placed.dcp2default:defaultZ17-1381h px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.109 . Memory (MB): peak = 1356.891 ; gain = 0.000
*commonh px? 
?
treport_utilization: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.254 . Memory (MB): peak = 1356.891 ; gain = 0.000
*commonh px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.043 . Memory (MB): peak = 1356.891 ; gain = 0.000
*commonh px? 


End Record