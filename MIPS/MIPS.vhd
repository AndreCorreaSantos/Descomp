library ieee;
use ieee.std_logic_1164.all;




--- O QUE FALTA FAZER!! --> CONSERTAR ERROS NA ULA, FAZER ULTIMO BIT E PRIMEIRO BIT, ENTENDER O SELETOR DIREITO
--- DECODER DE INSTRUCOES COMPLETO (TUDO)

entity MIPS is
  -- Total de bits das entradas e saidas
  generic ( 
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    KEY: in std_logic_vector(3 downto 0);
    CLOCK_50 : in std_logic;
    saidaULAOUT : out std_logic_vector(31 downto 0);
    entradaAOUT : out std_logic_vector(31 downto 0);
    entradaBOUT : out std_logic_vector(31 downto 0);
    saidaPCOUT :  out std_logic_vector(31 downto 0);
    saidaInstrucao :  out std_logic_vector(31 downto 0)
  );
end entity;

architecture arquitetura of MIPS is

  signal CLK : std_logic;
  signal entradaPC : std_logic_vector(31 downto 0);
  signal saidaPC :  std_logic_vector(31 downto 0);
  signal instrucao : std_logic_vector(31 downto 0);
  signal enderecoRs : std_logic_vector(4 downto 0);
  signal enderecoRt : std_logic_vector(4 downto 0);
  signal enderecoRd : std_logic_vector(4 downto 0);
  signal saidaULA : std_logic_vector(31 downto 0);
  signal saidaA_banco : std_logic_vector(31 downto 0);
  signal saidaB_banco : std_logic_vector(31 downto 0);
  signal funct : std_logic_vector( 5 downto 0);
  signal imediato :  std_logic_vector(15 downto 0);
  signal imediatoExt : std_logic_vector(31 downto 0);
  signal imediatoShift : std_logic_vector(31 downto 0);
  signal saidaSomadorPC : std_logic_vector(31 downto 0);
  signal saidaPC_imediato : std_logic_vector(31 downto 0);
  signal zeroULA : std_logic;
  signal saidaDecoder : std_logic_vector(11 downto 0);
  signal selMuxRTRD : std_logic;
  signal habEscritaR3 : std_logic;
  signal selMuxRtIme : std_logic;
  signal OpULA : std_logic_vector(3 downto 0);
  signal selmuxULAMem : std_logic;
  signal BEQ : std_logic;
  signal habLeituraMem : std_logic;
  signal habEscritaMem : std_logic;
  signal saidaMuxRTRD : std_logic_vector(4 downto 0);
  signal saidaMUXRTIme : std_logic_vector(31 downto 0);
  signal saidaRAM : std_logic_vector(31 downto 0);
  signal saidaMUXULAMem : std_logic_vector(31 downto 0);
  signal opcode : std_logic_vector(5 downto 0);

  signal selmux_PCJMP : std_logic;

  signal entradaA_MUXJMP : std_logic_vector(31 downto 0);
  signal entradaB_MUXJMP : std_logic_vector(31 downto 0);
begin


-- PC
ProgramCounter : entity work.registradorGenerico
            port map(DIN => entradaPC,
            DOUT => saidaPC,
            ENABLE  => '1',
            CLK => CLK,
            RST =>  '0'
            );

SomaPC : entity work.somaConstante
            port map(
                entrada => saidaPC,
                saida => saidaSomadorPC
            );


-- ROM
ROM1: entity work.ROMMIPS
            port map(
                Endereco => saidaPC,
                Dado => instrucao
            );



-- banco REGS


Banco : entity work.bancoReg
                port map(
                    clk => CLK,
                    enderecoA => enderecoRs,
                    enderecoB => enderecoRt,
                    enderecoC => saidaMuxRTRD,
                    dadoEscritaC => saidaMUXULAMem,
                    escreveC => '1', -- PARA INSTRUCOES DO TIPO R SEMPRE ESCREVE O RESULTADO
                    saidaA => saidaA_banco,
                    saidaB => saidaB_banco
                );


-- ULA

ULA : entity work.ULASomaSub
                port map(
                    entradaA => saidaA_banco,
                    entradaB => saidaMUXRTIme,
                    seletor => funct(0),
                    saida => saidaULA,
                    zero => zeroULA
                );


-- MUX RT IME

MUXRTIME : entity work.muxGenerico2x1
                 port map(
                    entradaA_MUX => saidaB_banco,
                    entradaB_MUX => imediatoExt,
                    seletor_MUX => selMuxRtIme,
                    saida_MUX => saidaMUXRTIme
                 );



-- MUX RT RD

MUXRTRD : entity work.muxGenerico2x1 generic map ( larguraDados => 5)
                 port map(
                    entradaA_MUX => enderecoRt,
                    entradaB_MUX => enderecoRd,
                    seletor_MUX => selMuxRTRD,
                    saida_MUX => saidaMuxRTRD
                 );



-- RAM


RAM : entity work.RAMMIPS
                port map(
                    clk => CLK,
                    Endereco => saidaULA,
                    Dado_in => saidaB_banco,
                    Dado_out => saidaRAM,
                    we => habEscritaMem,
                    re => habLeituraMem,
                    habilita => '1' -- NAO SEI OQ COLOCAR NO HABILITA
                );


-- MUX ULA MEM

MUXULAMEM : entity work.muxGenerico2x1
                 port map(
                    entradaA_MUX => saidaULA,
                    entradaB_MUX => saidaRAM,
                    seletor_MUX => selmuxULAMem,
                    saida_MUX => saidaMUXULAMem
                 );

Extensor : entity work.estendeSinalGenerico
                port map(
                    estendeSinal_IN => imediato,
                    estendeSinal_OUT => imediatoExt
                );

Somador : entity work.somadorGenerico
                port map(
                    entradaA => saidaSomadorPC,
                    entradaB => imediatoShift,
                    saida => saidaPC_imediato
                );

MUXBEQ : entity work.muxGenerico2x1
                 port map(
                    entradaA_MUX => saidaSomadorPC,
                    entradaB_MUX => saidaPC_imediato,
                    seletor_MUX => zeroULA AND BEQ,
                    saida_MUX => entradaA_MUXJMP
                 );

MUXPROXPC : entity work.muxGenerico2x1
                 port map(
                    entradaA_MUX => entradaA_MUXJMP,
                    entradaB_MUX => entradaB_MUXJMP,
                    seletor_MUX => selmux_PCJMP,
                    saida_MUX => entradaPC
                 );


DecINSTRU : entity work.DecoderInstru
                port map(
                    opcode => opcode,
                    funct => funct,
                    saida => saidaDecoder
                );


enderecoRs <= instrucao(25 downto 21);
enderecoRt <= instrucao(20 downto 16);
enderecoRd <= instrucao(15 downto 11);


-- Imediato e funct
funct <= instrucao(5 downto 0);
imediato <= instrucao(15 downto 0);
imediatoShift <= imediatoExt(29 downto 0) & "00"; -- SHIFT LEFT 2 BITS


entradaB_MUXJMP <= saidaSomadorPC(31 downto 28) & instrucao(25 downto 0) & "00";

--sinais de controle

selmux_PCJMP  <= saidaDecoder(11);
selMuxRTRD <= saidaDecoder(10);
habEscritaR3 <= saidaDecoder(9);
selMuxRtIme <= saidaDecoder(8);
OpULA <= saidaDecoder(7 downto 4);
selmuxULAMem <= saidaDecoder(3);
BEQ <= saidaDecoder(2);
habLeituraMem <= saidaDecoder(1);
habEscritaMem <= saidaDecoder(0);



-- SAIDAS DEBUG
CLK <= KEY(0);
-- CLK <= CLOCK_50;
saidaULAOUT <= saidaULA;
entradaAOUT <= saidaA_banco;
entradaBOUT <= saidaB_banco;
saidaPCOUT <= saidaPC;
saidaInstrucao <= instrucao;

end architecture;