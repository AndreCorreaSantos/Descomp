library ieee;
use ieee.std_logic_1164.all;

entity aula07 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraInstrucao : natural := 13;
        larguraEnderecoROM : natural := 9;
        larguraEnderecoRAM : natural := 6;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecoROM-1 downto 0);
    HEX5 : out std_logic_vector(6 downto 0);
    HEX4 : out std_logic_vector(6 downto 0);
    HEX3 : out std_logic_vector(6 downto 0);
    HEX2 : out std_logic_vector(6 downto 0);
    HEX1 : out std_logic_vector(6 downto 0);
    HEX0 : out std_logic_vector(6 downto 0);
    LEDR : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of aula07 is
  signal CLK : std_logic;
  -- signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  -- signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal enderecos : std_logic_vector (8 downto 0);
  signal ramHabilita : std_logic;
  signal Endereco_Instrucao : std_logic_vector(8 downto 0);
  signal entrada_dados_RAM : std_logic_vector(7 downto 0);
  signal saida_dados_RAM : std_logic_vector(7 downto 0);
  signal enderecoRAM : std_logic_vector(5 downto 0);
  signal instrucao : std_logic_vector(12 downto 0);
  signal ramRe : std_logic;
  signal ramWe : std_logic;
  signal hLED1 : std_logic;
  signal hLED2 : std_logic;
  signal hLED8 : std_logic;
  signal dOUT : std_logic_vector(7 downto 0);
  signal saidaLED8 : std_logic_vector(7 downto 0);
  signal saidaLED1 : std_logic;
  signal saidaLED2 : std_logic;
  signal habilitaHEX : std_logic_vector(5 downto 0);


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU : entity work.cpu
        port map (CLK => CLK,  
                  leituraRAM => saida_dados_RAM,
                  saidaDados => dOUT,
                  instrucao => instrucao, --entrada da instrucao da rom no cpu
                  saidaEndROM => Endereco_Instrucao,
                  saidaEnds => enderecos,
                  RD => ramRe,
                  WE => ramWe
        );

-- port map da memoria de instrucoes
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_Instrucao, Dado => instrucao);
-- port map da unidade de controle

--port map da memoria de dados
RAM1: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
        port map(addr => enderecoRAM,we => ramWe,re => ramRe,habilita => ramHabilita,clk => CLK, dado_in => entrada_dados_RAM, dado_out => saida_dados_RAM);

DECODER : entity work.decoderEnderecos
         port map(Enderecos => enderecos, habilitaRAM => ramHabilita,habilitaLED8 => hLED8,habilitaLED1 => hLED1,habilitaLED2 => hLED2, habilitaHEX => habilitaHEX,CLK => CLK,WE => ramWe);

LED8 : entity work.registradorGenerico generic map(larguraDados => larguraDados)
        port map (DIN => dOUT, DOUT => saidaLED8, ENABLE => hLED8, CLK => CLK, RST => '0');

LED1: entity work.registradorFlag
        port map (DIN => dOUT(0), DOUT => saidaLED1, ENABLE => hLED1, CLK => CLK, RST => '0');

LED2: entity work.registradorFlag
        port map (DIN => dOUT(0), DOUT => saidaLED2, ENABLE => hLED2, CLK => CLK, RST => '0');

HEX: entity work.HexDisplay
        port map(DIN => dOUT(3 downto 0), habilita => habilitaHEX,saida5 => HEX5,saida4 => HEX4,saida3 => HEX3,saida2 => HEX2,saida1 => HEX1,saida0 => HEX0,CLK=>CLK);



enderecoRAM <= enderecos(5 downto 0);
entrada_dados_RAM <= dOUT;
PC_OUT <= Endereco_Instrucao;
LEDR <=  saidaLED1 & saidaLED2 & saidaLED8;

end architecture;