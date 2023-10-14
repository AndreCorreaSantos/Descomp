library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      zf : out STD_LOGIC
    );
end entity;

architecture comportamento of ULASomaSub is
  signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  signal pass : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  signal op_and : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  signal saida_internal : STD_LOGIC_VECTOR((larguraDados-1) downto 0); -- sinal para guardar valor interno da saida e calcular zf

begin
  soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
  subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
  pass <= STD_LOGIC_VECTOR(unsigned(entradaB));
  op_and <= STD_LOGIC_VECTOR(entradaA AND entradaB);
  saida_internal <= soma when (seletor = "01") else 
                   subtracao when (seletor = "00") else 
                   op_and when (seletor = "11") else --checar opcode depois
                   pass;
  saida <= saida_internal; 
  zf <= not (saida_internal(7) or saida_internal(6) or saida_internal(5) or saida_internal(4) or saida_internal(3) or saida_internal(2) or saida_internal(1) or saida_internal(0));
end architecture;
