-- Full Adder VHDL Code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( A   : in  STD_LOGIC;
           B   : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
begin
    process(A, B, Cin)
    begin
        -- Full Adder logic
        Sum  <= (A XOR B) XOR Cin;
        Cout <= (A AND B) OR (B AND Cin) OR (Cin AND A);
    end process;
end Behavioral;
