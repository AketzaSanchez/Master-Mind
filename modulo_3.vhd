----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:40 10/30/2023 
-- Design Name: 
-- Module Name:    modulo_3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity modulo_3 is
	Port (D : in STD_LOGIC_VECTOR (3 downto 0);
			salida : out STD_LOGIC_VECTOR (6 downto 0));
end modulo_3;


architecture Behavioral of modulo_3 is
begin

	process(D)
	begin
		salida <= "0000000";
		
		case D is 
			when "0000" => salida <= "1111110"; --Representar 0
			when "0001" => salida <= "0110000"; --Representar 1
			when "0010" => salida <= "1101101"; --Representar 2
			when "0011" => salida <= "1111001"; --Representar 3
			when "0100" => salida <= "0110011"; --Representar 4
			when "0101" => salida <= "1011011"; --Representar 5
			when "0110" => salida <= "1011111"; --Representar 6
			when "0111" => salida <= "1110000"; --Representar 7
			when "1000" => salida <= "1111111"; --Representar 8
			when "1001" => salida <= "1111011"; --Representar 9
			when others => salida <= "0000000"; --Valor superior a 9
		end case;
	end process;

end Behavioral;

