----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 08:16:03 PM
-- Design Name: 
-- Module Name: onebit_comparator - Behavioral
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

entity onebit_comparator is
    Port ( lt_in : in STD_LOGIC;
           eq_in : in STD_LOGIC;
           gt_in : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           lt_out : out STD_LOGIC;
           eq_out : out STD_LOGIC;
           gt_out : out STD_LOGIC);
end onebit_comparator;

architecture Behavioral of onebit_comparator is
begin
    greater : gt_out <= (a and not(b)) or (not(a xor b) and gt_in);
    equal : eq_out <= not(a xor b) and (eq_in);
    less : lt_out <= (not(a) and b) or (not(a xor b) and lt_in);

end Behavioral;
