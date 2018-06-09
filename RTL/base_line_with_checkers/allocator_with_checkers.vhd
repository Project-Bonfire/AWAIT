--Copyright (C) 2016 Siavoosh Payandeh Azad Behrad Niazmand

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity allocator is
    generic(credit_width_L: integer := 2;
            credit_width : integer := 2);
    port (  reset: in  std_logic;
            clk  : in  std_logic;
            -- flow control
            credit_in_N, credit_in_E, credit_in_W, credit_in_S, credit_in_L: in std_logic;

            -- BUBBLES
            hold_in_N, hold_in_E, hold_in_W, hold_in_S, hold_in_L: in std_logic;

            req_N_N_valid, req_N_E_valid, req_N_W_valid, req_N_S_valid, req_N_L_valid: in std_logic;
            req_E_N_valid, req_E_E_valid, req_E_W_valid, req_E_S_valid, req_E_L_valid: in std_logic;
            req_W_N_valid, req_W_E_valid, req_W_W_valid, req_W_S_valid, req_W_L_valid: in std_logic;
            req_S_N_valid, req_S_E_valid, req_S_W_valid, req_S_S_valid, req_S_L_valid: in std_logic;
            req_L_N_valid, req_L_E_valid, req_L_W_valid, req_L_S_valid, req_L_L_valid: in std_logic;

           	req_N_N, req_N_E, req_N_W, req_N_S, req_N_L: in std_logic;
           	req_E_N, req_E_E, req_E_W, req_E_S, req_E_L: in std_logic;
           	req_W_N, req_W_E, req_W_W, req_W_S, req_W_L: in std_logic;
           	req_S_N, req_S_E, req_S_W, req_S_S, req_S_L: in std_logic;
           	req_L_N, req_L_E, req_L_W, req_L_S, req_L_L: in std_logic;

            empty_N, empty_E, empty_W, empty_S, empty_L: in  std_logic;
           	-- grant_X_Y means the grant for X output port towards Y input port
           	-- this means for any X in [N, E, W, S, L] then set grant_X_Y is one hot!
            valid_N, valid_E, valid_W, valid_S, valid_L: out std_logic;

           	grant_N_N, grant_N_E, grant_N_W, grant_N_S, grant_N_L: out std_logic;
           	grant_E_N, grant_E_E, grant_E_W, grant_E_S, grant_E_L: out std_logic;
           	grant_W_N, grant_W_E, grant_W_W, grant_W_S, grant_W_L: out std_logic;
           	grant_S_N, grant_S_E, grant_S_W, grant_S_S, grant_S_L: out std_logic;
           	grant_L_N, grant_L_E, grant_L_W, grant_L_S, grant_L_L: out std_logic;

            grant_N_N_xbar, grant_N_E_xbar, grant_N_W_xbar, grant_N_S_xbar, grant_N_L_xbar: out std_logic;
            grant_E_N_xbar, grant_E_E_xbar, grant_E_W_xbar, grant_E_S_xbar, grant_E_L_xbar: out std_logic;
            grant_W_N_xbar, grant_W_E_xbar, grant_W_W_xbar, grant_W_S_xbar, grant_W_L_xbar: out std_logic;
            grant_S_N_xbar, grant_S_E_xbar, grant_S_W_xbar, grant_S_S_xbar, grant_S_L_xbar: out std_logic;
            grant_L_N_xbar, grant_L_E_xbar, grant_L_W_xbar, grant_L_S_xbar, grant_L_L_xbar: out std_logic;

            hold_out_to_next_FIFO_N, hold_out_to_next_FIFO_E, hold_out_to_next_FIFO_W, hold_out_to_next_FIFO_S, hold_out_to_next_FIFO_L: out std_logic                     
            );
end allocator;

architecture behavior of allocator is

    -- so the idea is that we should have counters that keep track of credit!
    signal credit_counter_N_in, credit_counter_N_out: std_logic_vector(credit_width-1 downto 0);
    signal credit_counter_E_in, credit_counter_E_out: std_logic_vector(credit_width-1 downto 0);
    signal credit_counter_W_in, credit_counter_W_out: std_logic_vector(credit_width-1 downto 0);
    signal credit_counter_S_in, credit_counter_S_out: std_logic_vector(credit_width-1 downto 0);
    signal credit_counter_L_in, credit_counter_L_out: std_logic_vector(credit_width_L-1 downto 0);

    signal grant_N, grant_E, grant_W, grant_S, grant_L: std_logic;

    signal X_N_N, X_N_E, X_N_W, X_N_S, X_N_L: std_logic;
    signal X_E_N, X_E_E, X_E_W, X_E_S, X_E_L: std_logic;
    signal X_W_N, X_W_E, X_W_W, X_W_S, X_W_L: std_logic;
    signal X_S_N, X_S_E, X_S_W, X_S_S, X_S_L: std_logic;
    signal X_L_N, X_L_E, X_L_W, X_L_S, X_L_L: std_logic;

    signal grant_N_N_sig, grant_N_E_sig, grant_N_W_sig, grant_N_S_sig, grant_N_L_sig: std_logic;
    signal grant_E_N_sig, grant_E_E_sig, grant_E_W_sig, grant_E_S_sig, grant_E_L_sig: std_logic;
    signal grant_W_N_sig, grant_W_E_sig, grant_W_W_sig, grant_W_S_sig, grant_W_L_sig: std_logic;
    signal grant_S_N_sig, grant_S_E_sig, grant_S_W_sig, grant_S_S_sig, grant_S_L_sig: std_logic;
    signal grant_L_N_sig, grant_L_E_sig, grant_L_W_sig, grant_L_S_sig, grant_L_L_sig: std_logic;

    signal arb_N_X_valid_out, arb_E_X_valid_out, arb_W_X_valid_out, arb_S_X_valid_out, arb_L_X_valid_out: std_logic;
    signal N_credit_counter_checkers_output, E_credit_counter_checkers_output, W_credit_counter_checkers_output, S_credit_counter_checkers_output, L_credit_counter_checkers_output: std_logic;
    signal N_credit_counter_checkers_output_sync, E_credit_counter_checkers_output_sync, W_credit_counter_checkers_output_sync, S_credit_counter_checkers_output_sync, L_credit_counter_checkers_output_sync: std_logic;
    signal credit_counter_checkers_outputs_sync_ORed: std_logic;

    signal All_Input_Requests_Valid: std_logic;
    signal Arbiter_in_valid_in: std_logic;
    signal Arbiter_out_valid_in: std_logic;

    signal  err_credit_in_N_grant_N_credit_counter_N_in_credit_counter_N_out_equal, 
            err_credit_in_N_credit_counter_N_out_increment, 
            err_not_credit_in_N_credit_counter_N_out_max_credit_counter_N_in_not_change, 
            err_grant_N_credit_counter_N_out_decrement, 
            err_not_grant_N_or_credit_counter_N_out_zero_credit_counter_N_in_not_change,             
            err_not_credit_in_N_not_grant_N_credit_counter_N_in_credit_counter_N_out_equal, 

            err_credit_in_E_grant_E_credit_counter_E_in_credit_counter_E_out_equal, 
            err_credit_in_E_credit_counter_E_out_increment, 
            err_not_credit_in_E_credit_counter_E_out_max_credit_counter_E_in_not_change, 
            err_grant_E_credit_counter_E_out_decrement, 
            err_not_grant_E_or_credit_counter_E_out_zero_credit_counter_E_in_not_change,             
            err_not_credit_in_E_not_grant_E_credit_counter_E_in_credit_counter_E_out_equal, 

            err_credit_in_W_grant_W_credit_counter_W_in_credit_counter_W_out_equal, 
            err_credit_in_W_credit_counter_W_out_increment, 
            err_not_credit_in_W_credit_counter_W_out_max_credit_counter_W_in_not_change, 
            err_grant_W_credit_counter_W_out_decrement, 
            err_not_grant_W_or_credit_counter_W_out_zero_credit_counter_W_in_not_change,             
            err_not_credit_in_W_not_grant_W_credit_counter_W_in_credit_counter_W_out_equal, 

            err_credit_in_S_grant_S_credit_counter_S_in_credit_counter_S_out_equal, 
            err_credit_in_S_credit_counter_S_out_increment, 
            err_not_credit_in_S_credit_counter_S_out_max_credit_counter_S_in_not_change, 
            err_grant_S_credit_counter_S_out_decrement, 
            err_not_grant_S_or_credit_counter_S_out_zero_credit_counter_S_in_not_change,             
            err_not_credit_in_S_not_grant_S_credit_counter_S_in_credit_counter_S_out_equal, 

            err_credit_in_L_grant_L_credit_counter_L_in_credit_counter_L_out_equal, 
            err_credit_in_L_credit_counter_L_out_increment, 
            err_not_credit_in_L_credit_counter_L_out_max_credit_counter_L_in_not_change, 
            err_grant_L_credit_counter_L_out_decrement, 
            err_not_grant_L_or_credit_counter_L_out_zero_credit_counter_L_in_not_change, 
            err_not_credit_in_L_not_grant_L_credit_counter_L_in_credit_counter_L_out_equal:  std_logic;


    component arbiter_in_one_hot_with_checkers is
            generic(credit_width: integer := 2 );
            port (  reset: in std_logic;
                clk: in std_logic;
                Req_X_N_valid, Req_X_E_valid, Req_X_W_valid, Req_X_S_valid, Req_X_L_valid: in std_logic; -- From LBDR modules
                Req_X_N, Req_X_E, Req_X_W, Req_X_S, Req_X_L: in std_logic; -- From LBDR modules

                X_N, X_E, X_W, X_S, X_L: out std_logic; -- Grants given to LBDR requests (encoded as one-hot)
                valid_out: out std_logic
              );
    end component;

    component arbiter_out_one_hot_with_checkers is
        port (  
                reset: in  std_logic;
                clk: in  std_logic;
                X_N_Y, X_E_Y, X_W_Y, X_S_Y, X_L_Y :in std_logic; -- From LBDR modules
                credit: in std_logic_vector(1 downto 0);
                valid_in: in std_logic;

                grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_S, grant_Y_L : out std_logic -- Grants given to LBDR requests (encoded as one-hot)           
                );
    end component;

    component allocator_credit_counter_logic_pseudo_checkers is
        port (  
                -- flow control
                credit_in_N, credit_in_E, credit_in_W, credit_in_S, credit_in_L: in std_logic;
                credit_counter_N_out, credit_counter_E_out, credit_counter_W_out, credit_counter_S_out, credit_counter_L_out : in std_logic_vector(1 downto 0);            
                valid_N, valid_E, valid_W, valid_S, valid_L: in std_logic; -- ?? Not sure yet ! grant or valid !

                credit_counter_N_in, credit_counter_E_in, credit_counter_W_in, credit_counter_S_in, credit_counter_L_in : in std_logic_vector(1 downto 0);

                -- Checkers outputs
                N_credit_counter_checkers_output, 
                E_credit_counter_checkers_output, 
                W_credit_counter_checkers_output, 
                S_credit_counter_checkers_output, 
                L_credit_counter_checkers_output: out std_logic 
             );
    end component;


begin

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Allocator credit counter logic checkers module instantiation
    ALLOCATOR_CREDIT_COUNTER_LOGIC_CHECKERS: allocator_credit_counter_logic_pseudo_checkers  
                                             PORT MAP (
                                                       credit_in_N => credit_in_N, 
                                                       credit_in_E => credit_in_E, 
                                                       credit_in_W => credit_in_W, 
                                                       credit_in_S => credit_in_S, 
                                                       credit_in_L => credit_in_L, 
                                                       credit_counter_N_out => credit_counter_N_out, 
                                                       credit_counter_E_out => credit_counter_E_out, 
                                                       credit_counter_W_out => credit_counter_W_out, 
                                                       credit_counter_S_out => credit_counter_S_out, 
                                                       credit_counter_L_out => credit_counter_L_out,
                                                       valid_N => grant_N,
                                                       valid_E => grant_E,
                                                       valid_W => grant_W,
                                                       valid_S => grant_S,
                                                       valid_L => grant_L,

                                                       credit_counter_N_in => credit_counter_N_in, 
                                                       credit_counter_E_in => credit_counter_E_in, 
                                                       credit_counter_W_in => credit_counter_W_in, 
                                                       credit_counter_S_in => credit_counter_S_in, 
                                                       credit_counter_L_in => credit_counter_L_in, 

                                                       -- Checker Outputs
                                                       N_credit_counter_checkers_output => N_credit_counter_checkers_output, 
                                                       E_credit_counter_checkers_output => E_credit_counter_checkers_output, 
                                                       W_credit_counter_checkers_output => W_credit_counter_checkers_output, 
                                                       S_credit_counter_checkers_output => S_credit_counter_checkers_output, 
                                                       L_credit_counter_checkers_output => L_credit_counter_checkers_output 
                                                      );


-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Sequential part

    process(clk, reset)
    begin
    	if reset = '0' then
    		-- We start with all full credit
    	 	credit_counter_N_out <= (others=>'1');
    		credit_counter_E_out <= (others=>'1');
    		credit_counter_W_out <= (others=>'1');
    		credit_counter_S_out <= (others=>'1');
    		credit_counter_L_out <= (others=>'1');

    	elsif clk'event and clk = '1' then
            if (N_credit_counter_checkers_output_sync = '0') then
          		credit_counter_N_out <= credit_counter_N_in;
            end if;
            if (E_credit_counter_checkers_output_sync = '0') then
          		credit_counter_E_out <= credit_counter_E_in;
            end if;
            if (W_credit_counter_checkers_output_sync = '0') then
          		credit_counter_W_out <= credit_counter_W_in;
            end if;
            if (S_credit_counter_checkers_output_sync = '0') then
          		credit_counter_S_out <= credit_counter_S_in;
            end if;
            if (L_credit_counter_checkers_output_sync = '0') then
          		credit_counter_L_out <= credit_counter_L_in;
            end if;
    	end if;
    end process;

    -- AWAIT-related logic (Sequential)
    process(N_credit_counter_checkers_output, E_credit_counter_checkers_output, W_credit_counter_checkers_output, 
            S_credit_counter_checkers_output, L_credit_counter_checkers_output, clk)
    begin

        if N_credit_counter_checkers_output = '1' then -- If there is a transient fault detected in Allocator's credit-counter computation logic
              N_credit_counter_checkers_output_sync <= '1';
        else -- Hopefully the transient fault would disappear 
              if clk'event and clk = '0' then 
                    N_credit_counter_checkers_output_sync <= '0';
              end if;
        end if; 

        if E_credit_counter_checkers_output = '1' then -- If there is a transient fault detected in Allocator's credit-counter computation logic
              E_credit_counter_checkers_output_sync <= '1';
        else -- Hopefully the transient fault would disappear 
              if clk'event and clk = '0' then 
                    E_credit_counter_checkers_output_sync <= '0';
              end if;
        end if; 

        if W_credit_counter_checkers_output = '1' then -- If there is a transient fault detected in Allocator's credit-counter computation logic
              W_credit_counter_checkers_output_sync <= '1';
        else -- Hopefully the transient fault would disappear 
              if clk'event and clk = '0' then 
                    W_credit_counter_checkers_output_sync <= '0';
              end if;
        end if; 

        if S_credit_counter_checkers_output = '1' then -- If there is a transient fault detected in Allocator's credit-counter computation logic
              S_credit_counter_checkers_output_sync <= '1';
        else -- Hopefully the transient fault would disappear 
              if clk'event and clk = '0' then 
                    S_credit_counter_checkers_output_sync <= '0';
              end if;
        end if; 

        if L_credit_counter_checkers_output = '1' then -- If there is a transient fault detected in Allocator's credit-counter computation logic
              L_credit_counter_checkers_output_sync <= '1';
        else -- Hopefully the transient fault would disappear 
              if clk'event and clk = '0' then 
                    L_credit_counter_checkers_output_sync <= '0';
              end if;
        end if; 

    end process;

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- The combionational part


    -- AWAIT-related logic
    All_Input_Requests_Valid <= req_N_N_valid and  req_N_E_valid and  req_N_W_valid and  req_N_S_valid and  req_N_L_valid and 
                                req_E_N_valid and  req_E_E_valid and  req_E_W_valid and  req_E_S_valid and  req_E_L_valid and 
                                req_W_N_valid and  req_W_E_valid and  req_W_W_valid and  req_W_S_valid and  req_W_L_valid and 
                                req_S_N_valid and  req_S_E_valid and  req_S_W_valid and  req_S_S_valid and  req_S_L_valid and 
                                req_L_N_valid and  req_L_E_valid and  req_L_W_valid and  req_L_S_valid and  req_L_L_valid; 

    Arbiter_in_valid_in <= All_Input_Requests_Valid; --  and not Allocator_credit_counter_checkers_ORed_sync;
    Arbiter_out_valid_in <= not credit_counter_checkers_outputs_sync_ORed;
    credit_counter_checkers_outputs_sync_ORed <= N_credit_counter_checkers_output_sync or E_credit_counter_checkers_output_sync or
                                                 W_credit_counter_checkers_output_sync or S_credit_counter_checkers_output_sync or L_credit_counter_checkers_output_sync;

    hold_out_to_next_FIFO_N <= N_credit_counter_checkers_output_sync;
    hold_out_to_next_FIFO_E <= E_credit_counter_checkers_output_sync;
    hold_out_to_next_FIFO_W <= W_credit_counter_checkers_output_sync;
    hold_out_to_next_FIFO_S <= S_credit_counter_checkers_output_sync;
    hold_out_to_next_FIFO_L <= L_credit_counter_checkers_output_sync;

    -- Allocator-related logic

    -- grant_OUT_IN(_sig)
    -- req_IN_OUT(_valid)
    -- hold_in_OUT
    -- empty_IN

    grant_N_N <= grant_N_N_sig and not empty_N and not hold_in_N and Req_N_N_valid and not N_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_N_E <= grant_N_E_sig and not empty_E and not hold_in_N and Req_E_N_valid and not N_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_N_W <= grant_N_W_sig and not empty_W and not hold_in_N and Req_W_N_valid and not N_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_N_S <= grant_N_S_sig and not empty_S and not hold_in_N and Req_S_N_valid and not N_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_N_L <= grant_N_L_sig and not empty_L and not hold_in_N and Req_L_N_valid and not N_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;

    grant_E_N <= grant_E_N_sig and not empty_N and not hold_in_E and Req_N_E_valid and not E_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_E_E <= grant_E_E_sig and not empty_E and not hold_in_E and Req_E_E_valid and not E_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_E_W <= grant_E_W_sig and not empty_W and not hold_in_E and Req_W_E_valid and not E_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_E_S <= grant_E_S_sig and not empty_S and not hold_in_E and Req_S_E_valid and not E_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_E_L <= grant_E_L_sig and not empty_L and not hold_in_E and Req_L_E_valid and not E_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;

    grant_W_N <= grant_W_N_sig and not empty_N and not hold_in_W and Req_N_W_valid and not W_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_W_E <= grant_W_E_sig and not empty_E and not hold_in_W and Req_E_W_valid and not W_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_W_W <= grant_W_W_sig and not empty_W and not hold_in_W and Req_W_W_valid and not W_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_W_S <= grant_W_S_sig and not empty_S and not hold_in_W and Req_S_W_valid and not W_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_W_L <= grant_W_L_sig and not empty_L and not hold_in_W and Req_L_W_valid and not W_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;

    grant_S_N <= grant_S_N_sig and not empty_N and not hold_in_S and Req_N_S_valid and not S_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_S_E <= grant_S_E_sig and not empty_E and not hold_in_S and Req_E_S_valid and not S_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_S_W <= grant_S_W_sig and not empty_W and not hold_in_S and Req_W_S_valid and not S_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_S_S <= grant_S_S_sig and not empty_S and not hold_in_S and Req_S_S_valid and not S_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_S_L <= grant_S_L_sig and not empty_L and not hold_in_S and Req_L_S_valid and not S_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;

    grant_L_N <= grant_L_N_sig and not empty_N and not hold_in_L and Req_N_L_valid and not L_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_L_E <= grant_L_E_sig and not empty_E and not hold_in_L and Req_E_L_valid and not L_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_L_W <= grant_L_W_sig and not empty_W and not hold_in_L and Req_W_L_valid and not L_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_L_S <= grant_L_S_sig and not empty_S and not hold_in_L and Req_S_L_valid and not L_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    grant_L_L <= grant_L_L_sig and not empty_L and not hold_in_L and Req_L_L_valid and not L_credit_counter_checkers_output_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;


    grant_N_N_xbar <= grant_N_N_sig and not empty_N;
    grant_N_E_xbar <= grant_N_E_sig and not empty_E;
    grant_N_W_xbar <= grant_N_W_sig and not empty_W;
    grant_N_S_xbar <= grant_N_S_sig and not empty_S;
    grant_N_L_xbar <= grant_N_L_sig and not empty_L;

    grant_E_N_xbar <= grant_E_N_sig and not empty_N;
    grant_E_E_xbar <= grant_E_E_sig and not empty_E;
    grant_E_W_xbar <= grant_E_W_sig and not empty_W;
    grant_E_S_xbar <= grant_E_S_sig and not empty_S;
    grant_E_L_xbar <= grant_E_L_sig and not empty_L;

    grant_W_N_xbar <= grant_W_N_sig and not empty_N;
    grant_W_E_xbar <= grant_W_E_sig and not empty_E;
    grant_W_W_xbar <= grant_W_W_sig and not empty_W;
    grant_W_S_xbar <= grant_W_S_sig and not empty_S;
    grant_W_L_xbar <= grant_W_L_sig and not empty_L;

    grant_S_N_xbar <= grant_S_N_sig and not empty_N;
    grant_S_E_xbar <= grant_S_E_sig and not empty_E;
    grant_S_W_xbar <= grant_S_W_sig and not empty_W;
    grant_S_S_xbar <= grant_S_S_sig and not empty_S;
    grant_S_L_xbar <= grant_S_L_sig and not empty_L;

    grant_L_N_xbar <= grant_L_N_sig and not empty_N;
    grant_L_E_xbar <= grant_L_E_sig and not empty_E;
    grant_L_W_xbar <= grant_L_W_sig and not empty_W;
    grant_L_S_xbar <= grant_L_S_sig and not empty_S;
    grant_L_L_xbar <= grant_L_L_sig and not empty_L;

    grant_N <= ((grant_N_N_sig and not empty_N and Req_N_N_valid) or (grant_N_E_sig and not empty_E and Req_E_N_valid) or (grant_N_W_sig and not empty_W and Req_W_N_valid) or (grant_N_S_sig and not empty_S and Req_S_N_valid) or (grant_N_L_sig and not empty_L and Req_L_N_valid));
    grant_E <= ((grant_E_N_sig and not empty_N and Req_N_E_valid) or (grant_E_E_sig and not empty_E and Req_E_E_valid) or (grant_E_W_sig and not empty_W and Req_W_E_valid) or (grant_E_S_sig and not empty_S and Req_S_E_valid) or (grant_E_L_sig and not empty_L and Req_L_E_valid));
    grant_W <= ((grant_W_N_sig and not empty_N and Req_N_W_valid) or (grant_W_E_sig and not empty_E and Req_E_W_valid) or (grant_W_W_sig and not empty_W and Req_W_W_valid) or (grant_W_S_sig and not empty_S and Req_S_W_valid) or (grant_W_L_sig and not empty_L and Req_L_W_valid));
    grant_S <= ((grant_S_N_sig and not empty_N and Req_N_S_valid) or (grant_S_E_sig and not empty_E and Req_E_S_valid) or (grant_S_W_sig and not empty_W and Req_W_S_valid) or (grant_S_S_sig and not empty_S and Req_S_S_valid) or (grant_S_L_sig and not empty_L and Req_L_S_valid));
    grant_L <= ((grant_L_N_sig and not empty_N and Req_N_L_valid) or (grant_L_E_sig and not empty_E and Req_E_L_valid) or (grant_L_W_sig and not empty_W and Req_W_L_valid) or (grant_L_S_sig and not empty_S and Req_S_L_valid) or (grant_L_L_sig and not empty_L and Req_L_L_valid));

    -- This process handles the credit counters!
    process(credit_in_N, credit_in_E, credit_in_W, credit_in_S, credit_in_L, grant_N, grant_E, grant_W, grant_S, grant_L,
    		    credit_counter_N_out, credit_counter_E_out, credit_counter_W_out, credit_counter_S_out, credit_counter_L_out)
     begin

            credit_counter_N_in <= credit_counter_N_out;
            credit_counter_E_in <= credit_counter_E_out;
            credit_counter_W_in <= credit_counter_W_out;
            credit_counter_S_in <= credit_counter_S_out;
            credit_counter_L_in <= credit_counter_L_out;

            if credit_in_N = '1' then
              if (grant_N = '1') then
                credit_counter_N_in <= credit_counter_N_out;
              else
                if credit_counter_N_out < 3 then
                 credit_counter_N_in <= credit_counter_N_out + 1;
                end if;
              end if;
            elsif (grant_N = '1') and credit_counter_N_out > 0 then
              credit_counter_N_in <= credit_counter_N_out - 1;
            end if;

            if credit_in_E = '1' then
              if (grant_E = '1') then
                credit_counter_E_in <= credit_counter_E_out;
              else
                if credit_counter_E_out < 3 then
                 credit_counter_E_in <= credit_counter_E_out + 1;
                end if;
              end if;
           	elsif (grant_E = '1') and credit_counter_E_out > 0 then
           		credit_counter_E_in <= credit_counter_E_out - 1;
           	end if;

            if credit_in_W = '1' then
              if (grant_W = '1') then
                credit_counter_W_in <= credit_counter_W_out;
              else
                if credit_counter_W_out < 3 then
                 credit_counter_W_in <= credit_counter_W_out + 1;
                end if;
              end if;
            elsif (grant_W = '1') and credit_counter_W_out > 0 then
              credit_counter_W_in <= credit_counter_W_out - 1;
            end if;

            if credit_in_S = '1' then
              if (grant_S = '1') then
                credit_counter_S_in <= credit_counter_S_out;
              else
                if credit_counter_S_out < 3 then
                 credit_counter_S_in <= credit_counter_S_out + 1;
                end if;
              end if;
            elsif (grant_S = '1') and credit_counter_S_out > 0 then
              credit_counter_S_in <= credit_counter_S_out - 1;
            end if;

            if credit_in_L = '1' then
              if (grant_L = '1') then
                credit_counter_L_in <= credit_counter_L_out;
              else
                if credit_counter_L_out < 3 then
                 credit_counter_L_in <= credit_counter_L_out + 1;
                end if;
              end if;
            elsif (grant_L = '1') and credit_counter_L_out > 0 then
              credit_counter_L_in <= credit_counter_L_out - 1;
            end if;

     end process;


---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

    -- Arbiter In modules instantiation(s)

    -- for arbiter_in: arb_IN_OUT
    arb_N_X: arbiter_in_one_hot_with_checkers  PORT MAP (reset => reset, clk => clk,
                                                         Req_X_N_valid=>Arbiter_in_valid_in, Req_X_E_valid=> Arbiter_in_valid_in, Req_X_W_valid=>Arbiter_in_valid_in, Req_X_S_valid=>Arbiter_in_valid_in, Req_X_L_valid=>Arbiter_in_valid_in,
                                                         Req_X_N=>req_N_N, Req_X_E=> req_N_E, Req_X_W=>req_N_W, Req_X_S=>req_N_S, Req_X_L=>req_N_L,
                                                         X_N=>X_N_N, X_E=>X_N_E, X_W=>X_N_W, X_S=>X_N_S, X_L=>X_N_L, 
                                                         valid_out => arb_N_X_valid_out);

    arb_E_X: arbiter_in_one_hot_with_checkers  PORT MAP (reset => reset, clk => clk,
                                                         Req_X_N_valid=>Arbiter_in_valid_in, Req_X_E_valid=> Arbiter_in_valid_in, Req_X_W_valid=>Arbiter_in_valid_in, Req_X_S_valid=>Arbiter_in_valid_in, Req_X_L_valid=>Arbiter_in_valid_in,
                                                         Req_X_N=>req_E_N, Req_X_E=> req_E_E, Req_X_W=>req_E_W, Req_X_S=>req_E_S, Req_X_L=>req_E_L,
                                                         X_N=>X_E_N, X_E=>X_E_E, X_W=>X_E_W, X_S=>X_E_S, X_L=>X_E_L, 
                                                         valid_out => arb_E_X_valid_out);

    arb_W_X: arbiter_in_one_hot_with_checkers  PORT MAP (reset => reset, clk => clk,
                                                         Req_X_N_valid=>Arbiter_in_valid_in, Req_X_E_valid=> Arbiter_in_valid_in, Req_X_W_valid=>Arbiter_in_valid_in, Req_X_S_valid=>Arbiter_in_valid_in, Req_X_L_valid=>Arbiter_in_valid_in,
                                                         Req_X_N=>req_W_N, Req_X_E=> req_W_E, Req_X_W=>req_W_W, Req_X_S=>req_W_S, Req_X_L=>req_W_L,
                                                         X_N=>X_W_N, X_E=>X_W_E, X_W=>X_W_W, X_S=>X_W_S, X_L=>X_W_L, 
                                                         valid_out => arb_W_X_valid_out);

    arb_S_X: arbiter_in_one_hot_with_checkers  PORT MAP (reset => reset, clk => clk,
                                                         Req_X_N_valid=>Arbiter_in_valid_in, Req_X_E_valid=> Arbiter_in_valid_in, Req_X_W_valid=>Arbiter_in_valid_in, Req_X_S_valid=>Arbiter_in_valid_in, Req_X_L_valid=>Arbiter_in_valid_in,
                                                         Req_X_N=>req_S_N, Req_X_E=> req_S_E, Req_X_W=>req_S_W, Req_X_S=>req_S_S, Req_X_L=>req_S_L,
                                                         X_N=>X_S_N, X_E=>X_S_E, X_W=>X_S_W, X_S=>X_S_S, X_L=>X_S_L, 
                                                         valid_out => arb_S_X_valid_out);

    arb_L_X: arbiter_in_one_hot_with_checkers  PORT MAP (reset => reset, clk => clk,
                                                         Req_X_N_valid=>Arbiter_in_valid_in, Req_X_E_valid=> Arbiter_in_valid_in, Req_X_W_valid=>Arbiter_in_valid_in, Req_X_S_valid=>Arbiter_in_valid_in, Req_X_L_valid=>Arbiter_in_valid_in,
                                                         Req_X_N=>req_L_N, Req_X_E=> req_L_E, Req_X_W=>req_L_W, Req_X_S=>req_L_S, Req_X_L=>req_L_L,
                                                         X_N=>X_L_N, X_E=>X_L_E, X_W=>X_L_W, X_S=>X_L_S, X_L=>X_L_L, 
                                                         valid_out => arb_L_X_valid_out);

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

    -- Arbiter Out modules instantiation(s)

    -- Y is N now
    -- for Arbiter_out: arb_IN_OUT
    arb_X_N: arbiter_out_one_hot_with_checkers
              generic map(credit_width => credit_width)
              port map (reset => reset, clk => clk,
                                   X_N_Y => X_N_N, X_E_Y => X_E_N,  X_W_Y => X_W_N,  X_S_Y => X_S_N,  X_L_Y => X_L_N,
                                   credit => credit_counter_N_out,
                                   valid_in => Arbiter_out_valid_in, 
                                   grant_Y_N => grant_N_N_sig,
                                   grant_Y_E => grant_N_E_sig,
                                   grant_Y_W => grant_N_W_sig,
                                   grant_Y_S => grant_N_S_sig,
                                   grant_Y_L => grant_N_L_sig);

    -- Y is E now
    arb_X_E: arbiter_out_one_hot_with_checkers
              generic map(credit_width => credit_width)
              port map (reset => reset, clk => clk,
                                   X_N_Y => X_N_E, X_E_Y => X_E_E, X_W_Y => X_W_E, X_S_Y => X_S_E, X_L_Y => X_L_E,
                                   credit => credit_counter_E_out,
                                   valid_in => Arbiter_out_valid_in, 
                                   grant_Y_N => grant_E_N_sig,
                                   grant_Y_E => grant_E_E_sig,
                                   grant_Y_W => grant_E_W_sig,
                                   grant_Y_S => grant_E_S_sig,
                                   grant_Y_L => grant_E_L_sig);

    -- Y is W now
    arb_X_W: arbiter_out_one_hot_with_checkers
              generic map(credit_width => credit_width)
            port map (reset => reset, clk => clk,
                                   X_N_Y => X_N_W, X_E_Y => X_E_W, X_W_Y => X_W_W, X_S_Y => X_S_W, X_L_Y => X_L_W,
                                   credit => credit_counter_W_out,
                                   valid_in => Arbiter_out_valid_in, 
                                   grant_Y_N => grant_W_N_sig,
                                   grant_Y_E => grant_W_E_sig,
                                   grant_Y_W => grant_W_W_sig,
                                   grant_Y_S => grant_W_S_sig,
                                   grant_Y_L => grant_W_L_sig);

    -- Y is S now
    arb_X_S: arbiter_out_one_hot_with_checkers
              generic map(credit_width => credit_width)
          port map (reset => reset, clk => clk,
                                   X_N_Y => X_N_S, X_E_Y => X_E_S, X_W_Y => X_W_S, X_S_Y => X_S_S, X_L_Y => X_L_S,
                                   credit => credit_counter_S_out,
                                   valid_in => Arbiter_out_valid_in, 
                                   grant_Y_N => grant_S_N_sig,
                                   grant_Y_E => grant_S_E_sig,
                                   grant_Y_W => grant_S_W_sig,
                                   grant_Y_S => grant_S_S_sig,
                                   grant_Y_L => grant_S_L_sig);

    -- Y is L now
    arb_X_L: arbiter_out_one_hot_with_checkers
              generic map(credit_width => credit_width_L)
              port map (reset => reset, clk => clk,
                                   X_N_Y => X_N_L, X_E_Y => X_E_L, X_W_Y => X_W_L, X_S_Y => X_S_L, X_L_Y => X_L_L,
                                   credit => credit_counter_L_out,
                                   valid_in => Arbiter_out_valid_in, 
                                   grant_Y_N => grant_L_N_sig,
                                   grant_Y_E => grant_L_E_sig,
                                   grant_Y_W => grant_L_W_sig,
                                   grant_Y_S => grant_L_S_sig,
                                   grant_Y_L => grant_L_L_sig);

    valid_N <= grant_N and not N_credit_counter_checkers_output_sync; --and All_Input_Requests_Valid and not Allocator_credit_counter_checkers_ORed_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    valid_E <= grant_E and not E_credit_counter_checkers_output_sync; --and All_Input_Requests_Valid and not Allocator_credit_counter_checkers_ORed_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    valid_W <= grant_W and not W_credit_counter_checkers_output_sync; --and All_Input_Requests_Valid and not Allocator_credit_counter_checkers_ORed_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    valid_S <= grant_S and not S_credit_counter_checkers_output_sync; --and All_Input_Requests_Valid and not Allocator_credit_counter_checkers_ORed_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;
    valid_L <= grant_L and not L_credit_counter_checkers_output_sync; --and All_Input_Requests_Valid and not Allocator_credit_counter_checkers_ORed_sync; -- and arb_N_X_valid_out and arb_E_X_valid_out and arb_W_X_valid_out and arb_S_X_valid_out and arb_L_X_valid_out;

END;
