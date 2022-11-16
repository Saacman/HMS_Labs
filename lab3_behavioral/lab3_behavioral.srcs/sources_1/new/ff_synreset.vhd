----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2022 02:58:43 PM
-- Design Name: 
-- Module Name: ff_synreset - Behavioral
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

entity ff_synreset is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC;
           rst : in std_logic;
           output : out STD_LOGIC);
end ff_synreset;

architecture Behavioral of ff_synreset is
begin

    process(clk)
    begin
        if (clk' event and clk='1') then
            if (rst = '0') then
                output <= input;
            else
                output <= '0';
            end if;
        end if;
    end process;
end Behavioral;
