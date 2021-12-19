------------------------------------------------------------------------------
--      _______      _______                                                --
--     / ____\ \    / /_   _|                                               --
--    | |  __ \ \  / /  | |                                                 --
--    | | |_ | \ \/ /   | |                                                 --
--    | |__| |  \  /   _| |_                                                --
--     \_____|   \/   |_____|                                               --
--                                                                          --
-- Copyright (c) 2012-2017 GVI.  All rights reserved.                       --
--                                                                          --
-- THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY   --
-- KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE      --
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A               --
-- PARTICULAR PURPOSE.                                                      --
--                                                                          --
-- Website: www.gvi-tech.com                                                --
-- Email: support@gvi-tech.com                                              --
--                                                                          --
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity gvi_breathing_led is
Generic(
	G_LED_POSITIVE_POLARIZATION	: integer := 1;
	G_CLKIN_FREQUENCY_MHZ		: integer := 100;
	G_breathing_Period_MS		: integer := 3000
);
port 
(
	CLK				: in  std_logic;
	LED				: out std_logic
);
end gvi_breathing_led;

architecture IMP of gvi_breathing_led is

	constant C_BREATHING_MAX	: integer := (G_breathing_Period_MS * 1000 * G_CLKIN_FREQUENCY_MHZ) / (16*2);
	
	type COEF_T	is array (0 to 15)  of std_logic_vector(7 downto 0);
	signal COEF		: COEF_T := (X"00", X"01", X"03", X"07", X"0E", X"16", X"22", X"31", X"45", X"5C", X"77", X"95", X"B4", X"D1", X"E9", X"F9" );
	signal breathing_cnt		: integer range 0 to C_BREATHING_MAX := 0;
	signal coef_index_pos		: std_logic_vector(4 downto 0) := (others=>'0');
	signal coef_index_neg		: std_logic_vector(3 downto 0) := (others=>'0');
	signal coef_index			: std_logic_vector(3 downto 0) := (others=>'0');
	signal PWM_cnt				: std_logic_vector(7 downto 0) := (others=>'0');
	signal PWM_Threathhold		: std_logic_vector(7 downto 0) := (others=>'0');
	signal LED_int				: std_logic;

begin

	process( CLK )
	begin
	if( rising_edge(CLK) ) then
		if( breathing_cnt = C_BREATHING_MAX ) then
			breathing_cnt <= 0;
			coef_index_pos <= coef_index_pos + '1';
		else
			breathing_cnt <= breathing_cnt + 1;
		end if;
		coef_index_neg <= X"F" - coef_index_pos(3 downto 0);
		if( coef_index_pos(4)='1' ) then
			coef_index <= coef_index_neg(3 downto 0);
		else
			coef_index <= coef_index_pos(3 downto 0);
		end if;
		
		
		if( PWM_cnt=X"FF" ) then
			PWM_cnt <= X"00";
			PWM_Threathhold <= COEF( to_integer( unsigned(coef_index) ) );
		else
			PWM_cnt <= PWM_cnt + '1';
		end if;
		
		if( PWM_cnt>=PWM_Threathhold ) then
			LED_int <= '0';
		else
			LED_int <= '1';
		end if;
		
	end if;
	end process;
	
	POSITIVE_POL_GEN : if( G_LED_POSITIVE_POLARIZATION=1 ) generate
	begin
		LED <= LED_int;
	end generate POSITIVE_POL_GEN;
	
	NEGATIVE_POL_GEN : if( G_LED_POSITIVE_POLARIZATION=0 ) generate
	begin
		LED <= not LED_int;
	end generate NEGATIVE_POL_GEN;

end architecture IMP;


