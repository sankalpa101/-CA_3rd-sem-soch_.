library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_not_gate is
    -- No ports in testbench
end tb_not_gate;

architecture behavior of tb_not_gate is
    -- Component Declaration for the Unit Under Test (UUT)
    component not_gate
        Port ( A : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    -- Signals to connect to the UUT
    signal A : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: not_gate Port map (A => A, Y => Y);

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: A = '0'
        A <= '0';
        wait for 10 ns;
        
        -- Test case 2: A = '1'
        A <= '1';
        wait for 10 ns;
        
        -- End of simulation
        wait;
    end process;
end behavior;
