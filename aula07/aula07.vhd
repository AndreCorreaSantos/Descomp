library ieee;
use ieee.std_logic_1164.all;

entity aula07 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraInstrucao : natural := 13;
        larguraEnderecoROM : natural := 9;
        larguraEnderecoRAM : natural := 6;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecoROM-1 downto 0)
  );
end entity;


architecture arquitetura of aula07 is
	signal CLK : std_logic;
  -- signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  -- signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal enderecos : std_logic_vector (8 downto 0);
  signal entradaDecoder : std_logic_vector(2 downto 0);
  signal saidaDecoder : std_logic_vector(7 downto 0);
  signal ramHabilita : std_logic;
  signal Endereco_Instrucao : std_logic_vector(8 downto 0);
  signal entrada_dados_RAM : std_logic_vector(7 downto 0);
  signal saida_dados_RAM : std_logic_vector(7 downto 0);
  signal enderecoRAM : std_logic_vector(5 downto 0);
  signal instrucao : std_logic_vector(12 downto 0);
  signal ramRe : std_logic;
  signal ramWe : std_logic;
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
                  escritaRAM => entrada_dados_RAM,
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

DECEND :  entity work.decoder3x8
        port map( entrada => entradaDecoder,saida => saidaDecoder);


entradaDecoder <= enderecos(8 downto 6);
enderecoRAM <= enderecos(5 downto 0);
ramHabilita <= saidaDecoder(7);



PC_OUT <= Endereco_Instrucao;

end architecture;