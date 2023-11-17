--Nome Projeto: Trabalho4
--Data: 16/11/2023
--Nome: Gabriel Martinelli RA:2264951
--		  Vinicius Bertuol	RA:2205513

library ieee;
use ieee.std_logic_1164.all;
use work.funcproc.all;

entity Trabalho4 is
	port(SW: in std_logic_vector(3 downto 0);
		  LEDR: out std_logic_vector(3 downto 0));
end entity;

architecture logica of Trabalho4 is
begin
	begin
		x(SW(3), SW(2), SW(1 downto 0), LEDR);
end logica;