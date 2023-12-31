library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := "1111"; --zera o acumulador
        tmp(1)  := "0010"; --soma x com 0 e guarda no acumulador
        tmp(2)  := "0010"; --soma x com x e guarda no acumulador
        tmp(3)  := "0010"; --soma x com x e guarda no acumlador
        tmp(4)  := "0011"; --subtrai 4 de de x e guarda no acumulador
        tmp(5)  := "0000"; --nop
        tmp(6)  := "0000";	--nop
        tmp(7)  := "0000"; --nop
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;