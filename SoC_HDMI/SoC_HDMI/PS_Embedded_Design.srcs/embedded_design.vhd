------------------------------------------------------------------------------
--      _______      _______                                                --
--     / ____\ \    / /_   _|                                               --
--    | |  __ \ \  / /  | |                                                 --
--    | | |_ | \ \/ /   | |                                                 --
--    | |__| |  \  /   _| |_                                                --
--     \_____|   \/   |_____|                                               --
--                                                                          --
-- Copyright (c) 2012-2017 Hangzhou Yanman Co. Ltd. All rights reserved.    --
--                                                                          --
-- THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY   --
-- KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE      --
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A               --
-- PARTICULAR PURPOSE.                                                      --
--                                                                          --
-- Website: http://www.gvi-tech.com/                                        --
-- Email: support@gvi-tech.com                                              --
--                                                                          --
------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity embedded_design is
port (
	DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
	DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
	DDR_cas_n : inout STD_LOGIC;
	DDR_ck_n : inout STD_LOGIC;
	DDR_ck_p : inout STD_LOGIC;
	DDR_cke : inout STD_LOGIC;
	DDR_cs_n : inout STD_LOGIC;
	DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
	DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
	DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
	DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
	DDR_odt : inout STD_LOGIC;
	DDR_ras_n : inout STD_LOGIC;
	DDR_reset_n : inout STD_LOGIC;
	DDR_we_n : inout STD_LOGIC;
	FIXED_IO_ddr_vrn : inout STD_LOGIC;
	FIXED_IO_ddr_vrp : inout STD_LOGIC;
	FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
	FIXED_IO_ps_clk : inout STD_LOGIC;
	FIXED_IO_ps_porb : inout STD_LOGIC;
	FIXED_IO_ps_srstb : inout STD_LOGIC;
	hdmi_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
	hdmi_data_e : out STD_LOGIC;
	hdmi_hsync : out STD_LOGIC;
	hdmi_out_clk : out STD_LOGIC;
	hdmi_vsync : out STD_LOGIC;
	iic_scl : inout STD_LOGIC;
	iic_sda : inout STD_LOGIC;
	pl_uart_rxd : in STD_LOGIC;
	pl_uart_txd : out STD_LOGIC;
	LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
	push_buttons : in STD_LOGIC_VECTOR ( 2 downto 0 );
	dip_switches : in STD_LOGIC_VECTOR ( 3 downto 0 );
	spdif : out STD_LOGIC
);
end embedded_design;

architecture STRUCTURE of embedded_design is

	component ps_subsys is
	port (
		DDR_cas_n : inout STD_LOGIC;
		DDR_cke : inout STD_LOGIC;
		DDR_ck_n : inout STD_LOGIC;
		DDR_ck_p : inout STD_LOGIC;
		DDR_cs_n : inout STD_LOGIC;
		DDR_reset_n : inout STD_LOGIC;
		DDR_odt : inout STD_LOGIC;
		DDR_ras_n : inout STD_LOGIC;
		DDR_we_n : inout STD_LOGIC;
		DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
		DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
		DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
		DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
		DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
		DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
		FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
		FIXED_IO_ddr_vrn : inout STD_LOGIC;
		FIXED_IO_ddr_vrp : inout STD_LOGIC;
		FIXED_IO_ps_srstb : inout STD_LOGIC;
		FIXED_IO_ps_clk : inout STD_LOGIC;
		FIXED_IO_ps_porb : inout STD_LOGIC;
		ps_intr_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_6 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_9 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_10 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_12 : in STD_LOGIC_VECTOR ( 0 to 0 );
		ps_intr_13 : in STD_LOGIC_VECTOR ( 0 to 0 );
		IIC_MAIN_scl_i : in STD_LOGIC;
		IIC_MAIN_scl_o : out STD_LOGIC;
		IIC_MAIN_scl_t : out STD_LOGIC;
		IIC_MAIN_sda_i : in STD_LOGIC;
		IIC_MAIN_sda_o : out STD_LOGIC;
		IIC_MAIN_sda_t : out STD_LOGIC;
		pl_uart_rxd : in STD_LOGIC;
		pl_uart_txd : out STD_LOGIC;
		hdmi_out_clk : out STD_LOGIC;
		hdmi_hsync : out STD_LOGIC;
		hdmi_vsync : out STD_LOGIC;
		hdmi_data_e : out STD_LOGIC;
		hdmi_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
		spdif : out STD_LOGIC;
		CLK100M : out STD_LOGIC
	);
	end component ps_subsys;
	
	component IOBUF is
	port (
		I : in STD_LOGIC;
		O : out STD_LOGIC;
		T : in STD_LOGIC;
		IO : inout STD_LOGIC
	);
	end component IOBUF;
	
	signal iic_main_scl_i	: STD_LOGIC;
	signal iic_main_scl_o	: STD_LOGIC;
	signal iic_main_scl_t	: STD_LOGIC;
	signal iic_main_sda_i	: STD_LOGIC;
	signal iic_main_sda_o	: STD_LOGIC;
	signal iic_main_sda_t	: STD_LOGIC;
	
	signal ps_intrs			: STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	
	signal CLK100M			: STD_LOGIC;
	signal LED_int			: std_logic_vector(3 downto 0) := "0000";
	signal CLK_CNT			: std_logic_vector(31 downto 0) := (others=>'0');
	
begin

	process(CLK100M) 
	begin
	if( rising_edge(CLK100M) ) then
		CLK_CNT <= CLK_CNT + '1';
		
		if( push_buttons="00" ) then
			LED <= dip_switches;
		elsif( push_buttons="01" ) then
			LED <= X"F";
		elsif( push_buttons="10" ) then
			LED <= X"0";
		else
			LED <= CLK_CNT(25) & CLK_CNT(25) & CLK_CNT(25) & CLK_CNT(25);
		end if;
	end if;
	end process;

	iic_main_scl_iobuf: component IOBUF
	port map (
		I => iic_main_scl_o,
		IO => iic_scl,
		O => iic_main_scl_i,
		T => iic_main_scl_t
	);
	
	iic_main_sda_iobuf: component IOBUF
	port map (
		I => iic_main_sda_o,
		IO => iic_sda,
		O => iic_main_sda_i,
		T => iic_main_sda_t
	);
	
	ps_subsys_i: component ps_subsys
	port map (
		DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
		DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
		DDR_cas_n => DDR_cas_n,
		DDR_ck_n => DDR_ck_n,
		DDR_ck_p => DDR_ck_p,
		DDR_cke => DDR_cke,
		DDR_cs_n => DDR_cs_n,
		DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
		DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
		DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
		DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
		DDR_odt => DDR_odt,
		DDR_ras_n => DDR_ras_n,
		DDR_reset_n => DDR_reset_n,
		DDR_we_n => DDR_we_n,
		FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
		FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
		FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
		FIXED_IO_ps_clk => FIXED_IO_ps_clk,
		FIXED_IO_ps_porb => FIXED_IO_ps_porb,
		FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
		IIC_MAIN_scl_i => iic_main_scl_i,
		IIC_MAIN_scl_o => iic_main_scl_o,
		IIC_MAIN_scl_t => iic_main_scl_t,
		IIC_MAIN_sda_i => iic_main_sda_i,
		IIC_MAIN_sda_o => iic_main_sda_o,
		IIC_MAIN_sda_t => iic_main_sda_t,
		ps_intr_0(0) => ps_intrs(0),
		ps_intr_1(0) => ps_intrs(1),
		ps_intr_2(0) => ps_intrs(2),
		ps_intr_3(0) => ps_intrs(3),
		ps_intr_4(0) => ps_intrs(4),
		ps_intr_5(0) => ps_intrs(5),
		ps_intr_6(0) => ps_intrs(6),
		ps_intr_7(0) => ps_intrs(7),
		ps_intr_8(0) => ps_intrs(8),
		ps_intr_9(0) => ps_intrs(9),
		ps_intr_10(0) => ps_intrs(10),
		ps_intr_11(0) => ps_intrs(11),
		ps_intr_12(0) => ps_intrs(12),
		ps_intr_13(0) => ps_intrs(13),
		hdmi_data(15 downto 0) => hdmi_data(15 downto 0),
		hdmi_data_e => hdmi_data_e,
		hdmi_hsync => hdmi_hsync,
		hdmi_out_clk => hdmi_out_clk,
		hdmi_vsync => hdmi_vsync,
		pl_uart_rxd => pl_uart_rxd,
		pl_uart_txd => pl_uart_txd,
		spdif => spdif,
		CLK100M => CLK100M
	);
	
end STRUCTURE;
