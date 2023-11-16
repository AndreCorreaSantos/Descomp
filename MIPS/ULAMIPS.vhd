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
end entity;




architecture comportamento of ULAMIPS is
    signal carryOut : std_logic_vector(31 downto 0);
	 signal inverteB : std_logic;

begin

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


SOMABIT1: entity work.SOMABIT
port map (
    entradaA => entradaA(1),
    entradaB => entradaB(1),
    inverteB => inverteB,
    carryIn => carryOut(0),
    seletor => seletor(1 downto 0),
    resultado => resultado(1),
    carryOut => carryOut(1)
);



SOMABIT2: entity work.SOMABIT
port map (
    entradaA => entradaA(2),
    entradaB => entradaB(2),
    inverteB => inverteB,
    carryIn => carryOut(1),
    seletor => seletor(1 downto 0),
    resultado => resultado(2),
    carryOut => carryOut(2)
);



SOMABIT3: entity work.SOMABIT
port map (
    entradaA => entradaA(3),
    entradaB => entradaB(3),
    inverteB => inverteB,
    carryIn => carryOut(2),
    seletor => seletor(1 downto 0),
    resultado => resultado(3),
    carryOut => carryOut(3)
);



SOMABIT4: entity work.SOMABIT
port map (
    entradaA => entradaA(4),
    entradaB => entradaB(4),
    inverteB => inverteB,
    carryIn => carryOut(3),
    seletor => seletor(1 downto 0),
    resultado => resultado(4),
    carryOut => carryOut(4)
);



SOMABIT5: entity work.SOMABIT
port map (
    entradaA => entradaA(5),
    entradaB => entradaB(5),
    inverteB => inverteB,
    carryIn => carryOut(4),
    seletor => seletor(1 downto 0),
    resultado => resultado(5),
    carryOut => carryOut(5)
);



SOMABIT6: entity work.SOMABIT
port map (
    entradaA => entradaA(6),
    entradaB => entradaB(6),
    inverteB => inverteB,
    carryIn => carryOut(5),
    seletor => seletor(1 downto 0),
    resultado => resultado(6),
    carryOut => carryOut(6)
);



SOMABIT7: entity work.SOMABIT
port map (
    entradaA => entradaA(7),
    entradaB => entradaB(7),
    inverteB => inverteB,
    carryIn => carryOut(6),
    seletor => seletor(1 downto 0),
    resultado => resultado(7),
    carryOut => carryOut(7)
);



SOMABIT8: entity work.SOMABIT
port map (
    entradaA => entradaA(8),
    entradaB => entradaB(8),
    inverteB => inverteB,
    carryIn => carryOut(7),
    seletor => seletor(1 downto 0),
    resultado => resultado(8),
    carryOut => carryOut(8)
);



SOMABIT9: entity work.SOMABIT
port map (
    entradaA => entradaA(9),
    entradaB => entradaB(9),
    inverteB => inverteB,
    carryIn => carryOut(8),
    seletor => seletor(1 downto 0),
    resultado => resultado(9),
    carryOut => carryOut(9)
);



SOMABIT10: entity work.SOMABIT
port map (
    entradaA => entradaA(10),
    entradaB => entradaB(10),
    inverteB => inverteB,
    carryIn => carryOut(9),
    seletor => seletor(1 downto 0),
    resultado => resultado(10),
    carryOut => carryOut(10)
);



SOMABIT11: entity work.SOMABIT
port map (
    entradaA => entradaA(11),
    entradaB => entradaB(11),
    inverteB => inverteB,
    carryIn => carryOut(10),
    seletor => seletor(1 downto 0),
    resultado => resultado(11),
    carryOut => carryOut(11)
);



SOMABIT12: entity work.SOMABIT
port map (
    entradaA => entradaA(12),
    entradaB => entradaB(12),
    inverteB => inverteB,
    carryIn => carryOut(11),
    seletor => seletor(1 downto 0),
    resultado => resultado(12),
    carryOut => carryOut(12)
);



SOMABIT13: entity work.SOMABIT
port map (
    entradaA => entradaA(13),
    entradaB => entradaB(13),
    inverteB => inverteB,
    carryIn => carryOut(12),
    seletor => seletor(1 downto 0),
    resultado => resultado(13),
    carryOut => carryOut(13)
);



SOMABIT14: entity work.SOMABIT
port map (
    entradaA => entradaA(14),
    entradaB => entradaB(14),
    inverteB => inverteB,
    carryIn => carryOut(13),
    seletor => seletor(1 downto 0),
    resultado => resultado(14),
    carryOut => carryOut(14)
);



SOMABIT15: entity work.SOMABIT
port map (
    entradaA => entradaA(15),
    entradaB => entradaB(15),
    inverteB => inverteB,
    carryIn => carryOut(14),
    seletor => seletor(1 downto 0),
    resultado => resultado(15),
    carryOut => carryOut(15)
);



SOMABIT16: entity work.SOMABIT
port map (
    entradaA => entradaA(16),
    entradaB => entradaB(16),
    inverteB => inverteB,
    carryIn => carryOut(15),
    seletor => seletor(1 downto 0),
    resultado => resultado(16),
    carryOut => carryOut(16)
);



SOMABIT17: entity work.SOMABIT
port map (
    entradaA => entradaA(17),
    entradaB => entradaB(17),
    inverteB => inverteB,
    carryIn => carryOut(16),
    seletor => seletor(1 downto 0),
    resultado => resultado(17),
    carryOut => carryOut(17)
);



SOMABIT18: entity work.SOMABIT
port map (
    entradaA => entradaA(18),
    entradaB => entradaB(18),
    inverteB => inverteB,
    carryIn => carryOut(17),
    seletor => seletor(1 downto 0),
    resultado => resultado(18),
    carryOut => carryOut(18)
);



SOMABIT19: entity work.SOMABIT
port map (
    entradaA => entradaA(19),
    entradaB => entradaB(19),
    inverteB => inverteB,
    carryIn => carryOut(18),
    seletor => seletor(1 downto 0),
    resultado => resultado(19),
    carryOut => carryOut(19)
);



SOMABIT20: entity work.SOMABIT
port map (
    entradaA => entradaA(20),
    entradaB => entradaB(20),
    inverteB => inverteB,
    carryIn => carryOut(19),
    seletor => seletor(1 downto 0),
    resultado => resultado(20),
    carryOut => carryOut(20)
);



SOMABIT21: entity work.SOMABIT
port map (
    entradaA => entradaA(21),
    entradaB => entradaB(21),
    inverteB => inverteB,
    carryIn => carryOut(20),
    seletor => seletor(1 downto 0),
    resultado => resultado(21),
    carryOut => carryOut(21)
);



SOMABIT22: entity work.SOMABIT
port map (
    entradaA => entradaA(22),
    entradaB => entradaB(22),
    inverteB => inverteB,
    carryIn => carryOut(21),
    seletor => seletor(1 downto 0),
    resultado => resultado(22),
    carryOut => carryOut(22)
);



SOMABIT23: entity work.SOMABIT
port map (
    entradaA => entradaA(23),
    entradaB => entradaB(23),
    inverteB => inverteB,
    carryIn => carryOut(22),
    seletor => seletor(1 downto 0),
    resultado => resultado(23),
    carryOut => carryOut(23)
);



SOMABIT24: entity work.SOMABIT
port map (
    entradaA => entradaA(24),
    entradaB => entradaB(24),
    inverteB => inverteB,
    carryIn => carryOut(23),
    seletor => seletor(1 downto 0),
    resultado => resultado(24),
    carryOut => carryOut(24)
);



SOMABIT25: entity work.SOMABIT
port map (
    entradaA => entradaA(25),
    entradaB => entradaB(25),
    inverteB => inverteB,
    carryIn => carryOut(24),
    seletor => seletor(1 downto 0),
    resultado => resultado(25),
    carryOut => carryOut(25)
);



SOMABIT26: entity work.SOMABIT
port map (
    entradaA => entradaA(26),
    entradaB => entradaB(26),
    inverteB => inverteB,
    carryIn => carryOut(25),
    seletor => seletor(1 downto 0),
    resultado => resultado(26),
    carryOut => carryOut(26)
);



SOMABIT27: entity work.SOMABIT
port map (
    entradaA => entradaA(27),
    entradaB => entradaB(27),
    inverteB => inverteB,
    carryIn => carryOut(26),
    seletor => seletor(1 downto 0),
    resultado => resultado(27),
    carryOut => carryOut(27)
);



SOMABIT28: entity work.SOMABIT
port map (
    entradaA => entradaA(28),
    entradaB => entradaB(28),
    inverteB => inverteB,
    carryIn => carryOut(27),
    seletor => seletor(1 downto 0),
    resultado => resultado(28),
    carryOut => carryOut(28)
);



SOMABIT29: entity work.SOMABIT
port map (
    entradaA => entradaA(29),
    entradaB => entradaB(29),
    inverteB => inverteB,
    carryIn => carryOut(28),
    seletor => seletor(1 downto 0),
    resultado => resultado(29),
    carryOut => carryOut(29)
);



SOMABIT30: entity work.SOMABIT
port map (
    entradaA => entradaA(30),
    entradaB => entradaB(30),
    inverteB => inverteB,
    carryIn => carryOut(29),
    seletor => seletor(1 downto 0),
    resultado => resultado(30),
    carryOut => carryOut(30)
);


--last bit

end architecture;