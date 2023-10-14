library ieee;
use ieee.std_logic_1164.all;

entity KEYS is
  port ( 
	  entrada_key0: in std_logic;
     entrada_keys: in std_logic_vector(3 downto 1);
	  entrada_RESET: in std_logic;
	  habilita_KEY0,habilita_KEY1,habilita_KEY2: in std_logic;
	  habilita_KEY3,habilita_FPGA_RESET: in std_logic;
	  saida: out std_logic
  );
end entity;

architecture comportamento of KEYS is
  begin
  
  tri_state_1_1 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_key0,
		habilita => habilita_KEY0,
		saida => saida
	);
	
	tri_state_1_2 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_keys(1),
		habilita => habilita_KEY1,
		saida => saida
	);
	
	tri_state_1_3 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_keys(2),
		habilita => habilita_KEY2,
		saida => saida
	);
	tri_state_1_4 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_keys(3),
		habilita => habilita_KEY3,
		saida => saida
	);
	tri_state_1_5 : entity work.buffer_3_state_1porta
	port map(
		entrada => entrada_RESET,
		habilita => habilita_FPGA_RESET,
		saida => saida
	);
end architecture;