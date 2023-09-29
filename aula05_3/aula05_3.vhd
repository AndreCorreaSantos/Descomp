library ieee;
use ieee.std_logic_1164.all;

entity aula05_3 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraInstrucao : natural := 13;
        larguraEnderecoROM : natural := 9;
        larguraEnderecoRAM : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecoROM-1 downto 0);
    SinaisControleOut : out std_logic_vector(11 downto 0)
  );
end entity;


architecture arquitetura of aula05_3 is

  -- signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  -- signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0); 
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);

  signal Sinais_Controle : std_logic_vector (11 downto 0); 
  signal instrucao : std_logic_vector (12 downto 0);
  signal Endereco_Instrucao : std_logic_vector (8 downto 0); --endereco da memoria de enderecos, sai do program counter
  signal proxPC : std_logic_vector (8 downto 0);


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
  -- sinal mux_ula
  signal imediato_valor : std_logic_vector(7 downto 0);

  --sinal mux_pc
  signal entradaB_mux_jmp : std_logic_vector(8 downto 0);

  signal saida_mux_jmp : std_logic_vector(8 downto 0);

  --sinal flags
  signal saidaULAFlag : std_logic;
  signal zeroFlag : std_logic;
  signal HabFlagZero : std_logic;

  --sinais logica de desvio
  signal entrada_jmps : std_logic_vector(3 downto 0);
  signal seletor_MUX_PC : std_logic_vector(1 downto 0);

  --sinal subrotina
  signal habEscritaRetorno : std_logic;

  signal saida_reg_end : std_logic_vector(8 downto 0);
  
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
MUX_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => saida_dados_RAM, --saida de dados da memoria 
                 entradaB_MUX =>  imediato_valor, -- imediato 7 ~ 0
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

MUX_PC : entity work.muxPC generic map (larguraEntrada => larguraEnderecoROM)
        port map(entradaA_MUX => proxPC,
                  entradaB_MUX => entradaB_mux_jmp,
                  entradaC_MUX => saida_reg_end,
                  seletor_MUX => seletor_MUX_PC,
                  saida_MUX => saida_mux_jmp);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do registrador de zero flag
ZF1 : entity work.registradorFlag
          port map (DIN => saidaULAFlag, DOUT => zeroFlag, ENABLE => HabFlagZero, CLK => CLK, RST => '0');

-- O port map completo do registrador de endereço
REGRET : entity work.registradorGenerico   generic map(larguraDados => 9)
          port map (DIN => proxPC, DOUT => saida_reg_end, ENABLE => habEscritaRetorno, CLK => CLK, RST => '0');
  
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecoROM)
          port map (DIN => saida_mux_jmp, DOUT => Endereco_Instrucao, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecoROM, constante => 1)
        port map( entrada => Endereco_Instrucao, saida => proxPC);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA,zf => saidaULAFlag);

-- port map da memoria de instrucoes
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_Instrucao, Dado => instrucao);
-- port map da unidade de controle
UC1: entity work.unidadeControle
				port map(opcode => Opcode, saida => Sinais_Controle);

-- port map da logica de desvio
LOGDESVIO : entity work.logicaDesvio
              port map (jmps => entrada_jmps,zf => zeroFlag,saida => seletor_MUX_PC);
--port map da memoria de dados
RAM1: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
        port map(addr => ramAddr,we => ramWe,re => ramRe,habilita => ramHabilita,clk => CLK, dado_in => entrada_dados_RAM, dado_out => saida_dados_RAM);



habEscritaRetorno <= Sinais_Controle(11);
entrada_jmps <= Sinais_Controle(10 downto 7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);

Operacao_ULA <= Sinais_Controle(4 downto 3);

-- sinais controle memoria
HabFlagZero <= Sinais_Controle(2);
ramRe <= Sinais_Controle(1);
ramWe <= Sinais_Controle(0);


-- sinais memoria

ramAddr <=  instrucao(7 downto 0);
ramHabilita <= instrucao(8);
entrada_dados_RAM <= REG1_ULA_A;

--sinal mux entrada B
imediato_valor <= instrucao(7 downto 0);

-- sinal entrada decoder
Opcode <= instrucao(12 downto 9);

-- sinal mux_jmp

entradaB_mux_jmp <= instrucao(8 downto 0);

-- -- I/O
-- chavesY_MUX_A <= SW(3 downto 0);
-- chavesX_ULA_B <= SW(9 downto 6);



SinaisControleOut <= Sinais_Controle;

PC_OUT <= Endereco_Instrucao;

end architecture;