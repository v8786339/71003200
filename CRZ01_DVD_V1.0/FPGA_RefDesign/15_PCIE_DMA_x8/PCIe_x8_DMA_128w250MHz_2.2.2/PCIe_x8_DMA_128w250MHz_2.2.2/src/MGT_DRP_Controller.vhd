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
  
entity MGT_DRP_Controller is
Port( 
	gt_drpclk		: in  STD_LOGIC;
	gt_drpaddr		: out STD_LOGIC_VECTOR(71 downto 0);
	gt_drpen		: out STD_LOGIC_VECTOR(7 downto 0);
	gt_drpwdata		: out STD_LOGIC_VECTOR(127 downto 0);
	gt_drpwe		: out STD_LOGIC_VECTOR(7 downto 0);
	gt_drprdata		: in  STD_LOGIC_VECTOR(127 downto 0);
	gt_drprdy		: in  STD_LOGIC_VECTOR(7 downto 0);
	pcie_reset_n	: in  STD_LOGIC
);
end MGT_DRP_Controller;

architecture Behavioral of MGT_DRP_Controller is

	constant C_GT_NUM			: integer := 8;
	constant DRP_PROGROM_SIZE	: integer := 1;
	
	type DRP_PROGROM_T	is array(0 to DRP_PROGROM_SIZE-1) of std_logic_vector(24 downto 0);
	-- ignal DRP_PROGROM : DRP_PROGROM_T := ( ('0' & X"7C" & X"2220") );
	signal DRP_PROGROM : std_logic_vector(24 downto 0) := '0' & X"7C" & X"2220";
	
	type SM_T is (IDLE_ST, WR_ST, WAIT_ST);
	signal SM : SM_T := IDLE_ST;
	
	signal start_prog			: std_logic := '0';
	signal start_prog_delay		: std_logic := '0';
	signal start_prog_pulse		: std_logic := '0';
	signal gt_drprdy_delay		: std_logic_vector(C_GT_NUM-1 downto 0);
	signal gt_drprdy_allready	: std_logic_vector(C_GT_NUM-1 downto 0) := (others=>'1');
	signal gt_drp_cur_entry		: std_logic_vector(24 downto 0);
	signal prog_wr_cnt			: integer range 0 to  DRP_PROGROM_SIZE-1 := 0;
	signal single_gt_drpen		: std_logic := '0';
	signal single_gt_drpwe		: std_logic := '0';
	
	signal drp_startcfg_timer	: std_logic_vector(15 downto 0) := (others=>'0');	

begin

	start_prog_pulse <= start_prog and (not start_prog_delay);
	
	GT_DRP_GEN : For I in 0 to (C_GT_NUM-1) Generate
	begin
		gt_drpaddr(I*9+8 downto I*9) <= gt_drp_cur_entry(24 downto 16);
		gt_drpwdata(I*16+15 downto I*16) <= gt_drp_cur_entry(15 downto 0);
		gt_drpen(I) <= single_gt_drpen;
		gt_drpwe(I) <= single_gt_drpwe;
	end generate GT_DRP_GEN;
	
	process( pcie_reset_n, gt_drpclk )
	begin
	if( pcie_reset_n='0' ) then
		drp_startcfg_timer <= (others=>'0');
		start_prog <= '0';
	elsif( rising_edge(gt_drpclk) ) then
		if( drp_startcfg_timer = X"0FFF" ) then
			start_prog <= '1';
		else
			drp_startcfg_timer <= drp_startcfg_timer + '1';
			start_prog <= '0';
		end if;
	end if;
	end process;
				
	process(gt_drpclk) 
	begin
	if( rising_edge(gt_drpclk) ) then
		start_prog_delay <= start_prog;
		-- gt_drp_cur_entry <= DRP_PROGROM(prog_wr_cnt);
		gt_drp_cur_entry <= DRP_PROGROM;
		
		single_gt_drpen <= '0';
		single_gt_drpwe <= '0';
		
		case SM is 
			when IDLE_ST =>
				if(start_prog_pulse='1') then
					SM <= WR_ST;
				end if;
				prog_wr_cnt <= 0;
				gt_drprdy_delay <= (others=>'0');
			when WR_ST =>
				SM <= WAIT_ST;
				single_gt_drpen <= '1';
				single_gt_drpwe <= '1';
				gt_drprdy_delay <= gt_drprdy_delay or gt_drprdy;
			when WAIT_ST =>
				if( gt_drprdy_delay=gt_drprdy_allready ) then
					if( prog_wr_cnt=DRP_PROGROM_SIZE-1 ) then
						SM <= IDLE_ST;
					else
						prog_wr_cnt <= prog_wr_cnt + 1;
						SM <= WR_ST;
					end if;
				end if;
				gt_drprdy_delay <= gt_drprdy_delay or gt_drprdy;
		end case;
	end if;
	end process;

end Behavioral;

