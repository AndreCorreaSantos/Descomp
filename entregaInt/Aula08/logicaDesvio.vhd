library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( 
			entrada_zf,entrada_neg, entrada_jeq, entrada_jmp, entrada_jsr,entrada_ret,entrada_jle: in std_logic;
			saida: out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of logicaDesvio is
  begin
saida <= "01" when (entrada_jmp or (entrada_jeq AND entrada_zf) or (entrada_jle AND (entrada_neg or entrada_zf)) or entrada_jsr) = '1' else
			"10" when (entrada_ret) = '1' else
			"00";
end architecture;