library ieee;
use ieee.std_logic_1164.all;

entity Detector_Keys is
  port ( 
			Key: in std_logic;
			Clock, Limpa: in std_logic;
			saida: out std_logic
  );
end entity;

architecture comportamento of Detector_Keys is


  signal CLK_Key: std_logic;
  begin
  
  detectorKey0: work.edgedetector(bordaSubida)
			  port map (
				  clk => Clock,
				  entrada => Key,
				  saida =>  CLK_Key
	);
	
	Flip_Flop_Key0 :  entity work.FlipFLop
        port map( 
		           DIN => '1',
                 DOUT => saida ,
                 CLK =>  CLK_Key ,
                 ENABLE => '1',
					  RST => Limpa
	);
	
end architecture;