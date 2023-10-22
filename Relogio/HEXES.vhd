library ieee;
use ieee.std_logic_1164.all;

entity HEXES is
  port ( 
			entrada: in std_logic_vector(7 downto 0);
			CLK: in std_logic;
			habilita_HEX0,habilita_HEX1,habilita_HEX2: in std_logic;
			habilita_HEX3,habilita_HEX4,habilita_HEX5: in std_logic;
			saida_HEX0,saida_HEX1,saida_HEX2: out std_logic_vector(6 downto 0);
			saida_HEX3,saida_HEX4,saida_HEX5: out std_logic_vector(6 downto 0)
  );
end entity;

architecture comportamento of HEXES is
  signal reg_HEX0,reg_HEX1,reg_HEX2:  std_logic_vector(4 downto 0);
  signal reg_HEX3,reg_HEX4,reg_HEX5:  std_logic_vector(4 downto 0);
  begin
REGISTRADOR_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX0, 
			 ENABLE => habilita_HEX0 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor0 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX0, 
			 saida7seg => saida_HEX0
);

REGISTRADOR_HEX1 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX1, 
			 ENABLE => habilita_HEX1 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor1 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX1, 
			 saida7seg => saida_HEX1
);

REGISTRADOR_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX2, 
			 ENABLE => habilita_HEX2 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor2 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX2, 
			 saida7seg => saida_HEX2
);

REGISTRADOR_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX3, 
			 ENABLE => habilita_HEX3 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor3 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX3, 
			 saida7seg => saida_HEX3
);

REGISTRADOR_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX4, 
			 ENABLE => habilita_HEX4 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor4 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX4, 
			 saida7seg => saida_HEX4
);

REGISTRADOR_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 5)
port map (DIN => entrada(4 downto 0), 
			 DOUT => reg_HEX5, 
			 ENABLE => habilita_HEX5 , 
			 CLK => CLK, 
			 RST => '0'
);

Conversor5 : entity work.conversorHex7Seg
port map ( 
			 dadoHex => reg_HEX5, 
			 saida7seg => saida_HEX5
);
end architecture;