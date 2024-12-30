-- half_adder.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( A : in  STD_LOGIC;  -- First input bit
           B : in  STD_LOGIC;  -- Second input bit
           Sum : out  STD_LOGIC; -- Sum output
           Carry : out  STD_LOGIC  -- Carry output
    );
end half_adder;

architecture Behavioral of half_adder is
begin
    -- XOR operation for sum
    Sum <= A XOR B;

    -- AND operation for carry
    Carry <= A AND B;
end Behavioral;
