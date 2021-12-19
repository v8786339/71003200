//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Jan 25 16:00:38 2020
//Host        : HIH-D-6446 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target ps_subsys_wrapper.bd
//Design      : ps_subsys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_subsys_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK100M,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IIC_MAIN_scl_io,
    IIC_MAIN_sda_io,
    pl_uart_rxd,
    pl_uart_txd);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK100M;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout IIC_MAIN_scl_io;
  inout IIC_MAIN_sda_io;
  input pl_uart_rxd;
  output pl_uart_txd;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK100M;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire IIC_MAIN_scl_i;
  wire IIC_MAIN_scl_io;
  wire IIC_MAIN_scl_o;
  wire IIC_MAIN_scl_t;
  wire IIC_MAIN_sda_i;
  wire IIC_MAIN_sda_io;
  wire IIC_MAIN_sda_o;
  wire IIC_MAIN_sda_t;
  wire pl_uart_rxd;
  wire pl_uart_txd;

  IOBUF IIC_MAIN_scl_iobuf
       (.I(IIC_MAIN_scl_o),
        .IO(IIC_MAIN_scl_io),
        .O(IIC_MAIN_scl_i),
        .T(IIC_MAIN_scl_t));
  IOBUF IIC_MAIN_sda_iobuf
       (.I(IIC_MAIN_sda_o),
        .IO(IIC_MAIN_sda_io),
        .O(IIC_MAIN_sda_i),
        .T(IIC_MAIN_sda_t));
  ps_subsys ps_subsys_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK100M(FCLK_CLK100M),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC_MAIN_scl_i(IIC_MAIN_scl_i),
        .IIC_MAIN_scl_o(IIC_MAIN_scl_o),
        .IIC_MAIN_scl_t(IIC_MAIN_scl_t),
        .IIC_MAIN_sda_i(IIC_MAIN_sda_i),
        .IIC_MAIN_sda_o(IIC_MAIN_sda_o),
        .IIC_MAIN_sda_t(IIC_MAIN_sda_t),
        .pl_uart_rxd(pl_uart_rxd),
        .pl_uart_txd(pl_uart_txd));
endmodule
