library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1001";
  constant JSR : std_logic_vector(3 downto 0) := "1000";
  constant RET : std_logic_vector(3 downto 0) := "1010";


  begin

saida <= "000000001" when opcode = STA else -- settar flags de jump e chamar logica de controle
         "000110010" when opcode = LDA else 
         "000101010" when opcode = SOMA else
         "000100010" when opcode = SUB else
         "001110000" when opcode = LDI else
         "100000001" when opcode = JMP else
         "010000000" when opcode = JEQ else
         "000000110" when opcode = CEQ else
         "000000000";  -- NOP para todo outro caso

end architecture;
