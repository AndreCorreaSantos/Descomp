library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( jmps : in std_logic_vector(3 downto 0);
          zf : in std_logic;
         saida : out std_logic_vector(1 downto 0)
			);
end entity;

architecture comportamento of logicaDesvio is
  constant JMP: std_logic_vector(3 downto 0) := "1000";
  constant RET: std_logic_vector(3 downto 0) := "0100";
  constant JSR: std_logic_vector(3 downto 0) := "0010";
  constant JEQ: std_logic_vector(3 downto 0) := "0001";

  begin

saida <= "01" when (jmps=JMP OR jmps=JSR OR (jmps=JEQ AND zf='1')) else  --checar se esta correto, ta saindo correto no caso JSR
         "10" when jmps=RET else
         "00";
end architecture;
