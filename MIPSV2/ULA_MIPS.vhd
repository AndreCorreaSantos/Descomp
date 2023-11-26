library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_MIPS is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR (3 downto 0);
		zero: out STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULA_MIPS is
	signal selecao: std_logic_vector(1 downto 0);
	signal inverte_A, inverte_B: std_logic;
	constant sel_And  : std_logic_vector(3 downto 0) := "0000";
   constant sel_Nor  : std_logic_vector(3 downto 0) := "1100";
   constant sel_Or: std_logic_vector(3 downto 0) := "0001";
   constant sel_Add: std_logic_vector(3 downto 0) := "0010";
   constant sel_Sub: std_logic_vector(3 downto 0) := "0110";
   constant sel_Slt: std_logic_vector(3 downto 0) := "0111";
	
begin



ULA_UNIDADE :  entity work.ULA_UNITY
        port map( entradaA => entradaA,
                 entradaB =>  entradaB,
					  seletor => selecao,
					  inverte_A => inverte_A,
					  inverte_B => inverte_B,
                 saida => saida);

zero <= NOT(saida(0) or saida(1) or saida(2) or saida(3)
        or saida(4) or saida(5) or saida(6) or saida(7)
        or saida(8) or saida(9) or saida(10) or saida(11)
        or saida(12) or saida(13) or saida(14) or saida(15)
        or saida(16) or saida(17) or saida(18) or saida(19)
        or saida(20) or saida(21) or saida(22) or saida(23)
        or saida(24) or saida(25) or saida(26) or saida(27)
        or saida(28) or saida(29) or saida(30) or saida(31));  


selecao(0) <= seletor(0);

selecao(1) <= seletor(1);
			  
inverte_A <= seletor(3);

inverte_B <= seletor(2);


end architecture;