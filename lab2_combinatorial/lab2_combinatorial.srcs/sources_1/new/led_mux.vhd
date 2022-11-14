----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2022 09:28:08 AM
-- Design Name: 
-- Module Name: led_mux - Behavioral
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

entity led_mux is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           E : in STD_LOGIC_VECTOR (3 downto 0);
           F : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           LED_out : out STD_LOGIC_VECTOR (3 downto 0));
end led_mux;

architecture Behavioral of led_mux is

begin

    process (A, B, C, D, E, F, Sel)
    begin
        case Sel is
            when "000" => LED_out <= A;
            when "001" => LED_out <= B;
            when "010" => LED_out <= C;
            when "011" => LED_out <= D;
            when "100" => LED_out <= E;
            when "101" => LED_out <= F;
            when others => LED_out <= A;
            -- Define the output behavior on undefined inputs
        end case;
    end process;

end Behavioral;
