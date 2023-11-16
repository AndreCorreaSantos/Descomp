library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity somaBit IS
   port (
          entradaA : in std_logic;
          entradaB : in std_logic;
          inverteB : in std_logic;
          carryIn : in std_logic;
          seletor : in std_logic_vector(1 downto 0);
          resultado : out std_logic;
          carryOut : out std_logic
   );
end entity;

architecture comportamento OF somaBit IS
    signal saidaMux : std_logic;
    signal saidaSomaBit : std_logic;
    signal out0 : std_logic;
    signal out1 : std_logic;
    signal out2 : std_logic;
    signal out3 : std_logic;


begin



    MUX : entity work.muxGenerico2x1
            port map(
                entradaA_MUX => entradaB,
                entradaB_MUX => not entradaB,
                seletor_MUX => inverteB,
                saida_MUX => saidaMux
            );

    SOMABIT :  entity work.somaBit
            port map(
                entradaA => entradaA,
                entradaB => saidaMux,
                carryIn => carryIn,
                resultado => saidaSomaBit,
                carryOut => carryOut
            );
    
    out0 <= entradaA and entradaB;
    out1 <= entradaA or saidaMux;   
    out2 <= saidaSomaBit;
    out3 <= '0'; --NAO ENTENDI A TERCEIRA SAIDA, PERGUNTAR

    resultado <= out0 when seletor = "00" else
                 out1 when seletor = "01" else
                 out2 when seletor = "10" else
                 out3;
    
end architecture;