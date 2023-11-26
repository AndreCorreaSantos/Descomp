library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoderULA is
    Port (
        funct : in  STD_LOGIC_VECTOR(5 downto 0);
		  op_code: in STD_LOGIC_VECTOR(5 downto 0);
        output : out  STD_LOGIC_VECTOR(3 downto 0)
    );
end decoderULA;

architecture Behavioral of decoderULA is
  constant OP_And  : std_logic_vector(7 downto 0) := x"24";
  constant OP_Nor  : std_logic_vector(7 downto 0) := x"27";
  constant OP_Or: std_logic_vector(7 downto 0) := x"25";
  constant OP_Add: std_logic_vector(7 downto 0) := x"20";
  constant OP_Sub: std_logic_vector(7 downto 0) := x"22";
  constant OP_Slt: std_logic_vector(7 downto 0) := x"2A";
  signal tipo_R: std_logic;
  signal saida_tipo_R: std_logic_vector(3 downto 0);
  signal saida_tipo_I: std_logic_vector(3 downto 0);
  constant BEQ  : std_logic_vector(7 downto 0) := x"04";
  constant SW  : std_logic_vector(7 downto 0) := x"2b";
  constant LW  : std_logic_vector(7 downto 0) := x"23";
begin
tipo_R <= '1' when op_code = "000000" else '0';


saida_tipo_R <= "0000" when funct = OP_And(5 downto 0) else
			 "0001" when funct = OP_Or(5 downto 0) else
			 "0010" when funct = OP_Add(5 downto 0) else
			 "0110" when funct = OP_Sub(5 downto 0) else
			 "0111" when funct = OP_Slt(5 downto 0) else
			 "1100" when funct = OP_Nor(5 downto 0) else
			 "0000";
			 
saida_tipo_I <= "0110" when op_code = BEQ(5 downto 0) else
					 "0010" when op_code = SW(5 downto 0)   else
					 "0010" when op_code = LW(5 downto 0)   else
					 "0000";

					 
MUX :  entity work.muxGenerico2x1 generic map (larguraDados => 4)
        port map( entradaA_MUX => saida_tipo_I,
                 entradaB_MUX =>  saida_tipo_R,
                 seletor_MUX => tipo_R,
                 saida_MUX => output);		

end Behavioral;