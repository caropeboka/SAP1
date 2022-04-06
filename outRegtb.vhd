--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:06:54 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/outRegtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: outReg
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
 
ENTITY outRegtb IS
END outRegtb;
 
ARCHITECTURE behavior OF outRegtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT outReg
    PORT(
         CLK : IN  std_logic;
         nLo : IN  std_logic;
         inReg : IN  std_logic_vector(7 downto 0);
         LED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal nLo : std_logic := '0';
   signal inReg : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: outReg PORT MAP (
          CLK => CLK,
          nLo => nLo,
          inReg => inReg,
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
    -- Stimulus process
  stim_proc: process
   begin		 
		inReg <= "00001100";
		nLo <= '1';
      wait for clk_period/2;
		nLo <= '0';
		wait for clk_period/2;
   end process;

END;
