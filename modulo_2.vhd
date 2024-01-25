----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:27 10/30/2023 
-- Design Name: 
-- Module Name:    modulo_2 - Behavioral 
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


entity modulo_2 is
	Port (C : in STD_LOGIC_VECTOR (3 downto 0);
			D : out STD_LOGIC_VECTOR (3 downto 0));
end modulo_2;


architecture Behavioral of modulo_2 is
	component FA
		port (sum_a,sum_b,cin : in std_logic;
				sum, cout : out std_logic);
	end component;
	
	signal s_out1, s_out2, s_out3, c_out1, c_out2, c_out3, c_out4, c_out5 : std_logic;

begin
	FA0: FA port map (C(0), C(1), '0', s_out1, c_out1);
	FA1: FA port map (C(2), C(3), '0', s_out2, c_out2);
	FA2: FA port map (s_out1, s_out2, '0', D(0), c_out3);
	FA3: FA port map (c_out1, c_out2, '0', s_out3, c_out4);
	FA4: FA port map (c_out3, s_out3, '0', D(1), c_out5);
	FA5: FA port map (c_out4, c_out5, '0', D(2), D(3));


end Behavioral;

