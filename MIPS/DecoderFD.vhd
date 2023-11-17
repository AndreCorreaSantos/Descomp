library ieee;
use ieee.std_logic_1164.all;


entity DecoderFD is

    port 
        (
        opcode : in std_logic_vector(5 downto 0);
        pControle : out std_logic_vector(7 downto 0);
        R : out std_logic
        );
end entity;

architecture comportamento of DecoderFD is
constant R_op : std_logic_vector(5 downto 0) := "000000";
constant LW : std_logic_vector(5 downto 0) := "100011";
constant SW : std_logic_vector(5 downto 0) := "101011";
constant BEQ : std_logic_vector(5 downto 0) := "000100";
begin



pControle <= "01100000" when (opcode = R_op) else
             "00111010" when (opcode = LW) else
             "00111001" when (opcode = SW) else
             "00010100" when (opcode = BEQ) else
             "10000000"; -- ELSE JMP
R <= '1' when (opcode = R_op) else
     '0';

end architecture;