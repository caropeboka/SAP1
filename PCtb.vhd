--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:36:01 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/PCtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY PCtb IS
END PCtb;
 
ARCHITECTURE behavior OF PCtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         nCLK : IN  std_logic;
         nCLR : IN  std_logic;
         Cp : IN  std_logic;
         Ep : IN  std_logic;
         BUS_Low : OUT  std_logic_vector(3 downto 0);
         T : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nCLK : std_logic := '0';
   signal nCLR : std_logic := '0';
   signal Cp : std_logic := '0';
   signal Ep : std_logic := '0';

 	--Outputs
   signal BUS_Low : std_logic_vector(3 downto 0);
   signal T : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant nCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          nCLK => nCLK,
          nCLR => nCLR,
          Cp => Cp,
          Ep => Ep,
          BUS_Low => BUS_Low,
          T => T
        );

   -- Clock process definitions
   nCLK_process :process
   begin
		nCLK <= '0';
		wait for nCLK_period/2;
		nCLK <= '1';
		wait for nCLK_period/2;
   end process;
 

-- Stimulus process
   stim_proc: process
   begin		
	  Ep <= '0';
	  wait for nCLK_period/2;
	  Ep <= '1';
	  wait for nCLK_period/2;
	  Cp <= '1';
	  wait for nCLK_period/2;
	  Cp <= '0';
	  wait for nCLK_period/2;
   end process;
	
	CLR_proc: process
	begin
	nCLR <= '0';
	wait for nCLK_period/2;
	nCLR <= '1';
	wait;
	end process;

END;
