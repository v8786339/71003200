# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/21_Preload/SoC_HDMI/SoC_HDMI/PS_Embedded_Design.srcs/system.xdc

# Block Designs: bd/ps_subsys/ps_subsys.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys || ORIG_REF_NAME==ps_subsys} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_processing_system7_0_0 || ORIG_REF_NAME==ps_subsys_processing_system7_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_hdmi_tx_0_0/ps_subsys_axi_hdmi_tx_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_hdmi_tx_0_0 || ORIG_REF_NAME==ps_subsys_axi_hdmi_tx_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_iic_0_0 || ORIG_REF_NAME==ps_subsys_axi_iic_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_proc_sys_reset_0_0 || ORIG_REF_NAME==ps_subsys_proc_sys_reset_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_spdif_tx_0_0/ps_subsys_axi_spdif_tx_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_spdif_tx_0_0 || ORIG_REF_NAME==ps_subsys_axi_spdif_tx_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_interconnect_0_0/ps_subsys_axi_interconnect_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_interconnect_0_0 || ORIG_REF_NAME==ps_subsys_axi_interconnect_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_xlconcat_0_0/ps_subsys_xlconcat_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_xlconcat_0_0 || ORIG_REF_NAME==ps_subsys_xlconcat_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_vdma_0_0 || ORIG_REF_NAME==ps_subsys_axi_vdma_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_clkgen_0_0/ps_subsys_axi_clkgen_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_clkgen_0_0 || ORIG_REF_NAME==ps_subsys_axi_clkgen_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_interconnect_1_0/ps_subsys_axi_interconnect_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_interconnect_1_0 || ORIG_REF_NAME==ps_subsys_axi_interconnect_1_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_clk_wiz_0_0 || ORIG_REF_NAME==ps_subsys_clk_wiz_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_axi_uartlite_0_0 || ORIG_REF_NAME==ps_subsys_axi_uartlite_0_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_xbar_0/ps_subsys_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_xbar_0 || ORIG_REF_NAME==ps_subsys_xbar_0} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_auto_pc_1/ps_subsys_auto_pc_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_auto_pc_1 || ORIG_REF_NAME==ps_subsys_auto_pc_1} -quiet] -quiet

# IP: bd/ps_subsys/ip/ps_subsys_auto_pc_0/ps_subsys_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ps_subsys_auto_pc_0 || ORIG_REF_NAME==ps_subsys_auto_pc_0} -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/ps_subsys_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_processing_system7_0_0 || ORIG_REF_NAME==ps_subsys_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_hdmi_tx_0_0/axi_hdmi_tx_constr.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_hdmi_tx_0_0 || ORIG_REF_NAME==ps_subsys_axi_hdmi_tx_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_iic_0_0 || ORIG_REF_NAME==ps_subsys_axi_iic_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/ps_subsys_axi_iic_0_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_proc_sys_reset_0_0 || ORIG_REF_NAME==ps_subsys_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_proc_sys_reset_0_0 || ORIG_REF_NAME==ps_subsys_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/ps_subsys_proc_sys_reset_0_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_axi_spdif_tx_0_0/axi_spdif_tx_constr.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_spdif_tx_0_0 || ORIG_REF_NAME==ps_subsys_axi_spdif_tx_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_vdma_0_0 || ORIG_REF_NAME==ps_subsys_axi_vdma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_vdma_0_0 || ORIG_REF_NAME==ps_subsys_axi_vdma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/ps_subsys_axi_vdma_0_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_clk_wiz_0_0 || ORIG_REF_NAME==ps_subsys_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_clk_wiz_0_0 || ORIG_REF_NAME==ps_subsys_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_uartlite_0_0 || ORIG_REF_NAME==ps_subsys_axi_uartlite_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/ps_subsys_axi_uartlite_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ps_subsys_axi_uartlite_0_0 || ORIG_REF_NAME==ps_subsys_axi_uartlite_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/ps_subsys/ip/ps_subsys_xbar_0/ps_subsys_xbar_0_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_auto_pc_1/ps_subsys_auto_pc_1_ooc.xdc

# XDC: bd/ps_subsys/ip/ps_subsys_auto_pc_0/ps_subsys_auto_pc_0_ooc.xdc

# XDC: bd/ps_subsys/ps_subsys_ooc.xdc