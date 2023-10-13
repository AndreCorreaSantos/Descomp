library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13; -- Instrucoes de 13 bits
          addrWidth: natural := 9 -- so preciso de 3 bits 
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

    constant NOP  : std_logic_vector(3 downto 0) := "0000";
    constant LDA  : std_logic_vector(3 downto 0) := "0001";
    constant SOMA : std_logic_vector(3 downto 0) := "0010";
    constant SUB  : std_logic_vector(3 downto 0) := "0011";
    constant LDI : std_logic_vector(3 downto 0) := "0100";
    constant STA : std_logic_vector(3 downto 0) := "0101";
    constant JMP : std_logic_vector(3 downto 0) := "0110";
    constant JEQ : std_logic_vector(3 downto 0) := "0111";
    constant JSR : std_logic_vector(3 downto 0) := "1001";
    constant CEQ : std_logic_vector(3 downto 0) := "1000";
    constant RET : std_logic_vector(3 downto 0) := "1010";
    
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin


    tmp(0)  := LDI  & '0' & "00000001";
    tmp(1)  := STA  & '0' & "00000000";
    tmp(2)  := SOMA & '0' & "00000000";

    tmp(3)  := STA  & '1' & "00100000";
    tmp(4)  := SOMA & '0' & "00000000";
    
    tmp(5)  := STA  & '1' & "00100001";
    tmp(6)  := SOMA & '0' & "00000000";
    
    tmp(7)  := STA  & '1' & "00100010";
    tmp(8)  := SOMA & '0' & "00000000";
    
    tmp(9)  := STA  & '0' & "00100011";
    tmp(10) := SOMA & '0' & "00000000";
    
    tmp(11) := STA  & '0' & "00100100";
    tmp(12) := SOMA & '0' & "00000000";
    
    tmp(13) := STA  & '0' & "00100101";
    tmp(14) := JMP  & '0' & "00000010";
    
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      -- tmp(0) := x"5" & '1' & x"FF";	-- STA  @511
      -- tmp(1) := x"5" & '1' & x"FE";	-- STA  @510
      -- tmp(2) := x"1" & '1' & x"40";	-- LDA  @320
      -- tmp(3) := x"5" & '1' & x"20";	-- STA  @288
      -- tmp(4) := x"1" & '1' & x"41";	-- LDA  @321
      -- tmp(5) := x"B" & '0' & x"01";	-- ANDi $1
      -- tmp(6) := x"5" & '1' & x"21";	-- STA  @289
      -- tmp(7) := x"1" & '1' & x"42";	-- LDA  @322
      -- tmp(8) := x"B" & '0' & x"01";	-- ANDi $1
      -- tmp(9) := x"5" & '1' & x"22";	-- STA  @290
      -- tmp(10) := x"1" & '1' & x"60";	-- LDA  @352
      -- tmp(11) := x"5" & '1' & x"23";	-- STA  @291
      -- tmp(12) := x"1" & '1' & x"61";	-- LDA  @353
      -- tmp(13) := x"5" & '1' & x"24";	-- STA  @292
      -- tmp(14) := x"1" & '1' & x"62";	-- LDA  @354
      -- tmp(15) := x"5" & '1' & x"25";	-- STA  @293
      -- tmp(16) := x"1" & '1' & x"63";	-- LDA  @355
      -- tmp(17) := x"5" & '1' & x"01";	-- STA  @257
      -- tmp(18) := x"1" & '1' & x"64";	-- LDA  @356
      -- tmp(19) := x"5" & '1' & x"02";	-- STA  @258
      -- tmp(20) := x"6" & '0' & x"02";	-- JMP  @INICIO


      -- tmp(0) := LDI &'0'&x"01";
      -- tmp(1) := STA &'0'&x"00";
      -- tmp(2) := SOMA &'0'&x"00";
      -- tmp(3) := STA &'1'&x"20";
      -- tmp(4) := SOMA &'0'&x"00";
      -- tmp(5) := STA &'1'&x"21";
      -- tmp(6) := SOMA &'0'&x"00";
      -- tmp(7) := STA &'1'&x"22";
      -- tmp(8) := SOMA &'0'&x"00";
      -- tmp(9) := STA &'1'&x"23";
      -- tmp(10) := SOMA &'0'&x"00";
      -- tmp(11) := STA &'1'&x"24";
      -- tmp(12) := SOMA &'0'&x"00";
      -- tmp(13) := STA &'1'&x"25";
      -- tmp(14) := JMP &'0'&x"02";

      return tmp;

    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;