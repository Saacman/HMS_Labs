----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2022 04:27:18 PM
-- Design Name: 
-- Module Name: pop_machine_top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pop_machine_top_tb is
--  Port ( );
end pop_machine_top_tb;

architecture Behavioral of pop_machine_top_tb is

component PopMachine_Top is
    Port ( clk : in STD_LOGIC;
         clr : in STD_LOGIC;
         coin_sensor : in std_logic_vector(1 downto 0);
         coin_ack : in STD_LOGIC;
         coin_retired : in STD_LOGIC;
         pop_retired : in STD_LOGIC;
         drop_pop : out STD_LOGIC;
         return_nickel : out STD_LOGIC;
         segments : out STD_LOGIC_VECTOR (6 downto 0);
         segments_sel : out STD_LOGIC_VECTOR (5 downto 0);
         eqout, gtout : out std_logic);
end component;

signal clk : std_logic := '1';
signal clr : std_logic;
signal coin_sensor : std_logic_vector(1 downto 0) := (others=>'0');
signal coin_ack, coin_retired, pop_retired : std_logic;
signal drop_pop, return_nickel : std_logic;
signal segments : std_logic_vector(6 downto 0);
signal segments_sel : std_logic_vector(5 downto 0);
signal eqout, gtout : std_logic;

constant clock_period : time := 10ns;

begin

pop_machine : PopMachine_Top 
port map (
    clk => clk,
    clr => clr,
    coin_sensor => coin_sensor,
    coin_ack => coin_ack,
    coin_retired => coin_retired, 
    pop_retired => pop_retired,
    drop_pop => drop_pop, 
    return_nickel => return_nickel,
    segments => segments,
    segments_sel => segments_sel
);

CLK <= not CLK after clock_period/2;

stimuli : process
    begin
        clr <= '0';
        coin_ack <= '0';
        coin_retired <= '0';
        pop_retired <= '0';
            wait for 30 * clock_period;
        clr <= '1';
            wait for 30 * clock_period;
        clr <= '0';
            wait for clock_period;
        coin_sensor <= "00"; 
        coin_ack <= '1';
            wait for 20*clock_period;
        coin_ack <= '0';
            wait for 20*clock_period;
        coin_ack <= '1';
            wait for 20*clock_period;
        coin_ack <= '0';
            wait for 20*clock_period;
        coin_sensor <= "11"; 
        coin_ack <= '1';
            wait for 20*clock_period;
        coin_ack <= '0';
            wait for 20*clock_period;
        coin_retired <= '1';
            wait for 20*clock_period;
        coin_retired <= '0';
            wait for 20*clock_period;
        coin_retired <= '1';
            wait for 20*clock_period;
        coin_retired <= '0';
            wait for 20*clock_period;
        coin_retired <= '1';
            wait for 20*clock_period;
        coin_retired <= '0';
            wait for 20*clock_period;
        pop_retired <= '1';
            wait for 20*clock_period;
        pop_retired <= '0';
            wait for 20*clock_period;
        wait;
    end process;

end Behavioral;