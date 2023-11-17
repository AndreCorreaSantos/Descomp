library ieee;
use ieee.std_logic_1164.all;


entity DecoderInstru is

    port
    (   
        opcode : in std_logic_vector(5 downto 0);
        funct : in std_logic_vector(5 downto 0);
        pControle : out std_logic_vector(7 downto 0);
        ctrlULA : out std_logic_vector(3 downto 0)
    );
end entity;

architecture comportamento of DecoderInstru is
    signal ULActrl1 : std_logic_vector(3 downto 0);
    signal ULActrl2 : std_logic_vector(3 downto 0);
    signal R : std_logic;
begin

FD : entity work.decoderFD 
    port map
    (
        opcode => opcode,
        pControle => pControle,
        R => R
    );

DECULA1 : entity work.decoderOPCODEULA
    port map
    (
        opcode => opcode,
        ULActrl => ULActrl1
    );

DECULA2 : entity work.decoderFUNCTULA
    port map
    (
        funct => funct,
        ULActrl => ULActrl2
    );

MUX : entity work.muxGenerico2x1 generic map( larguraDados => natural(4))
    port map
    (
        entradaA_MUX => ULActrl1,
        entradaB_MUX => ULActrl2,
        seletor_MUX => R,
        saida_MUX => ctrlULA
    );

end architecture;