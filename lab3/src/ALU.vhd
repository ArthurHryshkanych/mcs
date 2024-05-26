library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           B : in  STD_LOGIC_VECTOR(7 downto 0);
           OP : in  STD_LOGIC_VECTOR(1 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR(7 downto 0);
			  OVERFLOW: out STD_LOGIC);
end ALU;


architecture ALU_Behavioral of ALU is
	signal ALUR: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal Carry: STD_LOGIC := '0';
begin
	process(A, B, OP)
	begin
		case (OP) is
			when "01" => ALUR <= ("00000000" & A) + ("00000000" & B);
			when "10" => ALUR <= ("00000000" & A) + ("11111111" & not B) + "0000000000000001";
			when "11" => 
				case(B) is
					  when x"00" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 0);
					  when x"01" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 1);
					  when x"02" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 2);
					  when x"03" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 3);
					  when x"04" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 4);
					  when x"05" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 5);
					  when x"06" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 6);
					  when x"07" 	=> ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 7);
					  when others  => ALUR <= std_logic_vector(unsigned(("00000000" & A)) sll 0);
				end case;
			when others => ALUR <= ("00000000" & B);
		end case;
	end process;
	OUTPUT <= ALUR(7 downto 0);
	OVERFLOW <= ALUR(8) OR ALUR(9) OR ALUR(10) OR ALUR(11) OR ALUR(12) OR ALUR(13) OR ALUR(14) OR ALUR(15); 
end ALU_Behavioral;

