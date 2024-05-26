--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:09:43 05/07/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3_v6/ACCTest.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ACC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ACCTest IS
END ACCTest;
 
ARCHITECTURE behavior OF ACCTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ACC
    PORT(
         WR : IN  std_logic;
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         INPUT : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';
   signal INPUT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLKP: time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ACC PORT MAP (
          WR => WR,
          RESET => RESET,
          CLK => CLK,
          INPUT => INPUT,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLKP/2;
		CLK <= '1';
		wait for CLKP/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		RESET <= '1';
      wait for 4 * CLKP;
		RESET <= '0';
		WR <= '0';
		INPUT <= "00001111";
		wait for CLKP;
		assert OUTPUT = "00000000" severity failure;
		WR <= '1';
		wait for CLKP;
		assert OUTPUT = "00001111" severity failure;
		INPUT <= "11110000";
		wait for CLKP;
		assert OUTPUT = "11110000" severity failure;
		
      wait;
   end process;

END;
