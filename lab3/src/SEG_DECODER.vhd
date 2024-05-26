----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:34:19 04/21/2024 
-- Design Name: 
-- Module Name:    BIN_TO_BCD - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity SEG_DECODER is
	port( CLOCK : IN STD_LOGIC;
			RESET : IN STD_LOGIC;
			ACC_DATA_OUT_BUS : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			COMM_ONES	 		: OUT STD_LOGIC;
			COMM_DECS   		: OUT STD_LOGIC;
			COMM_HUNDREDS   : OUT STD_LOGIC;
			SEG_A	 : OUT STD_LOGIC;
			SEG_B	 : OUT STD_LOGIC;
			SEG_C	 : OUT STD_LOGIC;
			SEG_D	 : OUT STD_LOGIC;
			SEG_E	 : OUT STD_LOGIC;
			SEG_F	 : OUT STD_LOGIC;
			SEG_G	 : OUT STD_LOGIC;
			DP		 : OUT STD_LOGIC);
end SEG_DECODER;

architecture Behavioral of SEG_DECODER is

	signal ONES_BUS : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal DECS_BUS : STD_LOGIC_VECTOR(3 downto 0) := "0001";
	signal HONDREDS_BUS : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
	BIN_TO_BCD : process (ACC_DATA_OUT_BUS)
        variable hex_src : STD_LOGIC_VECTOR(7 downto 0) ;
        variable bcd     : STD_LOGIC_VECTOR(11 downto 0) ;
    begin
        bcd             := (others => '0') ;
        hex_src         := ACC_DATA_OUT_BUS;

        for i in hex_src'range loop
            if bcd(3 downto 0) > "0100" then
                bcd(3 downto 0) := bcd(3 downto 0) + "0011" ;
            end if ;
            if bcd(7 downto 4) > "0100" then
                bcd(7 downto 4) := bcd(7 downto 4) + "0011" ;
            end if ;
            if bcd(11 downto 8) > "0100" then
                bcd(11 downto 8) := bcd(11 downto 8) + "0011" ;
            end if ;
           
            bcd := bcd(10 downto 0) & hex_src(hex_src'left) ; -- shift bcd + 1 new entry
            hex_src := hex_src(hex_src'left - 1 downto hex_src'right) & '0' ; -- shift src + pad with 0
        end loop ;

        HONDREDS_BUS       <=  bcd (11 downto 8);
        DECS_BUS        <=  bcd (7 downto 4);
        ONES_BUS       <=  bcd (3 downto 0);  
        
    end process BIN_TO_BCD;
	 
	 INDICATE : process(CLOCK)
		type DIGIT_TYPE is (ONES, DECS, HUNDREDS); 
		
		variable CUR_DIGIT     : DIGIT_TYPE := ONES;
		variable DIGIT_VAL 	  : STD_LOGIC_VECTOR(3 downto 0) := "0000";
		variable DIGIT_CTRL 	  : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
		variable COMMONS_CTRL  : STD_LOGIC_VECTOR(2 downto 0) := "000";
		
		begin
			if (rising_edge(CLOCK)) then
				if(RESET = '0') then
					case CUR_DIGIT is
						when ONES =>
							  DIGIT_VAL := ONES_BUS;
							  CUR_DIGIT := DECS;
							  COMMONS_CTRL := "001";
						when DECS =>
							  DIGIT_VAL := DECS_BUS;
							  CUR_DIGIT := HUNDREDS;
							  COMMONS_CTRL := "010";
						when HUNDREDS =>
							  DIGIT_VAL := HONDREDS_BUS;
							  CUR_DIGIT := ONES;
							  COMMONS_CTRL := "100";
						when others =>
							  DIGIT_VAL := ONES_BUS;
							  CUR_DIGIT := ONES;
							  COMMONS_CTRL := "000";
					end case;
					
					case DIGIT_VAL is              --abcdefg
						when "0000" => DIGIT_CTRL := "1111110";
						when "0001" => DIGIT_CTRL := "0110000";
						when "0010" => DIGIT_CTRL := "1101101";
						when "0011" => DIGIT_CTRL := "1111001";
						when "0100" => DIGIT_CTRL := "0110011";
						when "0101" => DIGIT_CTRL := "1011011";
						when "0110" => DIGIT_CTRL := "1011111";
						when "0111" => DIGIT_CTRL := "1110000";
						when "1000" => DIGIT_CTRL := "1111111";
						when "1001" => DIGIT_CTRL := "1111011";
						when others => DIGIT_CTRL := "0000000";
					end case;
				else
					DIGIT_VAL := ONES_BUS;
					CUR_DIGIT := ONES;
					COMMONS_CTRL := "000";
				end if;
				
				COMM_ONES 	  <= not COMMONS_CTRL(0);
				COMM_DECS 	  <= not COMMONS_CTRL(1);
				COMM_HUNDREDS <= not COMMONS_CTRL(2);
		  
				SEG_A <= not DIGIT_CTRL(6); 
				SEG_B <= not DIGIT_CTRL(5); 
				SEG_C <= not DIGIT_CTRL(4); 
				SEG_D <= not DIGIT_CTRL(3); 
				SEG_E <= not DIGIT_CTRL(2); 
				SEG_F <= not DIGIT_CTRL(1); 
				SEG_G <= not DIGIT_CTRL(0); 
				DP 	<= '1'; 
				
			end if;
	end process INDICATE;

end Behavioral;

