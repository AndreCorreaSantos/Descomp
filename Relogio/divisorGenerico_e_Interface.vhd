LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
		saida_sw9: in std_logic;
      leituraUmSegundo :   out std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg_1 : std_logic;
  signal saidaclk_reg1seg_2 : std_logic;
  signal saida_mux : std_logic;
begin


baseTempo: entity work.divisorGenerico
           generic map (divisor => 25000000)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg1seg_1);
			  
baseTempo2: entity work.divisorGenerico
           generic map (divisor => 25000000/2000)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg1seg_2);
			  

MUX4 :  entity work.muxGenerico2x1_simples  
        port map( entradaA_MUX => saidaclk_reg1seg_1,
                 entradaB_MUX =>  saidaclk_reg1seg_2,
                 seletor_MUX => saida_sw9,
                 saida_MUX => saida_mux);

registraUmSegundo: entity work.FlipFlop
   port map (DIN => '1', DOUT => sinalUmSegundo,
         ENABLE => '1', CLK => saida_mux,
         RST => limpaLeitura);

-- Faz o tristate de saida:
leituraUmSegundo <= sinalUmSegundo when habilitaLeitura = '1' else 'Z';
end architecture interface;