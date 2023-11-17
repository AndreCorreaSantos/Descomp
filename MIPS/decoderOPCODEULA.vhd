library ieee;
use ieee.std_logic_1164.all;


entity decoderOPCODEULA is

    port
        (
        opcode : in std_logic_vector(5 downto 0);
        ULActrl : out std_logic_vector(3 downto 0)
        );
end entity;

architecture comportamento of decoderOPCODEULA is
constant SW : std_logic_vector(5 downto 0) := "101011";
constant LW : std_logic_vector(5 downto 0) := "100011";
begin



    ULActrl <= "0010" when (opcode = SW) else
               "0010" when (opcode = LW) else
               "0110"; -- ELSE BEQ

end architecture;