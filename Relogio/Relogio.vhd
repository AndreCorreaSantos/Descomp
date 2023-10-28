library ieee;
use ieee.std_logic_1164.all;

entity Relogio is
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
	SW: in std_logic_vector(9 downto 0);

	VGA_HS		:	out	std_logic;								--horiztonal sync pulse
	VGA_VS		:	out	std_logic;								--vertical sync pulse
	VGA_R			:	out	std_logic_vector(3 DOWNTO 0);
	VGA_G			:	out	std_logic_vector(3 DOWNTO 0);
	VGA_B			:	out	std_logic_vector(3 DOWNTO 0)
  );
end entity;

architecture arquitetura of Relogio is

  signal CLK : std_logic;
  signal saidaclk_reg1seg: std_logic;
  signal endereco_ROM: std_logic_vector(8 downto 0);
  signal entrada_instrucao: std_logic_vector(14 downto 0);
  signal entrada_DATA: std_logic_vector(7 downto 0);
  signal saida_DATA: std_logic_vector(7 downto 0);
  signal addresses: std_logic_vector(8 downto 0);
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
  signal hab_TEMP: std_logic;
  signal hab_KEY3,hab_FPGA_RESET: std_logic;
  signal saida_key0: std_logic;
  signal saida_key1: std_logic;
  signal saida_RESET: std_logic;
  signal Limpeza_KEY0,Limpeza_KEY1,Limpeza_RESET,Limpeza_TEMP : std_logic;
  signal saida_sw9: std_logic;

  signal SIG_HAB_LIN_VGA, SIG_HAB_COL_VGA, SIG_HAB_DATA_VGA, SIG_HAB_WRITE_VGA, SIG_HAB_WRITE_VGA_OUT : std_logic;
  signal SIG_LIN_VGA, 		SIG_COL_VGA , SIG_DATA_VGA : std_logic_vector(7 downto 0);
  
begin



detectorSub0: work.edgedetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => CLOCK_50, saida => CLK);



-- CPU
Processor: entity work.Processador
	port map(
		CLK => CLK,
		ROM_Address => endereco_ROM,
		Instruction_IN => entrada_instrucao,
		Data_IN => entrada_DATA,
		Data_OUT => saida_DATA,
		Data_Address => addresses,
		Wr => WR,
		Rd => RD
);

-- ROM
ROM1: entity work.romMIF generic map(dataWidth => 15)
	port map(
		Endereco => endereco_ROM,
		Dado => entrada_instrucao
);

-- RAM
RAM1: entity work.memoriaRAM
	port map(
		addr => addresses	(5 downto 0),
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
		enderecos => addresses,
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
		habilita_temp => hab_TEMP,
		habilita_KEY0 => hab_KEY0, 
		habilita_KEY1 => hab_KEY1,
		habilita_KEY2 => hab_KEY2,
		habilita_KEY3 => hab_KEY3,
		habilita_FPGA_RESET => hab_FPGA_RESET,
		Limpa_TEMP => Limpeza_TEMP,
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


interfaceBaseTempo : entity work.divisorGenerico_e_Interface
              port map (clk => CLK,
              habilitaLeitura => hab_TEMP,
              limpaLeitura => LIMPEZA_TEMP,
				  saida_sw9 => SW(9),
              leituraUmSegundo => entrada_DATA(0));
	
-- Unidade CHAVES	
Detect_KEY0: entity work.Detector_Keys
	port map(
		Key 	=> KEY(0),
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



-- VGA -----------------------------------------------------------------------------------

--Endereço 128
SIG_HAB_LIN_VGA <= WR AND
							(NOT addresses(8)) AND
							addresses(7) AND
						 (NOT addresses(6)) AND
						 (NOT addresses(5)) AND
						 (NOT addresses(4)) AND
						 (NOT addresses(3)) AND
						 (NOT addresses(2)) AND
						 (NOT addresses(1)) AND
						 (NOT addresses(0));
						 
REG_LIN_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => saida_DATA,
				DOUT => SIG_LIN_VGA,
				ENABLE => SIG_HAB_LIN_VGA,
				CLK => CLK,
				RST => '0'
			);
			
			
--Endereço 129
SIG_HAB_COL_VGA <= WR AND
							(NOT addresses(8)) AND
							addresses(7) AND
						 (NOT addresses(6)) AND
						 (NOT addresses(5)) AND
						 (NOT addresses(4)) AND
						 (NOT addresses(3)) AND
						 (NOT addresses(2)) AND
						 (NOT addresses(1)) AND
						 (addresses(0));
						 
REG_COL_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => saida_DATA,
				DOUT => SIG_COL_VGA,
				ENABLE => SIG_HAB_COL_VGA,
				CLK => CLK,
				RST => '0'
			);
			
	
--Endereço 130
SIG_HAB_DATA_VGA <= WR AND
							(NOT addresses(8)) AND
							addresses(7) AND
						 (NOT addresses(6)) AND
						 (NOT addresses(5)) AND
						 (NOT addresses(4)) AND
						 (NOT addresses(3)) AND
						 (NOT addresses(2)) AND
						 (addresses(1)) AND
						 (NOT addresses(0));
						 
REG_DATA_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => "111" & saida_DATA(4 downto 0), -- ALTEREI A ENTRADA TESTANDO!! SE DER MERDA VOLTAR PARA 111 & SAIDA_DATA 4 DOWNTO 0
				DOUT => SIG_DATA_VGA,
				ENABLE => SIG_HAB_DATA_VGA,
				CLK => CLK,
				RST => '0'
			);
						
--Endereço 131
SIG_HAB_WRITE_VGA_OUT <= WR AND
							(NOT addresses(8)) AND
							addresses(7) AND
						 (NOT addresses(6)) AND
						 (NOT addresses(5)) AND
						 (NOT addresses(4)) AND
						 (NOT addresses(3)) AND
						 (NOT addresses(2)) AND
						 (addresses(1)) AND
						 (addresses(0));
						 
				 

				
	driverVGA: entity work.driverVGA  
	port map (CLOCK_50    => CLOCK_50,								--clock 50 MHz
		--FPGA_RESET_N:	IN		std_logic;								--active low asycnchronous reset
		VGA_HS		=> 	 VGA_HS,							--horiztonal sync pulse
		VGA_VS		=> 	 VGA_VS,										--vertical sync pulse
		VGA_R			=> 	 VGA_R,		
		VGA_G			=> 	 VGA_G,		
		VGA_B			=> 	 VGA_B,		
		posLin => 	SIG_LIN_VGA,	
		posCol =>  SIG_COL_VGA,
		dadoIN => SIG_DATA_VGA, 
		VideoRAMWREnable => SIG_HAB_WRITE_VGA_OUT
		);			

--------------------------------------------------------------------------------------------------------

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