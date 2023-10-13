library ieee;
use ieee.std_logic_1164.all;

entity HexDisplay is
    generic ( larguraDados : natural := 4
);
  port ( DIN: in std_logic_vector(3 downto 0);
         habilita : in std_logic_vector(5 downto 0);
         saida5 : out std_logic_vector(6 downto 0);
         saida4 : out std_logic_vector(6 downto 0);
         saida3 : out std_logic_vector(6 downto 0);
         saida2 : out std_logic_vector(6 downto 0);
         saida1 : out std_logic_vector(6 downto 0);
         saida0 : out std_logic_vector(6 downto 0);
         CLK : in std_logic
			);
end entity;

architecture comportamento of HexDisplay is
    signal saidaREG : std_logic_vector(3 downto 0);
    begin


HEX5: entity work.Hex
    port map(DIN => DIN, habilita => habilita(5),saida7seg => saida5, CLK=>CLK);

HEX4: entity work.Hex
        port map(DIN => DIN, habilita => habilita(4),saida7seg => saida4,CLK=>CLK);

HEX3: entity work.Hex
        port map(DIN => DIN, habilita => habilita(3),saida7seg => saida3, CLK=>CLK);

HEX2: entity work.Hex
        port map(DIN => DIN, habilita => habilita(2),saida7seg => saida2, CLK=>CLK);

HEX1: entity work.Hex
        port map(DIN => DIN, habilita => habilita(1),saida7seg => saida1, CLK=>CLK);

HEX0: entity work.Hex
        port map(DIN => DIN, habilita => habilita(0),saida7seg => saida0, CLK=>CLK);

end architecture;