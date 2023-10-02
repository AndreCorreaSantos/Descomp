library ieee;
use ieee.std_logic_1164.all;

entity cpu is
        generic ( larguraDados : natural := 8;
        larguraInstrucao : natural := 13;
        larguraEnderecoROM : natural := 9;
        larguraEnderecoRAM : natural := 8
  );
  port ( 
         CLK : in std_logic;
         leituraDados : in std_logic_vector(7 downto 0);
         saidaDados : out std_logic_vector(7 downto 0);
         instrucao : in std_logic_vector(12 downto 0); -- o endereço que vem da rom
         saidaEndROM : out std_logic_vector(8 downto 0); -- o endereço que sai para a rom
         saidaEnds : out std_logic_vector(8 downto 0);
         RD : out std_logic;
         WE : out std_logic
			);
end entity;

architecture comportamento of cpu is



        signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0); 
        signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
        signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
      
        signal Sinais_Controle : std_logic_vector (11 downto 0); 
        signal Endereco_Instrucao : std_logic_vector (8 downto 0); --endereco da memoria de enderecos, sai do program counter
        signal proxPC : std_logic_vector (8 downto 0);
      
      
        --sinais de controle
        -- signal Chave_Operacao_ULA : std_logic; nao sei pra que serve
        signal SelMUX : std_logic;
        signal Habilita_A : std_logic;
        signal Reset_A : std_logic; --nao sei o que aconteceu com ele
        signal Operacao_ULA : std_logic_vector(1 downto 0);
      
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

-- O port map completo do MUX.
MUX_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => leituraDados, --saida de dados da memoria 
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

UC1: entity work.unidadeControle
          port map(opcode => Opcode, saida => Sinais_Controle);

-- port map da logica de desvio
LOGDESVIO : entity work.logicaDesvio
              port map (jmps => entrada_jmps,zf => zeroFlag,saida => seletor_MUX_PC);


habEscritaRetorno <= Sinais_Controle(11);
entrada_jmps <= Sinais_Controle(10 downto 7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);

Operacao_ULA <= Sinais_Controle(4 downto 3);

-- sinais controle memoria
HabFlagZero <= Sinais_Controle(2);
RD <= Sinais_Controle(1);
WE <= Sinais_Controle(0);


-- sinais memoria

saidaEnds <=  instrucao(8 downto 0);
saidaDados <= REG1_ULA_A;

--sinal mux entrada B
imediato_valor <= instrucao(7 downto 0);

-- sinal entrada decoder
Opcode <= instrucao(12 downto 9);

-- sinal mux_jmp

entradaB_mux_jmp <= instrucao(8 downto 0);

saidaEndROM <= Endereco_Instrucao;
-- -- I/O
-- chavesY_MUX_A <= SW(3 downto 0);
-- chavesX_ULA_B <= SW(9 downto 6);



end architecture;
