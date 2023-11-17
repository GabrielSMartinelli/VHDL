library ieee;
use ieee.std_logic_1164.all;

package cont is
	component contadores is
		port(entrada: in std_logic_vector(7 downto 0);
			  cont0, cont1, contotal: out integer range 0 to 8);
	end component;
end package;