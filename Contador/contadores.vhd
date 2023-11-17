library ieee;
use ieee.std_logic_1164.all;

entity contadores is
	port(entrada: in std_logic_vector(7 downto 0);
		  cont0, cont1, contotal: out integer range 0 to 8);
end entity;

architecture logica of contadores is
begin
	process (entrada)
	variable cont00, cont11, contotal1, contotal0: integer range 0 to 8 := 0;
	begin
		cont00 := 0;
		cont11 := 0;
		contotal1 := 0;
		contotal0 := 0;
		for i in 7 downto 0 loop
			if (entrada(i) = '1' and contotal0 = 0) then
				cont00 := 0;
				cont11 := cont11 + 1;
				contotal1 := contotal1 + 1;
			elsif (entrada(i) = '1' and contotal0 > 0) then
				cont00 := 0;
				contotal1 := contotal1 + 1;
			else
				cont00 := cont00 + 1;
				contotal0 := contotal0 + 1;
			end if;
		end loop;
		cont0 <= cont00;
		cont1 <= cont11;
		contotal <= contotal1;
	end process;
end logica;
		  