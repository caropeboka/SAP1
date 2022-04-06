library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM is
Port ( nCe : in STD_LOGIC;
	inRAM : in STD_LOGIC_VECTOR (3 downto 0);
	outRAM : out STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is
	signal ROM : STD_LOGIC_VECTOR (7 downto 0);
begin
	process(inRAM)
	begin
		case inRAM is
			when "0000" => ROM <= "00001110"; -- LDA Eh
			when "0001" => ROM <= "11100000"; -- OUT
			when "0010" => ROM <= "00011111"; -- ADD Fh
			when "0011" => ROM <= "11100000"; -- OUT
			when "0100" => ROM <= "00011111"; -- ADD Fh
			when "0101" => ROM <= "11100000"; -- OUT
			when "0110" => ROM <= "00011111"; -- ADD Fh
			when "0111" => ROM <= "11100000"; -- OUT
			when "1000" => ROM <= "00011111"; -- ADD Fh
			when "1001" => ROM <= "11100000"; -- OUT
			when "1010" => ROM <= "00011111"; -- ADD Fh
			when "1011" => ROM <= "11100000"; -- OUT
			when "1100" => ROM <= "11110000"; -- HLT
			when "1101" => ROM <= "00000000";
			when "1110" => ROM <= "00000001"; -- 1
			when "1111" => ROM <= "00000001"; -- 1
			when others => ROM <= "00000000";
		end case;
	end process;
	outRAM <= ROM when nCe='0' else "ZZZZZZZZ";
end Behavioral;