library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
	PORT(
		SEL: in STD_LOGIC_VECTOR(1 downto 0);
		CONST: in STD_LOGIC_VECTOR(7 downto 0);
		--CONST1: in STD_LOGIC_VECTOR()
		DATA_IN0: in STD_LOGIC_VECTOR(7 downto 0);
		DATA_IN1: in STD_LOGIC_VECTOR(7 downto 0);
		OUTPUT: out STD_LOGIC_VECTOR(7 downto 0)
	);
end MUX;

architecture Behavioral of MUX is
begin
	process (SEL, DATA_IN0, DATA_IN1, CONST)
	begin 
		if (SEL = "00") then
			OUTPUT <= DATA_IN0;
		elsif (SEL = "01") then
			OUTPUT <= DATA_IN1;
		else 
			OUTPUT <= CONST;
		end if;
	end process;
end Behavioral;

