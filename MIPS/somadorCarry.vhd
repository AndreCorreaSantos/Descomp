library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorCarry is
    port
    (
        entradaA, entradaB: in std_logic;
        carryIn : in std_logic;
        saida:  out std_logic;
        carryOut : out std_logic
    );
end entity;

architecture comportamento of somadorCarry is
    begin
        saida <= entradaA xor entradaB xor carryIn;
        carryOut <= (entradaA and entradaB) or (entradaA and carryIn) or (entradaB and carryIn);
end architecture;