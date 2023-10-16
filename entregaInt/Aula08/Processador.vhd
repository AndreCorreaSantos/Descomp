library ieee;
use ieee.std_logic_1164.all;

entity Processador is
  port   (
    CLK : in std_logic;
    ROM_Address: out std_logic_vector(8 downto 0);
	 Instruction_IN: in std_logic_vector(12 downto 0);
	 Data_IN: in std_logic_vector(7 downto 0);
	 Data_OUT:out std_logic_vector(7 downto 0);
	 Data_Address: out std_logic_vector(8 downto 0);
	 Wr: out std_logic;
	 Rd: out std_logic
	 
	 
  );
end entity;

architecture arquitetura of Processador is
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Addr: std_logic_vector (8 downto 0);
  signal Opcode: std_logic_vector (3 downto 0);
  signal Imediate: std_logic_vector (7 downto 0);

  signal saida_dec: std_logic_vector(14 downto 0);

  signal habEscritaRetorno : std_logic;
  signal jmp : std_logic;
  signal ret : std_logic;
  signal jsr : std_logic;
  signal jeq : std_logic;
  signal jle : std_logic;
  signal selMUX : std_logic;
  signal habilitaA : std_logic;
  signal opULA : std_logic_vector(2 downto 0);
  signal habZF : std_logic;
  signal habNEG : std_logic;


  signal saida_regA: std_logic_vector(7 downto 0);
  signal saida_ULA: std_logic_vector(7 downto 0);
  signal saida_MUX: std_logic_vector(7 downto 0);
  signal saida_MUX_PC: std_logic_vector(8 downto 0);

  signal saida_zf_ULA: std_logic;
  signal saida_zf: std_logic;
  
  signal saida_neg_ULA:std_logic;
  signal saida_neg : std_logic;

  signal saida_desvio: std_logic_vector(1 downto 0);
  signal saida_reg_retorno: std_logic_vector(8 downto 0);
begin

-- Instanciando os componentes:

Addr <= Instruction_IN(8 downto 0);
Imediate <= Instruction_IN(7 downto 0);
Opcode <= Instruction_IN(12 downto 9);
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
port map (DIN => saida_MUX_PC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
port map( entrada => Endereco, saida => proxPC);
			 
DECODER: entity work.decoderInstru 
port map(opcode => Opcode, saida => saida_dec);


REGA: entity work.registradorGenerico   generic map (larguraDados => 8)
port map (DIN => saida_ULA, DOUT => saida_regA, ENABLE => habilitaA, CLK => CLK, RST => '0');

MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => 8)
        port map( entradaA_MUX => Data_IN,
                 entradaB_MUX =>  Imediate,
                 seletor_MUX => selMUX,
                 saida_MUX => saida_MUX);

MUXProxPC :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map( entrada0 => proxPC,
                  entrada1=>  Addr,
						entrada2 => saida_reg_retorno,
						entrada3 => "000000000",
                  seletor_MUX => saida_desvio,
                  saida_MUX => saida_MUX_PC);
					  
					  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 8)
          port map (entradaA => saida_regA, 
						  entradaB => saida_MUX, 
						  saida => saida_ULA, 
<<<<<<< HEAD
						  seletor => opULA, 
						  zf => saida_zf_ULA,
              neg => saida_neg_ULA);
=======
						  seletor => saida_dec(4 downto 3), 
						  zf => saida_zf_ULA);
>>>>>>> 77db001fd1786aa808d628cf9270c75f5f01dc42
			 
FlagZero :  entity work.FlipFLop
        port map( DIN => saida_zf_ULA,
                 DOUT => saida_zf ,
                 CLK => CLK ,
                 ENABLE => habZF,
					  RST => '0');

FlagNEG :  entity work.FlipFLop
port map( DIN => saida_neg_ULA,
          DOUT => saida_neg ,
          CLK => CLK ,
          ENABLE => habNEG,
    RST => '0');
					  
logicaDesvio1: entity work.logicaDesvio
        port map( entrada_zf => saida_zf,
                 entrada_neg => saida_neg,
                 entrada_jeq => jeq,
                 entrada_jmp =>jmp,
                 entrada_jsr => jsr,
                 entrada_ret => ret,
                 entrada_jle => jle,
                 saida => saida_desvio);
					  
Reg_Retorno: entity work.registradorGenerico   generic map (larguraDados => 9)
port map (DIN => proxPC, DOUT => saida_reg_retorno, ENABLE => saida_dec(11), CLK => CLK, RST => '0');

ROM_Address <= Endereco;
Data_OUT <= saida_regA;
Data_Address <= Addr;



habEscritaRetorno <= saida_dec(14);
jmp <= saida_dec(13);
ret <= saida_dec(12);
jsr <= saida_dec(11);
jeq <= saida_dec(10);
jle <= saida_dec(9);
selMUX <= saida_dec(8);
habilitaA <= saida_dec(7);
opULA <= saida_dec(6 downto 4);
habZF <= saida_dec(3);
habNEG <= saida_dec(2);
Rd <= saida_dec(1);
Wr <= saida_dec(0);


end architecture;