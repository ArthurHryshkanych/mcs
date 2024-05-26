--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:13:38 04/29/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3/MUXTest.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
 
ENTITY MUXTest IS
END MUXTest;
 
ARCHITECTURE behavior OF MUXTest IS 
    COMPONENT MUX
    PORT(
         SEL : IN  std_logic_vector(1 downto 0);
         CONST : IN  std_logic_vector(7 downto 0);
         DATA_IN0 : IN  std_logic_vector(7 downto 0);
         DATA_IN1 : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');
   signal CONST : std_logic_vector(7 downto 0) := (others => '0');
   signal DATA_IN0 : std_logic_vector(7 downto 0) := (others => '0');
   signal DATA_IN1 : std_logic_vector(7 downto 0) := (others => '0');
   signal OUTPUT : std_logic_vector(7 downto 0);
 
BEGIN
   uut: MUX PORT MAP (
          SEL => SEL,
          CONST => CONST,
          DATA_IN0 => DATA_IN0,
          DATA_IN1 => DATA_IN1,
          OUTPUT => OUTPUT
        );

   stim_proc: process
   begin		
		DATA_IN0 <= "10101010";
		DATA_IN1 <= "01010101";
		CONST <= "11001100";
      SEL <= "00";
		wait for 1ps;
		assert OUTPUT = DATA_IN0 report "OUTPUT != DATA_IN0" severity FAILURE;
		SEL <= "01";
		wait for 1ps;
		assert OUTPUT = DATA_IN1 report "OUTPUT != DATA_IN1" severity FAILURE;
		SEL <= "10";
		wait for 1ps;
		assert OUTPUT = CONST report "OUTPUT != CONST" severity FAILURE;
      wait;
   end process;

END;
