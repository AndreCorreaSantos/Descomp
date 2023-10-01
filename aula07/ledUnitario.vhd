library ieee;
use ieee.std_logic_1164.all;

entity ledUnitario is
    generic ( larguraDados : natural := 1
);
  port ( habilita : in std_logic;
         dadoIN : in std_logic;
         dadoOUT : in std_logic;
         CLK : in std_logic
			);
end entity;

architecture comportamento of ledUnitario is
    signal saidaREG : std_logic;
    begin

REG1 : entity work.registradorFlag
    port map (DIN => dadoIN, DOUT => saidaREG, ENABLE => habilita, CLK => CLK, RST => '0');
end architecture;
