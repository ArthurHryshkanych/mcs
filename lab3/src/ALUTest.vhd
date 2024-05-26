--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:02 04/15/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3/TestBenchALU.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUTest IS
END ALUTest;
 
ARCHITECTURE behavior OF ALUTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         OP : IN  std_logic_vector(1 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0);
         OVERFLOW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal OP : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);
   signal OVERFLOW : std_logic;
 
BEGIN
   uut: ALU PORT MAP (
          A => A,
          B => B,
          OP => OP,
          OUTPUT => OUTPUT,
          OVERFLOW => OVERFLOW
        );
 
   stim_proc: process
   begin		
		wait for 1ps;
		A <= "00001111";
		B <= "00000001";
		OP <= "00";
		
		wait for 2ps;
		
		assert OUTPUT = "00000001" report "#1a" severity FAILURE;
		assert OVERFLOW = '0' report "#1b" severity FAILURE;
		
		A <= "00001111";
		B <= "01110000";
		
		OP <= "01";
		
		wait for 2ps;
		
		assert OUTPUT = "01111111" report "#2a" severity FAILURE;
		assert OVERFLOW = '0' report "#2b" severity FAILURE;
		
		A <= "10001111";
		B <= "11110000";
		
		wait for 2ps;
		
		assert OUTPUT = "01111111" report "#3a" severity FAILURE;
		assert OVERFLOW = '1' report "#3b" severity FAILURE;
		
		A <= "11111111";
		B <= "00000001";
		
		wait for 2ps;
		
		assert OUTPUT = "00000000" report "#4a" severity FAILURE;
		assert OVERFLOW = '1' report "#4b" severity FAILURE;
		
		A <= "01111111";
		OP <= "10";
		
		wait for 2ps;
		
		assert OUTPUT = "01111110" report "#5a" severity FAILURE;
		assert OVERFLOW = '0' report "#5b" severity FAILURE;
		
		A <= "11110000";
		OP <= "11";
		
		wait for 2ps;
		
		assert OUTPUT = "11100000" report "#6a" severity FAILURE;
		assert OVERFLOW = '0' report "#6b" severity FAILURE;
		

      wait;
   end process;

END;
