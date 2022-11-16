library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity counters_tb is
    Generic(n : positive := 8);
end counters_tb;

architecture Behavioral of counters_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    
    Component sync_counter
        Generic(
            WIDTH : positive := 8
        );
        Port ( clk : in  STD_LOGIC;     -- input clock
               -- input
               updown, rst, ld, en : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR(n-1 downto 0);
               -- outputs
               Q : out  STD_LOGIC_VECTOR (n-1 downto 0);
               ovf : out  STD_LOGIC);    -- direction of counter (up or down)
    end component;
    

    --Inputs
    signal Clk : STD_LOGIC := '0';
    signal Clr : STD_LOGIC := '0';
    signal UpDown : STD_LOGIC := '0';
    signal En : STD_LOGIC := '0';
    signal Ld : STD_LOGIC := '0';
    signal D : STD_LOGIC_VECTOR (n-1 downto 0) := (others=>'0');
    
    --Outputs
    signal Q : STD_LOGIC_VECTOR (n-1 downto 0);
    signal ovrflow : STD_LOGIC;
    
   -- Clock period definitions
    constant clk_period : time := 10 ns;    -- 100MHz (PIN Y9 on the Zedboard)
    
begin

    --Instantiate the Unit Under Test (UUT)
    uut: sync_counter Port Map (
        clk => Clk,
        rst => Clr,
        updown => UpDown,
        ld => Ld,
        en => En,
        D => D,
        Q => Q,
        ovf => ovrflow
    );
    
    -- Clock process definitions
    clk_process :process
    begin
        Clk <= '1';
        wait for clk_period/2;
        Clk <= '0';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        wait for 2*clk_period;
        Clr <= '0';

        wait for clk_period;
        Clr <= '1';
        wait for clk_period;
        Clr <= '0';
        wait for clk_period;
        
        En <= '1';
        D <= X"10";
        Ld <= '1';
        wait for 900 us;
        Ld <= '0';
        UpDown <= '0';
        wait for 16*clk_period;
        UpDown <= '1';
        wait for 25*clk_period;
        En <= '0';
        wait for clk_period;
        
        wait;
    end process;

end;