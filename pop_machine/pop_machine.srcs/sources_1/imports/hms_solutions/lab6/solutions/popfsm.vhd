library ieee;
use ieee.std_logic_1164.all;

entity PopMachine_Controller_FSM is
port (
    clk : in std_logic;
    clr : in std_logic;
    coin_ack, coin_retired, seq30, sgt30, pop_retired : in std_logic;
    clr_cnt, change_dec, drop_pop, return_nickel, add_cnt, ld_cnt : out std_logic;
    current_state : out std_logic_vector(3 downto 0)
);
end PopMachine_Controller_FSM;

architecture rtl of PopMachine_Controller_FSM is

-- Enumerated type declaration and state signal declaration
type t_State is (   idle, state1, state2, state3, state4, state5, 
                    state6, state7, state8);
signal State, NextState : t_State;

begin
    with State select current_state <=
        "0000" when idle,
        "0001" when state1,
        "0010" when state2,
        "0011" when state3,
        "0100" when state4,
        "0101" when state5,
        "0110" when state6,
        "0111" when state7,
        "1000" when state8,
        "1111" when others;
    next_process: process(clk)
    begin
    if rising_edge(clk) then
        State <= NextState;
    end if;
    end process next_process;

    state_process: process(clk, clr)
    begin
        if clr = '1' then
            NextState <= idle;
        elsif rising_edge(clk) then
            case State is
                when idle =>
                    if coin_ack = '1' then
                        NextState <= state7;
                    else
                        NextState <= idle;
                    end if;

                when state7 =>
                    NextState <= state1;
            
                when state1 =>
                    if (coin_ack='0') then
                        if (sgt30='1') then
                            NextState <= state2;
                        elsif (seq30='1') then
                            NextState <= state5;
                        else
                            NextState <= idle;
                        end if;
                    else
                        NextState <= state1;
                    end if;
                
                when state2 =>
                    if seq30 = '1' then
                        NextState <= state5;
                    elsif sgt30 = '1' then
                        NextState <= state3;
                    else
                        NextState <= state2;
                    end if;

                when state3 =>
                    if coin_retired = '1' then
                        NextState <= state8;
                    else
                        NextState <= state3;
                    end if;

                when state8 =>
                    NextState <= state4;

                when state4 =>
                    if coin_retired = '0' then
                        NextState <= state2;
                    else
                        NextState <= state4;
                    end if;
                
                when state5 =>
                    if pop_retired = '1' then
                        NextState <= state6;
                    else
                        NextState <= state5;
                    end if;
                    
                when state6 =>
                    NextState <= idle;
                    
                when others =>
                    NextState <= NextState;
            
            end case;
        end if;
    end process state_process;

   output_process: process(State)
   begin
	case State is
            when idle =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state7 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '1';
                ld_cnt <= '0';

            when state1 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '1';

            when state2 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state3 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '1';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state8 =>
                clr_cnt <= '0'; 
                change_dec <= '1';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state4 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state5 =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '1';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';

            when state6 =>
                clr_cnt <= '1'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';
        
            when others =>
                clr_cnt <= '0'; 
                change_dec <= '0';
                drop_pop <= '0';
                return_nickel <= '0';
                add_cnt <= '0';
                ld_cnt <= '0';
        
        end case;
   end process output_process;
    
end architecture rtl;
