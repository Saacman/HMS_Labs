----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2022 03:20:41 PM
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

entity debouncer is
    generic( delay : integer := 3);
    Port ( clk : in STD_LOGIC;
           button : in STD_LOGIC;
           debounced : out STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is

signal SIG1, SIG2 : std_logic;

component edgeDetector is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC;
           edge : out STD_LOGIC);
end component;

begin
    ED1: edgeDetector port map (clk => clk, input => button, edge => SIG1);
    
    DELAY:
    process(clk)
    begin
        if rising_edge(clk) then
            
        end if; 
    end process;

end Behavioral;
