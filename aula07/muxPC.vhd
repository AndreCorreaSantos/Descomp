LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxPC is
  generic ( larguraEntrada : natural := 9;
        larguraSelecao : natural := 2
        );
  port (
    entradaA_MUX : in  std_logic_vector(larguraEntrada-1 downto 0);
    entradaB_MUX : in std_logic_vector(larguraEntrada-1 downto 0);
    entradaC_MUX : in std_logic_vector(larguraEntrada-1 downto 0);
    seletor_MUX : in  std_logic_vector(larguraSelecao-1 downto 0);
    saida_MUX   : out std_logic_vector(8 downto 0)
  );
end entity;

architecture Behavioral of muxPC is
  begin
      saida_MUX <= entradaA_MUX when seletor_MUX = "00" else
                   entradaB_MUX when seletor_MUX = "01" else
                   entradaC_MUX when seletor_MUX = "10" else
                   (others => '0'); -- Adicionado um valor padrão para o caso em que nenhum dos casos acima é satisfeito
  end architecture;
  