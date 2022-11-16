----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2022 03:15:51 PM
-- Design Name: 
-- Module Name: edgeDetector - Behavioral
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

entity edgeDetector is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC;
           edge : out STD_LOGIC);
end edgeDetector;

architecture Behavioral of edgeDetector is

signal SIG1, SIG2 : std_logic;

component flipflop_simple is
    Port (clk, input : in STD_LOGIC;
          output : out STD_LOGIC);
end component;

begin

    FF1 : flipflop_simple port map (clk => clk, input => input, output => SIG1);
    FF2 : flipflop_simple port map (clk => clk, input => SIG1, output => SIG2);
    AND1 : edge <= not(SIG2) and SIG1;
end Behavioral;
