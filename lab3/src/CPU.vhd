library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CPU is
	port( ENTER_OP1 : IN STD_LOGIC;
			ENTER_OP2 : IN STD_LOGIC;
			CALCULATE : IN STD_LOGIC;
			RESET : IN STD_LOGIC;
			CLOCK : IN STD_LOGIC;
			RAM_WR : OUT STD_LOGIC;
			RAM_ADDR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			CONST : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ACC_WR : OUT STD_LOGIC;
			ACC_RST : OUT STD_LOGIC;
			IN_SEL : OUT STD_LOGIC_VECTOR(1 downto 0);
			OP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
end CPU;
 
architecture CPU_arch of CPU is

type   STATE_TYPE is (RST, IDLE, LOAD_OP1, LOAD_OP2, RUN_CALC0, RUN_CALC1, RUN_CALC2, RUN_CALC3, RUN_CALC4, FINISH); 
signal CUR_STATE  : STATE_TYPE;
signal NEXT_STATE : STATE_TYPE;

begin
	SYNC_PROC: process (CLOCK)
   begin
      if (rising_edge(CLOCK)) then
         if (RESET = '1') then
            CUR_STATE <= RST;
         else
            CUR_STATE <= NEXT_STATE;
         end if;        
      end if;
   end process;
	
	
	NEXT_STATE_DECODE: process (CLOCK, ENTER_OP1, ENTER_OP2, CALCULATE)
   begin
      NEXT_STATE <= CUR_STATE;
		
		case(CUR_STATE) is
			when RST =>
				NEXT_STATE <= IDLE;
			when IDLE 		=>
				if (ENTER_OP1 = '1') then
					NEXT_STATE <= LOAD_OP1;
				elsif (ENTER_OP2 = '1') then
					NEXT_STATE <= LOAD_OP2;
				elsif (CALCULATE = '1') then
					NEXT_STATE <= RUN_CALC0;
				else
					NEXT_STATE <= IDLE;
				end if;
			when LOAD_OP1 	=>
				NEXT_STATE <= IDLE;
			when LOAD_OP2 	=>
				NEXT_STATE <= IDLE;
			when RUN_CALC0 =>
				NEXT_STATE <= RUN_CALC1;
			when RUN_CALC1 =>
				NEXT_STATE <= RUN_CALC2;
			when RUN_CALC2 =>
				NEXT_STATE <= RUN_CALC3;
			when RUN_CALC3 =>
				NEXT_STATE <= RUN_CALC4;
			when RUN_CALC4 =>
				NEXT_STATE <= FINISH;
			when FINISH 	=>
				NEXT_STATE <= FINISH;
			when others			=>
				NEXT_STATE <= IDLE;
		end case;    
   end process;

	OUTPUT_DECODE: process (CUR_STATE)
	begin
		case (CUR_STATE) is
			when RST =>
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '0';
				ACC_RST <= '1';
				IN_SEL <= "00";
				OP <= "00";
			when LOAD_OP1 =>
				RAM_WR <= '1';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '0';
				ACC_RST <= '1';
				IN_SEL <= "00";
				OP <= "00";
			when LOAD_OP2 => 
				RAM_WR <= '1';
				RAM_ADDR <= "01";
				CONST <= "00000000";
				ACC_WR <= '0';
				ACC_RST <= '1';
				IN_SEL <= "00";
				OP <= "00";
			when RUN_CALC0 => 
				RAM_WR <= '0';
				RAM_ADDR <= "01";
				CONST <= "00000000";
				ACC_WR <= '1';
				ACC_RST <= '0';
				IN_SEL <= "01";
				OP <= "00";
			when RUN_CALC1 => 
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '1';
				ACC_RST <= '0';
				IN_SEL <= "01";
				OP <= "10";
			when RUN_CALC2 => 
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000001";
				ACC_WR <= '1';
				ACC_RST <= '0';
				IN_SEL <= "10";
				OP <= "11";
			when RUN_CALC3 =>
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '1';
				ACC_RST <= '0';
				IN_SEL <= "01";
				OP <= "01";
			when RUN_CALC4 => 
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00001010";
				ACC_WR <= '1';
				ACC_RST <= '0';
				IN_SEL <= "10";
				OP <= "01";
			when IDLE =>
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '0';
				ACC_RST <= '0';
				IN_SEL <= "00";
				OP <= "00";
			when others => 
				RAM_WR <= '0';
				RAM_ADDR <= "00";
				CONST <= "00000000";
				ACC_WR <= '0';
				ACC_RST <= '0';
				IN_SEL <= "00";
				OP <= "00";
		end case;
   end process;
end CPU_arch;