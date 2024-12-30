-- half_adder_tb.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end half_adder_tb;

architecture behavior of half_adder_tb is
    -- Declare signals to connect to the UUT (Unit Under Test)
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Sum : STD_LOGIC;
    signal Carry : STD_LOGIC;

    -- Component declaration for the Unit Under Test (UUT)
    component half_adder
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Sum : out  STD_LOGIC;
               Carry : out  STD_LOGIC );
    end component;

begin
    -- Instantiate the UUT (Unit Under Test)
    uut: half_adder port map (A => A, B => B, Sum => Sum, Carry => Carry);

    -- Stimulus process: Apply all combinations of inputs A and B
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
        
        -- End simulation
        wait;
    end process;
end behavior;
