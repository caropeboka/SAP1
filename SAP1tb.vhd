--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:29:36 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/SAP1tb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SAP1
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
 
ENTITY SAP1tb IS
END SAP1tb;
 
ARCHITECTURE behavior OF SAP1tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SAP1
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         T : OUT  std_logic_vector(2 downto 0);
         outCU : OUT  std_logic_vector(11 downto 0);
         wbus : OUT  std_logic_vector(7 downto 0);
         LED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal T : std_logic_vector(2 downto 0);
   signal outCU : std_logic_vector(11 downto 0);
   signal wbus : std_logic_vector(7 downto 0);
   signal LED : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SAP1 PORT MAP (
          CLK => CLK,
          CLR => CLR,
          T => T,
          outCU => outCU,
          wbus => wbus,
          LED => LED
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		CLR <= '1';
      wait for CLK_period;
		CLR <= '0';
      wait for CLK_period*30; 
      wait;
   end process;

END;
