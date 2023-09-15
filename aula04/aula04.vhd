library ieee;
use ieee.std_logic_1164.all;

entity aula04 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraInstrucao : natural := 13;
        larguraEnderecoROM : natural := 3;
        larguraEnderecoRAM : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecoROM-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
    Entrada_ULA_B : out std_logic_vector(7 downto 0);
    SinaisControleOut : out std_logic_vector(5 downto 0)
  );
end entity;


architecture arquitetura of aula04 is

  -- signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  -- signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0); 
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);

  signal Sinais_Controle : std_logic_vector (5 downto 0); 
  signal instrucao : std_logic_vector (12 downto 0);
  signal Endereco_Instrucao : std_logic_vector (2 downto 0); --endereco da memoria de enderecos, sai do program counter
  signal proxPC : std_logic_vector (2 downto 0);


  --sinais de controle
  -- signal Chave_Operacao_ULA : std_logic; nao sei pra que serve
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic; --nao sei o que aconteceu com ele
  signal Operacao_ULA : std_logic_vector(1 downto 0);

    --sinais da memoria
  signal ramWe : std_logic;
  signal ramRe : std_logic;
  signal ramAddr : std_logic_vector(7 downto 0);
  signal ramHabilita : std_logic;
  signal entrada_dados_RAM : std_logic_vector(7 downto 0);
  signal saida_dados_RAM : std_logic_vector(7 downto 0);

  -- sinal entrada decoder
  signal Opcode : std_logic_vector(3 downto 0);
  -- sinal mux
  signal imediato_valor : std_logic_vector(7 downto 0);
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => saida_dados_RAM, --saida de dados da memoria 
                 entradaB_MUX =>  imediato_valor, -- imediato 7 ~ 0
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecoROM)
          port map (DIN => proxPC, DOUT => Endereco_Instrucao, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecoROM, constante => 1)
        port map( entrada => Endereco_Instrucao, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA);

-- port map da memoria de instrucoes
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_Instrucao, Dado => instrucao);
-- port map do decoder
DECODER1: entity work.decoderInstru
				port map(opcode => Opcode, saida => Sinais_Controle);
--port map da memoria de dados
RAM1: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
        port map(addr => ramAddr,we => ramWe,re => ramRe,habilita => ramHabilita,clk => CLK, dado_in => entrada_dados_RAM, dado_out => saida_dados_RAM);




selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
-- Reset_A <= Sinais_Controle(1); nao sei o que aconteceu com o reset A
Operacao_ULA <= Sinais_Controle(3 downto 2);

-- sinais controle memoria
ramWe <= Sinais_Controle(1);
ramRe <= Sinais_Controle(0);

-- sinais memoria

ramAddr <=  instrucao(7 downto 0);
ramHabilita <= instrucao(8);
entrada_dados_RAM <= REG1_ULA_A;

--sinal mux entrada B
imediato_valor <= instrucao(7 downto 0);

-- sinal entrada decoder
Opcode <= instrucao(12 downto 9);

-- -- I/O
-- chavesY_MUX_A <= SW(3 downto 0);
-- chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
LEDR (9) <= Operacao_ULA(1);
LEDR (8) <= Operacao_ULA(0);
LEDR (7 downto 0) <= REG1_ULA_A;
SinaisControleOut <= Sinais_Controle;
Entrada_ULA_B <= MUX_REG1;

PC_OUT <= Endereco_Instrucao;

end architecture;