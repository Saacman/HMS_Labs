library ieee;
use ieee.std_logic_1164.all;

entity BCDto7Seg_tb is
end BCDto7Seg_tb;

architecture tb of BCDto7Seg_tb is

    component bcd_decoder
        port (BCD      : in std_logic_vector (3 downto 0);
              Segments : out std_logic_vector (6 downto 0));
    end component;

    signal BCD      : std_logic_vector (3 downto 0);
    signal Segments : std_logic_vector (6 downto 0);

begin

    dut : bcd_decoder
    port map (BCD      => BCD,
              Segments => Segments);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        
        BCD <= "0000";
        wait for 100ns;
        if(Segments/="1111110") then
            assert false report "Segments should be 1111110 for BCD=0000" severity error;
        end if;     
        
        BCD <= "0001";
        wait for 100ns;
        if(Segments/="0110000") then
            assert false report "Segments should be 0110000 for BCD=0001" severity error;
        end if;            
        
        BCD <= "0010";
        wait for 100ns;
        if(Segments/="1101101") then
            assert false report "Segments should be 1101101 for BCD=0010" severity error;
        end if;             

        BCD <= "0011";
        wait for 100ns;
        if(Segments/="1111001") then
            assert false report "Segments should be 1111001 for BCD=0011" severity error;
        end if;
        
        BCD <= "0100";
        wait for 100ns;
        if(Segments/="0110011") then
            assert false report "Segments should be 0110011 for BCD=0100" severity error;
        end if;     
        
        BCD <= "0101";
        wait for 100ns;
        if(Segments/="0110110") then
            assert false report "Segments should be 1011011 for BCD=1011011" severity error;
        end if;            
        
        BCD <= "0110";
        wait for 100ns;
        if(Segments/="1011111") then
            assert false report "Segments should be 1011111 for BCD=0110" severity error;
        end if;             

        BCD <= "0111";
        wait for 100ns;
        if(Segments/="1110000") then
            assert false report "Segments should be 1110000 for BCD=0111" severity error;
        end if;        
        
        BCD <= "1000";
        wait for 100ns;
        if(Segments/="1111111") then
            assert false report "Segments should be 1111111 for BCD=1000" severity error;
        end if;             

        BCD <= "1001";
        wait for 100ns;
        if(Segments/="1111101") then
            assert false report "Segments should be 1111101 for BCD=1001" severity error;
        end if;     
             
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;
