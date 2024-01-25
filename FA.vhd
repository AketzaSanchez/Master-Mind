----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:55 10/30/2023 
-- Design Name: 
-- Module Name:    FA - Behavioral 
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


entity FA is
	Port (sum_a : in STD_LOGIC;
			sum_b : in STD_LOGIC;
			cin : in STD_LOGIC;
			sum : out STD_LOGIC;
			cout : out STD_LOGIC);
end FA;


architecture Behavioral of FA is

begin
	sum <= sum_a xor sum_b xor cin;
	cout <= (sum_a and sum_b) or (cin and sum_a) or (cin and sum_b);

end Behavioral;

