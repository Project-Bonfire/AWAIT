library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;

entity arbiter_in_one_hot_checkers is
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

			-- Round 5
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
end arbiter_in_one_hot_checkers;

architecture behavior of arbiter_in_one_hot_checkers is

	-- Arbiter_in one-hot encoded states
	CONSTANT IDLE: std_logic_vector (5 downto 0) := "000001";
	CONSTANT Local: std_logic_vector (5 downto 0) := "000010";
	CONSTANT North: std_logic_vector (5 downto 0) := "000100";
	CONSTANT East: std_logic_vector (5 downto 0) := "001000";
	CONSTANT West: std_logic_vector (5 downto 0) := "010000";
	CONSTANT South: std_logic_vector (5 downto 0) := "100000";

	-- Signals
	SIGNAL   Requests: std_logic_vector (4 downto 0);
	SIGNAL   Requests_valid: std_logic_vector (4 downto 0);
	SIGNAL   Grants: std_logic_vector (4 downto 0);
	SIGNAL   Grants_prev: std_logic_vector (4 downto 0);

begin 

	Requests 	   <= req_X_N & req_X_E & req_X_W & req_X_S & req_X_L;
	Requests_valid <= Req_X_N_valid & Req_X_E_valid & Req_X_W_valid & Req_X_S_valid & Req_X_L_valid;
	Grants   	   <= X_N & X_E & X_W & X_S & X_L;
	Grants_prev    <= X_N_prev & X_E_prev & X_W_prev & X_S_prev & X_L_prev;

	-- Functional Checkers

	process (state_in)
	begin
		if (state_in /= IDLE and state_in /= North and state_in /= East and state_in /= West and state_in /= South and state_in /= Local) then
			err_arbiter_in_state_in_onehot <= '1';
		else 
			err_arbiter_in_state_in_onehot <= '0';
		end if;
	end process;
	-- Checked!!

	process (Requests_valid, Grants, Grants_prev)
	begin
		if (Requests_valid = "00000" and Grants /= Grants_prev) then
			err_arbiter_in_all_Requests_invalid_Grants_previous_equal <= '1';
		else 
			err_arbiter_in_all_Requests_invalid_Grants_previous_equal <= '0';
		end if;
	end process;
	-- Checked!!

	process (Requests, state_in, state)
	begin
		if (Requests = "00000" and state_in /= state) then
			err_arbiter_in_all_Requests_zero_state_in_state_equal <= '1';
		else 
			err_arbiter_in_all_Requests_zero_state_in_state_equal <= '0';
		end if;
	end process;
	-- Checked!!


	-- Structural Checkers

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 1
-- checked
-- N has highest priority, then E, W, S and L (and then again N). 

-- state: IDLE
process (state, req_X_N, Req_X_N_valid, state_in)
begin 
	if (state = IDLE and req_X_N ='1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_IDLE_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_IDLE_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = IDLE and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_IDLE_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_IDLE_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = IDLE and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if (state = IDLE and req_X_N ='0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if (state = IDLE and req_X_N ='1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!


-- State: North
process (state, req_X_N, Req_X_N_valid, state_in)
begin 
	if (state = North and req_X_N ='1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_North_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_North_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = North and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_North_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_North_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = North and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_North_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_North_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if (state = North and req_X_N ='0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if (state = North and req_X_N ='1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_North_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!



-- State: East
process (state, req_X_E, Req_X_E_valid, state_in)
begin 
	if (state = East and req_X_E ='1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_East_Req_E_valid_state_in_East <= '1';
	else 
		err_arbiter_in_East_Req_E_valid_state_in_East <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if (state = East and req_X_E = '1' and Req_X_E_valid = '1' and X_E /= '1') then
		err_arbiter_in_East_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_East_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = East and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_East_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_East_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if (state = East and req_X_E ='0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if (state = East and req_X_E ='1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_East_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!



-- state: West
process (state, req_X_W, Req_X_W_valid, state_in)
begin 
	if (state = West and req_X_W ='1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_West_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_West_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if (state = West and req_X_W = '1' and Req_X_W_valid = '1' and X_W /= '1') then
		err_arbiter_in_West_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_West_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = West and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_West_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_West_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if (state = West and req_X_W ='0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if (state = West and req_X_W ='1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_West_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!



-- state: South
process (state, req_X_S, Req_X_S_valid, state_in)
begin 
	if (state = South and req_X_S ='1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_South_Req_S_valid_state_in_South <= '1';
	else 
		err_arbiter_in_South_Req_S_valid_state_in_South <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if (state = South and req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_South_Req_S_valid_grant_S <= '1';
	else 
		err_arbiter_in_South_Req_S_valid_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state = South and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_South_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_South_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if (state = South and req_X_S ='0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if (state = South and req_X_S ='1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_South_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!



-- state: Local or invalid
process (state, req_X_L, Req_X_L_valid, state_in)
begin 
	if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and req_X_L ='1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_Local_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_Local_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_Local_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_Local_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, X_N)
begin 
	if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and req_X_N ='0' and Req_X_N_valid = '1' and X_N /= '0') then
		err_arbiter_in_Local_not_Req_N_valid_not_grant_N <= '1';
	else 
		err_arbiter_in_Local_not_Req_N_valid_not_grant_N <= '0';	
	end if;
end process;
-- Checked!

process (state, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and req_X_L ='0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if (state /= IDLE and state /= North and state /= East and state /= West and state /= South and req_X_L ='1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_Local_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 2


-- State: IDLE
process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_state_in_East <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and X_E /= '1') then
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = IDLE and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: North
process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_state_in_East <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and X_E /= '1') then
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = North and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_North_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_North_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: East
process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and X_W /= '1') then
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = East and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_East_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_East_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_W, X_W_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: West
process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_state_in_South <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_valid_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = West and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_West_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_West_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: South
process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = South and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_South_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_South_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: Local or Invalid
process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, state_in)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and req_X_E = '0' and Req_X_E_valid = '1' and X_E /= '0') then
		err_arbiter_in_Local_not_Req_E_valid_not_grant_E <= '1';
	else 
		err_arbiter_in_Local_not_Req_E_valid_not_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 3


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: IDLE

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in)
begin 
	if (state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and X_W /= '1') then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = IDLE and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: North

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in)
begin 
	if (state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and X_W /= '1') then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = North and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_North_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_North_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: East

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in)
begin 
	if (state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if (state = East and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_East_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_East_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_S, X_S_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_S, X_S_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: West
process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in)
begin 
	if (state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if (state = West and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_West_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_West_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: South
process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, state_in)
begin 
	if (state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if (state = South and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_South_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_South_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: Local or Invalid
process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in)
begin 
	if (state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and X_E /= '1') then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, X_W)
begin 
	if (state /= North and state /= East and state /= West and state /= South and req_X_W = '0' and Req_X_W_valid = '1' and X_W /= '0') then
		err_arbiter_in_Local_not_Req_W_valid_not_grant_W <= '1';
	else 
		err_arbiter_in_Local_not_Req_W_valid_not_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 4


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: IDLE

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in)
begin 
	if (state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and  req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = IDLE and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: North

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in)
begin 
	if (state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_South <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and  req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state = North and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_North_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_North_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------


-- State: East

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in)
begin 
	if (state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if (state = East and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_East_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_East_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: West

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, state_in)
begin 
	if (state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if (state = West and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_West_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_West_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: South
process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in)
begin 
	if (state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_East <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1'and X_E /= '1') then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if (state = South and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_South_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_South_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: Local or Invalid

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in)
begin 
	if (state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and X_W /= '1') then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, X_S)
begin 
	if (state /= North and state /= East and state /= West and state /= South and req_X_S = '0' and Req_X_S_valid = '1' and X_S /= '0') then
		err_arbiter_in_Local_not_Req_S_valid_not_grant_S <= '1';
	else 
		err_arbiter_in_Local_not_Req_S_valid_not_grant_S <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 5


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: IDLE

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in)
begin 
	if (state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = IDLE and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_L_valid_not_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: North

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in)
begin 
	if (state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and state_in /= Local) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_state_in_Local <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '1' and X_L /= '1') then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if ( state = North and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_North_not_Req_L_valid_not_grant_L <= '1';
	else 
		err_arbiter_in_North_not_Req_L_valid_not_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '0' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, X_L, X_L_prev)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and req_X_L = '1' and Req_X_L_valid = '0' and X_L /= X_L_prev) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_Req_L_not_valid_grant_L_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------


-- State: East

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, state_in)
begin 
	if (state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and state_in /= North) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '1' and X_N /= '1') then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_valid_grant_N <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if (state = East and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_East_not_Req_L_valid_not_grant_L <= '1';
	else 
		err_arbiter_in_East_not_Req_L_valid_not_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '0' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, X_N, X_N_prev)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and req_X_N = '1' and Req_X_N_valid = '0' and X_N /= X_N_prev) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_Req_N_not_valid_grant_N_previous_value <= '0';	
	end if;
end process;
-- Checked!!



-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: West

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in)
begin 
	if (state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and state_in /= East) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_state_in_North <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '1' and X_E /= '1') then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_valid_grant_E <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if (state = West and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_West_not_Req_L_valid_not_grant_L <= '1';
	else 
		err_arbiter_in_West_not_Req_L_valid_not_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '0' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, X_E, X_E_prev)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and req_X_E = '1' and Req_X_E_valid = '0' and X_E /= X_E_prev) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_Req_E_not_valid_grant_E_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: South
process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in)
begin 
	if (state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1' and state_in /= West) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '1'and X_W /= '1') then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if (state = South and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_South_not_Req_L_valid_not_grant_L <= '1';
	else 
		err_arbiter_in_South_not_Req_L_valid_not_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '0' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, X_W, X_W_prev)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and req_X_W = '1' and Req_X_W_valid = '0' and X_W /= X_W_prev) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_Req_W_not_valid_grant_W_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: Local or Invalid

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in)
begin 
	if (state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and state_in /= South) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_state_in_West <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '1' and X_S /= '1') then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_valid_grant_W <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, X_L)
begin 
	if (state /= North and state /= East and state /= West and state /= South and req_X_L = '0' and Req_X_L_valid = '1' and X_L /= '0') then
		err_arbiter_in_Local_not_Req_L_valid_grant_L <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_valid_grant_L <= '0';	
	end if;
end process;
-- Checked!!

process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '0' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, X_S, X_S_prev)
begin 
	if ( state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and req_X_S = '1' and Req_X_S_valid = '0' and X_S /= X_S_prev) then
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '1';
	else 
		err_arbiter_in_Local_not_Req_L_not_valid_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_Req_S_not_valid_grant_S_previous_value <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-- Round 6


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: IDLE


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in, state)
begin 
	if ( state = IDLE and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and state_in /= state) then
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal <= '1';
	else 
		err_arbiter_in_IDLE_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: North


process (state, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, state_in, state)
begin 
	if ( state = North and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and state_in /= state) then
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal <= '1';
	else 
		err_arbiter_in_North_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: East


process (state, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, state_in, state)
begin 
	if ( state = East and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and state_in /= state) then
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal <= '1';
	else 
		err_arbiter_in_East_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_not_Req_N_not_valid_state_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: West


process (state, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, state_in, state)
begin 
	if ( state = West and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and state_in /= state) then
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal <= '1';
	else 
		err_arbiter_in_West_not_Req_W_not_valid_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: South


process (state, req_X_S, Req_X_S_valid, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, state_in, state)
begin 
	if ( state = South and (req_X_S = '0' or Req_X_S_valid = '0') and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and state_in /= state) then
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal <= '1';
	else 
		err_arbiter_in_South_not_Req_S_not_valid_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- State: Local or Invalid


process (state, req_X_L, Req_X_L_valid, req_X_N, Req_X_N_valid, req_X_E, Req_X_E_valid, req_X_W, Req_X_W_valid, req_X_S, Req_X_S_valid, state_in, state)
begin 
	if ( state /= IDLE and state /= North and state /= East and state /= West and state /= South and (req_X_L = '0' or Req_X_L_valid = '0') and (req_X_N = '0' or Req_X_N_valid = '0') and (req_X_E = '0' or Req_X_E_valid = '0') and (req_X_W = '0' or Req_X_W_valid = '0') and (req_X_S = '0' or Req_X_S_valid = '0') and state_in /= state) then
		err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal <= '1';
	else 
		err_arbiter_in_South_not_Req_L_not_valid_state_not_Req_N_not_valid_not_Req_E_not_valid_not_Req_W_not_valid_not_Req_S_not_valid_in_state_equal <= '0';	
	end if;
end process;
-- Checked!!


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------



end behavior;