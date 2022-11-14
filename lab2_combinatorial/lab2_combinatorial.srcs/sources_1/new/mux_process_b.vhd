----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 09:52:32 PM
-- Design Name: 
-- Module Name: mux_signal - Behavioral
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

entity mux_process_b is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end mux_process_b;

architecture Behavioral of mux_process_b is
begin
    -- Process case assignment
    process (A, B, C, D, S)
    begin
        case S is
            when "00" => O <= A;
            when "01" => O <= B;
            when "10" => O <= C;
            when "11" => O <= D;
            when others => O <= A;
        end case;
    end process;
end Behavioral;
