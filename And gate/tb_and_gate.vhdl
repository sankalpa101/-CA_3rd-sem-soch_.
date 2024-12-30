library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench entity does not need ports
entity tb_and_gate is
end tb_and_gate;

architecture behavior of tb_and_gate is
    -- Signal declarations to connect to the AND gate
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

    -- Component declaration for the AND gate
    component and_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

begin
    -- Instantiate the AND gate
    uut: and_gate
        Port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Stimulus process to generate test vectors
    stim_proc: process
    begin
        -- Test case 1: A = 0, B = 0
        A <= '0'; B <= '0';
        wait for 10 ns;

        -- Test case 2: A = 0, B = 1
        A <= '0'; B <= '1';
        wait for 10 ns;

        -- Test case 3: A = 1, B = 0
        A <= '1'; B <= '0';
        wait for 10 ns;

        -- Test case 4: A = 1, B = 1
        A <= '1'; B <= '1';
        wait for 10 ns;

        -- End of test
        wait;
    end process;
end behavior;
