library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAMIPS is

    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR(31 downto 0);
      seletor:  in std_logic_vector(3 downto 0);
      resultado:    out STD_LOGIC_VECTOR(31 downto 0);
      zero : out std_logic
    );
end entity; -- INVERTE A, INVERTE B, SELECAO(1 DOWNTO 0)




architecture comportamento of ULAMIPS is
    signal carryOut : std_logic_vector(31 downto 0);
    signal inverteB : std_logic;
    signal inverteA : std_logic;
    signal saidaSomaBit31 : std_logic;
    signal overflow : std_logic;
    signal SLT0 : std_logic;


begin

inverteA <= seletor(3);
inverteB <= seletor(2);

-- first bit


-- port (
--   entradaA : in std_logic;
--   entradaB : in std_logic;
--   inverteB : in std_logic;
--   carryIn : in std_logic;
--   seletor : in std_logic_vector(1 downto 0);
--   resultado : out std_logic;
--   carryOut : out std_logic;
-- );


SOMABIT0: entity work.SOMABIT
port map (
    entradaA => entradaA(1),
    entradaB => entradaB(1),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => inverteB, --CARRY IN DO BIT 0 é o inverteB
    seletor => seletor(1 downto 0),
    resultado => resultado(0),
    carryOut => carryOut(0),
    SLT => SLT0 -- SLT DO BIT 0 
);



SOMABIT1: entity work.SOMABIT
port map (
    entradaA => entradaA(1),
    entradaB => entradaB(1),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(0),
    seletor => seletor(1 downto 0),
    resultado => resultado(1),
    carryOut => carryOut(1),
    SLT => '0'
);



SOMABIT2: entity work.SOMABIT
port map (
    entradaA => entradaA(2),
    entradaB => entradaB(2),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(1),
    seletor => seletor(1 downto 0),
    resultado => resultado(2),
    carryOut => carryOut(2),
    SLT => '0'
);



SOMABIT3: entity work.SOMABIT
port map (
    entradaA => entradaA(3),
    entradaB => entradaB(3),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(2),
    seletor => seletor(1 downto 0),
    resultado => resultado(3),
    carryOut => carryOut(3),
    SLT => '0'
);



SOMABIT4: entity work.SOMABIT
port map (
    entradaA => entradaA(4),
    entradaB => entradaB(4),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(3),
    seletor => seletor(1 downto 0),
    resultado => resultado(4),
    carryOut => carryOut(4),
    SLT => '0'
);



SOMABIT5: entity work.SOMABIT
port map (
    entradaA => entradaA(5),
    entradaB => entradaB(5),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(4),
    seletor => seletor(1 downto 0),
    resultado => resultado(5),
    carryOut => carryOut(5),
    SLT => '0'
);



SOMABIT6: entity work.SOMABIT
port map (
    entradaA => entradaA(6),
    entradaB => entradaB(6),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(5),
    seletor => seletor(1 downto 0),
    resultado => resultado(6),
    carryOut => carryOut(6),
    SLT => '0'
);



SOMABIT7: entity work.SOMABIT
port map (
    entradaA => entradaA(7),
    entradaB => entradaB(7),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(6),
    seletor => seletor(1 downto 0),
    resultado => resultado(7),
    carryOut => carryOut(7),
    SLT => '0'
);



SOMABIT8: entity work.SOMABIT
port map (
    entradaA => entradaA(8),
    entradaB => entradaB(8),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(7),
    seletor => seletor(1 downto 0),
    resultado => resultado(8),
    carryOut => carryOut(8),
    SLT => '0'
);



SOMABIT9: entity work.SOMABIT
port map (
    entradaA => entradaA(9),
    entradaB => entradaB(9),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(8),
    seletor => seletor(1 downto 0),
    resultado => resultado(9),
    carryOut => carryOut(9),
    SLT => '0'
);



SOMABIT10: entity work.SOMABIT
port map (
    entradaA => entradaA(10),
    entradaB => entradaB(10),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(9),
    seletor => seletor(1 downto 0),
    resultado => resultado(10),
    carryOut => carryOut(10),
    SLT => '0'
);



SOMABIT11: entity work.SOMABIT
port map (
    entradaA => entradaA(11),
    entradaB => entradaB(11),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(10),
    seletor => seletor(1 downto 0),
    resultado => resultado(11),
    carryOut => carryOut(11),
    SLT => '0'
);



SOMABIT12: entity work.SOMABIT
port map (
    entradaA => entradaA(12),
    entradaB => entradaB(12),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(11),
    seletor => seletor(1 downto 0),
    resultado => resultado(12),
    carryOut => carryOut(12),
    SLT => '0'
);



SOMABIT13: entity work.SOMABIT
port map (
    entradaA => entradaA(13),
    entradaB => entradaB(13),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(12),
    seletor => seletor(1 downto 0),
    resultado => resultado(13),
    carryOut => carryOut(13),
    SLT => '0'
);



SOMABIT14: entity work.SOMABIT
port map (
    entradaA => entradaA(14),
    entradaB => entradaB(14),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(13),
    seletor => seletor(1 downto 0),
    resultado => resultado(14),
    carryOut => carryOut(14),
    SLT => '0'
);



SOMABIT15: entity work.SOMABIT
port map (
    entradaA => entradaA(15),
    entradaB => entradaB(15),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(14),
    seletor => seletor(1 downto 0),
    resultado => resultado(15),
    carryOut => carryOut(15),
    SLT => '0'
);



SOMABIT16: entity work.SOMABIT
port map (
    entradaA => entradaA(16),
    entradaB => entradaB(16),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(15),
    seletor => seletor(1 downto 0),
    resultado => resultado(16),
    carryOut => carryOut(16),
    SLT => '0'
);



SOMABIT17: entity work.SOMABIT
port map (
    entradaA => entradaA(17),
    entradaB => entradaB(17),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(16),
    seletor => seletor(1 downto 0),
    resultado => resultado(17),
    carryOut => carryOut(17),
    SLT => '0'
);



SOMABIT18: entity work.SOMABIT
port map (
    entradaA => entradaA(18),
    entradaB => entradaB(18),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(17),
    seletor => seletor(1 downto 0),
    resultado => resultado(18),
    carryOut => carryOut(18),
    SLT => '0'
);



SOMABIT19: entity work.SOMABIT
port map (
    entradaA => entradaA(19),
    entradaB => entradaB(19),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(18),
    seletor => seletor(1 downto 0),
    resultado => resultado(19),
    carryOut => carryOut(19),
    SLT => '0'
);



SOMABIT20: entity work.SOMABIT
port map (
    entradaA => entradaA(20),
    entradaB => entradaB(20),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(19),
    seletor => seletor(1 downto 0),
    resultado => resultado(20),
    carryOut => carryOut(20),
    SLT => '0'
);



SOMABIT21: entity work.SOMABIT
port map (
    entradaA => entradaA(21),
    entradaB => entradaB(21),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(20),
    seletor => seletor(1 downto 0),
    resultado => resultado(21),
    carryOut => carryOut(21),
    SLT => '0'
);



SOMABIT22: entity work.SOMABIT
port map (
    entradaA => entradaA(22),
    entradaB => entradaB(22),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(21),
    seletor => seletor(1 downto 0),
    resultado => resultado(22),
    carryOut => carryOut(22),
    SLT => '0'
);



SOMABIT23: entity work.SOMABIT
port map (
    entradaA => entradaA(23),
    entradaB => entradaB(23),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(22),
    seletor => seletor(1 downto 0),
    resultado => resultado(23),
    carryOut => carryOut(23),
    SLT => '0'
);



SOMABIT24: entity work.SOMABIT
port map (
    entradaA => entradaA(24),
    entradaB => entradaB(24),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(23),
    seletor => seletor(1 downto 0),
    resultado => resultado(24),
    carryOut => carryOut(24),
    SLT => '0'
);



SOMABIT25: entity work.SOMABIT
port map (
    entradaA => entradaA(25),
    entradaB => entradaB(25),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(24),
    seletor => seletor(1 downto 0),
    resultado => resultado(25),
    carryOut => carryOut(25),
    SLT => '0'
);



SOMABIT26: entity work.SOMABIT
port map (
    entradaA => entradaA(26),
    entradaB => entradaB(26),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(25),
    seletor => seletor(1 downto 0),
    resultado => resultado(26),
    carryOut => carryOut(26),
    SLT => '0'
);



SOMABIT27: entity work.SOMABIT
port map (
    entradaA => entradaA(27),
    entradaB => entradaB(27),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(26),
    seletor => seletor(1 downto 0),
    resultado => resultado(27),
    carryOut => carryOut(27),
    SLT => '0'
);



SOMABIT28: entity work.SOMABIT
port map (
    entradaA => entradaA(28),
    entradaB => entradaB(28),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(27),
    seletor => seletor(1 downto 0),
    resultado => resultado(28),
    carryOut => carryOut(28),
    SLT => '0'
);



SOMABIT29: entity work.SOMABIT
port map (
    entradaA => entradaA(29),
    entradaB => entradaB(29),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(28),
    seletor => seletor(1 downto 0),
    resultado => resultado(29),
    carryOut => carryOut(29),
    SLT => '0'
);



SOMABIT30: entity work.SOMABIT
port map (
    entradaA => entradaA(30),
    entradaB => entradaB(30),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(29),
    seletor => seletor(1 downto 0),
    resultado => resultado(30),
    carryOut => carryOut(30),
    SLT => '0'
);

SOMABIT31: entity work.SOMABIT31
port map (
    entradaA => entradaA(31),
    entradaB => entradaB(31),
    inverteA => inverteA,
    inverteB => inverteB,
    carryIn => carryOut(30),
    seletor => seletor(1 downto 0),
    resultado => resultado(31),
    saidaSomaBit => saidaSomaBit31,
    carryOut => carryOut(31),
    SLT => '0'
);

overflow <= carryOut(30) XOR carryOut(31);
SLT0 <= overflow XOR saidaSomaBit31;

zero <= (not resultado(31)) and (not resultado(30)) and (not resultado(29)) and (not resultado(28)) and (not resultado(27)) and (not resultado(26)) and (not resultado(25)) and (not resultado(24)) and (not resultado(23)) and (not resultado(22)) and (not resultado(21)) and (not resultado(20)) and (not resultado(19)) and (not resultado(18)) and (not resultado(17)) and (not resultado(16)) and (not resultado(15)) and (not resultado(14)) and (not resultado(13)) and (not resultado(12)) and (not resultado(11)) and (not resultado(10)) and (not resultado(9)) and (not resultado(8)) and (not resultado(7)) and (not resultado(6)) and (not resultado(5)) and (not resultado(4)) and (not resultado(3)) and (not resultado(2)) and (not resultado(1)) and (not resultado(0));

end architecture;