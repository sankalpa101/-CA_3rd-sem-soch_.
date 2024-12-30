-- Testbench for OR Gate
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_OR_Gate is
end TB_OR_Gate;

architecture behavior of TB_OR_Gate is
    -- Component declaration for the OR gate
    component OR_Gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    -- Signals to connect to the OR Gate
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin
    -- Instantiate the OR Gate
    uut: OR_Gate port map (
        A => A,
        B => B,
        Y => Y
    );

    -- Test process
    stim_proc: process
    begin
        -- Apply test vectors
        A <= '0'; B <= '0'; -- Test case 1: 0 OR 0
        wait for 10 ns;
        
        A <= '0'; B <= '1'; -- Test case 2: 0 OR 1
        wait for 10 ns;

        A <= '1'; B <= '0'; -- Test case 3: 1 OR 0
        wait for 10 ns;

        A <= '1'; B <= '1'; -- Test case 4: 1 OR 1
        wait for 10 ns;

        -- End of test
        wait;
    end process;
end behavior;
