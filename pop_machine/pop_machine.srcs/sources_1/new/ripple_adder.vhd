----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/20/2022 10:26:20 AM
-- Design Name: 
-- Module Name: ripple_adder - Behavioral
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

entity ripple_adder is
    generic(WIDTH : positive := 8);
    Port ( clk : in STD_LOGIC;
         rst : in STD_LOGIC;
         en : in STD_LOGIC;
         A,B : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
         CIN : in STD_LOGIC;
         SUM : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
         COUT : out STD_LOGIC);
end ripple_adder;

architecture Behavioral of ripple_adder is

    component n_adder is
        generic( WIDTH : positive := 8);
        Port ( A, B : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             CIN : in std_logic;
             SUM : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             COUT : out STD_LOGIC);
    end component;

    signal SUM_s :  std_logic_vector(WIDTH-1 downto 0);
    signal COUT_s : std_logic;

begin

    adder: n_adder
        generic map (WIDTH => WIDTH)
        port map(
            A => A,
            B => B,
            CIN => cin,
            SUM => SUM_s,
            COUT => COUT_s
        );

    proc_adder: process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                SUM <= (others=>'0');
                cout <= '0';
            else
                if en = '1' then
                    SUM <= SUM_s;
                    cout <= cout_s;
                end if;
            end if;
        end if;
    end process proc_adder;
end Behavioral;
