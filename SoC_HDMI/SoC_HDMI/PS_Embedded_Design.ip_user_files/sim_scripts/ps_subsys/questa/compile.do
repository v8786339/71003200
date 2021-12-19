vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_1
vlib questa_lib/msim/axi_vip_v1_1_1
vlib questa_lib/msim/processing_system7_vip_v1_0_3
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_iic_v2_0_18
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/fifo_generator_v13_2_1
vlib questa_lib/msim/lib_fifo_v1_0_10
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/lib_bmg_v1_0_10
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_17
vlib questa_lib/msim/axi_vdma_v6_3_3
vlib questa_lib/msim/axi_uartlite_v2_0_19
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_15
vlib questa_lib/msim/axi_data_fifo_v2_1_14
vlib questa_lib/msim/axi_crossbar_v2_1_16
vlib questa_lib/msim/axi_protocol_converter_v2_1_15

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 questa_lib/msim/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 questa_lib/msim/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 questa_lib/msim/processing_system7_vip_v1_0_3
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_18 questa_lib/msim/axi_iic_v2_0_18
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 questa_lib/msim/lib_fifo_v1_0_10
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 questa_lib/msim/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_17 questa_lib/msim/axi_datamover_v5_1_17
vmap axi_vdma_v6_3_3 questa_lib/msim/axi_vdma_v6_3_3
vmap axi_uartlite_v2_0_19 questa_lib/msim/axi_uartlite_v2_0_19
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 questa_lib/msim/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 questa_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 questa_lib/msim/axi_crossbar_v2_1_16
vmap axi_protocol_converter_v2_1_15 questa_lib/msim/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/ps_subsys/ip/ps_subsys_processing_system7_0_0/sim/ps_subsys_processing_system7_0_0.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_csc_1_mul.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_csc_1_add.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_csc_1.v" \
"../../../bd/ps_subsys/ipshared/2085/common/up_xfer_status.v" \
"../../../bd/ps_subsys/ipshared/2085/common/up_xfer_cntrl.v" \
"../../../bd/ps_subsys/ipshared/2085/common/up_clock_mon.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_ss_444to422.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_rst.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_mem.v" \
"../../../bd/ps_subsys/ipshared/2085/common/ad_csc_RGB2CrYCb.v" \
"../../../bd/ps_subsys/ipshared/2085/common/up_hdmi_tx.v" \
"../../../bd/ps_subsys/ipshared/2085/common/up_axi.v" \
"../../../bd/ps_subsys/ipshared/2085/axi_hdmi_tx_vdma.v" \
"../../../bd/ps_subsys/ipshared/2085/axi_hdmi_tx_core.v" \
"../../../bd/ps_subsys/ipshared/2085/axi_hdmi_tx.v" \
"../../../bd/ps_subsys/ip/ps_subsys_axi_hdmi_tx_0_0/sim/ps_subsys_axi_hdmi_tx_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_18 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4185/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_subsys/ip/ps_subsys_axi_iic_0_0/sim/ps_subsys_axi_iic_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_subsys/ip/ps_subsys_proc_sys_reset_0_0/sim/ps_subsys_proc_sys_reset_0_0.vhd" \
"../../../bd/ps_subsys/ipshared/0229/common/dma_fifo.vhd" \
"../../../bd/ps_subsys/ipshared/0229/common/pl330_dma_fifo.vhd" \
"../../../bd/ps_subsys/ipshared/0229/common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/ps_subsys/ipshared/0229/common/axi_ctrlif.vhd" \
"../../../bd/ps_subsys/ipshared/0229/tx_package.vhd" \
"../../../bd/ps_subsys/ipshared/0229/tx_encoder.vhd" \
"../../../bd/ps_subsys/ipshared/0229/axi_spdif_tx.vhd" \
"../../../bd/ps_subsys/ip/ps_subsys_axi_spdif_tx_0_0/sim/ps_subsys_axi_spdif_tx_0_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/ps_subsys/ip/ps_subsys_xlconcat_0_0/sim/ps_subsys_xlconcat_0_0.v" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_17 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_3 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_3 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_subsys/ip/ps_subsys_axi_vdma_0_0/sim/ps_subsys_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/ps_subsys/ipshared/af2d/common/up_drp_cntrl.v" \
"../../../bd/ps_subsys/ipshared/af2d/common/up_clkgen.v" \
"../../../bd/ps_subsys/ipshared/af2d/common/ad_mmcm_drp.v" \
"../../../bd/ps_subsys/ipshared/af2d/axi_clkgen.v" \
"../../../bd/ps_subsys/ip/ps_subsys_axi_clkgen_0_0/sim/ps_subsys_axi_clkgen_0_0.v" \
"../../../bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ps_subsys/ip/ps_subsys_clk_wiz_0_0/ps_subsys_clk_wiz_0_0.v" \

vcom -work axi_uartlite_v2_0_19 -64 -93 \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_subsys/ip/ps_subsys_axi_uartlite_0_0/sim/ps_subsys_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/ps_subsys/ip/ps_subsys_xbar_0/sim/ps_subsys_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_15 -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/ec67/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/02c8/hdl/verilog" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/1313/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/f8d8/hdl" "+incdir+../../../../PS_Embedded_Design.srcs/sources_1/bd/ps_subsys/ipshared/4868" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/ps_subsys/ip/ps_subsys_auto_pc_1/sim/ps_subsys_auto_pc_1.v" \
"../../../bd/ps_subsys/ip/ps_subsys_auto_pc_0/sim/ps_subsys_auto_pc_0.v" \
"../../../bd/ps_subsys/sim/ps_subsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

