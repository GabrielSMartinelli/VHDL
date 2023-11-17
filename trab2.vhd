library ieee;
use ieee.std_logic_1164.all;

-- Nome Projeto: Trabalho 2
-- Data: 21/09/23
-- Nome: Vinicius Bertuol/2205513
-- Nome2: Gabriel Martinelli/2264951


entity trab2 is
    GENERIC (N: INTEGER := 8);
    port (
        SW : in std_logic_vector(9 downto 0);
        KEY : in std_logic_vector(0 downto 0);
        LEDR : out std_logic_vector(N-1 downto 0)
    );
end trab2;

architecture logic of trab2 is
begin

    process(key(0), SW(8))

    begin

    if(SW(8) = '1') then

        GEN : for i in 0 to N-1 generate
            LEDR(i) <= '0';
        end generate GEN;

    else if( key(0)='1' and key(0)'event) then
        if(SW(9) = '1') then
            GEN2 : for i in 0 to N-1 generate
            LEDR(i) <= SW(i);
            end generate GEN2;
        end if;
    end if;

    end process;
end logic;