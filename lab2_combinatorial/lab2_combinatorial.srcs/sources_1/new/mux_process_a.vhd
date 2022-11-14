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

entity mux_process_a is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end mux_process_a;

architecture Behavioral of mux_process_a is
begin
    -- If .. then .. else statement
    process (A, B, C, D, S)
    begin
        if(S(0) = '1') then
            if(S(1) = '1') then
                O <= A;
            else
                O <= B;
            end if;
        else
            if(S(1) = '1') then
                O <= C;
            else
                O <= D;
            end if;
        end if;
    end process;
end Behavioral;
