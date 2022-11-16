----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2022 03:05:29 PM
-- Design Name: 
-- Module Name: ff_enable - Behavioral
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

entity ff_enable is
    Port ( clk : in STD_LOGIC;
         rst : in STD_LOGIC;
         input : in STD_LOGIC;
         enable : in STD_LOGIC;
         output : out STD_LOGIC);
end ff_enable;

architecture Behavioral of ff_enable is
begin
    process(clk, rst)
    begin
        if(rst = '0') then
            if (clk' event and clk='1') then
                if (enable = '1') then
                    output <= input;
                end if;
            end if;
        else
            output <= '0';
        end if;
    end process;

end Behavioral;
