library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A, B, carry_in : in  STD_LOGIC;
        carry_out : out  STD_LOGIC;
        result : out  STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    carry_out <= (A and B) or (carry_in and (A xor B));
    result <= (A xor B) xor carry_in;
end Behavioral;