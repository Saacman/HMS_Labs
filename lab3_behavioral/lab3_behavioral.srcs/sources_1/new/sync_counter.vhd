----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2022 03:42:01 PM
-- Design Name: 
-- Module Name: sync_counter - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sync_counter is
generic( WIDTH : positive := 8);
    Port ( clk : in STD_LOGIC; -- done
         rst : in STD_LOGIC;
         en : in STD_LOGIC;
         ld : in STD_LOGIC;
         updown : in STD_LOGIC;
         D : in std_logic_vector (WIDTH-1 downto 0);
         ovf : out STD_LOGIC;
         Q : out std_logic_vector (WIDTH-1 downto 0));
end sync_counter;

architecture Behavioral of sync_counter is
signal ones : std_logic_vector(WIDTH-1 downto 0) := (others=>'1');
signal zeros : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
signal counter : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
begin

    process(clk, rst)
    begin
        if(clk' event and clk ='1') then
            if (rst = '1') then
                ovf <= '0';
                counter <= zeros;
            else
                if (en = '1') then
                    if(ld = '1') then
                        ovf <= '0';
                        counter <= D;
                    else
                        if (updown = '1') then
                            if (counter = ones) then
                                ovf <= '1';
                                counter <= zeros;
                            else
                                ovf <= '0';
                                counter <= counter +1;
                            end if;
                        else
                            if (counter = zeros) then
                                ovf <= '1';
                                counter <= ones;
                            else
                                ovf <= '0';
                                counter <= counter -1;
                            end if;
                        end if;
                    end if;
                else
                    ovf <= '0';
                    counter <= counter;
                end if;
            end if; 
        end if;
    end process;
    Q <= counter;
end Behavioral;
