library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR (2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		zf: out std_logic;
      le : out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal mascara : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal signedSub : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      signedSub <= STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB));
		passa <= STD_LOGIC_VECTOR(unsigned(entradaB));
		mascara <= entradaA AND entradaB;
      saida <= soma when (seletor = "010") else 
					subtracao when (seletor = "000") else
					passa when (seletor = "001") else
					mascara when (seletor = "011") else
               signedSub when (seletor = "100");
		zf <= not (saida(7) or saida(6) or saida(5) or saida(4) or saida(3) or saida(2) or saida(1) or saida(0));
      le <= zf OR saida(larguraDados-1); -- checar se esta correto
end architecture;