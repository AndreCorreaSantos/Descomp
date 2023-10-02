library IEEE;
use ieee.std_logic_1164.all;

entity edgeKey is
    port(
        entrada  : in std_logic;
        CLK : in std_logic;
        limpaLeitura: in std_logic;
        saida    : out std_logic);
end entity;

architecture comportamento of edgeKey is
	signal saidaEdge: std_logic;
	signal saidaEdgeAND: std_logic;
begin

EDGE_KEY0: entity work.edgeDetector(bordaSubida)
    port map (clk => CLK, entrada => not(entrada), saida => saidaEdge);



REG_KEY0: entity work.registradorFlag
    port map (DIN => '1', DOUT => saida, ENABLE => '1', CLK => saidaEdgeAND, RST => limpaLeitura);

saidaEdgeAND <= not(entrada) and (not saidaEdge);

end architecture;



