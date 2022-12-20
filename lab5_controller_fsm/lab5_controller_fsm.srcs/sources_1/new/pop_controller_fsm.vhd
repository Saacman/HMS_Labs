----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2022 03:50:17 PM
-- Design Name: 
-- Module Name: pop_controller_fsm - Behavioral
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

entity pop_controller_fsm is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           coin_ack : in STD_LOGIC;
           coin_retired : in STD_LOGIC;
           seq30 : in STD_LOGIC;
           sgt30 : in STD_LOGIC;
           pop_retired : in STD_LOGIC;
           clr_cnt : out STD_LOGIC;
           change_dec : out STD_LOGIC;
           drop_pop : out STD_LOGIC;
           return_nickel : out STD_LOGIC;
           add : out STD_LOGIC;
           ld_cnt : out STD_LOGIC);
end pop_controller_fsm;

architecture Behavioral of pop_controller_fsm is

begin


end Behavioral;
