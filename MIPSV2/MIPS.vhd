library ieee;
use ieee.std_logic_1164.all;

entity MIPS is
    generic (
        larguraDados : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
    );
    port (
        CLOCK_50 : in std_logic;
		  KEY: in std_logic_vector(3 downto 0);
		  -- LEDS
		  LEDR  : out std_logic_vector(9 downto 0);
		 -- 7Segs
		 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5: out std_logic_vector(6 downto 0);
		 -- Switchs
		 SW: in std_logic_vector(9 downto 0)
			 
		  
    );
end MIPS;


architecture arquitetura of MIPS is
	--Clock
	signal CLK: std_logic;
	
	--Program Counter Sinais
	signal PC: std_logic_vector(larguraDados -1 downto 0);
	signal prox_PC: std_logic_vector(larguraDados -1 downto 0);
	signal saida_beq:std_logic;
	signal saida_mux_PC: std_logic_vector(larguraDados -1 downto 0);
	signal endereco_beq: std_logic_vector(larguraDados -1 downto 0);
	signal saida_mux_Jump: std_logic_vector(larguraDados -1 downto 0);
	
	--Saida ROM
	signal saida_MUX_rt_rd: std_logic_vector(4 downto 0);
	
	
	--SINAIS DA INSTRUÇÃO
	signal Instruction:std_logic_vector(31 downto 0);
	signal op_code: std_logic_vector(5 downto 0);
	signal Rs: std_logic_vector(4 downto 0);
	signal Rt: std_logic_vector(4 downto 0);
	signal Rd: std_logic_vector(4 downto 0);
	signal shamt: std_logic_vector(4 downto 0);
	signal funct: std_logic_vector(5 downto 0);
	
	
	--Signal Palavra Controle
	signal palavra_controle: std_logic_vector(7 downto 0);
	signal mux_RtRd,habEscrita_Reg,mux_Rt_Imediato,mux_ULA_MEM,BEQ,habLeituraMEM,habEscritaMEM, mux_Jump :std_logic;
	
	--SINAIS ULA
	signal entrada_A: std_logic_vector(larguraDados -1 downto 0);
	signal entrada_B: std_logic_vector(larguraDados -1 downto 0);
	signal leitura_REG2: std_logic_vector(larguraDados -1 downto 0);
	signal saida_ULA: std_logic_vector(larguraDados -1 downto 0);
	signal seletor: std_logic_vector(3 downto 0);
	signal flag_zero, tipo_R: std_logic;
	
	--Sinal Extendido
	signal sig_Ext: std_logic_vector(larguraDados -1 downto 0);
	signal sig_Ext_Shiftado: std_logic_vector(larguraDados -1 downto 0);
	
	--RAM
	signal dado_out_RAM: std_logic_vector(larguraDados -1 downto 0);
	
	--Banco Registradores
	signal entrada_C: std_logic_vector(larguraDados -1 downto 0);
	
	--Perifericos
	signal reg_HEX0,reg_HEX1,reg_HEX2:  std_logic_vector(3 downto 0);
   signal reg_HEX3,reg_HEX4,reg_HEX5:  std_logic_vector(3 downto 0);
	signal output_final: std_logic_vector(larguraDados -1 downto 0);
	

begin

--Clock
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- ROM E PC

SOMA_PC :  entity work.somaConstante
        port map( entrada => PC, saida => prox_PC);
		  
		  
REG_PC : entity work.registradorGenerico
          port map (DIN => saida_mux_Jump , 
						  DOUT => PC, 
						  ENABLE => '1', 
						  CLK => CLK, 
						  RST => '0');

-- LOGICA DE DESVIO
						  
MULTIPLEXADOR_JUMP :  entity work.muxGenerico2x1
        port map( entradaA_MUX => saida_mux_PC,
                 entradaB_MUX =>  (prox_PC(31 downto 28) & (Instruction(25 downto 0)) & "00"),
                 seletor_MUX => mux_Jump,
                 saida_MUX => saida_mux_Jump
					  );
						  
						  
						  
SOMADOR_BEQ :  entity work.somadorGenerico 
        port map( entradaA => prox_PC, entradaB => sig_Ext_Shiftado , saida => endereco_beq);						  

MUX_PC :  entity work.muxGenerico2x1
        port map( entradaA_MUX => prox_PC,
                 entradaB_MUX =>  endereco_beq,
                 seletor_MUX => saida_beq,
                 saida_MUX => saida_mux_PC
					  );

ROM :  entity work.ROMMIPS
        port map( Endereco => PC, Dado => Instruction);
		  
MUX_Rt_Rd :  entity work.muxGenerico2x1 generic map (larguraDados => 5)
        port map( entradaA_MUX => Rt,
                 entradaB_MUX =>  Rd,
                 seletor_MUX => mux_RtRd,
                 saida_MUX => saida_MUX_rt_rd);

-- BANCO DE REGISTRADORES
		  
REGS_UNITY : entity work.bancoReg
          port map (
						  clk => CLK, 
						  enderecoA => Rs,
						  enderecoB => Rt,
						  enderecoC => saida_MUX_rt_rd, 
						  dadoEscritaC => entrada_C , 
						  escreveC => habEscrita_Reg, 
						  saidaA => entrada_A,
						  saidaB	 => leitura_REG2
						  );
						  
Extensor : entity work.estendeSinalGenerico
          port map (estendeSinal_IN => Instruction(15 downto 0), estendeSinal_OUT =>  sig_Ext);

MUX_Rt_Imed :  entity work.muxGenerico2x1
        port map( entradaA_MUX => leitura_REG2,
                 entradaB_MUX =>  sig_Ext,
                 seletor_MUX => mux_Rt_Imediato,
                 saida_MUX => entrada_B); 
		 
-- ULA de 32 bits, com 4 bits de seletor
ULA : entity work.ULA_MIPS
          port map (
						  entradaA => entrada_A,
						  entradaB => entrada_B,
						  seletor => seletor, 
						  zero => flag_zero , 
						  saida => saida_ULA
						  );
						  
RAM_MIPS : entity work.RAMMIPS						  
			 port map ( clk      => CLK,
						  Endereco => saida_ULA,
						  Dado_in  => leitura_REG2,
                    Dado_out => dado_out_RAM,
                    we => habEscritaMEM,
						  re => habLeituraMEM, 
						  habilita => '1'
        );				  

MUX_ULAMEM :  entity work.muxGenerico2x1
        port map( entradaA_MUX => saida_ULA,
                 entradaB_MUX =>  dado_out_RAM,
                 seletor_MUX => mux_ULA_MEM,
                 saida_MUX => entrada_C
					  );
-- DECODER PARA PALAVRA DE CONTROLE DO FD
					  
DECODER_INSTRU: entity work.decoderInstru
        port map( op_code => op_code, output => palavra_controle);
		  
-- DECODER PARA SELETOR DA ULA
DECODER_ULA: entity work.decoderULA
	port map( funct => funct, op_code => op_code, output => seletor);
	

Saida_ULA <= saida_ULA;
	

-- PERIFERICOS PARA EXIBIR RESULTADOS NA PLACA---------------------------------------------------

-- MUX PARA TROCAR ENTRE O RESULTADO DA ULA E PROGRAM COUNTER
MUX_PERIFERICOS :  entity work.muxGenerico2x1
        port map( entradaA_MUX => PC,
                 entradaB_MUX =>  saida_ULA,
                 seletor_MUX => SW(0),
                 saida_MUX => output_final
					  );
		
		
		
-- DISPLAY 7SEG

Conversor0 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(3 downto 0), 
			 saida7seg => HEX0
);

Conversor1 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(7 downto 4), 
			 saida7seg => HEX1
);



Conversor2 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(11 downto 8), 
			 saida7seg => HEX2
);


Conversor3 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(15 downto 12), 
			 saida7seg => HEX3
);


Conversor4 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(19 downto 16), 
			 saida7seg => HEX4
);
		
Conversor5 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => output_final(23 downto 20), 
			 saida7seg => HEX5
);
	

LEDR(7 downto 0)<= output_final(31 downto 24);	

------------------------------------------------------------------------------------

		
--Instrução BEQ
sig_Ext_Shiftado <= (sig_Ext(29 downto 0) & "00");
saida_beq <= (BEQ AND flag_zero);


		
--Palavra Controle
mux_Jump <= palavra_controle(7);
mux_RtRd <= palavra_controle(6);
habEscrita_Reg <= palavra_controle(5);
mux_Rt_Imediato<= palavra_controle(4);
mux_ULA_MEM<= palavra_controle(3);
BEQ<= palavra_controle(2);
habLeituraMEM <= palavra_controle(1);
habEscritaMEM	 <= palavra_controle(0);	



--Instrução
op_code <= Instruction(31 downto 26);
Rs <= Instruction(25 downto 21);
Rt <= Instruction(20 downto 16);
Rd <= Instruction(15 downto 11);
shamt <= Instruction(10 downto 6);
funct <= Instruction(5 downto 0);

end architecture;