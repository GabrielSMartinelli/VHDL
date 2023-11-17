-- Nome Projeto: Trabalho 1
-- Data: 05/10/2023
-- Nome: Gabriel Santos Martinelli / 2264951
-- 		Vinicius Bertuol / 2205513

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.cont.all;

entity trabalho3 is
	port(sw: in std_logic_vector(7 downto 0);
		  hex0, hex1, hex2: out std_logic_vector(0 to 6));
end entity;

architecture logica of trabalho3 is
signal cont0, cont1, contotal: integer range 0 to 8 := 0;
begin
	U1: contadores port map (sw, cont0, cont1, contotal);
	with cont0 select
		hex0 <= "0000001" when 0,
				  "1001111" when 1,
				  "0010010" when 2,
				  "0000110" when 3,
				  "1001100" when 4,
				  "0100100" when 5,
				  "0100000" when 6,
				  "0001111" when 7,
				  "0000000" when 8,
				  "ZZZZZZZ" when others;
	with cont1 select
		hex1 <= "0000001" when 0,
				  "1001111" when 1,
				  "0010010" when 2,
				  "0000110" when 3,
				  "1001100" when 4,
				  "0100100" when 5,
				  "0100000" when 6,
				  "0001111" when 7,
				  "0000000" when 8,
				  "ZZZZZZZ" when others;
	with contotal select
		hex2 <= "0000001" when 0,
				  "1001111" when 1,
				  "0010010" when 2,
				  "0000110" when 3,
				  "1001100" when 4,
				  "0100100" when 5,
				  "0100000" when 6,
				  "0001111" when 7,
				  "0000000" when 8,
				  "ZZZZZZZ" when others;
end logica;