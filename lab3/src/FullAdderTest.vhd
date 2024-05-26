--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:20:56 04/29/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3/FullAdderTest.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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
 
ENTITY FullAdderTest IS
END FullAdderTest;
 
ARCHITECTURE behavior OF FullAdderTest IS 
 
    COMPONENT FullAdder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Ci : IN  std_logic;
         S : OUT  std_logic;
         Co : OUT  std_logic
        );
    END COMPONENT;
    

   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Ci : std_logic := '0';

   signal S : std_logic;
   signal Co : std_logic;
	
	signal TestA: STD_LOGIC_VECTOR(0 to 7) := "00001111";
	signal TestB: STD_LOGIC_VECTOR(0 to 7) := "00110011";
	signal TestCi: STD_LOGIC_VECTOR(0 to 7) := "01010101";
	signal TestS: STD_LOGIC_VECTOR(0 to 7) := "01101001";
	signal TestCo: STD_LOGIC_VECTOR(0 to 7) := "00010111";
BEGIN
   uut: FullAdder PORT MAP (
          A => A,
          B => B,
          Ci => Ci,
          S => S,
          Co => Co
        );
 
   stim_proc: process
   begin		
      for i in 0 to 7 loop
			A <= TestA(i);
			B <= TestB(i);
			Ci <= TestCi(i);
			wait for 1ps;
			assert TestS(i) = S report "TestS(" & integer'image(i) & ") error" severity error;
			assert TestCo(i) = Co report "TestCo(" & integer'image(i) & ") error" severity error;
		end loop;
      wait;
   end process;

END;
