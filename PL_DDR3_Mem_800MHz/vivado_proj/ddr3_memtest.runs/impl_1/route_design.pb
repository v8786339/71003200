
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?	
Rule violation (%s) %s - %s
20*drc2
PLCK-232default:default2'
Clock Placer Checks2default:default2?
?Sub-optimal placement for a clock-capable IO pin and MMCM pair. 
Resolution: A dedicated routing path between the two can be used if: (a) The clock-capable IO (CCIO) is placed on a CCIO capable site (b) The MMCM is placed in the same clock region as the CCIO pin. If the IOB is driving multiple MMCMs, all MMCMs must be placed in the same clock region, one clock region above or one clock region below the IOB. Both the above conditions must be met at the same time, else it may lead to longer and less predictable clock insertion delays.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk (IBUFDS.O) is locked to H9
	u_mig_7series_0/u_mig_7series_0_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X0Y0
2default:defaultZ23-20h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: e0893aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:38 ; elapsed = 00:01:23 . Memory (MB): peak = 1757.504 ; gain = 224.8362default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: e0893aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:24 . Memory (MB): peak = 1757.504 ; gain = 224.8362default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: e0893aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:24 . Memory (MB): peak = 1757.504 ; gain = 224.8362default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: e0893aa4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:24 . Memory (MB): peak = 1757.504 ; gain = 224.8362default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1a2eeb1fc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:51 ; elapsed = 00:01:34 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-0.005 | TNS=-0.005 | WHS=-0.474 | THS=-1432.453|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1f4928a52
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:01:36 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 1ba4193a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:59 ; elapsed = 00:01:38 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 4.1.1 Update Timing | Checksum: 1a06d8ec7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:09 ; elapsed = 00:01:44 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.005 | TNS=-0.005 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px? 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
G
2Phase 4.1.2.1 Update Timing | Checksum: 1c34b0c2e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:09 ; elapsed = 00:01:44 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px? 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 15f6a8d91
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:45 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 16aa7dd1e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:11 ; elapsed = 00:01:45 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 16aa7dd1e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:11 ; elapsed = 00:01:45 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 4.2.1 Update Timing | Checksum: b4965516
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:12 ; elapsed = 00:01:46 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.005 | TNS=-0.005 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: a6647553
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:13 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: a6647553
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:13 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: ba6f09e2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.005 | TNS=-0.005 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: ba6f09e2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: ba6f09e2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: ba6f09e2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 177df5a1f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:15 ; elapsed = 00:01:48 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.005 | TNS=-0.005 | WHS=0.026  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: 8effffbd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:15 ; elapsed = 00:01:48 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: 8effffbd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:15 ; elapsed = 00:01:48 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: e20e73f4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:16 ; elapsed = 00:01:49 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: e20e73f4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:16 ; elapsed = 00:01:49 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 169fbc485
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:50 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-0.005 | TNS=-0.005 | WHS=0.026  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 169fbc485
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:50 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
=
Router Completed Successfully
16*routeZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:50 . Memory (MB): peak = 1866.406 ; gain = 333.7382default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722default:default2
32default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:232default:default2
00:01:532default:default2
1866.4062default:default2
333.7382default:defaultZ17-268h px? 
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
00:00:062default:default2
00:00:022default:default2
1866.4062default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]E:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_routed.dcp2default:defaultZ17-1381h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
aE:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_drc_routed.rptaE:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_drc_routed.rpt2default:default8Z2-168h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
mE:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_methodology_drc_routed.rptmE:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/TestDemo_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:102default:default2
00:00:062default:default2
1866.4062default:default2
0.0002default:defaultZ17-268h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
Command: %s
53*	vivadotcl2?
preport_power -file TestDemo_power_routed.rpt -pb TestDemo_power_summary_routed.pb -rpx TestDemo_power_routed.rpx2default:defaultZ4-113h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822default:default2
32default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 


End Record