--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:10 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/IRtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IR
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
 
ENTITY IRtb IS
END IRtb;
 
ARCHITECTURE behavior OF IRtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IR
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         nLi : IN  std_logic;
         nEi : IN  std_logic;
         inIR : IN  std_logic_vector(7 downto 0);
         outIRlow : OUT  std_logic_vector(3 downto 0);
         outIRhigh : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal nLi : std_logic := '0';
   signal nEi : std_logic := '0';
   signal inIR : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal outIRlow : std_logic_vector(3 downto 0);
   signal outIRhigh : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IR PORT MAP (
          CLK => CLK,
          CLR => CLR,
          nLi => nLi,
          nEi => nEi,
          inIR => inIR,
          outIRlow => outIRlow,
          outIRhigh => outIRhigh
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

 stim_proc: process
   begin		
	wait for CLK_period/2;
	inIR <= "00001111";
	nEi <= '0';
	wait for CLK_period/2;
	nLi <= '1';
	wait;
   end process;
	
	clr_proc: process
   begin		
	CLR <= '0';
	wait for clk_period/2;
	CLR <= '1';
	wait;
   end process;

END;
