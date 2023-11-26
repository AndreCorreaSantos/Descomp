library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoderInstru is
    Port (
        op_code : in  STD_LOGIC_VECTOR(5 downto 0);
        output : out  STD_LOGIC_VECTOR(7 downto 0)
    );
end decoderInstru;

architecture Behavioral of decoderInstru is
		constant BEQ  : std_logic_vector(7 downto 0) := x"04";
		constant SW  : std_logic_vector(7 downto 0) := x"2b";
		constant LW  : std_logic_vector(7 downto 0) := x"23";
		constant JMP  : std_logic_vector(7 downto 0) := x"02";
begin


output <= "01100000" when op_code = "000000" 				else
			 "00000100" when op_code = BEQ(5 downto 0)      else
			 "00010001" when op_code = SW (5 downto 0)      else
			 "00111010" when op_code = LW (5 downto 0)      else
			 "10000000" when op_code = JMP(5 downto 0)      else
			 "00000000";

end Behavioral;