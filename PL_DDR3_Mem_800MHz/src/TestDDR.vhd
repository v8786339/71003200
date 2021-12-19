------------------------------------------------------------------------------
--      _______      _______                                                --
--     / ____\ \    / /_   _|                                               --
--    | |  __ \ \  / /  | |                                                 --
--    | | |_ | \ \/ /   | |                                                 --
--    | |__| |  \  /   _| |_                                                --
--     \_____|   \/   |_____|                                               --
--                                                                          --
-- Copyright (c) 2012-2016 Hangzhou Yanman Co. Ltd.  All rights reserved.   --
-- This code/software is controlled by a written license agreement.         --
-- Unauthorized Reproduction or Use is Expressly Prohibited.                --
--                                                                          --
-- THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY   --
-- KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE      --
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A               --
-- PARTICULAR PURPOSE.                                                      --
--                                                                          --
-- Website: www.gvi-tech.com                                                --
-- Email:   support@gvi-tech.com                                            --
--                                                                          --
------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

library unisim;
use unisim.vcomponents.all;

entity TestDemo is
Generic(
    C_MEMADDR_WIDTH             : integer := 15
);
port
(
	sys_reset_i                    : IN    std_logic;
	SysCLK_200M_P                  : in    std_logic;
	SysCLK_200M_N                  : in    std_logic;
	-- Inouts
	ddr3_dq                        : inout std_logic_vector(31 downto 0);
	ddr3_dqs_p                     : inout std_logic_vector(3 downto 0);
	ddr3_dqs_n                     : inout std_logic_vector(3 downto 0);

	-- Outputs
	ddr3_addr                      : out   std_logic_vector(C_MEMADDR_WIDTH-1 downto 0);
	ddr3_ba                        : out   std_logic_vector(2 downto 0);
	ddr3_ras_n                     : out   std_logic;
	ddr3_cas_n                     : out   std_logic;
	ddr3_we_n                      : out   std_logic;
	ddr3_reset_n                   : out   std_logic;
	ddr3_ck_p                      : out   std_logic_vector(0 downto 0);
	ddr3_ck_n                      : out   std_logic_vector(0 downto 0);
	ddr3_cke                       : out   std_logic_vector(0 downto 0);
	ddr3_cs_n                      : out   std_logic_vector(0 downto 0);
	ddr3_dm                        : out   std_logic_vector(3 downto 0);
	ddr3_odt                       : out   std_logic_vector(0 downto 0);

	LED                            : out   std_logic_vector(3 downto 0)
);

end entity TestDemo;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of TestDemo is

	FUNCTION get_wordlength (max_value : integer) RETURN integer IS
	BEGIN
	RETURN integer( ceil(log2(real(max_value))) );
	END FUNCTION get_wordlength;
		
	constant C_MEMTEST_BYTESIZE		: integer := 1024*1024*1024;
	constant C_MEMTEST_STARTADDR	: std_logic_vector(31 downto 0) := X"00000000";
	constant C_MEMTEST_ENDADDR		: std_logic_vector(31 downto 0) := C_MEMTEST_STARTADDR + std_logic_vector( to_unsigned(C_MEMTEST_BYTESIZE, 32));

	constant C_BURST_LEN			: integer := 8192;
	constant C_DATA_WIDTH			: integer := 256;
	constant C_BURST_NBeats			: integer := C_BURST_LEN / (C_DATA_WIDTH/8);
	constant C_BURST_NBeats_LOG2	: integer := get_wordlength(C_BURST_NBeats);
	constant C_ERRCNT_WIDTH			: integer := 25; --  get_wordlength(C_MEMTEST_BYTESIZE/ (C_DATA_WIDTH/8));
	

	component mig_7series_0
	port(
		ddr3_dq       : inout std_logic_vector(31 downto 0);
		ddr3_dqs_p    : inout std_logic_vector(3 downto 0);
		ddr3_dqs_n    : inout std_logic_vector(3 downto 0);

		ddr3_addr     : out   std_logic_vector(C_MEMADDR_WIDTH-1 downto 0);
		ddr3_ba       : out   std_logic_vector(2 downto 0);
		ddr3_ras_n    : out   std_logic;
		ddr3_cas_n    : out   std_logic;
		ddr3_we_n     : out   std_logic;
		ddr3_reset_n  : out   std_logic;
		ddr3_ck_p     : out   std_logic_vector(0 downto 0);
		ddr3_ck_n     : out   std_logic_vector(0 downto 0);
		ddr3_cke      : out   std_logic_vector(0 downto 0);
		ddr3_cs_n     : out   std_logic_vector(0 downto 0);
		ddr3_dm       : out   std_logic_vector(3 downto 0);
		ddr3_odt      : out   std_logic_vector(0 downto 0);
		
		-- user interface signals
		ui_clk						: out std_logic;
		ui_clk_sync_rst				: out std_logic;
		mmcm_locked					: out std_logic;
		
		aresetn						: in  std_logic;
		app_sr_req					: in  std_logic;
		app_ref_req					: in  std_logic;
		app_zq_req					: in  std_logic;
		app_sr_active				: out std_logic;
		app_ref_ack					: out std_logic;
		app_zq_ack					: out std_logic;
		
		-- Slave Interface Write Address Ports
		s_axi_awid					: in  std_logic_vector(3 downto 0);
		s_axi_awaddr				: in  std_logic_vector(29 downto 0);
		s_axi_awlen					: in  std_logic_vector(7 downto 0);
		s_axi_awsize				: in  std_logic_vector(2 downto 0);
		s_axi_awburst				: in  std_logic_vector(1 downto 0);
		s_axi_awlock				: in  std_logic_vector(0 downto 0);
		s_axi_awcache				: in  std_logic_vector(3 downto 0);
		s_axi_awprot				: in  std_logic_vector(2 downto 0);
		s_axi_awqos					: in  std_logic_vector(3 downto 0);
		s_axi_awvalid				: in  std_logic;
		s_axi_awready				: out std_logic;
		
		-- Slave Interface Write Data Ports
		s_axi_wdata					: in  std_logic_vector(255 downto 0);
		s_axi_wstrb					: in  std_logic_vector(31 downto 0);
		s_axi_wlast					: in  std_logic;
		s_axi_wvalid				: in  std_logic;
		s_axi_wready				: out std_logic;
		
		-- Slave Interface Write Response Ports
		s_axi_bready				: in  std_logic;
		s_axi_bid					: out std_logic_vector(3 downto 0);
		s_axi_bresp					: out std_logic_vector(1 downto 0);
		s_axi_bvalid				: out std_logic;
		
		-- Slave Interface Read Address Ports
		s_axi_arid					: in  std_logic_vector(3 downto 0);
		s_axi_araddr				: in  std_logic_vector(29 downto 0);
		s_axi_arlen					: in  std_logic_vector(7 downto 0);
		s_axi_arsize				: in  std_logic_vector(2 downto 0);
		s_axi_arburst				: in  std_logic_vector(1 downto 0);
		s_axi_arlock				: in  std_logic_vector(0 downto 0);
		s_axi_arcache				: in  std_logic_vector(3 downto 0);
		s_axi_arprot				: in  std_logic_vector(2 downto 0);
		s_axi_arqos					: in  std_logic_vector(3 downto 0);
		s_axi_arvalid				: in  std_logic;
		s_axi_arready				: out std_logic;
		
		-- Slave Interface Read Data Ports
		s_axi_rready				: in  std_logic;
		s_axi_rid					: out std_logic_vector(3 downto 0);
		s_axi_rdata					: out std_logic_vector(255 downto 0);
		s_axi_rresp					: out std_logic_vector(1 downto 0);
		s_axi_rlast					: out std_logic;
		s_axi_rvalid				: out std_logic;
		
		init_calib_complete			: out std_logic;
		-- System Clock Ports
		sys_clk_p					: in  std_logic;
        sys_clk_n                   : in  std_logic;
		sys_rst						: in  std_logic
	);
	end component mig_7series_0;
	
	
	signal aresetn					: std_logic;
	signal app_clk					: std_logic;
	signal app_reset				: std_logic;
	signal userlogic_reset			: std_logic;
	signal s_axi_awaddr				: std_logic_vector(29 downto 0);
	signal s_axi_awaddr_nxt			: std_logic_vector(29 downto 0);
	signal s_axi_awlen				: std_logic_vector(7 downto 0);
	signal s_axi_awvalid			: std_logic;
	signal s_axi_awready			: std_logic;
	
	signal s_axi_wdata				: std_logic_vector(C_DATA_WIDTH-1 downto 0);
	signal s_axi_wdata_nxt			: std_logic_vector(C_DATA_WIDTH-1 downto 0);
	signal s_axi_wlast				: std_logic;
	signal s_axi_wvalid				: std_logic;
	signal s_axi_wready				: std_logic;
	
	signal s_axi_wdata_part			: std_logic_vector(31 downto 0);
	signal s_axi_wdata_part_nxt		: std_logic_vector(31 downto 0);
	
	signal s_axi_araddr				: std_logic_vector(29 downto 0);
	signal s_axi_araddr_nxt			: std_logic_vector(29 downto 0);
	signal s_axi_arlen				: std_logic_vector(7 downto 0);
	signal s_axi_arvalid			: std_logic;
	signal s_axi_arready			: std_logic;
	
	signal s_axi_rdata				: std_logic_vector(C_DATA_WIDTH-1 downto 0);
	signal s_axi_rlast				: std_logic;
	signal s_axi_rvalid				: std_logic;
	signal s_axi_rready				: std_logic;
	
	signal s_axi_testdata			: std_logic_vector(31 downto 0);
	signal s_axi_testdata_nxt		: std_logic_vector(31 downto 0);
	
	signal init_calib_complete		: std_logic;
	signal mmcm_locked				: std_logic;
	
	type SM_T is ( ST_IDLE, ST_WR_CMD, ST_WR_DATA, ST_RD_CMD, ST_RD_DATA );
	signal SM			: SM_T := ST_IDLE;
	signal SM_nxt		: SM_T := ST_IDLE;
    signal softstart_cnt            : std_logic_vector(23 downto 0) := (others=>'0');
    signal softstart                : std_logic := '0';
	signal beat_cnt					: std_logic_vector(C_BURST_NBeats_LOG2-1 downto 0) := (others=>'0');
	signal beat_cnt_nxt				: std_logic_vector(C_BURST_NBeats_LOG2-1 downto 0) := (others=>'0');
	signal error_cnt				: std_logic_vector(C_ERRCNT_WIDTH-1 downto 0) := (others=>'0');
	signal error_cnt_nxt			: std_logic_vector(C_ERRCNT_WIDTH-1 downto 0) := (others=>'0');
	signal led_cnt					: std_logic_vector(23 downto 0) := (others=>'0');
	signal led_cnt_nxt				: std_logic_vector(23 downto 0) := (others=>'0');
    signal error_detected           : std_logic := '0';
    signal error_detected_nxt       : std_logic := '0';
	
	signal dbg_s_axi_awaddr				: std_logic_vector(29 downto 0);
	signal dbg_s_axi_awvalid			: std_logic;
	signal dbg_s_axi_awready		    : std_logic;	
	signal dbg_s_axi_wdata				: std_logic_vector(15 downto 0);
	signal dbg_s_axi_wlast				: std_logic;
	signal dbg_s_axi_wvalid				: std_logic;
	signal dbg_s_axi_wready				: std_logic;
	
	signal dbg_s_axi_araddr				: std_logic_vector(29 downto 0);
	signal dbg_s_axi_arvalid			: std_logic;
	signal dbg_s_axi_arready			: std_logic;	
	signal dbg_s_axi_rdata				: std_logic_vector(15 downto 0);
	signal dbg_s_axi_rlast				: std_logic;
	signal dbg_s_axi_rvalid				: std_logic;
	signal dbg_s_axi_rready				: std_logic;
	
	signal LED_sig						: std_logic := '0';
	signal sys_reset					: std_logic := '0';
	signal dbg_sys_reset				: std_logic := '0';
	signal dbg_app_reset				: std_logic := '0';
	signal dbg_init_calib_complete		: std_logic;
	signal dbg_mmcm_locked				: std_logic;
	
	signal dbg_SM						: SM_T;
	signal dbg_error_cnt				: std_logic_vector(C_ERRCNT_WIDTH-1 downto 0) := (others=>'0');
	
	attribute mark_debug : string;	
	attribute mark_debug of dbg_s_axi_awaddr : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_awvalid : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_awready : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_wdata : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_wlast : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_wvalid : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_wready : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_araddr : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_arvalid : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_arready : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_rdata : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_rlast : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_rvalid : signal is "TRUE";
	attribute mark_debug of dbg_s_axi_rready : signal is "TRUE";
	attribute mark_debug of dbg_SM : signal is "TRUE";
	attribute mark_debug of dbg_error_cnt : signal is "TRUE";
	attribute mark_debug of dbg_sys_reset : signal is "TRUE";
	attribute mark_debug of dbg_app_reset : signal is "TRUE";
	attribute mark_debug of dbg_init_calib_complete : signal is "TRUE";
	attribute mark_debug of dbg_mmcm_locked : signal is "TRUE";
	
	
begin

	LED <= LED_sig & LED_sig & LED_sig & LED_sig;
	sys_reset <= sys_reset_i;

	process(app_clk)
	begin
	if( rising_edge(app_clk) ) then
		dbg_s_axi_awaddr <= s_axi_awaddr;
		dbg_s_axi_awvalid <= s_axi_awvalid;
		dbg_s_axi_awready <= s_axi_awready;
		dbg_s_axi_wlast <= s_axi_wlast;
		dbg_s_axi_wvalid <= s_axi_wvalid;
		dbg_s_axi_wready <= s_axi_wready;
		dbg_s_axi_wdata <= s_axi_wdata(15 downto 0);
		
		dbg_s_axi_araddr <= s_axi_araddr;
		dbg_s_axi_arvalid <= s_axi_arvalid;
		dbg_s_axi_arready <= s_axi_arready;
		dbg_s_axi_rlast <= s_axi_rlast;
		dbg_s_axi_rvalid <= s_axi_rvalid;
		dbg_s_axi_rready <= s_axi_rready;
		dbg_s_axi_rdata <= s_axi_rdata(15 downto 0);
		
		dbg_SM <= SM;
		dbg_error_cnt <= error_cnt;
		dbg_sys_reset <= sys_reset;
		dbg_app_reset <= app_reset;
		dbg_init_calib_complete <= init_calib_complete;
		dbg_mmcm_locked <= mmcm_locked;
	end if;
	end process;


	u_mig_7series_0 : mig_7series_0
	port map (
		-- Memory interface ports
		ddr3_addr                      => ddr3_addr,
		ddr3_ba                        => ddr3_ba,
		ddr3_cas_n                     => ddr3_cas_n,
		ddr3_ck_n                      => ddr3_ck_n,
		ddr3_ck_p                      => ddr3_ck_p,
		ddr3_cke                       => ddr3_cke,
		ddr3_ras_n                     => ddr3_ras_n,
		ddr3_reset_n                   => ddr3_reset_n,
		ddr3_we_n                      => ddr3_we_n,
		ddr3_dq                        => ddr3_dq,
		ddr3_dqs_n                     => ddr3_dqs_n,
		ddr3_dqs_p                     => ddr3_dqs_p,
		ddr3_cs_n                      => ddr3_cs_n,
		ddr3_dm                        => ddr3_dm,
		ddr3_odt                       => ddr3_odt,
		
		
		aresetn					=> aresetn,
		app_sr_req				=> '0',
		app_ref_req				=> '0',
		app_zq_req				=> '0',
		app_sr_active			=> open,
		app_ref_ack				=> open,
		app_zq_ack				=> open,
		
		s_axi_awid				=> X"0",
		s_axi_awaddr			=> s_axi_awaddr,
		s_axi_awlen				=> s_axi_awlen,
		s_axi_awvalid			=> s_axi_awvalid,
		s_axi_awready			=> s_axi_awready,
		s_axi_awsize			=> std_logic_vector( to_unsigned( get_wordlength(C_DATA_WIDTH/8), 3) ),
		s_axi_awburst			=> "01",  --INCR burst type is usually used
		s_axi_awlock			=> "0",
		s_axi_awcache			=> "0011",
		s_axi_awprot			=> "000",
		s_axi_awqos				=> X"0",
		
		s_axi_wdata				=> s_axi_wdata,
		s_axi_wstrb				=> X"FFFFFFFF",
		s_axi_wlast				=> s_axi_wlast,
		s_axi_wvalid			=> s_axi_wvalid,
		s_axi_wready			=> s_axi_wready,
		
		s_axi_bready			=> '1',
		s_axi_bid				=> open,
		s_axi_bresp				=> open,
		s_axi_bvalid			=> open,
		
		s_axi_arid				=> X"0",
		s_axi_araddr			=> s_axi_araddr,
		s_axi_arlen				=> s_axi_arlen,
		s_axi_arvalid			=> s_axi_arvalid,
		s_axi_arready			=> s_axi_arready,
		s_axi_arsize			=> std_logic_vector( to_unsigned( get_wordlength(C_DATA_WIDTH/8), 3) ),
		s_axi_arburst			=> "01",  --INCR burst type is usually used
		s_axi_arlock			=> "0",
		s_axi_arcache			=> "0011",
		s_axi_arprot			=> "000",
		s_axi_arqos				=> X"0",
		
		s_axi_rid				=> open,
		s_axi_rready			=> s_axi_rready,
		s_axi_rdata				=> s_axi_rdata,
		s_axi_rresp				=> open,
		s_axi_rlast				=> s_axi_rlast,
		s_axi_rvalid			=> s_axi_rvalid,
		
		init_calib_complete		=> init_calib_complete,
		
		ui_clk					=> app_clk,
		ui_clk_sync_rst			=> app_reset,
		mmcm_locked				=> mmcm_locked,
		
		-- System Clock Ports
		sys_clk_p				=> SysCLK_200M_P,
        sys_clk_n               => SysCLK_200M_N,
		sys_rst					=> sys_reset
	);
	aresetn <= not sys_reset;
	s_axi_rready <= '1';
	s_axi_awlen <= std_logic_vector( to_unsigned( C_BURST_NBeats - 1, s_axi_awlen'LENGTH) ); 
	s_axi_arlen <= std_logic_vector( to_unsigned( C_BURST_NBeats - 1, s_axi_arlen'LENGTH) ); 
	
	userlogic_reset <= app_reset or sys_reset;
	process(userlogic_reset, app_clk)
	begin
	if( userlogic_reset='1' ) then
		SM <= ST_IDLE;
		error_cnt <= (others=>'0');
		s_axi_testdata <= (others=>'0');
		led_cnt <= (others=>'0');
		error_detected <= '0';
	elsif( rising_edge(app_clk) ) then
		SM <= SM_nxt;
		s_axi_awaddr <= s_axi_awaddr_nxt;
		beat_cnt <= beat_cnt_nxt;
		-- s_axi_wdata <= s_axi_wdata_nxt;
		s_axi_wdata_part <= s_axi_wdata_part_nxt;
		s_axi_araddr <= s_axi_araddr_nxt;
		error_cnt <= error_cnt_nxt;
		s_axi_testdata <= s_axi_testdata_nxt;
		led_cnt <= led_cnt_nxt;
		error_detected <= error_detected_nxt;
		
		s_axi_wdata <= s_axi_wdata_part_nxt & s_axi_wdata_part_nxt & s_axi_wdata_part_nxt & s_axi_wdata_part_nxt
					&  s_axi_wdata_part_nxt & s_axi_wdata_part_nxt & s_axi_wdata_part_nxt & s_axi_wdata_part_nxt;
		
		-- if( error_cnt /= std_logic_vector( to_unsigned(0, C_ERRCNT_WIDTH) ) ) then
        if( error_detected = '1' ) then
			LED_sig <= '1';
		else
			LED_sig <= led_cnt(18);
		end if;
		
		if( softstart_cnt = X"F00000" ) then
            softstart <= '1';
		else
			softstart_cnt <= softstart_cnt + '1';
		end if;
	end if;
	end process;
	
	process(SM, softstart, s_axi_awaddr, s_axi_awready, s_axi_wready,
		beat_cnt, s_axi_wdata, s_axi_wdata_part, s_axi_rvalid, s_axi_rlast, led_cnt,
		s_axi_arready, s_axi_araddr, error_cnt, s_axi_rdata, s_axi_testdata, error_detected )
	begin
		SM_nxt <= SM;
		s_axi_awaddr_nxt <= s_axi_awaddr;
		beat_cnt_nxt <= beat_cnt;
		-- s_axi_wdata_nxt <= s_axi_wdata;
		s_axi_wdata_part_nxt <= s_axi_wdata_part;
		s_axi_araddr_nxt <= s_axi_araddr;
		error_cnt_nxt <= error_cnt;
		s_axi_testdata_nxt <= s_axi_testdata;
		led_cnt_nxt <= led_cnt;
		error_detected_nxt <= error_detected;
		
		s_axi_awvalid <= '0';
		s_axi_wvalid <= '0';
		s_axi_wlast <= '0';
		
		s_axi_arvalid <= '0';
		
		case SM is
			when ST_IDLE =>
				if( s_axi_awready='1' ) then
					if( softstart='1') then
						SM_nxt <= ST_WR_CMD;
					end if;
				end if;
				s_axi_awaddr_nxt <= C_MEMTEST_STARTADDR(s_axi_awaddr'HIGH downto 0);
				s_axi_araddr_nxt <= C_MEMTEST_STARTADDR(s_axi_awaddr'HIGH downto 0);
				s_axi_wdata_part_nxt <= s_axi_testdata;
			when ST_WR_CMD =>
				if( s_axi_awready='1' ) then
					s_axi_awaddr_nxt <= s_axi_awaddr + std_logic_vector( to_unsigned(C_BURST_LEN, 16) );
					SM_nxt <= ST_WR_DATA;
					led_cnt_nxt <= led_cnt + '1';
				end if;
				s_axi_awvalid <= '1';
				beat_cnt_nxt <= (others=>'0');
			when ST_WR_DATA =>
				if( s_axi_wready='1' ) then
					-- s_axi_wdata_nxt <= s_axi_wdata + '1';
					s_axi_wdata_part_nxt <= s_axi_wdata_part + '1';
					if( beat_cnt=(beat_cnt'RANGE => '1') ) then
						s_axi_wlast <= '1';
						if( s_axi_awaddr=C_MEMTEST_ENDADDR(s_axi_awaddr'HIGH downto 0) ) then 
							SM_nxt <= ST_RD_CMD;
							s_axi_wdata_part_nxt <= s_axi_testdata;
							-- s_axi_testdata_nxt <= s_axi_wdata + '1';
							s_axi_testdata_nxt <= s_axi_wdata_part + '1';
						else
							SM_nxt <= ST_WR_CMD;
						end if;
					else
						beat_cnt_nxt <= beat_cnt + '1';
					end if;
				end if;
				s_axi_wvalid <= '1';
			when ST_RD_CMD =>
				if( s_axi_arready='1' ) then
					s_axi_araddr_nxt <= s_axi_araddr + std_logic_vector( to_unsigned(C_BURST_LEN, 16) );
					SM_nxt <= ST_RD_DATA;
					led_cnt_nxt <= led_cnt + '1';
				end if;
				s_axi_arvalid <= '1';
			when ST_RD_DATA => 
				if( s_axi_rvalid='1' ) then
					if( s_axi_rlast = '1' ) then
						if( s_axi_araddr=C_MEMTEST_ENDADDR(s_axi_araddr'HIGH downto 0) ) then 
							SM_nxt <= ST_IDLE;
						else
							SM_nxt <= ST_RD_CMD;
						end if;
					end if;
					if( s_axi_rdata/=s_axi_wdata ) then
						error_cnt_nxt <= error_cnt + '1';
						error_detected_nxt <= '1';
					end if;
					-- s_axi_wdata_nxt <= s_axi_wdata + '1';
					s_axi_wdata_part_nxt <= s_axi_wdata_part + '1';
				end if;
			when others =>
				SM_nxt <= ST_IDLE;
		end case;
	end process;

	
end IMP;
