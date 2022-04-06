--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:47 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/RAMtb.vhd
-- Project Name:  SAP1nome
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RAMtb IS
END RAMtb;
 
ARCHITECTURE behavior OF RAMtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         nCe : IN  std_logic;
         inRAM : IN  std_logic_vector(3 downto 0);
         outRAM : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nCe : std_logic := '0';
   signal inRAM : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal outRAM : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          nCe => nCe,
          inRAM => inRAM,
          outRAM => outRAM
        );

   -- Clock process definitions
 

   -- Stimulus process
    -- Stimulus process
   stim_proc: process
   begin		
		inRAM <= "0100";
		wait for 10 ns;
		inRAM <= "0001";
		wait for 10 ns;
		inRAM <= "0011";
		wait for 10 ns;
   end process;
	
	CE_proc: process
	begin
		nCE <= '1';
		wait for 5 ns;
		nCE <= '0';
		wait for 5 ns;
	end process;
END;
