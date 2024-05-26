--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:34:17 04/29/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3/FullAdder8Test.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder8
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
 
ENTITY FullAdder8Test IS
END FullAdder8Test;
 
ARCHITECTURE behavior OF FullAdder8Test IS 
 
    COMPONENT FullAdder8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Ci : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         Co : OUT  std_logic
        );
    END COMPONENT;
	 
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Ci : std_logic := '0';
   signal S : std_logic_vector(7 downto 0);
   signal Co : std_logic;
	
	type special_array is array(0 to 4) of std_logic_vector(7 downto 0);
	signal TestA: special_array := (
		"00000001", "00000111", "11111111", "00000000", "00001111"
	);
	signal TestB: special_array := (
		"00000001", "00000111", "00000001", "00000000", "01110000"
	);
	signal TestCi: std_logic_vector(0 to 4) := "00010";
	signal TestS: special_array := (
		"00000010", "00001110", "00000000", "00000001", "01111111"
	);
	signal TestCo: std_logic_vector(0 to 4) := "00100";
BEGIN
   uut: FullAdder8 PORT MAP (
          A => A,
          B => B,
          Ci => Ci,
          S => S,
          Co => Co
        );
		  
   stim_proc: process
   begin		
      for i in 0 to 4 loop
			A <= TestA(i);
			B <= TestB(i);
			Ci <= TestCi(i);
			wait for 20ns;
			assert TestS(i) = S report "TestS(" & integer'image(i) & ") error" severity FAILURE;
			assert TestCo(i) = Co report "TestCo(" & integer'image(i) & ") error" severity FAILURE;
		end loop;
		wait;
   end process;

END;
