library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( jmps : in std_logic_vector(1 downto 0);
          zf : in std_logic;
         saida : out std_logic
			);
end entity;

architecture comportamento of logicaDesvio is
  
  begin
saida <= jmps(1) Or (jmps(0) AND zf);
end architecture;
