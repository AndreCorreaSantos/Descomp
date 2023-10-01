library ieee;
use ieee.std_logic_1164.all;

entity led8 is
    generic ( larguraDados : natural := 8
);
  port ( habilita : in std_logic;
         dadoIN : in std_logic_vector(7 downto 0);
         CLK : in std_logic
			);
end entity;

architecture comportamento of led8 is
    signal saidaREG : std_logic_vector(7 downto 0);
    begin

REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
    port map (DIN => dadoIN, DOUT => saidaREG, ENABLE => habilita, CLK => CLK, RST => '0');
end architecture;
