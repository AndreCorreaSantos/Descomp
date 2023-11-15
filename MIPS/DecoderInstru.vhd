library ieee;
use ieee.std_logic_1164.all;


entity DecoderInstru is

    port
    (   
        opcode : in std_logic_vector(5 downto 0);
        funct : in std_logic_vector(5 downto 0);
        saida : out std_logic_vector(10 downto 0)
    );
end entity;

architecture comportamento of DecoderInstru is
begin

 saida <= "00000000000";

end architecture;