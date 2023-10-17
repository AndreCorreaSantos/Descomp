	
library ieee;

use ieee.std_logic_1164.all;

entity teste is

             port (

entradaCircuito : in std_logic_vector(5 downto 0);

saidaCircuito : out std_logic_vector(3 downto 0)   

);

end entity;

architecture arquitetura of teste is 

signal A3 : std_logic;

signal A2 : std_logic;

signal A1 : std_logic;

signal A0 : std_logic;


signal S : std_logic_vector(1 downto 0);


signal Y3 : std_logic;

signal Y2 : std_logic;

signal Y1 : std_logic;

signal Y0 : std_logic;

begin

MUX1 : entity work.Mux4x1 generic map(larguraDados => 1)

             port map(entradaA =>A3 , entradaB => A2, entradaC=>A1 , entradaD =>A0 , seletor => S, saida =>Y3 );


MUX2 : entity work.Mux4x1 generic map(larguraDados => 1)

             port map(entradaA => A2, entradaB =>A1 , entradaC=> A0, entradaD =>'0' , seletor => S, saida => Y2);


MUX3 : entity work.Mux4x1 generic map(larguraDados => 1)

             port map(entradaA => A1, entradaB => A0, entradaC=>'0' , entradaD => '0', seletor =>S , saida => Y1);


MUX4 : entity work.Mux4x1 generic map(larguraDados => 1)

             port map(entradaA =>A0 , entradaB => '0', entradaC=>'0' , entradaD =>'0' , seletor => S, saida => Y0);




A3 <= entradaCircuito(5);

A2 <= entradaCircuito(4);

A1 <= entradaCircuito(3);

A0 <= entradaCircuito(2);

S <= entradaCircuito(1 downto 0);

saidaCircuito <= Y3 & Y2 & Y1 & Y0;


end architecture;