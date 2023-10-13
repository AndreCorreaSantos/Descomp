library ieee;
use ieee.std_logic_1164.all;

entity ex01 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32
  );
  port   (
  CLOCK_50 : in std_logic;
  instrucoes : in std_logic_vector(4 downto 0);
  entrada : in std_logic_vector(31 downto 0);
  saida : out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of ex01 is
  --fios do circuito
signal saidaReg1 : std_logic_vector(31 downto 0);
signal saidaMux : std_logic_vector(31 downto 0);
signal saidaULA : std_logic_vector(31 downto 0);
signal saidaReg2 : std_logic_vector(31 downto 0);

--instrucoes
signal hReg1 : std_logic;
signal seletor : std_logic;
signal opULA : std_logic_vector(1 downto 0);
signal hReg2 : std_logic;

signal CLK : std_logic;



begin

CLK <= CLOCK_50;

REG1: entity work.registradorGenerico generic map(larguraDados => larguraDados)
        port map (DIN => entrada, DOUT => saidaReg1, ENABLE => hReg1, CLK => CLK, RST => '0');

MUX_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
port map(entradaA_MUX => saidaReg2, 
          entradaB_MUX => saidaReg1,
          seletor_MUX => seletor,
          saida_MUX => saidaMux);

REG2: entity work.registradorGenerico generic map(larguraDados => larguraDados)
port map (DIN => saidaULA, DOUT => saidaReg2, ENABLE => hReg2, CLK => CLK, RST => '0');

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => saidaMux, entradaB => saidaReg1, saida => SaidaULA, seletor => opULA);



-- componentes adicionais

buffer_3_state_8portas :  entity work.buffer_3_state_8portas
      port map(entrada => Entrada, habilita =>  sinalLocal, saida => saida_tri);
		  
decoder3x8 :  entity work.decoder3x8
        port map( entrada => sinalLocal,
                 saida => sinalLocal);
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
          port map (Endereco => ROM_address, Dado => Instruction_In);


RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
          port map (addr => Data_Address, we => wr, re => rd, habilita  => signal_habilita_ram, dado_in => ENTRADA, dado_out => SAIDA, clk => CLK);

detectorSub0: work.edgeDetector(bordaSubida)
port map (clk => CLOCK_50, entrada => CLOCK_50, saida => CLK);

hReg1 <= instrucoes(4);
seletor <= instrucoes(3);
opULA <= instrucoes(2 downto 1); 
hReg2 <= instrucoes(0);

saida <= saidaReg2;
end architecture;