library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_UNITY is
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR(31 downto 0);
      seletor:  in STD_LOGIC_VECTOR (1 downto 0);
		inverte_A, inverte_B: in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR(31 downto 0)
);
end entity;

architecture comportamento of ULA_UNITY is
	signal carry_in_1: std_logic;
	signal carry_in_2: std_logic;
	signal carry_in_3: std_logic;
	signal carry_in_4: std_logic;
	signal carry_in_5: std_logic;
	signal carry_in_6: std_logic;
	signal carry_in_7: std_logic;
	signal carry_in_8: std_logic;
	signal carry_in_9: std_logic;
	signal carry_in_10: std_logic;
	signal carry_in_11: std_logic;
	signal carry_in_12: std_logic;
	signal carry_in_13: std_logic;
	signal carry_in_14: std_logic;
	signal carry_in_15: std_logic;
	signal carry_in_16: std_logic;
	signal carry_in_17: std_logic;
	signal carry_in_18: std_logic;
	signal carry_in_19: std_logic;
	signal carry_in_20: std_logic;
	signal carry_in_21: std_logic;
	signal carry_in_22: std_logic;
	signal carry_in_23: std_logic;
	signal carry_in_24: std_logic;
	signal carry_in_25: std_logic;
	signal carry_in_26: std_logic;
	signal carry_in_27: std_logic;
	signal carry_in_28: std_logic;
	signal carry_in_29: std_logic;
	signal carry_in_30: std_logic;
	signal carry_in_31: std_logic;

	signal sinal_overflow: std_logic;

begin
BIT0 :  entity work.ULA_BIT_INICIAL
        port map( entradaA => entradaA(0),
                 entradaB =>  entradaB(0),
					  seletor => seletor,
					  inverte_A => inverte_A,
					  inverte_B => inverte_B,
					  slt =>sinal_overflow,
					  carry_in => inverte_B,
					  carry_out => carry_in_1,
                 saida => saida(0));
					  
					  
BIT1 :  entity work.ULA_BITS_INTERMEDIARIOS 
        port map( entradaA => entradaA (1),
                 entradaB =>  entradaB (1),
					  seletor => seletor,
					  inverte_A => inverte_A ,
					  inverte_B => inverte_B,
					  slt => '0',
					  carry_in => carry_in_1,
					  carry_out => carry_in_2,
                 saida => saida(1));
					  
BIT2 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(2),
            entradaB => entradaB(2),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_2,
            carry_out => carry_in_3,
            saida => saida(2)
        );

BIT3 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(3),
            entradaB => entradaB(3),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_3,
            carry_out => carry_in_4,
            saida => saida(3)
        );

BIT4 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(4),
            entradaB => entradaB(4),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_4,
            carry_out => carry_in_5,
            saida => saida(4)
        );

BIT5 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(5),
            entradaB => entradaB(5),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_5,
            carry_out => carry_in_6,
            saida => saida(5)
        );

BIT6 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(6),
            entradaB => entradaB(6),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_6,
            carry_out => carry_in_7,
            saida => saida(6)
        );

BIT7 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(7),
            entradaB => entradaB(7),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_7,
            carry_out => carry_in_8,
            saida => saida(7)
        );

BIT8 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(8),
            entradaB => entradaB(8),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_8,
            carry_out => carry_in_9,
            saida => saida(8)
        );

BIT9 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(9),
            entradaB => entradaB(9),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_9,
            carry_out => carry_in_10,
            saida => saida(9)
        );

BIT10 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(10),
            entradaB => entradaB(10),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_10,
            carry_out => carry_in_11,
            saida => saida(10)
        );

BIT11 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(11),
            entradaB => entradaB(11),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_11,
            carry_out => carry_in_12,
            saida => saida(11)
        );

BIT12 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(12),
            entradaB => entradaB(12),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_12,
            carry_out => carry_in_13,
            saida => saida(12)
        );

BIT13 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(13),
            entradaB => entradaB(13),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_13,
            carry_out => carry_in_14,
            saida => saida(13)
        );

BIT14 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(14),
            entradaB => entradaB(14),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_14,
            carry_out => carry_in_15,
            saida => saida(14)
        );

BIT15 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(15),
            entradaB => entradaB(15),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_15,
            carry_out => carry_in_16,
            saida => saida(15)
        );

BIT16 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(16),
            entradaB => entradaB(16),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_16,
            carry_out => carry_in_17,
            saida => saida(16)
        );

BIT17 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(17),
            entradaB => entradaB(17),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_17,
            carry_out => carry_in_18,
            saida => saida(17)
        );

BIT18 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(18),
            entradaB => entradaB(18),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_18,
            carry_out => carry_in_19,
            saida => saida(18)
        );

BIT19 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(19),
            entradaB => entradaB(19),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_19,
            carry_out => carry_in_20,
            saida => saida(19)
        );

BIT20 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(20),
            entradaB => entradaB(20),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_20,
            carry_out => carry_in_21,
            saida => saida(20)
        );

BIT21 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(21),
            entradaB => entradaB(21),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_21,
            carry_out => carry_in_22,
            saida => saida(21)
        );

BIT22 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(22),
            entradaB => entradaB(22),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_22,
            carry_out => carry_in_23,
            saida => saida(22)
        );
BIT23 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(23),
            entradaB => entradaB(23),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_23,
            carry_out => carry_in_24,
            saida => saida(23)
        );

BIT24 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(24),
            entradaB => entradaB(24),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_24,
            carry_out => carry_in_25,
            saida => saida(24)
        );

BIT25 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(25),
            entradaB => entradaB(25),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_25,
            carry_out => carry_in_26,
            saida => saida(25)
        );

BIT26 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(26),
            entradaB => entradaB(26),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_26,
            carry_out => carry_in_27,
            saida => saida(26)
        );

BIT27 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(27),
            entradaB => entradaB(27),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_27,
            carry_out => carry_in_28,
            saida => saida(27)
        );

BIT28 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(28),
            entradaB => entradaB(28),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_28,
            carry_out => carry_in_29,
            saida => saida(28)
        );

BIT29 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(29),
            entradaB => entradaB(29),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_29,
            carry_out => carry_in_30,
            saida => saida(29)
        );

BIT30 : entity work.ULA_BITS_INTERMEDIARIOS 
        port map(
            entradaA => entradaA(30),
            entradaB => entradaB(30),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_30,
            carry_out => carry_in_31,
            saida => saida(30)
        );
		  
BIT31 : entity work.ULA_BIT_FINAL
        port map(
            entradaA => entradaA(31),
            entradaB => entradaB(31),
            seletor => seletor,
            inverte_A => inverte_A,
            inverte_B => inverte_B,
            slt => '0',
            carry_in => carry_in_31,
            saida => saida(31),
				overflow => sinal_overflow
        );


end architecture;