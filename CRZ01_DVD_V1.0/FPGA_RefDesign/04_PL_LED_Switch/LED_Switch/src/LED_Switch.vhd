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
use UNISIM.Vcomponents.ALL;

entity LED_Switch is
Port( 
	SYS_CLK_P		: in  STD_LOGIC;
	SYS_CLK_N		: in  STD_LOGIC;
	push_buttons	: in  STD_LOGIC_VECTOR (1 downto 0);
	dip_switches	: in  STD_LOGIC_VECTOR (3 downto 0);
	LED		 		: out STD_LOGIC_VECTOR (3 downto 0)
);
end LED_Switch;

architecture Behavioral of LED_Switch is

	signal CLK200M		: std_logic;
	signal LED_int		: std_logic_vector(3 downto 0) := "0000";
	signal CLK_CNT		: std_logic_vector(31 downto 0) := (others=>'0');

begin
	
	Inst_IBUFDS : IBUFDS
	port map
	(
		I => SYS_CLK_P,
		IB => SYS_CLK_N,
		O => CLK200M
	);

	process(CLK200M) 
	begin
	if( rising_edge(CLK200M) ) then
		CLK_CNT <= CLK_CNT + '1';
		
		if( push_buttons="11" ) then
			LED <= dip_switches;
		elsif( push_buttons="01" ) then
			LED <= X"F";
		elsif( push_buttons="10" ) then
			LED <= X"0";
		else
			LED <= CLK_CNT(26) & CLK_CNT(26) & CLK_CNT(26) & CLK_CNT(26);
		end if;
	end if;
	end process;

end Behavioral;

