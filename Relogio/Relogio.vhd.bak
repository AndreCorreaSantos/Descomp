library ieee;
use ieee.std_logic_1164.all;

entity Atv06 is
  -- Total de bits das entradas e saidas
  generic ( 
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    -- CLOCK 50 MHZ
    CLOCK_50 : in std_logic;
	 -- CHAVES
	 KEY: in std_logic_vector(3 downto 0);
	 -- FPGA_RESET
	 FPGA_RESET_N: in std_logic;
	 -- LEDS
	 LEDR  : out std_logic_vector(9 downto 0);
	 -- 7Segs
	 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5: out std_logic_vector(6 downto 0);
	 -- Switchs
	 SW: in std_logic_vector(9 downto 0)
  );
end entity;

architecture arquitetura of Atv06 is

  signal CLK : std_logic;
  signal Limpeza_KEY0,Limpeza_KEY1,Limpeza_RESET : std_logic;
  signal endereco_ROM: std_logic_vector(8 downto 0);
  signal entrada_instrucao: std_logic_vector(12 downto 0);
  signal entrada_DATA: std_logic_vector(7 downto 0);
  signal saida_DATA: std_logic_vector(7 downto 0);
  signal endereco_RAM: std_logic_vector(8 downto 0);
  signal WR: std_logic;
  signal RD: std_logic;
  signal hab_RAM: std_logic;
  signal hab_leds: std_logic;
  signal hab_led8: std_logic;
  signal hab_led9: std_logic;
  signal saida_reg_leds: std_logic_vector(7 downto 0);
  signal saida_reg_led8: std_logic;
  signal saida_reg_led9: std_logic;
  signal hab_HEX0,hab_HEX1,hab_HEX2: std_logic;
  signal hab_HEX3,hab_HEX4,hab_HEX5: std_logic;
  signal valor_HEX0,valor_HEX1,valor_HEX2: std_logic_vector(6 downto 0);
  signal valor_HEX3,valor_HEX4,valor_HEX5: std_logic_vector(6 downto 0);
  signal hab_Switchs,hab_Switch8, hab_Switch9: std_logic;
  signal hab_KEY0,hab_KEY1,hab_KEY2: std_logic;
  signal hab_KEY3,hab_FPGA_RESET: std_logic;
  signal saida_key0: std_logic;
  signal saida_key1: std_logic;
  signal saida_RESET: std_logic;
  
begin


-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgedetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => CLOCK_50, saida => CLK);
end generate;



-- CPU
Processor: entity work.Processador
	port map(
		CLK => CLK,
		ROM_Address => endereco_ROM,
		Instruction_IN => entrada_instrucao,
		Data_IN => entrada_DATA,
		Data_OUT => saida_DATA,
		Data_Address => endereco_RAM,
		Wr => WR,
		Rd => RD
	);
	
-- ROM
ROM1: entity work.romMIF
	port map(
		Endereco => endereco_ROM,
		Dado => entrada_instrucao
);

-- RAM
RAM1: entity work.memoriaRAM
	port map(
		addr => endereco_RAM	(5 downto 0),
		we => WR,
		re => RD,
		habilita => hab_RAM,
		clk => CLK,
		dado_in =>saida_DATA,
		dado_out => entrada_DATA
);

-- Decodifica o endereço Ram e tranforma nos sinais de habilita
DECODIFICADOR: entity work.decoderToHabilita
	port map(
		enderecos => endereco_RAM,
		Wr => WR,
		Rd => RD,
		habilita_RAM => hab_RAM,
		habilita_LEDS => hab_leds,
		habilita_Led8 => hab_led8,
		habilita_Led9 => hab_led9,
		habilita_HEX0 => hab_HEX0,
		habilita_HEX1 => hab_HEX1,
		habilita_HEX2 => hab_HEX2,
		habilita_HEX3 => hab_HEX3,
		habilita_HEX4 => hab_HEX4,
		habilita_HEX5 => hab_HEX5,
		habilita_Switchs => hab_Switchs,
		habilita_Switch8 => hab_Switch8, 
		habilita_Switch9 => hab_Switch9,
		habilita_KEY0 => hab_KEY0, 
		habilita_KEY1 => hab_KEY1,
		habilita_KEY2 => hab_KEY2,
		habilita_KEY3 => hab_KEY3,
		habilita_FPGA_RESET => hab_FPGA_RESET,
		Limpa_Key0 => Limpeza_KEY0,
		Limpa_Key1 => Limpeza_KEY1,
		Limpa_RESET => Limpeza_RESET
);	
		
-- Unidade de LEDS
LED_UNITY: entity work.LEDS
	port map(
		entrada => saida_DATA,
		CLK => CLK,
		habilita_LEDS => hab_leds,
		habilita_Led8 => hab_led8,
		habilita_Led9 => hab_led9,
		saida_led8 => saida_reg_led8,
		saida_led9 => saida_reg_led9,
		saida_leds => saida_reg_leds
);

-- Unidade Switchs
Switch_Unity: entity work.SWITCHES
	port map(
		entrada_switches => SW,
		habilita_Switchs => hab_Switchs,
		habilita_Switch8 => hab_Switch8, 
		habilita_Switch9 => hab_Switch9,
		saida => entrada_DATA
);

-- Unidade CHAVES
Keys_Unity: entity work.KEYS
	port map(
		entrada_key0 => saida_key0,
		entrada_key1 => saida_key1,
		entrada_keys => KEY(3 downto 2),
		entrada_RESET => saida_RESET, 
	   habilita_KEY0 => hab_KEY0, 
		habilita_KEY1 => hab_KEY1,
		habilita_KEY2 => hab_KEY2,
		habilita_KEY3 => hab_KEY3,
		habilita_FPGA_RESET => hab_FPGA_RESET,
		saida => entrada_DATA(0)
);

-- Unidade CHAVES
Detect_KEY0: entity work.Detector_Keys
	port map(
		Key	=> KEY(0),
		Clock => CLK,
		Limpa => Limpeza_KEY0,
		saida => saida_key0
);

-- Unidade CHAVES
Detect_KEY1: entity work.Detector_Keys
	port map(
		Key 	=> KEY(1),
		Clock => CLK,
		Limpa => Limpeza_KEY1,
		saida => saida_key1
);

-- Unidade CHAVES
Detect_RESET: entity work.Detector_Keys
	port map(
		Key => FPGA_RESET_N,
		Clock => CLK,
		Limpa => Limpeza_RESET,
		saida => saida_RESET
);

-- Unidade 7seg
Hexes_Unity: entity work.HEXES
	port map(
		entrada => saida_DATA,
		CLK => CLK,
		habilita_HEX0 => hab_HEX0,
		habilita_HEX1 => hab_HEX1,
		habilita_HEX2 => hab_HEX2,
		habilita_HEX3 => hab_HEX3,
		habilita_HEX4 => hab_HEX4,
		habilita_HEX5 => hab_HEX5,
		saida_HEX0 => valor_HEX0,
		saida_HEX1 => valor_HEX1,
		saida_HEX2 => valor_HEX2,
		saida_HEX3 => valor_HEX3,
		saida_HEX4 => valor_HEX4,
		saida_HEX5 => valor_HEX5
		
);

HEX0 <=valor_HEX0;
HEX1 <=valor_HEX1;
HEX2 <=valor_HEX2;
HEX3 <=valor_HEX3;
HEX4 <=valor_HEX4;
HEX5 <=valor_HEX5;
LEDR(7 downto 0) <= saida_reg_leds;
LEDR(8) <= saida_reg_led8;
LEDR(9) <= saida_reg_led9;
end architecture;