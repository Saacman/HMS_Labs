----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 06:32:07 PM
-- Design Name: 
-- Module Name: n_adder - Behavioral
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

entity n_adder is
generic( WIDTH : positive := 8);
    Port ( A, B : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           CIN : in std_logic := '0';
           SUM : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           COUT : out STD_LOGIC);
end n_adder;

architecture structural of n_adder is

signal SIG: std_logic_vector (WIDTH-1 downto 0);

component full_adder is
    Port ( A , B, CIN: in STD_LOGIC;
           SUM, COUT : out STD_LOGIC);
end component;

begin
-- if generate statement compatible with all VHDL standards (Not only 2008)
reg: for i in WIDTH-1 downto 0 generate
    reg_begin : if i = 0 generate
        FA : full_adder port map (A => A(i), B => B(i), CIN => '0', SUM => SUM(i), COUT => SIG(i));
        end generate;
    reg_end : if i = WIDTH-1 generate
        FA : full_adder port map (A => A(i), B => B(i), CIN => SIG(i-1), SUM => SUM(i), COUT => COUT);
        end generate;
    reg_others : if i /= 0 and i < WIDTH-1  generate
        FA : full_adder port map (A => A(i), B => B(i), CIN => SIG(i-1), SUM => SUM(i), COUT => SIG(i));
        end generate;
        
end generate;

end structural;
