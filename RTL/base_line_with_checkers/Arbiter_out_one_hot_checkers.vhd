--Copyright (C) 2016 Siavoosh Payandeh Azad and Behrad Niazmand

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;

entity Arbiter_out_one_hot_checkers is
    port (  credit: in std_logic_vector(1 downto 0);
    		req_X_E, req_X_N, req_X_W, req_X_S, req_X_L :in std_logic; -- From LBDR modules
            state: in std_logic_vector (5 downto 0); -- 6 states for Arbiter_out's FSM

            grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_S, grant_Y_L : in std_logic; -- Grants given to LBDR requests (encoded as one-hot)
            state_in: in std_logic_vector (5 downto 0); -- 6 states for Arbiter's FSM

            -- Checker outputs
            arbiter_out_checkers_output: out std_logic
         );
end Arbiter_out_one_hot_checkers;

architecture behavior of Arbiter_out_one_hot_checkers is

	CONSTANT IDLE: std_logic_vector (5 downto 0) := "000001";
	CONSTANT Local: std_logic_vector (5 downto 0) := "000010";
	CONSTANT North: std_logic_vector (5 downto 0) := "000100";
	CONSTANT East: std_logic_vector (5 downto 0) := "001000";
	CONSTANT West: std_logic_vector (5 downto 0) := "010000";
	CONSTANT South: std_logic_vector (5 downto 0) := "100000";


	SIGNAL   Requests: std_logic_vector (4 downto 0);
	SIGNAL   Grants: std_logic_vector (4 downto 0);

	-- Checker outputs signals
	SIGNAL   err_arbiter_out_Requests_state_in_state_not_equal, 
	   
	         err_arbiter_out_IDLE_req_X_N, 
	         err_arbiter_out_North_req_X_N, 
	         err_arbiter_out_North_credit_not_zero_req_X_N_grant_N, 
	         err_arbiter_out_North_credit_zero_or_not_req_X_N_not_grant_N, 
	         err_arbiter_out_East_req_X_E, 
	         err_arbiter_out_East_credit_not_zero_req_X_E_grant_E, 
	         err_arbiter_out_East_credit_zero_or_not_req_X_E_not_grant_E, 
	         err_arbiter_out_West_req_X_W, 
	         err_arbiter_out_West_credit_not_zero_req_X_E_grant_E, 
	         err_arbiter_out_West_credit_zero_or_not_req_X_W_not_grant_W, 
	         err_arbiter_out_South_req_X_S, 
	         err_arbiter_out_South_credit_not_zero_req_X_S_grant_S, 
	         err_arbiter_out_South_credit_zero_or_not_req_X_S_not_grant_S, 
	         err_arbiter_out_Local_req_X_L, 
	         err_arbiter_out_Local_credit_not_zero_req_X_L_grant_L, 
	         err_arbiter_out_Local_credit_zero_or_not_req_X_L_not_grant_L, 

	         err_arbiter_out_IDLE_req_X_E, 
	         err_arbiter_out_North_req_X_E, 
	         err_arbiter_out_East_req_X_W, 
	         err_arbiter_out_West_req_X_S, 
	         err_arbiter_out_South_req_X_L, 
	         err_arbiter_out_Local_req_X_N, 
	   
	         err_arbiter_out_IDLE_req_X_W, 
	         err_arbiter_out_North_req_X_W, 
	         err_arbiter_out_East_req_X_S, 
	         err_arbiter_out_West_req_X_L, 
	         err_arbiter_out_South_req_X_N, 
	         err_arbiter_out_Local_req_X_E, 
	   
	         err_arbiter_out_IDLE_req_X_S, 
	         err_arbiter_out_North_req_X_S, 
	         err_arbiter_out_East_req_X_L, 
	         err_arbiter_out_West_req_X_N, 
	         err_arbiter_out_South_req_X_E, 
	         err_arbiter_out_Local_req_X_W, 
	   
	         err_arbiter_out_IDLE_req_X_L, 
	         err_arbiter_out_North_req_X_L, 
	         err_arbiter_out_East_req_X_N, 
	         err_arbiter_out_West_req_X_E, 
	         err_arbiter_out_South_req_X_W, 
	         err_arbiter_out_Local_req_X_S, 
	   
	         err_arbiter_out_state_in_onehot, 
	         err_arbiter_out_no_request_grants, 
	         err_arbiter_out_request_IDLE_state, 

	         err_arbiter_out_request_IDLE_not_Grants, 
	         err_arbiter_out_state_North_Invalid_Grant, 
	         err_arbiter_out_state_East_Invalid_Grant, 
	         err_arbiter_out_state_West_Invalid_Grant, 
	         err_arbiter_out_state_South_Invalid_Grant, 
	         err_arbiter_out_state_Local_Invalid_Grant, 
	         err_arbiter_out_Grants_onehot_or_all_zero: std_logic;

begin 

-----------------------------------------------------------------------
-----------------------------------------------------------------------

      -- Checker outputs generation (used for AWAIT)

	  arbiter_out_checkers_output <=    err_arbiter_out_Requests_state_in_state_not_equal or 
	                           
		                                err_arbiter_out_IDLE_req_X_N or 
		                                err_arbiter_out_North_req_X_N or 
		                                err_arbiter_out_North_credit_not_zero_req_X_N_grant_N or 
		                                err_arbiter_out_North_credit_zero_or_not_req_X_N_not_grant_N or 
		                                err_arbiter_out_East_req_X_E or 
		                                err_arbiter_out_East_credit_not_zero_req_X_E_grant_E or 
		                                err_arbiter_out_East_credit_zero_or_not_req_X_E_not_grant_E or 
		                                err_arbiter_out_West_req_X_W or 
		                                err_arbiter_out_West_credit_not_zero_req_X_E_grant_E or 
		                                err_arbiter_out_West_credit_zero_or_not_req_X_W_not_grant_W or 
		                                err_arbiter_out_South_req_X_S or 
		                                err_arbiter_out_South_credit_not_zero_req_X_S_grant_S or 
		                                err_arbiter_out_South_credit_zero_or_not_req_X_S_not_grant_S or 
		                                err_arbiter_out_Local_req_X_L or 
		                                err_arbiter_out_Local_credit_not_zero_req_X_L_grant_L or 
		                                err_arbiter_out_Local_credit_zero_or_not_req_X_L_not_grant_L or 

		                                err_arbiter_out_IDLE_req_X_E or 
		                                err_arbiter_out_North_req_X_E or 
		                                err_arbiter_out_East_req_X_W or 
		                                err_arbiter_out_West_req_X_S or 
		                                err_arbiter_out_South_req_X_L or 
		                                err_arbiter_out_Local_req_X_N or 
		                           
		                                err_arbiter_out_IDLE_req_X_W or 
		                                err_arbiter_out_North_req_X_W or 
		                                err_arbiter_out_East_req_X_S or 
		                                err_arbiter_out_West_req_X_L or 
		                                err_arbiter_out_South_req_X_N or 
		                                err_arbiter_out_Local_req_X_E or 
		                           
		                                err_arbiter_out_IDLE_req_X_S or 
		                                err_arbiter_out_North_req_X_S or 
		                                err_arbiter_out_East_req_X_L or 
		                                err_arbiter_out_West_req_X_N or 
		                                err_arbiter_out_South_req_X_E or 
		                                err_arbiter_out_Local_req_X_W or 
		                           
		                                err_arbiter_out_IDLE_req_X_L or 
		                                err_arbiter_out_North_req_X_L or 
		                                err_arbiter_out_East_req_X_N or 
		                                err_arbiter_out_West_req_X_E or 
		                                err_arbiter_out_South_req_X_W or 
		                                err_arbiter_out_Local_req_X_S or 
		                           
		                                err_arbiter_out_state_in_onehot or 
		                                err_arbiter_out_no_request_grants or 
		                                err_arbiter_out_request_IDLE_state or 

		                                err_arbiter_out_request_IDLE_not_Grants or 
		                                err_arbiter_out_state_North_Invalid_Grant or 
		                                err_arbiter_out_state_East_Invalid_Grant or 
		                                err_arbiter_out_state_West_Invalid_Grant or 
		                                err_arbiter_out_state_South_Invalid_Grant or 
		                                err_arbiter_out_state_Local_Invalid_Grant or 
		                                err_arbiter_out_Grants_onehot_or_all_zero after 1 ps;


-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Signals used in checkers logic

	Requests <= req_X_N & req_X_E & req_X_W & req_X_S & req_X_L;
	Grants   <= grant_Y_N & grant_Y_E & grant_Y_W & grant_Y_S & grant_Y_L;

-----------------------------------------------------------------------
-----------------------------------------------------------------------
    -- Implementing checkers in form of concurrent assignments (combinational assertions)

    -- Functional checker(s)

	--checked
	process (Requests, state_in)
	begin 
		if (Requests = "00000" and state_in /= IDLE ) then
			err_arbiter_out_Requests_state_in_state_not_equal <= '1';
		else
			err_arbiter_out_Requests_state_in_state_not_equal <= '0';
		end if;
	end process;

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Structural Checkers

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-- Round 1
	--checked
	-- N has highest priority, then E, W, S and L (and then again N). 

	process (state, req_X_N, state_in)
	begin 
		if ( state = IDLE and req_X_N = '1' and state_in /= North ) then
			err_arbiter_out_IDLE_req_X_N <= '1';
		else 
			err_arbiter_out_IDLE_req_X_N <= '0';	
		end if;
	end process;

	--checked

	process (state, req_X_N, state_in)
	begin 
		if (state = North and req_X_N = '1' and state_in /= North) then
			err_arbiter_out_North_req_X_N <= '1';
		else 
			err_arbiter_out_North_req_X_N <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_N, grant_Y_N)
	begin 
		if ( state = North and credit /= "00" and req_X_N = '1' and grant_Y_N /= '1' ) then
			err_arbiter_out_North_credit_not_zero_req_X_N_grant_N <= '1';
		else 
			err_arbiter_out_North_credit_not_zero_req_X_N_grant_N <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_N, grant_Y_N)
	begin 
		if ( state = North and (credit = "00" or req_X_N = '0') and grant_Y_N /= '0' ) then
			err_arbiter_out_North_credit_zero_or_not_req_X_N_not_grant_N <= '1';
		else 
			err_arbiter_out_North_credit_zero_or_not_req_X_N_not_grant_N <= '0';	
		end if;
	end process;

	--checked

	process (state, req_X_E, state_in)
	begin 
		if (state = East and req_X_E = '1' and state_in /= East) then
			err_arbiter_out_East_req_X_E <= '1';
		else 
			err_arbiter_out_East_req_X_E <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_E, grant_Y_E)
	begin 
		if ( state = East and credit /= "00" and req_X_E = '1' and grant_Y_E = '0' ) then
			err_arbiter_out_East_credit_not_zero_req_X_E_grant_E <= '1';
		else 
			err_arbiter_out_East_credit_not_zero_req_X_E_grant_E <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_E, grant_Y_E)
	begin 
		if ( state = East and (credit = "00" or req_X_E = '0') and grant_Y_E /= '0' ) then
			err_arbiter_out_East_credit_zero_or_not_req_X_E_not_grant_E <= '1';
		else 
			err_arbiter_out_East_credit_zero_or_not_req_X_E_not_grant_E <= '0';	
		end if;
	end process;

	--checked

	process (state, req_X_W, state_in)
	begin 
		if (state = West and req_X_W = '1' and state_in /= West) then
			err_arbiter_out_West_req_X_W <= '1';
		else 
			err_arbiter_out_West_req_X_W <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_W, grant_Y_W)
	begin 
		if ( state = West and credit /= "00" and req_X_W = '1' and grant_Y_W = '0') then
			err_arbiter_out_West_credit_not_zero_req_X_E_grant_E <= '1';
		else 
			err_arbiter_out_West_credit_not_zero_req_X_E_grant_E <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_W, grant_Y_W)
	begin 
		if ( state = West and (credit = "00" or req_X_W = '0') and grant_Y_W /= '0' ) then
			err_arbiter_out_West_credit_zero_or_not_req_X_W_not_grant_W <= '1';
		else 
			err_arbiter_out_West_credit_zero_or_not_req_X_W_not_grant_W <= '0';	
		end if;
	end process;

	--checked

	process (state, req_X_S, state_in)
	begin 
		if (state = South and req_X_S = '1' and state_in /= South) then
			err_arbiter_out_South_req_X_S <= '1';
		else 
			err_arbiter_out_South_req_X_S <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_S, grant_Y_S)
	begin 
		if ( state = South and credit /= "00" and req_X_S = '1' and grant_Y_S = '0' ) then
			err_arbiter_out_South_credit_not_zero_req_X_S_grant_S <= '1';
		else 
			err_arbiter_out_South_credit_not_zero_req_X_S_grant_S <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_S, grant_Y_S)
	begin 
		if ( state = South and (credit = "00" or req_X_S = '0') and grant_Y_S /= '0' ) then
			err_arbiter_out_South_credit_zero_or_not_req_X_S_not_grant_S <= '1';
		else 
			err_arbiter_out_South_credit_zero_or_not_req_X_S_not_grant_S <= '0';	
		end if;
	end process;

	--checked

	-- Local is a bit different (including others case)
	process (state, req_X_L, state_in)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /= West and state /= South and 
			 req_X_L = '1' and state_in /= Local) then
			err_arbiter_out_Local_req_X_L <= '1';
		else 
			err_arbiter_out_Local_req_X_L <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_L, grant_Y_L)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /= West and state /= South and 
			 credit /= "00" and req_X_L = '1' and grant_Y_L = '0' ) then
			err_arbiter_out_Local_credit_not_zero_req_X_L_grant_L <= '1';
		else 
			err_arbiter_out_Local_credit_not_zero_req_X_L_grant_L <= '0';	
		end if;
	end process;

	--checked

	process (state, credit, req_X_L, grant_Y_L)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /= West and state /= South and 
		   ( credit = "00" or req_X_L = '0') and grant_Y_L /= '0' ) then
			err_arbiter_out_Local_credit_zero_or_not_req_X_L_not_grant_L <= '1';
		else 
			err_arbiter_out_Local_credit_zero_or_not_req_X_L_not_grant_L <= '0';	
		end if;
	end process;

	-- Checked
	-- Double checked!

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-- Round 2
	--checked

	-- IDLE 

	process (state, req_X_N, req_X_E, state_in)
	begin 
		if ( state = IDLE and req_X_N = '0' and req_X_E = '1' and state_in /= East) then
			err_arbiter_out_IDLE_req_X_E <= '1';
		else 
			err_arbiter_out_IDLE_req_X_E <= '0';	
		end if;
	end process;

	-- North

	process (state, req_X_N, req_X_E, state_in)
	begin 
		if ( state = North and req_X_N = '0' and req_X_E = '1' and state_in /= East) then
			err_arbiter_out_North_req_X_E <= '1';
		else 
			err_arbiter_out_North_req_X_E <= '0';	
		end if;
	end process;

	-- East 

	process (state, req_X_E, req_X_W, state_in)
	begin 
		if ( state = East and req_X_E = '0' and req_X_W = '1' and state_in /= West) then
			err_arbiter_out_East_req_X_W <= '1';
		else 
			err_arbiter_out_East_req_X_W <= '0';	
		end if;
	end process;

	-- West

	process (state, req_X_W, req_X_S, state_in)
	begin 
		if ( state = West and req_X_W = '0' and req_X_S = '1' and state_in /= South) then
			err_arbiter_out_West_req_X_S <= '1';
		else 
			err_arbiter_out_West_req_X_S <= '0';	
		end if;
	end process;

	-- South

	-- Shall I consider local for this case or the others case ? I guess local, according to the previous checkers
	-- for the router with CTS/RTS handshaking Flow Control
	process (state, req_X_S, req_X_L, state_in)
	begin 
		if ( state = South and req_X_S = '0' and req_X_L = '1' and state_in /= Local) then
			err_arbiter_out_South_req_X_L <= '1';
		else 
			err_arbiter_out_South_req_X_L <= '0';	
		end if;
	end process;

	-- Local and invalid states (others case)

	process (state, req_X_L, req_X_N, state_in)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /=West and state /= South and 
			 req_X_L = '0' and req_X_N = '1' and state_in /= North) then
			err_arbiter_out_Local_req_X_N <= '1';
		else 
			err_arbiter_out_Local_req_X_N <= '0';	
		end if;
	end process;

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-- Round 3

	process (state, req_X_N, req_X_E, req_X_W, state_in)
	begin 
		if (state = IDLE and req_X_N = '0' and req_X_E = '0' and req_X_W = '1' and state_in /= West) then
			err_arbiter_out_IDLE_req_X_W <= '1';
		else 
			err_arbiter_out_IDLE_req_X_W <= '0';	
		end if;
	end process;

	process (state, req_X_N, req_X_E, req_X_W, state_in)
	begin 
		if (state = North and req_X_N = '0' and req_X_E = '0' and req_X_W = '1' and state_in /= West) then
			err_arbiter_out_North_req_X_W <= '1';
		else 
			err_arbiter_out_North_req_X_W <= '0';	
		end if;
	end process;

	process (state, req_X_E, req_X_W, req_X_S, state_in)
	begin 
		if (state = East and req_X_E = '0' and req_X_W = '0' and req_X_S = '1' and state_in /= South) then
			err_arbiter_out_East_req_X_S <= '1';
		else 
			err_arbiter_out_East_req_X_S <= '0';	
		end if;
	end process;

	process (state, req_X_W, req_X_S, req_X_L, state_in)
	begin 
		if (state = West and req_X_W = '0' and req_X_S = '0' and req_X_L = '1' and state_in /= Local) then
			err_arbiter_out_West_req_X_L <= '1';
		else 
			err_arbiter_out_West_req_X_L <= '0';	
		end if;
	end process;

	process (state, req_X_S, req_X_L, req_X_N, state_in)
	begin 
		if (state = South and req_X_S = '0' and req_X_L = '0' and req_X_N = '1' and state_in /= North) then
			err_arbiter_out_South_req_X_N <= '1';
		else 
			err_arbiter_out_South_req_X_N <= '0';	
		end if;
	end process;

	-- Local and invalid state(s) (others case)
	process (state, req_X_L, req_X_N, req_X_E, state_in)
	begin 
		if (state /= IDLE and state /= North and state /=East and state /=West and state /= South and 
			req_X_L = '0' and req_X_N = '0' and req_X_E = '1' and state_in /= East) then
			err_arbiter_out_Local_req_X_E <= '1';
		else 
			err_arbiter_out_Local_req_X_E <= '0';	
		end if;
	end process;

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-- Round 4

	process (state, req_X_N, req_X_E, req_X_W, req_X_S, state_in)
	begin 
		if ( state = IDLE and req_X_N = '0' and req_X_E = '0' and req_X_W = '0' and req_X_S = '1' and 
			 state_in /= South) then
			err_arbiter_out_IDLE_req_X_S <= '1';
		else 
			err_arbiter_out_IDLE_req_X_S <= '0';	
		end if;
	end process;

	process (state, req_X_N, req_X_E, req_X_W, req_X_S, state_in)
	begin 
		if ( state = North and req_X_N = '0' and req_X_E = '0' and req_X_W = '0' and req_X_S = '1' and 
			 state_in /= South) then
			err_arbiter_out_North_req_X_S <= '1';
		else 
			err_arbiter_out_North_req_X_S <= '0';	
		end if;
	end process;

	process (state, req_X_E, req_X_W, req_X_S, req_X_L, state_in)
	begin 
		if ( state = East and req_X_E = '0' and req_X_W = '0' and req_X_S = '0' and req_X_L = '1' and 
			 state_in /= Local) then
			err_arbiter_out_East_req_X_L <= '1';
		else 
			err_arbiter_out_East_req_X_L <= '0';	
		end if;
	end process;

	process (state, req_X_W, req_X_S, req_X_L, req_X_N, state_in)
	begin 
		if ( state = West and req_X_W = '0' and req_X_S = '0' and req_X_L = '0' and req_X_N = '1' and 
			 state_in /= North) then
			err_arbiter_out_West_req_X_N <= '1';
		else 
			err_arbiter_out_West_req_X_N <= '0';	
		end if;
	end process;

	process (state, req_X_S, req_X_L, req_X_N, req_X_E, state_in)
	begin 
		if ( state = South and req_X_S = '0' and req_X_L = '0' and req_X_N = '0' and req_X_E = '1' and 
			 state_in /= East) then
			err_arbiter_out_South_req_X_E <= '1';
		else 
			err_arbiter_out_South_req_X_E <= '0';	
		end if;
	end process;

	-- Local state or invalid state(s) (others case)
	process (state, req_X_L, req_X_N, req_X_E, req_X_W, state_in)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /=West and state /= South and 
			 req_X_L = '0' and req_X_N = '0' and req_X_E = '0' and req_X_W = '1' and 
			 state_in /= West) then
			err_arbiter_out_Local_req_X_W <= '1';
		else 
			err_arbiter_out_Local_req_X_W <= '0';	
		end if;
	end process;

	-- Checked

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-- Round 5

	process (state, req_X_N, req_X_E, req_X_W, req_X_S, req_X_L, state_in)
	begin 
		if ( state = IDLE and req_X_N = '0' and req_X_E = '0' and req_X_W = '0' and req_X_S = '0' and req_X_L = '1' 
			and state_in /= Local) then
			err_arbiter_out_IDLE_req_X_L <= '1';
		else 
			err_arbiter_out_IDLE_req_X_L <= '0';	
		end if;
	end process;

	process (state, req_X_N, req_X_E, req_X_W, req_X_S, req_X_L, state_in)
	begin 
		if ( state = North and req_X_N = '0' and req_X_E = '0' and req_X_W = '0' and req_X_S = '0' and req_X_L = '1' 
			and state_in /= Local) then
			err_arbiter_out_North_req_X_L <= '1';
		else 
			err_arbiter_out_North_req_X_L <= '0';	
		end if;
	end process;

	process (state, req_X_E, req_X_W, req_X_S, req_X_L, req_X_N, state_in)
	begin 
		if ( state = East and req_X_E = '0' and req_X_W = '0' and req_X_S = '0' and req_X_L = '0' and req_X_N = '1' and 
			 state_in /= North) then
			err_arbiter_out_East_req_X_N <= '1';
		else 
			err_arbiter_out_East_req_X_N <= '0';	
		end if;
	end process;

	process (state, req_X_W, req_X_S, req_X_L, req_X_N, req_X_E, state_in)
	begin 
		if ( state = West and req_X_W = '0' and req_X_S = '0' and req_X_L = '0' and req_X_N = '0' and req_X_E = '1' and 
			 state_in /= East) then
			err_arbiter_out_West_req_X_E <= '1';
		else 
			err_arbiter_out_West_req_X_E <= '0';	
		end if;
	end process;

	process (state, req_X_S, req_X_L, req_X_N, req_X_E, req_X_W, state_in)
	begin 
		if ( state = South and req_X_S = '0' and req_X_L = '0' and req_X_N = '0' and req_X_E = '0' and req_X_W = '1' and 
			 state_in /= West) then
			err_arbiter_out_South_req_X_W <= '1';
		else 
			err_arbiter_out_South_req_X_W <= '0';	
		end if;
	end process;

	-- Local state or invalid state(s) (others case)

	process (state, req_X_L, req_X_N, req_X_E, req_X_W, req_X_S, state_in)
	begin 
		if ( state /= IDLE and state /= North and state /=East and state /=West and state /= South and 
			 req_X_L = '0' and req_X_N = '0' and req_X_E = '0' and req_X_W = '0' and req_X_S = '1' and 
			 state_in /= South) then
			err_arbiter_out_Local_req_X_S <= '1';
		else 
			err_arbiter_out_Local_req_X_S <= '0';	
		end if;
	end process;

	-- Checked 

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------

	process (state_in)
	begin
		if (state_in /= IDLE and state_in /= North and state_in /= East and state_in /= West and 
			state_in /= South and state_in /= Local) then
			err_arbiter_out_state_in_onehot <= '1';
		else 
			err_arbiter_out_state_in_onehot <= '0';
		end if;
	end process;

	-- Checked 

	process (Requests, Grants)
	begin
		if ( Requests = "00000" and Grants /= "00000") then
			err_arbiter_out_no_request_grants <= '1';
		else 
			err_arbiter_out_no_request_grants <= '0';
		end if;
	end process;

	-- Checked 

	process (Requests, state_in)
	begin
		if (Requests /= "00000" and state_in = IDLE) then
			err_arbiter_out_request_IDLE_state <= '1';
		else 
			err_arbiter_out_request_IDLE_state <= '0';
		end if;
	end process;

	-----------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------------
	process (state, Grants)
	begin
		if (state = IDLE and Grants /= "00000") then
			err_arbiter_out_request_IDLE_not_Grants <= '1';
		else 
			err_arbiter_out_request_IDLE_not_Grants <= '0';
		end if;
	end process;

	process (state, grant_Y_E, grant_Y_W, grant_Y_S, grant_Y_L)
	begin
		if (state = North and (grant_Y_E = '1' or grant_Y_W = '1' or grant_Y_S = '1' or grant_Y_L = '1') ) then
			err_arbiter_out_state_North_Invalid_Grant <= '1';
		else 
			err_arbiter_out_state_North_Invalid_Grant <= '0';
		end if;
	end process;

	process (state, grant_Y_N, grant_Y_W, grant_Y_S, grant_Y_L)
	begin
		if (state = East and (grant_Y_N = '1' or grant_Y_W = '1' or grant_Y_S = '1' or grant_Y_L = '1') ) then
			err_arbiter_out_state_East_Invalid_Grant <= '1';
		else 
			err_arbiter_out_state_East_Invalid_Grant <= '0';
		end if;
	end process;

	process (state, grant_Y_N, grant_Y_E, grant_Y_S, grant_Y_L)
	begin
		if (state = West and (grant_Y_N = '1' or grant_Y_E = '1' or grant_Y_S = '1' or grant_Y_L = '1') ) then
			err_arbiter_out_state_West_Invalid_Grant <= '1';
		else 
			err_arbiter_out_state_West_Invalid_Grant <= '0';
		end if;
	end process;

	process (state, grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_L)
	begin
		if (state = South and (grant_Y_N = '1' or grant_Y_E = '1' or grant_Y_W = '1' or grant_Y_L = '1') ) then
			err_arbiter_out_state_South_Invalid_Grant <= '1';
		else 
			err_arbiter_out_state_South_Invalid_Grant <= '0';
		end if;
	end process;

	-- Local or invalid state(s) (a bit different logic!)
	process (state, grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_S)
	begin
		if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and 
		   (grant_Y_N = '1' or grant_Y_E = '1' or grant_Y_W = '1' or grant_Y_S = '1') ) then
			err_arbiter_out_state_Local_Invalid_Grant <= '1';
		else 
			err_arbiter_out_state_Local_Invalid_Grant <= '0';
		end if;
	end process;


	-- Because we do not have multi-casting, Grants must always be one-hot or all zeros, no other possible combination for them !
	process (Grants)
	begin
		if (Grants /= "00000" and Grants /= "00001" and Grants /= "00010" and Grants /= "00100" and Grants /= "01000" and Grants /= "10000") then
			err_arbiter_out_Grants_onehot_or_all_zero <= '1';
		else 
			err_arbiter_out_Grants_onehot_or_all_zero <= '0';
		end if;
	end process;

end behavior;