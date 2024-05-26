----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:24 04/21/2024 
-- Design Name: 
-- Module Name:    RAM - RAM_arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RAM is
	port(
			WR : IN STD_LOGIC;
			ADDR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			CLOCK: IN STD_LOGIC;
			OUTPUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			); 
end RAM;

architecture RAM_arch of RAM is
	type ram_type is array (3 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal UNIT : ram_type;

begin
	process(ADDR, CLOCK, UNIT)
	 begin
		if(rising_edge(CLOCK)) then
			if (WR = '1') then
				UNIT(conv_integer(ADDR)) <= DATA;
			end if;
		end if;
		OUTPUT <= UNIT(conv_integer(ADDR));
	end process;
end RAM_arch;

