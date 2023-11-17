library ieee;
use ieee.std_logic_1164.all;


entity decoderFUNCTULA is

    port
        (
        funct : in std_logic_vector(5 downto 0);
        ULActrl : out std_logic_vector(3 downto 0)
        );
end entity;

architecture comportamento of decoderFUNCTULA is
constant ANDf : std_logic_vector(5 downto 0) := "100100";
constant ORf : std_logic_vector(5 downto 0) := "100101";
constant ADDf : std_logic_vector(5 downto 0) := "100000";
constant SUBf : std_logic_vector(5 downto 0) := "100010";
constant SLTf : std_logic_vector(5 downto 0) := "101010";
begin



    ULActrl <=  "0000" when (funct = ANDf) else
                "0001" when (funct = ORf) else
                "0010" when (funct = ADDf) else
                "0110" when (funct = SUBf) else
                "0111" when (funct = SLTf) else
                "1100"; -- ELSE NOR

end architecture;