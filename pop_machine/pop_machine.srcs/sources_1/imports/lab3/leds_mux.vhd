library ieee;
use ieee.std_logic_1164.all;

entity sevenseg_mux is
    port (A, B, C, D, E, F : in std_logic_vector(3 downto 0);
          S : in std_logic_vector (2 downto 0);
          Num_Out : out std_logic_vector(3 downto 0);
          Cathode_Out : out std_logic_vector(5 downto 0));
end sevenseg_mux;

architecture behavioral  of sevenseg_mux is
begin
    
--    --
    with S select    
    Num_Out <= 
        A when "000",    
        B when "001",    
        C when "010",    
        D when "011",    
        E when "100",
        F when others;

    with S select    
    Cathode_Out <= 
        "000001" when "000",    
        "000010" when "001",    
        "000100" when "010",    
        "001000" when "011",    
        "010000" when "100",    
        "100000" when others;
        
end behavioral ;