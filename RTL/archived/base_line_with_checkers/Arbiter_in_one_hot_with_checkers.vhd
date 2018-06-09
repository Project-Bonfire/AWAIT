--Copyright (C) 2016 Siavoosh Payandeh Azad

library ieee;
use ieee.std_logic_1164.all;

-- Is this like the old arbiter in the router with handshaking FC ??
entity arbiter_in_one_hot_with_checkers is
    generic(credit_width: integer := 2 );
    port (  reset: in std_logic;
            clk: in std_logic;
            Req_X_N_valid, Req_X_E_valid, Req_X_W_valid, Req_X_S_valid, Req_X_L_valid: in std_logic; -- From LBDR modules
            Req_X_N, Req_X_E, Req_X_W, Req_X_S, Req_X_L: in std_logic; -- From LBDR modules

            X_N, X_E, X_W, X_S, X_L: out std_logic -- Grants given to LBDR requests (encoded as one-hot)
          );
end arbiter_in_one_hot_with_checkers;

architecture behavior of arbiter_in_one_hot_with_checkers is

 
	 --TYPE STATE_TYPE IS (IDLE, North, East, West, South, Local);

	SUBTYPE STATE_TYPE IS STD_LOGIC_VECTOR (5 downto 0);

	CONSTANT IDLE:  STATE_TYPE := "000001";
	CONSTANT Local: STATE_TYPE := "000010";
	CONSTANT North: STATE_TYPE := "000100";
	CONSTANT East:  STATE_TYPE := "001000";
	CONSTANT West:  STATE_TYPE := "010000";
	CONSTANT South: STATE_TYPE := "100000";

	SIGNAL 	state, state_in   : STATE_TYPE := IDLE;

	SIGNAL 	X_N_sig, X_E_sig, X_W_sig, X_S_sig, X_L_sig: std_logic; -- needed for connecting output ports 
																   -- of Arbiter_in to checker inputs
	SIGNAL 	X_N_sig_prev,X_E_sig_prev,X_W_sig_prev,X_S_sig_prev,X_L_sig_prev: std_logic;

	SIGNAL 	Arbiter_in_checkers_ORed: std_logic;
	--SIGNAL 	Arbiter_in_checkers_ORed_sync: std_logic;

			-- Functional Checkers
	SIGNAL	err_arbiter_in_state_in_onehot, 
			err_arbiter_in_all_Requests_invalid_Grants_previous_equal, 
			err_arbiter_in_all_Requests_zero_state_in_state_equal, 

			-- Structural Checkers
			-- Round 1
			err_arbiter_in_IDLE_Req_N_valid_state_in_North, 
			err_arbiter_in_IDLE_Req_N_valid_grant_N, 
			err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value, 

			err_arbiter_in_North_Req_N_valid_state_in_North, 
			err_arbiter_in_North_Req_N_valid_grant_N, 
			err_arbiter_in_North_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value, 

			err_arbiter_in_East_Req_E_valid_state_in_East, 
			err_arbiter_in_East_Req_E_valid_grant_E, 
			err_arbiter_in_East_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value, 

			err_arbiter_in_West_Req_W_valid_state_in_West, 
			err_arbiter_in_West_Req_W_valid_grant_W, 
			err_arbiter_in_West_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value, 

			err_arbiter_in_South_Req_S_valid_state_in_South, 
			err_arbiter_in_South_Req_S_valid_grant_S, 
			err_arbiter_in_South_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value, 

			err_arbiter_in_Local_Req_L_valid_state_in_Local, 
			err_arbiter_in_Local_Req_L_valid_grant_L, 
			err_arbiter_in_Local_not_Req_N_valid_not_grant_N, 
			err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value, 

			-- Round 2
			err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E, 
			err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

			err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East, 
			err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E, 
			err_arbiter_in_North_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

			err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West, 
			err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W, 
			err_arbiter_in_East_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

			err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South, 
			err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S, 
			err_arbiter_in_West_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

			err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
			err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L, 
			err_arbiter_in_South_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

			err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North, 
			err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N, 
			err_arbiter_in_Local_not_Req_E_valid_not_grant_E, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

			-- Round 3
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
			err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
			err_arbiter_in_North_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
			err_arbiter_in_East_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
			err_arbiter_in_West_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
			err_arbiter_in_South_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
			err_arbiter_in_Local_not_Req_W_valid_not_grant_W, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

			-- Round 4
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
			err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
			err_arbiter_in_North_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
			err_arbiter_in_East_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
			err_arbiter_in_West_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
			err_arbiter_in_South_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
			err_arbiter_in_Local_not_Req_S_valid_not_grant_S, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

			-- Roung 5
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
			err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
			err_arbiter_in_North_not_Req_L_valid_not_grant_L, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
			err_arbiter_in_East_not_Req_L_valid_not_grant_L, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
			err_arbiter_in_West_not_Req_L_valid_not_grant_L, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
			err_arbiter_in_South_not_Req_L_valid_not_grant_L, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W, 
			err_arbiter_in_Local_not_Req_L_valid_grant_L, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
			err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

			-- Round 6
			err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
			err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
			err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal, 
			err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal, 
			err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal, 
			err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal: std_logic; 


	component arbiter_in_one_hot_checkers is
	    port (  
	            req_X_N, req_X_E, req_X_W, req_X_S, req_X_L :in std_logic;
	            Req_X_N_valid, Req_X_E_valid, Req_X_W_valid, Req_X_S_valid, Req_X_L_valid: in std_logic; -- From LBDR modules
	            state: in std_logic_vector (5 downto 0);
	            state_in: in std_logic_vector (5 downto 0);
				X_N, X_E, X_W, X_S, X_L :in std_logic;
				X_N_prev, X_E_prev, X_W_prev, X_S_prev, X_L_prev :in std_logic;

	            -- Checker outputs
				-- Functional Checkers
				err_arbiter_in_state_in_onehot, 
				err_arbiter_in_all_Requests_invalid_Grants_previous_equal, 
				err_arbiter_in_all_Requests_zero_state_in_state_equal, 

				-- Structural Checkers
				-- Round 1
				err_arbiter_in_IDLE_Req_N_valid_state_in_North, 
				err_arbiter_in_IDLE_Req_N_valid_grant_N, 
				err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_North_Req_N_valid_state_in_North, 
				err_arbiter_in_North_Req_N_valid_grant_N, 
				err_arbiter_in_North_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_East_Req_E_valid_state_in_East, 
				err_arbiter_in_East_Req_E_valid_grant_E, 
				err_arbiter_in_East_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_West_Req_W_valid_state_in_West, 
				err_arbiter_in_West_Req_W_valid_grant_W, 
				err_arbiter_in_West_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_South_Req_S_valid_state_in_South, 
				err_arbiter_in_South_Req_S_valid_grant_S, 
				err_arbiter_in_South_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_Local_Req_L_valid_state_in_Local, 
				err_arbiter_in_Local_Req_L_valid_grant_L, 
				err_arbiter_in_Local_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value, 

				-- Round 2
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_North_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_East_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_West_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_South_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_Local_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				-- Round 3
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_North_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_East_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_West_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_South_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_Local_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				-- Round 4
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_North_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_East_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_West_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_South_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_Local_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				-- Roung 5
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_North_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_East_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_West_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_South_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W, 
				err_arbiter_in_Local_not_Req_L_valid_grant_L, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				-- Round 6
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal, 
				err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal: out std_logic
	           );
	end component;


begin

	-- Becuase of checkers we did this

	X_N <= X_N_sig;
	X_E <= X_E_sig;
	X_W <= X_W_sig;
	X_S <= X_S_sig;
	X_L <= X_L_sig;

	-- Sequential part

	process (clk, reset) begin -- , Arbiter_in_checkers_ORed_sync)begin
	  if reset = '0' then
	      state <= IDLE;
	      	X_N_sig_prev <= '0';
			X_E_sig_prev <= '0';
			X_W_sig_prev <= '0';
			X_S_sig_prev <= '0';
			X_L_sig_prev <= '0';
	  elsif clk'event and clk ='1' then
	    --if (Arbiter_in_checkers_ORed_sync = '0') then
	      state <= state_in;
	      X_N_sig_prev <= X_N_sig;
	      X_E_sig_prev <= X_E_sig;
	      X_W_sig_prev <= X_W_sig;
	      X_S_sig_prev <= X_S_sig;
	      X_L_sig_prev <= X_L_sig;
	    --end if;
	  end if;
	end process;

	-- Bubble-related logic
	--process(Arbiter_in_checkers_ORed, clk)
	--begin
	--    if Arbiter_in_checkers_ORed = '1' then -- If there is a transient fault detected in Arbiter_in
	--          Arbiter_in_checkers_ORed_sync <= '1';
	--    else -- Hopefully the transient fault would disappear 
	--          if clk'event and clk = '0' then 
	--                Arbiter_in_checkers_ORed_sync <= '0';
	--          end if;
	--    end if; 
	--end process;


	-- anything below here is pure combinational

	-- TEMP!
										-- Functional Checkers
	Arbiter_in_checkers_ORed <= 	   (err_arbiter_in_state_in_onehot or 
										err_arbiter_in_all_Requests_invalid_Grants_previous_equal or 
										err_arbiter_in_all_Requests_zero_state_in_state_equal or 

										-- Structural Checkers
										-- Round 1
										err_arbiter_in_IDLE_Req_N_valid_state_in_North or 
										err_arbiter_in_IDLE_Req_N_valid_grant_N or 
										err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value or 

										err_arbiter_in_North_Req_N_valid_state_in_North or 
										err_arbiter_in_North_Req_N_valid_grant_N or 
										err_arbiter_in_North_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value or 

										err_arbiter_in_East_Req_E_valid_state_in_East or 
										err_arbiter_in_East_Req_E_valid_grant_E or 
										err_arbiter_in_East_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value or 

										err_arbiter_in_West_Req_W_valid_state_in_West or 
										err_arbiter_in_West_Req_W_valid_grant_W or 
										err_arbiter_in_West_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value or 

										err_arbiter_in_South_Req_S_valid_state_in_South or 
										err_arbiter_in_South_Req_S_valid_grant_S or 
										err_arbiter_in_South_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value or 

										err_arbiter_in_Local_Req_L_valid_state_in_Local or 
										err_arbiter_in_Local_Req_L_valid_grant_L or 
										err_arbiter_in_Local_not_Req_N_valid_not_grant_N or 
										err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value or 

										-- Round 2
										err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E or 
										err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value or 

										err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East or 
										err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E or 
										err_arbiter_in_North_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value or 

										err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West or 
										err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W or 
										err_arbiter_in_East_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value or 

										err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South or 
										err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S or 
										err_arbiter_in_West_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value or 

										err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local or 
										err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L or 
										err_arbiter_in_South_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value or 

										err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North or 
										err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N or 
										err_arbiter_in_Local_not_Req_E_valid_not_grant_E or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value or 

										-- Round 3
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W or 
										err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value or 

										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W or 
										err_arbiter_in_North_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value or 

										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S or 
										err_arbiter_in_East_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value or 

										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L or 
										err_arbiter_in_West_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value or 

										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N or 
										err_arbiter_in_South_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value or 

										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E or 
										err_arbiter_in_Local_not_Req_W_valid_not_grant_W or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value or 

										-- Round 4
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S or 
										err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value or 

										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S or 
										err_arbiter_in_North_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value or 

										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L or 
										err_arbiter_in_East_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value or 

										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N or 
										err_arbiter_in_West_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value or 

										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E or 
										err_arbiter_in_South_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value or 

										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W or 
										err_arbiter_in_Local_not_Req_S_valid_not_grant_S or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value or 

										-- Roung 5
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L or 
										err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value or 

										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L or 
										err_arbiter_in_North_not_Req_L_valid_not_grant_L or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value or 

										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N or 
										err_arbiter_in_East_not_Req_L_valid_not_grant_L or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value or 

										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E or 
										err_arbiter_in_West_not_Req_L_valid_not_grant_L or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value or 

										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W or 
										err_arbiter_in_South_not_Req_L_valid_not_grant_L or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value or 

										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W or 
										err_arbiter_in_Local_not_Req_L_valid_grant_L or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value or 
										err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value or 

										-- Round 6
										err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal or 
										err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal or 
										err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal or 
										err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal or 
										err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal or 
										err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal) after 1 ps;


	-- Arbiter_in Checkers module instantiation 
	ARBITER_IN_CHECKERS: Arbiter_in_one_hot_checkers port map (
	            req_X_N => req_X_N, -- _sig not needed, because it is an input port
	            req_X_E => req_X_E, -- _sig not needed, because it is an input port
	            req_X_W => req_X_W, -- _sig not needed, because it is an input port
	            req_X_S => req_X_S, -- _sig not needed, because it is an input port
	            req_X_L => req_X_L, -- _sig not needed, because it is an input port
				Req_X_N_valid => Req_X_N_valid, 
				Req_X_E_valid => Req_X_E_valid, 
				Req_X_W_valid => Req_X_W_valid, 
				Req_X_S_valid => Req_X_S_valid, 
				Req_X_L_valid => Req_X_L_valid, 
	            state => state,     -- _sig not needed, because it is an input port

	            state_in => state_in, -- _sig not needed, because it is an internal signal
	            X_N => X_N_sig, 
	            X_E => X_E_sig, 
	            X_W => X_W_sig, 
	            X_S => X_S_sig, 
	            X_L => X_L_sig, 
	            X_N_prev => X_N_sig_prev, 
	            X_E_prev => X_E_sig_prev, 
	            X_W_prev => X_W_sig_prev, 
	            X_S_prev => X_S_sig_prev, 
	            X_L_prev => X_L_sig_prev, 

	            -- Checker outputs
				-- Functional Checkers
				err_arbiter_in_state_in_onehot => err_arbiter_in_state_in_onehot,  
				err_arbiter_in_all_Requests_invalid_Grants_previous_equal => err_arbiter_in_all_Requests_invalid_Grants_previous_equal,  
				err_arbiter_in_all_Requests_zero_state_in_state_equal => err_arbiter_in_all_Requests_zero_state_in_state_equal,  

				-- Structural Checkers
				-- Round 1
				err_arbiter_in_IDLE_Req_N_valid_state_in_North => err_arbiter_in_IDLE_Req_N_valid_state_in_North, 
				err_arbiter_in_IDLE_Req_N_valid_grant_N => err_arbiter_in_IDLE_Req_N_valid_grant_N, 
				err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N => err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_North_Req_N_valid_state_in_North => err_arbiter_in_North_Req_N_valid_state_in_North, 
				err_arbiter_in_North_Req_N_valid_grant_N => err_arbiter_in_North_Req_N_valid_grant_N, 
				err_arbiter_in_North_not_Req_N_valid_not_grant_N => err_arbiter_in_North_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_East_Req_E_valid_state_in_East => err_arbiter_in_East_Req_E_valid_state_in_East, 
				err_arbiter_in_East_Req_E_valid_grant_E => err_arbiter_in_East_Req_E_valid_grant_E, 
				err_arbiter_in_East_not_Req_N_valid_not_grant_N => err_arbiter_in_East_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_West_Req_W_valid_state_in_West => err_arbiter_in_West_Req_W_valid_state_in_West, 
				err_arbiter_in_West_Req_W_valid_grant_W => err_arbiter_in_West_Req_W_valid_grant_W, 
				err_arbiter_in_West_not_Req_N_valid_not_grant_N => err_arbiter_in_West_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_South_Req_S_valid_state_in_South => err_arbiter_in_South_Req_S_valid_state_in_South, 
				err_arbiter_in_South_Req_S_valid_grant_S => err_arbiter_in_South_Req_S_valid_grant_S, 
				err_arbiter_in_South_not_Req_N_valid_not_grant_N => err_arbiter_in_South_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_Local_Req_L_valid_state_in_Local => err_arbiter_in_Local_Req_L_valid_state_in_Local, 
				err_arbiter_in_Local_Req_L_valid_grant_L => err_arbiter_in_Local_Req_L_valid_grant_L, 
				err_arbiter_in_Local_not_Req_N_valid_not_grant_N => err_arbiter_in_Local_not_Req_N_valid_not_grant_N, 
				err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value, 

				-- Round 2
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East => err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E => err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E => err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East => err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E => err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_North_not_Req_E_valid_not_grant_E => err_arbiter_in_North_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West => err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W => err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_East_not_Req_E_valid_not_grant_E => err_arbiter_in_East_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South => err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S => err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_West_not_Req_E_valid_not_grant_E => err_arbiter_in_West_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local => err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L => err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_South_not_Req_E_valid_not_grant_E => err_arbiter_in_South_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North => err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N => err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_Local_not_Req_E_valid_not_grant_E => err_arbiter_in_Local_not_Req_E_valid_not_grant_E, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				-- Round 3
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W => err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_North_not_Req_W_valid_not_grant_W => err_arbiter_in_North_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_East_not_Req_W_valid_not_grant_W => err_arbiter_in_East_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_West_not_Req_W_valid_not_grant_W => err_arbiter_in_West_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_South_not_Req_W_valid_not_grant_W => err_arbiter_in_South_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_Local_not_Req_W_valid_not_grant_W => err_arbiter_in_Local_not_Req_W_valid_not_grant_W, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				-- Round 4
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S => err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S, 
				err_arbiter_in_North_not_Req_S_valid_not_grant_S => err_arbiter_in_North_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_East_not_Req_S_valid_not_grant_S => err_arbiter_in_East_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_West_not_Req_S_valid_not_grant_S => err_arbiter_in_West_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_South_not_Req_S_valid_not_grant_S => err_arbiter_in_South_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_Local_not_Req_S_valid_not_grant_S => err_arbiter_in_Local_not_Req_S_valid_not_grant_S, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				-- Round 5
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L => err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L, 
				err_arbiter_in_North_not_Req_L_valid_not_grant_L => err_arbiter_in_North_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value, 

				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N, 
				err_arbiter_in_East_not_Req_L_valid_not_grant_L => err_arbiter_in_East_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value, 

				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E, 
				err_arbiter_in_West_not_Req_L_valid_not_grant_L => err_arbiter_in_West_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value, 

				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W, 
				err_arbiter_in_South_not_Req_L_valid_not_grant_L => err_arbiter_in_South_not_Req_L_valid_not_grant_L, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value, 

				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W, 
				err_arbiter_in_Local_not_Req_L_valid_grant_L => err_arbiter_in_Local_not_Req_L_valid_grant_L, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value, 
				err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value => err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value, 

				-- Round 6
				err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal => err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
				err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal => err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal, 
				err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal => err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal, 
				err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal => err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal, 
				err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal => err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal, 
				err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal => err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal
	           );

	-- Main Logic of Arbiter_in
	-- N has the highest priority (N, E, W, S, L -> N)
	process(state, req_X_N, req_X_E, req_X_W, req_X_S, req_X_L, Req_X_N_valid, Req_X_E_valid, Req_X_W_valid, Req_X_S_valid, Req_X_L_valid,
			X_N_sig_prev,X_E_sig_prev,X_W_sig_prev,X_S_sig_prev,X_L_sig_prev)
	begin

	    X_N_sig <= X_N_sig_prev;
	    X_E_sig <= X_E_sig_prev;
	    X_W_sig <= X_W_sig_prev;
	    X_S_sig <= X_S_sig_prev;
	    X_L_sig <= X_L_sig_prev;

	    case state is 

	      when IDLE => 
		    if req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
	        elsif req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    elsif req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    elsif req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    elsif req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    else
		    	state_in <= state;
		    end if;

	       	if req_X_N ='0' and Req_X_N_valid = '1' then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1' then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1' then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1' then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1' then 
	        	X_L_sig <= '0';
			end if;

	      when North =>
	      	if req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
	        elsif req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    elsif req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    elsif req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    elsif req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    else
		    	state_in <= state;
		    end if;

		    if req_X_N ='0' and Req_X_N_valid = '1'then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1'then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1'then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1'then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1'then 
	        	X_L_sig <= '0';
			end if;

	      when East =>
		    if req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    elsif req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    elsif req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    elsif req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    elsif req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
		    else
		    	state_in <= state;
		    end if;

		    if req_X_N ='0' and Req_X_N_valid = '1'then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1'then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1'then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1'then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1'then 
	        	X_L_sig <= '0';
			end if;

	      when West =>
		    if req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    elsif req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    elsif req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    elsif req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
	        elsif req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    else
		    	state_in <= state;
		    end if;

		   	if req_X_N ='0' and Req_X_N_valid = '1'then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1'then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1'then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1'then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1'then 
	        	X_L_sig <= '0';
			end if;

	      when South =>
		    if req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    elsif req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    elsif req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
	        elsif req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    elsif req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    else
		    	state_in <= state;
		    end if;

		    if req_X_N ='0' and Req_X_N_valid = '1'then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1'then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1'then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1'then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1'then 
	        	X_L_sig <= '0';
			end if;

	      when others => -- Including Local and invalid states
		    if req_X_L = '1' and Req_X_L_valid = '1' then
		    	state_in <= Local;
		        X_L_sig <= '1';
		    elsif req_X_N ='1' and Req_X_N_valid = '1' then
	      		state_in <= North;
	        	X_N_sig <= '1';
	        elsif req_X_E = '1' and Req_X_E_valid = '1' then
		    	state_in <= East;
		        X_E_sig <= '1';
		    elsif req_X_W = '1' and req_X_W_valid = '1' then
		    	state_in <= West;
		        X_W_sig <= '1';
		    elsif req_X_S = '1' and req_X_S_valid = '1' then
		    	state_in <= South;
		        X_S_sig <= '1';
		    else
		    	state_in <= state;
		    end if;
		    
		    if req_X_N ='0' and Req_X_N_valid = '1'then 
	        	X_N_sig <= '0';
			end if;
	        if req_X_E ='0' and Req_X_E_valid = '1'then 
	        	X_E_sig <= '0';	
			end if;
	        if req_X_W ='0' and Req_X_W_valid = '1'then 
	        	X_W_sig <= '0';
			end if;
	        if req_X_S ='0' and Req_X_S_valid = '1'then 
	        	X_S_sig <= '0';
			end if;
	        if req_X_L ='0' and Req_X_L_valid = '1'then 
	        	X_L_sig <= '0';
			end if;

	    end case;
	    
	end process;

end;
