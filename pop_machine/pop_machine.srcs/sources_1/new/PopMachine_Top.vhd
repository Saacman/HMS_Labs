----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2022 03:54:54 PM
-- Design Name: 
-- Module Name: PopMachine_Top - Behavioral
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

entity PopMachine_Top is
    Port ( clk : in STD_LOGIC;
         clr : in STD_LOGIC;
         coin_sensor : in std_logic_vector(1 downto 0);
         coin_ack : in STD_LOGIC;
         coin_retired : in STD_LOGIC;
         pop_retired : in STD_LOGIC;
         drop_pop : out STD_LOGIC;
         return_nickel : out STD_LOGIC;
         segments : out STD_LOGIC_VECTOR (6 downto 0);
         segments_sel : out STD_LOGIC_VECTOR (5 downto 0);
         eqout, gtout : out std_logic);
end PopMachine_Top;

architecture Behavioral of PopMachine_Top is

    constant WIDTH : positive := 4;
    constant pop_price : std_logic_vector(WIDTH-1 downto 0) := "0110";
    signal deco_out : std_logic_vector(3 downto 0);

    signal fsm_clr_cnt, fsm_change_dec, fsm_add_cnt, fsm_ld_cnt : std_logic;
    signal cnt_Q, add_S :  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
    signal cnt_en, cnt_clr : std_logic;
    signal cmp_aeqbout, cmp_agtbout : std_logic;
    signal fsm_current_state : STD_LOGIC_VECTOR (3 downto 0);

    signal coin_ack_filt, coin_retired_filt, pop_retired_filt : std_logic;

    --4bit Ripple adder
    component ripple_adder is
        generic(WIDTH : positive := 8);
        Port ( clk : in STD_LOGIC;
             rst : in STD_LOGIC;
             en : in STD_LOGIC;
             A,B : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             CIN : in STD_LOGIC;
             SUM : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             COUT : out STD_LOGIC);
    end component;


    -- 74LS169
    component up_dn_counter_top is
        Generic(n : positive);
        Port ( CLK : in  STD_LOGIC;
             updown, clr, ld, en : in STD_LOGIC;
             D : in STD_LOGIC_VECTOR(n-1 downto 0);
             Q : out  STD_LOGIC_VECTOR (n-1 downto 0);
             ovrflow : out  STD_LOGIC);
    end component;

    -- Comparator 4 bits
    component n_comparator is
        generic( WIDTH : positive);
        Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
             lt_in : in STD_LOGIC;
             eq_in : in STD_LOGIC;
             gt_in : in STD_LOGIC;
             lt_out : out STD_LOGIC;
             eq_out : out STD_LOGIC;
             gt_out : out STD_LOGIC);
    end component;

    -- Seven Segment Driver
    component SevenSegment_driver is
        generic(
            Freq_in : positive; -- 100 MHz
            Freq_refresh : positive-- 1 kHz
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
    end component;

    -- FSM
    component PopMachine_Controller_FSM is
        port (
            clk : in std_logic;
            clr : in std_logic;
            coin_ack, coin_retired, seq30, sgt30, pop_retired : in std_logic;
            clr_cnt, change_dec, drop_pop, return_nickel, add_cnt, ld_cnt : out std_logic;
            current_state : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Debouncer 
    component Debouncer is
        Generic ( T : integer := 1);	-- Time (in ms) for the delay.
        Port ( clk : in  STD_LOGIC;
             button : in  STD_LOGIC;
             debounced : out  STD_LOGIC);
    end component;

    -- Coin Decoder
    component coin_decoder is
        Port ( coin_in : in STD_LOGIC_VECTOR (1 downto 0);
             deco_out : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

begin
    cnt_en <= fsm_ld_cnt or fsm_change_dec;
    cnt_clr <= clr or fsm_clr_cnt;

    eqout <= cmp_aeqbout;
    gtout <= cmp_agtbout;

    --coin_ack_filt <= coin_ack;
    --pop_retired_filt <= pop_retired;
    --coin_retired_filt <= coin_retired;

    DEBO_ACK: Debouncer
        Port map( clk => clk,
                 button => coin_ack,
                 debounced => coin_ack_filt);
    DEBO_POP_RET: Debouncer
        Port map( clk => clk,
                 button => pop_retired,
                 debounced => pop_retired_filt);
    DEBO_COIN_RET: Debouncer
        Port map( clk => clk,
                 button => coin_retired,
                 debounced => coin_retired_filt);

    ADDER: ripple_adder
        generic map(WIDTH => WIDTH)
        Port map(
            clk => clk,
            rst => clr,
            en => fsm_add_cnt,
            A => deco_out,
            B => cnt_Q,
            CIN => '0',
            SUM => add_S,
            COUT => open);

    COUNTER: up_dn_counter_top
        Generic map(n => WIDTH)
        Port map(
            CLK => clk,
            clr => cnt_clr,
            ld => fsm_ld_cnt,
            en => cnt_en,
            updown => '0',
            D => add_S,
            Q => cnt_Q,
            ovrflow =>open);

    COMPARATOR: n_comparator
        generic map( WIDTH => WIDTH)
        Port map(
            a => cnt_Q,
            b => pop_price,
            lt_in => '0',
            eq_in => '1',
            gt_in => '0',
            lt_out => open,
            eq_out => cmp_aeqbout,
            gt_out => cmp_agtbout);

    SEVEN_SEG : SevenSegment_driver
        generic map(
            Freq_in => 100000000, -- 100 MHz
            Freq_refresh => 600-- 1 kHz
        )
        port map(
            clk => clk,
            rst => clr,
            SS0 => cnt_q,
            SS1 => add_S,
            SS2 => pop_price,
            SS3 => fsm_current_state,
            SS4 => "0000",
            SS5 => "1111",
            Sel => segments_sel,
            SSO => segments);

    POP_FSM: PopMachine_Controller_FSM
        port map(
            clk => clk,
            clr => clr,
            coin_ack => coin_ack_filt,
            coin_retired => coin_retired_filt,
            seq30 => cmp_aeqbout,
            sgt30 => cmp_agtbout,
            pop_retired => pop_retired_filt,
            clr_cnt => fsm_clr_cnt,
            change_dec => fsm_change_dec,
            drop_pop => drop_pop,
            return_nickel => return_nickel,
            add_cnt => fsm_add_cnt,
            ld_cnt => fsm_ld_cnt,
            current_state => fsm_current_state
        );
    COIN_DECO: coin_decoder
        Port map(
            coin_in => coin_sensor,
            deco_out => deco_out);

end Behavioral;
