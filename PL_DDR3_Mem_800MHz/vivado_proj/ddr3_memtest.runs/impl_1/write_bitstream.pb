
|
Command: %s
53*	vivadotcl2K
7write_bitstream -force -no_partial_bitfile TestDemo.bit2default:defaultZ4-113h px? 
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
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-17092default:default2*
Clock output buffering2default:default2?
?PLLE2_ADV connectivity violation. The signal u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/pll_clk3_out on the u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i/CLKOUT3 pin of u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i does not drive the same kind of BUFFER load as the other CLKOUT pins. Routing from the different buffer types will not be phase aligned.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	RTSTAT-102default:default2%
No routable loads2default:default2?
?31 net(s) have no routable loads. The problem bus(es) and/or net(s) are dbg_hub/inst/RUNTEST, dbg_hub/inst/TCK, dbg_hub/inst/TMS, dbg_hub/inst/UPDATE_temp_i, dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v2_0_2_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i, dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg[2:0], dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1], dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1], dbg_hub/inst/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture[0], dbg_hub/inst/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck[0], dbg_hub/inst/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_flags[7:0], dbg_hub/inst/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest[0], dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v2_0_2_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i, dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v2_0_2_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i, dbg_hub/inst/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v2_0_2_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] (the first 15 of 22 listed).2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
ZPS7-12default:default2&
PS7 block required2default:default2s
_The PS7 cell must be used in this Zynq design in order to enable correct default configuration.2default:defaultZ23-20h px? 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 3 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
g
%Bitstream compression saved %s bits.
26*	bitstream2
	1131481602default:defaultZ40-26h px? 
_
Writing bitstream %s...
11*	bitstream2"
./TestDemo.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
s
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2z
fE:/workspace/KXZ7C01/DDR3_Mem_900MHz/vivado_proj/ddr3_memtest.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Wed Nov 01 18:25:01 20172default:default2I
5C:/Xilinx/Vivado/2016.4/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
902default:default2
62default:default2
12default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:342default:default2
00:00:352default:default2
2476.2772default:default2
557.3092default:defaultZ17-268h px? 
e
Unable to parse hwdef file %s162*	vivadotcl2"
TestDemo.hwdef2default:defaultZ4-395h px? 


End Record