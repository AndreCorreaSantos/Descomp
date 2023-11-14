library ieee;
use ieee.std_logic_1164.all;

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
  signal saidaA : std_logic_vector(31 downto 0);
  signal saidaB : std_logic_vector(31 downto 0);
  signal funct : std_logic_vector( 5 downto 0);

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
                saida => entradaPC
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
                    enderecoC => enderecoRd,
                    dadoEscritaC => saidaULA,
                    escreveC => '1', -- PARA INSTRUCOES DO TIPO R SEMPRE ESCREVE O RESULTADO
                    saidaA => saidaA,
                    saidaB => saidaB
                );


-- ULA

ULA : entity work.ULASomaSub
                port map(
                    entradaA => saidaA,
                    entradaB => saidaB,
                    seletor => funct(0),
                    saida => saidaULA
                );


enderecoRs <= instrucao(25 downto 21);
enderecoRt <= instrucao(20 downto 16);
enderecoRd <= instrucao(15 downto 11);

funct <= instrucao(5 downto 0);

CLK <= KEY(0);
-- CLK <= CLOCK_50;
saidaULAOUT <= saidaULA;
entradaAOUT <= saidaA;
entradaBOUT <= saidaB;
saidaPCOUT <= saidaPC;
saidaInstrucao <= instrucao;

end architecture;