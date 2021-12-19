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
	iic_scl : inout STD_LOGIC;
	iic_sda : inout STD_LOGIC;
	pl_uart_rxd : in STD_LOGIC;
	pl_uart_txd : out STD_LOGIC;
	LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
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
		IIC_MAIN_scl_i : in STD_LOGIC;
		IIC_MAIN_scl_o : out STD_LOGIC;
		IIC_MAIN_scl_t : out STD_LOGIC;
		IIC_MAIN_sda_i : in STD_LOGIC;
		IIC_MAIN_sda_o : out STD_LOGIC;
		IIC_MAIN_sda_t : out STD_LOGIC;
		pl_uart_rxd : in STD_LOGIC;
		pl_uart_txd : out STD_LOGIC;
        FCLK_CLK100M : out STD_LOGIC
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
        
    component gvi_breathing_led is
    Generic(
        G_LED_POSITIVE_POLARIZATION    : integer := 1;
        G_CLKIN_FREQUENCY_MHZ        : integer := 100;
        G_breathing_Period_MS        : integer := 3000
    );
    port 
    (
        CLK                : in  std_logic;
        LED                : out std_logic
    );
    end component;
	
	signal iic_main_scl_i	: STD_LOGIC;
	signal iic_main_scl_o	: STD_LOGIC;
	signal iic_main_scl_t	: STD_LOGIC;
	signal iic_main_sda_i	: STD_LOGIC;
	signal iic_main_sda_o	: STD_LOGIC;
	signal iic_main_sda_t	: STD_LOGIC;
	  
    signal BreathLED        : STD_LOGIC;
    signal Clk100M          : STD_LOGIC;
begin

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
		pl_uart_rxd => pl_uart_rxd,
		pl_uart_txd => pl_uart_txd,
        FCLK_CLK100M => Clk100M
	);
                    
    Inst_gvi_breathing_led : gvi_breathing_led
    Generic Map(
        G_LED_POSITIVE_POLARIZATION    => 1,
        G_CLKIN_FREQUENCY_MHZ        => 100,
        G_breathing_Period_MS        => 3000
    )
    port map 
    (
        CLK    => Clk100M,
        LED    => BreathLED
    );
    
    LED <= BreathLED & BreathLED & BreathLED & BreathLED;
	
end STRUCTURE;
