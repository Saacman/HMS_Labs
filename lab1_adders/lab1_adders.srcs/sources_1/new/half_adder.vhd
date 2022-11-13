----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2022 11:47:38 PM
-- Design Name: 
-- Module Name: half_adder - structural
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

entity half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end half_adder;

architecture structural of half_adder is

component and2 is
    Port ( in1, in2 : in STD_LOGIC;
         and_out : out STD_LOGIC);
end component;

component xor2 is
    Port ( in1, in2 : in STD_LOGIC;
         xor_out : out STD_LOGIC);
end component;

begin

    U1: and2 port map (in1 => A, in2 => B, and_out => CARRY);
    U2: xor2 port map (in1 => A, in2 => B, xor_out => SUM);
end structural;
