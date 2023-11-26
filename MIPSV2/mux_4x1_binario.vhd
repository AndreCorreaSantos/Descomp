library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4x1_binario is
    Port (
        input0, input1, input2, input3 : in  STD_LOGIC;
        selector : in STD_LOGIC_VECTOR(1 downto 0);
        output : out  STD_LOGIC
    );
end mux_4x1_binario;

architecture Behavioral of mux_4x1_binario is
begin
    with selector select
        output <= input0 when "00",
                  input1 when "01",
                  input2 when "10",
                  input3 when others;

end Behavioral;
