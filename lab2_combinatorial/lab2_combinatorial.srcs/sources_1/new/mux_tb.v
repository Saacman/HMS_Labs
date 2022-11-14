library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture tb of mux_tb is

    component mux_process_b
        port (A : in std_logic;
              B : in std_logic;
              C : in std_logic;
              D : in std_logic;
              S : in std_logic_vector (1 downto 0);
              O : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;
    signal D : std_logic;
    signal S : std_logic_vector (1 downto 0);
    signal O : std_logic;

begin

    dut : mux_process_b
    port map (A => A,
              B => B,
              C => C,
              D => D,
              S => S,
              O => O);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= '1';
        B <= '0';
        C <= '1';
        D <= '0';
        
        S <= "00";
        wait for 100ns;
        if(O/='1') then
            assert false report "O should be 1 for S=""00""" severity error;
        end if;
        
        S <= "01";
        wait for 100ns;
        if(O/='0') then
            assert false report "O should be 0 for S=""01""" severity error;
        end if;
        
        S <= "10";
        wait for 100ns;
        if(O/='1') then
            assert false report "O should be 1 for S=""10""" severity error;
        end if;        
        
        S <= "11";
        wait for 100ns;
        if(O/='0') then
            assert false report "1 should be 0 for S=""11""" severity error;
        end if;        

        S <= "00";
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;
