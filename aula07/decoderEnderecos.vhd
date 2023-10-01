library ieee;
use ieee.std_logic_1164.all;

entity decoderEnderecos is
    port (
        Enderecos    : in  std_logic_vector(8 downto 0);
        habilitaRAM  : out std_logic;
        habilitaLED8 : out std_logic;
        habilitaLED1 : out std_logic;
        habilitaLED2 : out std_logic;
        habilitaHEX : out std_logic_vector(5 downto 0);
        CLK          : in  std_logic;
        WE           : in std_logic
    );
end entity;

architecture comportamento of decoderEnderecos is
    signal entradaDecoderInt     : std_logic_vector(2 downto 0);
    signal saidaDecoderInt       : std_logic_vector(7 downto 0);
    signal ledHabilita           : std_logic;
    signal end0LED               : std_logic;
    signal end1LED               : std_logic;
    signal end2LED               : std_logic;
    signal entradaDecoderBlocos  : std_logic_vector(2 downto 0);
    signal saidaDecoderBlocos    : std_logic_vector(7 downto 0);
begin

    DECBLOCOS : entity work.decoder3x8
        port map (
            entrada => entradaDecoderBlocos,
            saida   => saidaDecoderBlocos
        );

    DECINT : entity work.decoder3x8
        port map (
            entrada => entradaDecoderInt,
            saida   => saidaDecoderInt
        );

    entradaDecoderBlocos <= Enderecos(8 downto 6);
    entradaDecoderInt <= Enderecos(2 downto 0);
    ledHabilita <= saidaDecoderBlocos(4);
    end0LED <= saidaDecoderInt(0);
    end1LED <= saidaDecoderInt(1);
    end2LED <= saidaDecoderInt(2);

    -- saidas
habilitaRAM <= saidaDecoderBlocos(0);
habilitaLED8 <= saidaDecoderBlocos(4) and saidaDecoderInt(0) and WE;
habilitaLED1 <= saidaDecoderBlocos(4) and saidaDecoderInt(1) and WE;
habilitaLED2 <= saidaDecoderBlocos(4) and saidaDecoderInt(2) and WE;

habilitaHEX(0) <= saidaDecoderBlocos(4) and saidaDecoderInt(0) and WE and (not Enderecos(5));
habilitaHEX(1) <= saidaDecoderBlocos(4) and saidaDecoderInt(1) and WE and (not Enderecos(5));
habilitaHEX(2) <= saidaDecoderBlocos(4) and saidaDecoderInt(2) and WE and (not Enderecos(5));
habilitaHEX(3) <= saidaDecoderBlocos(4) and saidaDecoderInt(3) and WE and (not Enderecos(5));
habilitaHEX(4) <= saidaDecoderBlocos(4) and saidaDecoderInt(4) and WE and (not Enderecos(5));
habilitaHEX(5) <= saidaDecoderBlocos(4) and saidaDecoderInt(5) and WE and (not Enderecos(5));


end architecture;
