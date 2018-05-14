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

            X_N, X_E, X_W, X_S, X_L: out std_logic; -- Grants given to LBDR requests (encoded as one-hot)

            -- Checker outputs
			err_arbiter_in_Requests_state_in_state_not_equal, 

			err_IDLE_Req_N, 
			err_IDLE_grant_N,
			err_North_Req_N, 
			err_North_grant_N, 
			err_East_Req_E, 
			err_East_grant_E, 
			err_West_Req_W, 
			err_West_grant_W, 
			err_South_Req_S,
			err_South_grant_S,
			err_Local_Req_L, 
			err_Local_grant_L,

			err_IDLE_Req_E,
			err_IDLE_grant_E,
			err_North_Req_E,
			err_North_grant_E,
			err_East_Req_W,
			err_East_grant_W,
			err_West_Req_S,
			err_West_grant_S,
			err_South_Req_L,
			err_South_grant_L,
			err_Local_Req_N,
			err_Local_grant_N,

			err_IDLE_Req_W,
			err_IDLE_grant_W,
			err_North_Req_W,
			err_North_grant_W,
			err_East_Req_S,
			err_East_grant_S,
			err_West_Req_L,
			err_West_grant_L,
			err_South_Req_N, 
			err_South_grant_N,
			err_Local_Req_E,
			err_Local_grant_E, 

			err_IDLE_Req_S, 
			err_IDLE_grant_S, 
			err_North_Req_S, 
			err_North_grant_S, 
			err_East_Req_L, 
			err_East_grant_L, 
			err_West_Req_N, 
			err_West_grant_N, 
			err_South_Req_E, 
			err_South_grant_E, 
			err_Local_Req_W, 
			err_Local_grant_W, 

			err_IDLE_Req_L, 
			err_IDLE_grant_L, 
			err_North_Req_L, 
			err_North_grant_L, 
			err_East_Req_N, 
			err_East_grant_N, 
			err_West_Req_E, 
			err_West_grant_E, 
			err_South_Req_W, 
			err_South_grant_W, 
			err_Local_Req_S, 
			err_Local_grant_S, 

			err_arbiter_in_state_in_onehot, 
			err_arbiter_in_no_request_grants, 
			err_arbiter_in_request_no_grants, 

			err_no_Req_N_grant_N,
			err_no_Req_E_grant_E, 
			err_no_Req_W_grant_W, 
			err_no_Req_S_grant_S, 
			err_no_Req_L_grant_L : out std_logic
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

SIGNAL state, state_in   : STATE_TYPE := IDLE;

SIGNAL X_N_sig, X_E_sig, X_W_sig, X_S_sig, X_L_sig: std_logic; -- needed for connecting output ports 
															   -- of Arbiter_in to checker inputs
SIGNAL X_N_sig_prev ,X_E_sig_prev ,X_W_sig_prev ,X_S_sig_prev ,X_L_sig_prev: std_logic;

component arbiter_in_one_hot_checkers is
    port (  
            req_X_N :in std_logic; 
            req_X_E :in std_logic; 
            req_X_W :in std_logic; 
            req_X_S :in std_logic;
            req_X_L :in std_logic;
            state: in std_logic_vector (5 downto 0);
            state_in: in std_logic_vector (5 downto 0);
			X_N :in std_logic;
			X_E :in std_logic;
			X_W :in std_logic;
			X_S :in std_logic;
			X_L :in std_logic;

            -- Checker outputs
			err_arbiter_in_Requests_state_in_state_not_equal, 

			err_IDLE_Req_N, 
			err_IDLE_grant_N,
			err_North_Req_N, 
			err_North_grant_N, 
			err_East_Req_E, 
			err_East_grant_E, 
			err_West_Req_W, 
			err_West_grant_W, 
			err_South_Req_S,
			err_South_grant_S,
			err_Local_Req_L, 
			err_Local_grant_L,

			err_IDLE_Req_E,
			err_IDLE_grant_E,
			err_North_Req_E,
			err_North_grant_E,
			err_East_Req_W,
			err_East_grant_W,
			err_West_Req_S,
			err_West_grant_S,
			err_South_Req_L,
			err_South_grant_L,
			err_Local_Req_N,
			err_Local_grant_N,

			err_IDLE_Req_W,
			err_IDLE_grant_W,
			err_North_Req_W,
			err_North_grant_W,
			err_East_Req_S,
			err_East_grant_S,
			err_West_Req_L,
			err_West_grant_L,
			err_South_Req_N, 
			err_South_grant_N,
			err_Local_Req_E,
			err_Local_grant_E, 

			err_IDLE_Req_S, 
			err_IDLE_grant_S, 
			err_North_Req_S, 
			err_North_grant_S, 
			err_East_Req_L, 
			err_East_grant_L, 
			err_West_Req_N, 
			err_West_grant_N, 
			err_South_Req_E, 
			err_South_grant_E, 
			err_Local_Req_W, 
			err_Local_grant_W, 

			err_IDLE_Req_L, 
			err_IDLE_grant_L, 
			err_North_Req_L, 
			err_North_grant_L, 
			err_East_Req_N, 
			err_East_grant_N, 
			err_West_Req_E, 
			err_West_grant_E, 
			err_South_Req_W, 
			err_South_grant_W, 
			err_Local_Req_S, 
			err_Local_grant_S, 

			err_arbiter_in_state_in_onehot, 
			err_arbiter_in_no_request_grants, 
			err_arbiter_in_request_no_grants, 

			err_no_Req_N_grant_N,
			err_no_Req_E_grant_E, 
			err_no_Req_W_grant_W, 
			err_no_Req_S_grant_S, 
			err_no_Req_L_grant_L : out std_logic
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

process (clk, reset)begin
  if reset = '0' then
      state <= IDLE;
      	X_N_sig_prev<= '0';
		X_E_sig_prev<= '0';
		X_W_sig_prev<= '0';
		X_S_sig_prev<= '0';
		X_L_sig_prev<= '0';
  elsif clk'event and clk ='1'then
      state <= state_in;
      X_N_sig_prev <= X_N_sig;
      X_E_sig_prev <= X_E_sig;
      X_W_sig_prev <= X_W_sig;
      X_S_sig_prev <= X_S_sig;
      X_L_sig_prev <= X_L_sig;
  end if;
end process;

-- anything below here is pure combinational

-- Arbiter_in Checkers module instantiation 
ARBITER_IN_CHECKERS: Arbiter_in_one_hot_checkers port map (
                                      req_X_N => req_X_N, -- _sig not needed, because it is an input port
                                      req_X_E => req_X_E, -- _sig not needed, because it is an input port
                                      req_X_W => req_X_W, -- _sig not needed, because it is an input port
                                      req_X_S => req_X_S, -- _sig not needed, because it is an input port
                                      req_X_L => req_X_L, -- _sig not needed, because it is an input port
                                      state => state,     -- _sig not needed, because it is an input port

                                      state_in => state_in, -- _sig not needed, because it is an internal signal
                                      X_N => X_N_sig, 
                                      X_E => X_E_sig, 
                                      X_W => X_W_sig, 
                                      X_S => X_S_sig, 
                                      X_L => X_L_sig, 

                                      -- Checker outputs
									  err_arbiter_in_Requests_state_in_state_not_equal => err_arbiter_in_Requests_state_in_state_not_equal,
  
									  err_IDLE_Req_N => err_IDLE_Req_N,
									  err_IDLE_grant_N => err_IDLE_grant_N,
									  err_North_Req_N => err_North_Req_N,
									  err_North_grant_N => err_North_grant_N,
									  err_East_Req_E => err_East_Req_E,
									  err_East_grant_E => err_East_grant_E,
									  err_West_Req_W => err_West_Req_W,
									  err_West_grant_W => err_West_grant_W,
									  err_South_Req_S => err_South_Req_S,
									  err_South_grant_S => err_South_grant_S,
									  err_Local_Req_L => err_Local_Req_L,
									  err_Local_grant_L => err_Local_grant_L,
  
									  err_IDLE_Req_E => err_IDLE_Req_E,
									  err_IDLE_grant_E => err_IDLE_grant_E,
									  err_North_Req_E => err_North_Req_E,
									  err_North_grant_E => err_North_grant_E,
									  err_East_Req_W => err_East_Req_W,
									  err_East_grant_W => err_East_grant_W,
									  err_West_Req_S => err_West_Req_S,
									  err_West_grant_S => err_West_grant_S,
									  err_South_Req_L => err_South_Req_L,
									  err_South_grant_L => err_South_grant_L,
									  err_Local_Req_N => err_Local_Req_N,
									  err_Local_grant_N => err_Local_grant_N,
  
									  err_IDLE_Req_W => err_IDLE_Req_W,
									  err_IDLE_grant_W => err_IDLE_grant_W,
									  err_North_Req_W => err_North_Req_W,
									  err_North_grant_W => err_North_grant_W,
									  err_East_Req_S => err_East_Req_S,
									  err_East_grant_S => err_East_grant_S,
									  err_West_Req_L => err_West_Req_L,
									  err_West_grant_L => err_West_grant_L,
									  err_South_Req_N => err_South_Req_N,
									  err_South_grant_N => err_South_grant_N,
									  err_Local_Req_E => err_Local_Req_E,
									  err_Local_grant_E => err_Local_grant_E,
  
									  err_IDLE_Req_S => err_IDLE_Req_S,
									  err_IDLE_grant_S => err_IDLE_grant_S,
									  err_North_Req_S => err_North_Req_S,
									  err_North_grant_S => err_North_grant_S,
									  err_East_Req_L => err_East_Req_L,
									  err_East_grant_L => err_East_grant_L,
									  err_West_Req_N => err_West_Req_N,
									  err_West_grant_N => err_West_grant_N,
									  err_South_Req_E => err_South_Req_E,
									  err_South_grant_E => err_South_grant_E,
									  err_Local_Req_W => err_Local_Req_W,
									  err_Local_grant_W => err_Local_grant_W,
  
									  err_IDLE_Req_L => err_IDLE_Req_L,
									  err_IDLE_grant_L => err_IDLE_grant_L,
									  err_North_Req_L => err_North_Req_L,
									  err_North_grant_L => err_North_grant_L,
									  err_East_Req_N => err_East_Req_N,
									  err_East_grant_N => err_East_grant_N,
									  err_West_Req_E => err_West_Req_E,
									  err_West_grant_E => err_West_grant_E,
									  err_South_Req_W => err_South_Req_W,
									  err_South_grant_W => err_South_grant_W,
									  err_Local_Req_S => err_Local_Req_S,
									  err_Local_grant_S => err_Local_grant_S,
  
									  err_arbiter_in_state_in_onehot => err_arbiter_in_state_in_onehot, 
									  err_arbiter_in_no_request_grants => err_arbiter_in_no_request_grants,
									  err_arbiter_in_request_no_grants => err_arbiter_in_request_no_grants, 

									  err_no_Req_N_grant_N => err_no_Req_N_grant_N,
									  err_no_Req_E_grant_E => err_no_Req_E_grant_E,
									  err_no_Req_W_grant_W => err_no_Req_W_grant_W,
									  err_no_Req_S_grant_S => err_no_Req_S_grant_S,
									  err_no_Req_L_grant_L => err_no_Req_L_grant_L								  
                                     );

-- Main Logic of Arbiter_in
process(state, req_X_N, req_X_E, req_X_W, req_X_S, req_X_L, Req_X_N_valid, Req_X_E_valid, Req_X_W_valid, Req_X_S_valid, Req_X_L_valid,
		X_N_sig_prev ,X_E_sig_prev ,X_W_sig_prev ,X_S_sig_prev ,X_L_sig_prev)
begin

    X_N_sig <= X_N_sig_prev;
    X_E_sig <= X_E_sig_prev;
    X_W_sig <= X_W_sig_prev;
    X_S_sig <= X_S_sig_prev;
    X_L_sig <= X_L_sig_prev;

    case state is 

      when IDLE => -- In the arbiter for hand-shaking FC router, L had the  highest priority (L, N, E, W, S)
      			   -- Here it seems N has the higest priority, is it fine ? 
      	
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
