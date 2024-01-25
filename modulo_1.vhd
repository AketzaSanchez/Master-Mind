----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:11 10/30/2023 
-- Design Name: 
-- Module Name:    modulo_1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity modulo_1 is
	Port (A,B : in STD_LOGIC_VECTOR (3 downto 0);
			E : in STD_LOGIC;
			C: out STD_LOGIC_VECTOR (3 downto 0));
end modulo_1;


architecture Behavioral of modulo_1 is
begin

	process (A,B,E)
	begin
		if E = '0' then
            C <= "0000";
      else
			C <= (others => '0');
			
			for i in 0 to 3 loop
				if A(i) = B(i) then
					C(i) <= '1';
				end if;
			end loop;
      end if;
    end process;

end Behavioral;

