-- Full Adder Testbench Code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is
    -- Component declaration for the unit under test (UUT)
    component full_adder
        Port ( A   : in  STD_LOGIC;
               B   : in  STD_LOGIC;
               Cin : in  STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;

    -- Signals to connect to UUT
    signal A   : STD_LOGIC := '0';
    signal B   : STD_LOGIC := '0';
    signal Cin : STD_LOGIC := '0';
    signal Sum : STD_LOGIC;
    signal Cout : STD_LOGIC;

begin
    -- Instantiate the Full Adder component (UUT)
    uut: full_adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Stimulus process: Apply test vectors
    stim_proc: process
    begin
        -- Apply test vectors to simulate all combinations
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        
        -- End of simulation
        wait;
    end process;
end behavior;
