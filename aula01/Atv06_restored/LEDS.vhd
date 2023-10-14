library ieee;
use ieee.std_logic_1164.all;

entity LEDS is
  port ( 
			entrada: in std_logic_vector(7 downto 0);
			CLK,habilita_LEDS,habilita_Led8, habilita_Led9: in std_logic;
			saida_led8, saida_led9: out std_logic;
			saida_leds: out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of LEDS is
  begin
REG_LEDS : entity work.registradorGenerico   generic map (larguraDados => 8)
port map (DIN => entrada, DOUT => saida_leds, ENABLE => habilita_LEDS , CLK => CLK, RST => '0');

LED8 :  entity work.FlipFLop
        port map( DIN => entrada(0),
                 DOUT => saida_led8 ,
                 CLK => CLK ,
                 ENABLE => habilita_Led8,
					  RST => '0');
					  
		
LED9 :  entity work.FlipFLop
        port map( DIN => entrada(0),
                 DOUT => saida_led9 ,
                 CLK => CLK ,
                 ENABLE => habilita_Led9,
					  RST => '0');

end architecture;