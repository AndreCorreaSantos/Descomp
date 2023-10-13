library ieee;
use ieee.std_logic_1164.all;

entity decoderToHabilita is
  port ( 
			enderecos: in std_logic_vector(8 downto 0);
			Wr,Rd: in std_logic;
			habilita_RAM: out std_logic;
			habilita_LEDS,habilita_Led8, habilita_Led9: out std_logic;
			habilita_HEX0,habilita_HEX1,habilita_HEX2: out std_logic;
			habilita_HEX3,habilita_HEX4,habilita_HEX5: out std_logic;
			habilita_Switchs,habilita_Switch8, habilita_Switch9: out std_logic;
			habilita_KEY0,habilita_KEY1,habilita_KEY2: out std_logic;
			habilita_KEY3,habilita_FPGA_RESET: out std_logic;
			Limpa_Key0: out std_logic;
			Limpa_Key1: out std_logic;
			Limpa_RESET: out std_logic
  );
end entity;

architecture comportamento of decoderToHabilita is
  signal saida_dec1: std_logic_vector(7 downto 0);
  signal saida_dec2: std_logic_vector(7 downto 0);
  
  begin
  
  DECODER1: entity work.decoder3x8
	port map(
		entrada => enderecos(8 downto 6),
		saida => saida_dec1
	);
	
	DECODER2: entity work.decoder3x8
		port map(
			entrada => enderecos(2 downto 0),
			saida => saida_dec2
	);
	-- Sinais para habilitar os SWITCHES
	habilita_Switchs <= (Rd AND NOT(enderecos(5)) AND saida_dec1(5) AND saida_dec2(0));
	habilita_Switch8 <= (Rd AND NOT(enderecos(5)) AND saida_dec1(5) AND saida_dec2(1));
	habilita_Switch9 <= (Rd AND NOT(enderecos(5)) AND saida_dec1(5) AND saida_dec2(2));
	-- Sinais para habilitar as CHAVES
	habilita_KEY0 <= (Rd AND enderecos(5) AND saida_dec1(5) AND saida_dec2(0));
	habilita_KEY1 <= (Rd AND enderecos(5) AND saida_dec1(5) AND saida_dec2(1));
	habilita_KEY2 <= (Rd AND enderecos(5) AND saida_dec1(5) AND saida_dec2(2));
	habilita_KEY3 <= (Rd AND enderecos(5) AND saida_dec1(5) AND saida_dec2(3));
	habilita_FPGA_RESET <= (Rd AND enderecos(5) AND saida_dec1(5) AND saida_dec2(4));
	-- Sinais para habilitar os 7Segs
	habilita_HEX0 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(0));
	habilita_HEX1 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(1));
	habilita_HEX2 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(2));
	habilita_HEX3 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(3));
	habilita_HEX4 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(4));
	habilita_HEX5 <= (Wr AND saida_dec1(4) AND enderecos(5) AND saida_dec2(5));
	-- Sinal para habilitar a RAM
	habilita_RAM <= saida_dec1(0);
	-- Sinais para habilitar os LEDS
	habilita_LEDS <= (saida_dec1(4) AND saida_dec2(0) AND Wr AND NOT(enderecos(5)));
	habilita_Led8 <=(saida_dec1(4) AND saida_dec2(1) AND Wr AND NOT(enderecos(5)));
	habilita_Led9 <=(saida_dec1(4) AND saida_dec2(2) AND Wr AND NOT(enderecos(5)));
	Limpa_Key0 <= (enderecos(0) AND enderecos(1) AND enderecos(2) AND enderecos(3) AND enderecos(4) AND enderecos(5) AND enderecos(6) AND enderecos(7) AND enderecos(8) AND Wr);
	Limpa_Key1 <= ((not enderecos(0)) AND enderecos(1) AND enderecos(2) AND enderecos(3) AND enderecos(4) AND  enderecos(5) AND enderecos(6) AND enderecos(7) AND enderecos(8) AND Wr);
	Limpa_RESET <= (enderecos(0) AND (not enderecos(1)) AND enderecos(2) AND enderecos(3) AND enderecos(4) AND enderecos(5) AND enderecos(6) AND enderecos(7) AND enderecos(8) AND Wr);

end architecture;