----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:52 10/30/2023 
-- Design Name: 
-- Module Name:    master_mind - Behavioral 
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


entity master_mind is
	Port (A,B : in STD_LOGIC_VECTOR (3 downto 0);
			E : in STD_LOGIC;
			salida: out STD_LOGIC_VECTOR (6 downto 0);
			F : out STD_LOGIC);
end master_mind;

architecture Behavioral of master_mind is
	component modulo_1
		port (A,B : in STD_LOGIC_VECTOR (3 downto 0);
				E : in STD_LOGIC;
				C : out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component modulo_2
		port (C : in STD_LOGIC_VECTOR (3 downto 0);
				D : out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component modulo_3
		port (D : in STD_LOGIC_VECTOR (3 downto 0);
				salida : out STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	signal C, D : std_logic_vector(3 downto 0);
	signal S : std_logic_vector(6 downto 0);
	
begin
	U1: modulo_1 port map (A, B, E, C);
	U2: modulo_2 port map (C, D);
	U3: modulo_3 port map (D, S);
	
	salida <= S;
	F <= D(2);


end Behavioral;

