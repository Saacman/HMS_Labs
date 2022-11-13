----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 08:28:39 PM
-- Design Name: 
-- Module Name: n_comparator - Behavioral
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

entity n_comparator is
generic( WIDTH : positive := 4);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           lt_in : in STD_LOGIC;
           eq_in : in STD_LOGIC;
           gt_in : in STD_LOGIC;
           lt_out : out STD_LOGIC;
           eq_out : out STD_LOGIC;
           gt_out : out STD_LOGIC);
end n_comparator;

architecture Behavioral of n_comparator is

signal lt_out_sig: std_logic_vector (WIDTH-1 downto 0);
signal eq_out_sig: std_logic_vector (WIDTH-1 downto 0);
signal gt_out_sig: std_logic_vector (WIDTH-1 downto 0);

component onebit_comparator is
    Port ( lt_in, eq_in, gt_in : in STD_LOGIC;
           a, b : in STD_LOGIC;
           lt_out, eq_out, gt_out : out STD_LOGIC);
end component;

begin

reg: for i in WIDTH-1 downto 0 generate
    reg_begin : if i = 0 generate
        COMP1 : onebit_comparator port map (lt_in => lt_in,
                                            eq_in => eq_in,
                                            gt_in => gt_in,
                                            a => a(i),
                                            b => b(i),
                                            lt_out => lt_out_sig(i),
                                            eq_out => eq_out_sig(i),
                                            gt_out => gt_out_sig(i));
        end generate reg_begin;
    reg_end : if i /= 0 generate
        COMP1 : onebit_comparator port map (lt_in => lt_out_sig(i-1),
                                            eq_in => eq_out_sig(i-1),
                                            gt_in => gt_out_sig(i-1),
                                            a => a(i),
                                            b => b(i),
                                            lt_out => lt_out_sig(i),
                                            eq_out => eq_out_sig(i),
                                            gt_out => gt_out_sig(i));
        end generate reg_end;
end generate reg;

lesst : lt_out <= lt_out_sig(WIDTH-1);
great : gt_out <= gt_out_sig(WIDTH-1);
equal : eq_out <= eq_out_sig(WIDTH-1);

end Behavioral;
