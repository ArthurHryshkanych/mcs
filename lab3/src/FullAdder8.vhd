----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:43 04/29/2024 
-- Design Name: 
-- Module Name:    FullAdder8 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder8 is
    Port ( A: in STD_LOGIC_VECTOR (7 downto 0);
           B: in STD_LOGIC_VECTOR (7 downto 0);
           Ci: in STD_LOGIC;
           S: out STD_LOGIC_VECTOR (7 downto 0);
           Co: out STD_LOGIC);
end FullAdder8;

architecture Behavioral of FullAdder8 is
	component FullAdder is
		Port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			Ci: in STD_LOGIC;
			S: out STD_LOGIC;
			Co: out STD_LOGIC);
		end component;
		signal carry: STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
begin	
	carry(0) <= Ci;
	FullAdderGenerate: for i in 0 to 7 generate
	adder: FullAdder port map(
			A => A(i),
			B => B(i),
			Ci => carry(i),
			S => S(i),
			Co => carry(i + 1)
		);
	end generate FullAdderGenerate;
	Co <= carry(8);
end Behavioral;

