--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:18:03 04/29/2024
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/Lab_3/RAMTest.vhd
-- Project Name:  Lab_3_Example
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAMTest IS
END RAMTest;
 
ARCHITECTURE behavior OF RAMTest IS 
    COMPONENT RAM
    PORT(
         WR : IN  std_logic;
         ADDR : IN  std_logic_vector(1 downto 0);
         DATA : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   signal WR : std_logic := '0';
   signal ADDR : std_logic_vector(1 downto 0) := (others => '0');
   signal DATA : std_logic_vector(7 downto 0) := (others => '0');
   signal OUTPUT : std_logic_vector(7 downto 0);
 
BEGIN
 
   uut: RAM PORT MAP (
          WR => WR,
          ADDR => ADDR,
          DATA => DATA,
          OUTPUT => OUTPUT
        );

   stim_proc: process
   begin
		WR <= '1';
      ADDR <= "00";
		DATA <= "11111111";
		wait for 1ps;
		WR <= '0';
		assert OUTPUT = DATA report "OUTPUT != DATA when ADDR = 00 and WR = 0" severity FAILURE;
		DATA <= "00000000";
		wait for 1ps;
		assert OUTPUT = x"FF" report "OUTPUT != x'FF' when ADDR = 00 and WR = 0" severity FAILURE;
		ADDR <= "01";
		WR <= '1';
		DATA <= x"AF";
		wait for 1ps;
		assert OUTPUT = x"AF" report "OUTPUT != x'AF' when ADDR = 01 and WR = 1" severity FAILURE;
      wait;
   end process;

END;
