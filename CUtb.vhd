--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:41 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/CUtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU
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
 
ENTITY CUtb IS
END CUtb;
 
ARCHITECTURE behavior OF CUtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         opcode : IN  std_logic_vector(3 downto 0);
         ctrl_bus : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal opcode : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ctrl_bus : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          CLK => CLK,
          CLR => CLR,
          opcode => opcode,
          ctrl_bus => ctrl_bus
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
		wait for CLK_period/2;
		CLR <= '0';
		wait for CLK_period/2;
   end process;
	
	opcode_proc: process
	begin
	opcode <= "0001";
	wait for CLK_period;
	opcode <= "1111";
	wait for CLK_period;
	end process;

END;
