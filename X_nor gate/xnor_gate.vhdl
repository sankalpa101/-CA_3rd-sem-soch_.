library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end xnor_gate;

architecture Behavioral of xnor_gate is
begin
    Y <= A xnor B;  -- XNOR gate functionality
end Behavioral;

