library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.functions.all;

entity SevenSegment_driver is
generic(
    Freq_in : positive := 100000000; -- 100 MHz
    Freq_refresh : positive := 1000 -- 1 kHz
);
port (
    clk : in std_logic;
    rst : in std_logic;
    SS0 : in std_logic_vector(3 downto 0);
    SS1 : in std_logic_vector(3 downto 0);
    SS2 : in std_logic_vector(3 downto 0);
    SS3 : in std_logic_vector(3 downto 0);
    SS4 : in std_logic_vector(3 downto 0);
    SS5 : in std_logic_vector(3 downto 0);
    Sel : out std_logic_vector(5 downto 0);
    SSO : out std_logic_vector(6 downto 0));
end SevenSegment_driver;

architecture rtl of SevenSegment_driver is

    component BCDto7Seg is
        Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
               Segments : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    component sevenseg_mux is
        port (A, B, C, D, E, F : in std_logic_vector(3 downto 0);
              S : in std_logic_vector (2 downto 0);
              Num_Out : out std_logic_vector(3 downto 0);
              Cathode_Out : out std_logic_vector(5 downto 0));
    end component;

    constant counter_limit_int : integer :=  Freq_in/Freq_refresh;
    constant counter_width: positive := log2(counter_limit_int);
    constant counter_limit :      unsigned(counter_width-1 downto 0) :=  to_unsigned(counter_limit_int, counter_width);
    
    signal counter_refresh :    unsigned(counter_width-1 downto 0) := (others => '0');
    signal sel_flag : std_logic := '0';
    signal S : std_logic_vector(2 downto 0) := (others => '0');
    signal BCD : std_logic_vector(3 downto 0) := (others => '0');

    
begin
    
    -- generate refresh period of 10.5ms
    process(clk, rst)
    begin 
        if(rst='1') then
            counter_refresh <= (others => '0');
            sel_flag <= '0';
        elsif(rising_edge(clk)) then
            if counter_refresh = counter_limit then
                counter_refresh <= (others => '0');
                sel_flag <= '1';
            else
                counter_refresh <= counter_refresh + 1;
                sel_flag <= '0'; 
            end if;
        end if;
    end process;
    
    -- generate 6-to-1 MUX selector to generate anode activating signals for 6 LEDs 
    process(clk)
    variable S_var : unsigned(2 downto 0) := (others => '0');
    begin
        if(rising_edge(clk)) then
            if rst='1' then
                S_var := (others => '0');
            else
                if sel_flag = '1' then
                    S_var := S_var + 1;
                    if S_var = 7 then
                        S_var := (others => '0');
                    end if;
                end if;
            end if;
            S <= std_logic_vector(S_var);
        end if;
    end process ;

    sevenseg_mux_comp: sevenseg_mux
    port map (
        A => SS0, B => SS1, C => SS2, D => SS3, E => SS4, F => SS5,
        S => S,
        Num_Out => BCD,
        Cathode_Out => Sel
    );

    BCDto7Seg_comp : BCDto7Seg
    Port map( 
        BCD => BCD,
        Segments => SSO 
    );

end architecture rtl;