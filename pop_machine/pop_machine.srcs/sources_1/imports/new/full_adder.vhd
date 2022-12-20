----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2022 12:05:11 AM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( A , B, CIN: in STD_LOGIC;
           SUM, COUT : out STD_LOGIC);
end full_adder;

architecture structural of full_adder is

signal SIG1, SIG2, SIG3: std_logic;

component half_adder is
    Port ( A , B: in STD_LOGIC;
           SUM , CARRY: out STD_LOGIC);
end component;

begin
    U1: half_adder port map (A => A, B => B, SUM => SIG1, CARRY => SIG2);
    U2: half_adder port map (A => CIN, B => SIG1, SUM => SUM, CARRY => SIG3);
    U3: COUT <= SIG2 or SIG3;

end structural;
