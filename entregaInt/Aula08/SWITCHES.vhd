library ieee;
use ieee.std_logic_1164.all;

entity SWITCHES is
  port ( 
     entrada_switches: in std_logic_vector(9 downto 0);
	  habilita_Switchs,habilita_Switch8, habilita_Switch9: in std_logic;
	  saida: out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of SWITCHES is
  begin
  
tri_state_8_1 : entity work.buffer_3_state_8portas
	port map(
		entrada => entrada_switches(7 downto 0),
		habilita => habilita_Switchs,
		saida => saida
);

tri_state_1_1 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_switches(8),
		habilita => habilita_Switch8,
		saida => saida(0)
);

tri_state_1_2 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_switches(9),
		habilita => habilita_Switch9,
		saida => saida(0)
);
end architecture;