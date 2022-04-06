--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:01:43 03/14/2021
-- Design Name:   
-- Module Name:   D:/Tugas/VHDLorsomeshitidk/SAP1nome/ALUtb.vhd
-- Project Name:  SAP1nome
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUtb IS
END ALUtb;
 
ARCHITECTURE behavior OF ALUtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Su : IN  std_logic;
         Eu : IN  std_logic;
         inA : IN  std_logic_vector(7 downto 0);
         inB : IN  std_logic_vector(7 downto 0);
         result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Su : std_logic := '0';
   signal Eu : std_logic := '0';
   signal inA : std_logic_vector(7 downto 0) := (others => '0');
   signal inB : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Su => Su,
          Eu => Eu,
          inA => inA,
          inB => inB,
          result => result
        );



   -- Stimulus process
  stim_proc: process
   begin		
      inA <= "00000100";
		inB <= "00000010";
		Su <= '1';
		wait for 50 ns;
		Su <= '0';
		wait for 50 ns;
	end process;
	
	Eu_proc: process
		begin
		Eu <= '0';
		wait for 50 ns;
		Eu <= '1';
		wait;
	end process;

END;
