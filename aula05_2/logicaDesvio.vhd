library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( jeq : in std_logic;
         jmp : in std_logic;
          zf : in std_logic;
         saida : out std_logic
			);
end entity;

architecture comportamento of logicaDesvio is
  
  begin
saida <=jmp Or (jeq AND zf);
end architecture;
