library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( jmps : in std_logic_vector(3 downto 0);
          zf : in std_logic;
         saida : out std_logic_vector(1 downto 0)
			);
end entity;

architecture comportamento of logicaDesvio is
  
  begin
saida <= "01" when (jmps="1000" OR jmps="0010" OR (jmps="0001" AND zf='1')) else  --checar se esta correto
         "10" when jmps="0100" else
         "00";
end architecture;
