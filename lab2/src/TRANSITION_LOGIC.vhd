library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TRANSITION_LOGIC is
	Port (CURR_STATE : in  std_logic_vector(2 downto 0);
			MODE : in std_logic;
			NEXT_STATE : out std_logic_vector(2 downto 0)
			);
end TRANSITION_LOGIC;

architecture TRANSITION_LOGIC_ARCH of TRANSITION_LOGIC is

begin
	NEXT_STATE(0) <= (not(CURR_STATE(0))) after 1 ns;
	NEXT_STATE(1) <= (((not(MODE) and not(CURR_STATE(1)) and CURR_STATE(0)) or
							(not(MODE) and CURR_STATE(1) and not(CURR_STATE(0))) or
							(MODE and not(CURR_STATE(1)) and not(CURR_STATE(0))) or
							(MODE and CURR_STATE(1) and CURR_STATE(0)))) after 1 ns;			
	NEXT_STATE(2) <= (((not(MODE) and CURR_STATE(2) and not(CURR_STATE(1))) or
							(CURR_STATE(2) and CURR_STATE(1) and not(CURR_STATE(0))) or
							(MODE and CURR_STATE(2) and CURR_STATE(0)) or
							(not(MODE) and not(CURR_STATE(2)) and CURR_STATE(1) and CURR_STATE(0)) or
							(MODE and not(CURR_STATE(2)) and not(CURR_STATE(1)) and not(CURR_STATE(0))))) after 1 ns;
							

end TRANSITION_LOGIC_ARCH;

