----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/20/2022 11:04:22 AM
-- Design Name: 
-- Module Name: coin_decoder - Behavioral
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

entity coin_decoder is
    Port ( coin_in : in STD_LOGIC_VECTOR (1 downto 0);
           deco_out : out STD_LOGIC_VECTOR (3 downto 0));
end coin_decoder;

architecture Behavioral of coin_decoder is

begin
with coin_in select
deco_out <= "0001" when "00", 
            "0010" when "01", 
            "0100" when "10", 
            "1010" when others;

end Behavioral;
