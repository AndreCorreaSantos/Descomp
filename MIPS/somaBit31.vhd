library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity somaBit31 IS
   port (
          entradaA : in std_logic;
          entradaB : in std_logic;
          inverteA : in std_logic;
          inverteB : in std_logic;
          carryIn : in std_logic;
          seletor : in std_logic_vector(1 downto 0);
          resultado : out std_logic;
          carryOut : out std_logic;
          saidaSomaBit : out std_logic;
          SLT : in std_logic
   );
end entity;

architecture comportamento OF somaBit31 IS
    signal saidaMux : std_logic;
    signal out0 : std_logic;
    signal out1 : std_logic;
    signal out2 : std_logic;
    signal out3 : std_logic;


begin

    MUXA : entity work.muxGenerico2x1bit
            port map(
                entradaA_MUX => entradaA,
                entradaB_MUX => not entradaA,
                seletor_MUX => inverteA,
                saida_MUX => saidaMux
            );

    MUXB : entity work.muxGenerico2x1bit
            port map(
                entradaA_MUX => entradaB,
                entradaB_MUX => not entradaB,
                seletor_MUX => inverteB,
                saida_MUX => saidaMux
            );

    SOMADOR : entity work.somadorCarry
            port map(
                entradaA => entradaA,
                entradaB => entradaB,
                carryIn => carryIn,
                saida => saidaSomaBit,
                carryOut => carryOut
            );
                
    
    out0 <= entradaA and entradaB;
    out1 <= entradaA or saidaMux;   
    out2 <= saidaSomaBit;
    out3 <= SLT;

    resultado <= out0 when seletor = "00" else
                 out1 when seletor = "01" else
                 out2 when seletor = "10" else
                 out3;
    
end architecture;