library ieee;
use ieee.std_logic_1164.all;

entity Detector_Keys is
  port ( 
			Keys: in std_logic_vector(3 downto 0);
			Clock, Limpa: in std_logic;
			saida: out std_logic
  );
end entity;

architecture comportamento of Detector_Keys is


  signal CLK_Key0: std_logic;
  begin
  
  detectorKey0: work.edgedetector(bordaSubida)
			  port map (
				  clk => Clock,
				  entrada => Keys(0),
				  saida =>  CLK_Key0
	);
	
	Flip_Flop_Key0 :  entity work.FlipFLop
        port map( 
		           DIN => '1',
                 DOUT => saida ,
                 CLK =>  CLK_Key0 ,
                 ENABLE => '1',
					  RST => Limpa
	);
	
end architecture;