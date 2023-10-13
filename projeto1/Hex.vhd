library ieee;
use ieee.std_logic_1164.all;

-- port map(DIN => dOUT(3 downto 0), habilita => habilitaHEX4,CLK=>CLK);

entity Hex is
    generic ( larguraDados : natural := 4
);
  port ( DIN: in std_logic_vector(3 downto 0);
         habilita : in std_logic;
         saida7seg : out std_logic_vector(6 downto 0);
         CLK : in std_logic
			);
end entity;

architecture comportamento of Hex is
    signal saidaREG : std_logic_vector(3 downto 0);
    begin

REG4BITS : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
    port map (DIN => DIN, DOUT => saidaREG, ENABLE => habilita, CLK => CLK, RST => '0');
DECODER7SEG : entity work.conversorHex7Seg
    port map(dadoHex => saidaREG, apaga=>'0', negativo=> '0', overFlow=> '0', saida7seg => saida7seg); -- nao sei o que colocar no apaga,negativo e overflow

end architecture;
