library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_BIT_INICIAL is
    port (
      entradaA, entradaB:  in STD_LOGIC;
      seletor:  in STD_LOGIC_VECTOR (1 downto 0);
		inverte_A, inverte_B: in STD_LOGIC;
		slt: in STD_LOGIC;
		carry_in: STD_LOGIC;
		carry_out: out STD_LOGIC;
      saida:    out STD_LOGIC
);
end entity;

architecture comportamento of ULA_BIT_INICIAL is
	signal saida_mux_B,saida_mux_A: std_logic;
	signal entrada0,entrada1,entrada2,entrada3: std_logic;
	signal saida_somador: std_logic;
begin

MUX_A :  entity work.muxGenerico2x1_binario  
        port map( entradaA_MUX => entradaA,
                 entradaB_MUX =>  NOT(entradaA),
                 seletor_MUX => inverte_A,
                 saida_MUX => saida_mux_A);

MUX_B :  entity work.muxGenerico2x1_binario 
        port map( entradaA_MUX => entradaB,
                 entradaB_MUX =>  NOT(entradaB),
                 seletor_MUX => inverte_B,
                 saida_MUX => saida_mux_B);		
		

Adder :  entity work.full_adder
        port map( A => saida_mux_A,
                  B =>  saida_mux_B,
                 carry_in => carry_in,
                 carry_out => carry_out,
					  result => saida_somador);	
					 
MUX_Soma :  entity work.mux_4x1_binario
        port map( input0 => entrada0,
                 input1 => entrada1,
					  input2 => entrada2,
					  input3 => entrada3,
                 selector => seletor,
                 output => saida); 

entrada0 <= (saida_mux_B AND saida_mux_A);
entrada1 <= (saida_mux_B OR saida_mux_A);
entrada2 <= saida_somador;
entrada3 <= slt;


end architecture;