library ieee;
use ieee.std_logic_1164.all;

entity decoderEnderecos is
    port (
        Enderecos    : in  std_logic_vector(8 downto 0);
        CLK          : in  std_logic;
        WE           : in std_logic;
        RD           : in std_logic;
        habilitaRAM  : out std_logic;
        habilitaLED8 : out std_logic;
        habilitaLED1 : out std_logic;
        habilitaLED2 : out std_logic;
        habilitaHEX : out std_logic_vector(5 downto 0);
        habilitaSW7 : out std_logic;
        habilitaSW8 : out std_logic;
        habilitaSW9 : out std_logic;
        habilitaKEY0 : out std_logic;
        habilitaKEY1 : out std_logic;
        habilitaKEY2 : out std_logic;
        habilitaKEY3 : out std_logic;
        habilitaRESET : out std_logic;
        limpaLeitura : out std_logic
    );
end entity;

architecture comportamento of decoderEnderecos is
    signal entradaDecoderInt     : std_logic_vector(2 downto 0);
    signal saidaDecoderInt       : std_logic_vector(7 downto 0);
    signal entradaDecoderBlocos  : std_logic_vector(2 downto 0);
    signal saidaDecoderBlocos    : std_logic_vector(7 downto 0);
begin
    -- decoder para enderecamento dos perifericos
    DECBLOCOS : entity work.decoder3x8
        port map (
            entrada => entradaDecoderBlocos,
            saida   => saidaDecoderBlocos
        );
    --decoder para enderecamento interno dos perifericos
    DECINT : entity work.decoder3x8 
        port map (
            entrada => entradaDecoderInt,
            saida   => saidaDecoderInt
        );

    entradaDecoderBlocos <= Enderecos(8 downto 6);
    entradaDecoderInt <= Enderecos(2 downto 0);

    -- saidas
habilitaRAM <= saidaDecoderBlocos(0);
habilitaLED8 <= saidaDecoderBlocos(4) and saidaDecoderInt(0) and WE and (not Enderecos(5));
habilitaLED1 <= saidaDecoderBlocos(4) and saidaDecoderInt(1) and WE and (not Enderecos(5));
habilitaLED2 <= saidaDecoderBlocos(4) and saidaDecoderInt(2) and WE and (not Enderecos(5));

habilitaHEX(0) <= saidaDecoderBlocos(4) and saidaDecoderInt(0) and WE and Enderecos(5);
habilitaHEX(1) <= saidaDecoderBlocos(4) and saidaDecoderInt(1) and WE and Enderecos(5);
habilitaHEX(2) <= saidaDecoderBlocos(4) and saidaDecoderInt(2) and WE and Enderecos(5);
habilitaHEX(3) <= saidaDecoderBlocos(4) and saidaDecoderInt(3) and WE and Enderecos(5);
habilitaHEX(4) <= saidaDecoderBlocos(4) and saidaDecoderInt(4) and WE and Enderecos(5);
habilitaHEX(5) <= saidaDecoderBlocos(4) and saidaDecoderInt(5) and WE and Enderecos(5);

habilitaSW7 <= RD and ( not Enderecos(5)) and saidaDecoderInt(0) and saidaDecoderBlocos(5); -- NOT A5 
habilitaSW8 <= RD and ( not Enderecos(5)) and saidaDecoderInt(1) and saidaDecoderBlocos(5);
habilitaSW9 <= RD and ( not Enderecos(5)) and saidaDecoderInt(2) and saidaDecoderBlocos(5);

habilitaKEY0 <= RD and Enderecos(5) and saidaDecoderInt(0) and saidaDecoderBlocos(5);
habilitaKEY1 <= RD and Enderecos(5) and saidaDecoderInt(1) and saidaDecoderBlocos(5);
habilitaKEY2 <= RD and Enderecos(5) and saidaDecoderInt(2) and saidaDecoderBlocos(5);
habilitaKEY3 <= RD and Enderecos(5) and saidaDecoderInt(3) and saidaDecoderBlocos(5);
habilitaRESET <= RD and Enderecos(5) and saidaDecoderInt(4) and saidaDecoderBlocos(5);

limpaLeitura <= Enderecos(8) and Enderecos(7) and Enderecos(6) and Enderecos(5) and Enderecos(4) and Enderecos(3) and Enderecos(2) and Enderecos(1) and Enderecos(0) and WE;

end architecture;
