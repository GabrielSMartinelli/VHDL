library ieee;
use ieee.std_logic_1164.all;

package funcproc is
	function y(en: in std_logic; 
					a: in std_logic_vector) return std_logic_vector;
	procedure x(signal en, sel: in std_logic; 
					signal a: in std_logic_vector; 
					signal z: out std_logic_vector);
end funcproc;

package body funcproc is

	function y(en: in std_logic; a: in std_logic_vector) return std_logic_vector is
	begin
		if en = '1' then
			case a is
			when "00" => return "0001";
			when "01" => return "0010";
			when "11" => return "0100";
			when "10" => return "1000";
			end case;
		else
			return "ZZZZ";
		end if;
	end y;
		
	procedure x(signal en, sel: in std_logic; signal a: in std_logic_vector; signal z: out std_logic_vector) is
	begin
		if sel = '1' then
			if en = '1' then
				case a is
				when "00" => z <= "1000";
				when "01" => z <= "0100";
				when "11" => z <= "0010";
				when "10" => z <= "0001";
				end case;
			else
				z <= "ZZZZ";
			end if;
		else
			z <= y(en, a);
		end if;
	end x;
end funcproc;