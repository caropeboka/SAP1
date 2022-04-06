--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:59:10 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/regAtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regA
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
 
ENTITY regAtb IS
END regAtb;
 
ARCHITECTURE behavior OF regAtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regA
    PORT(
         CLK : IN  std_logic;
         nLa : IN  std_logic;
         Ea : IN  std_logic;
         inA : IN  std_logic_vector(7 downto 0);
         outA : OUT  std_logic_vector(7 downto 0);
         regACC : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal nLa : std_logic := '0';
   signal Ea : std_logic := '0';
   signal inA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal outA : std_logic_vector(7 downto 0);
   signal regACC : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regA PORT MAP (
          CLK => CLK,
          nLa => nLa,
          Ea => Ea,
          inA => inA,
          outA => outA,
          regACC => regACC
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
 -- Stimulus process
   stim_proc: process
   begin		 
		inA <= "00001000";
		nLa <= '1';
		Ea <= '1';
      wait for CLK_period/2;
		nLa <= '0';
		Ea <= '0';
		wait for CLK_period/2;
   end process;


END;
