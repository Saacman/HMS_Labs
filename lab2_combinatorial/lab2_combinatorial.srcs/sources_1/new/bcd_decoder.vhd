----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2022 10:45:23 AM
-- Design Name: 
-- Module Name: bdc_decoder - Behavioral
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

entity bcd_decoder is
    Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
           Segments : out STD_LOGIC_VECTOR (6 downto 0));
end bcd_decoder;

architecture Behavioral of bcd_decoder is

begin
-- Process case assignment
    process (BCD)
    begin
--     a
--    ---
-- f |   | b
--    --- <- g
-- e |   | c
--    ---
--     d
        case BCD is
                                     --"abcdefg"
            when "0000" => Segments <= "1111110"; -- 0
            when "0001" => Segments <= "0110000"; -- 1
            when "0010" => Segments <= "1101101"; -- 2
            when "0011" => Segments <= "1111001"; -- 3
            when "0100" => Segments <= "0110011"; -- 4
            when "0101" => Segments <= "1011011"; -- 5
            when "0110" => Segments <= "1011111"; -- 6
            when "0111" => Segments <= "1110000"; -- 7
            when "1000" => Segments <= "1111111"; -- 8
            when "1001" => Segments <= "1111101"; -- 9
            when "1010" => Segments <= "1110111"; -- A
            when "1011" => Segments <= "0011111"; -- B
            when "1100" => Segments <= "1001110"; -- C
            when "1101" => Segments <= "0111101"; -- D
            when "1110" => Segments <= "1001111"; -- E
            when "1111" => Segments <= "1000111"; -- F
            when others => Segments <= "0000000"; -- Any other input
        end case;
    end process;
end Behavioral;
