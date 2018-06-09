--Copyright (C) 2016 Siavoosh Payandeh Azad

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arbiter_out_one_hot_with_checkers is
    generic(credit_width: integer := 2 );
    port (  
            reset: in  std_logic;
            clk: in  std_logic;
            X_N_Y, X_E_Y, X_W_Y, X_S_Y, X_L_Y :in std_logic; -- From LBDR modules
            credit: in std_logic_vector(credit_width-1 downto 0);
            valid_in: in std_logic;

            grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_S, grant_Y_L: out std_logic -- Grants given to LBDR requests (encoded as one-hot)
            );
end arbiter_out_one_hot_with_checkers;

architecture behavior of arbiter_out_one_hot_with_checkers is

component Arbiter_out_one_hot_checkers is
    port (  credit: in std_logic_vector(1 downto 0);
            req_X_E, req_X_N, req_X_W, req_X_S, req_X_L :in std_logic; -- From LBDR modules
            state: in std_logic_vector (5 downto 0); -- 6 states for Arbiter_out's FSM

            grant_Y_N, grant_Y_E, grant_Y_W, grant_Y_S, grant_Y_L : in std_logic; -- Grants given to LBDR requests (encoded as one-hot)
            state_in: in std_logic_vector (5 downto 0); -- 6 states for Arbiter's FSM

            -- Checker outputs
            arbiter_out_checkers_output: out std_logic 
         );
end component;

    --TYPE STATE_TYPE IS (IDLE, North, East, West, South, Local);
  
    CONSTANT IDLE:  std_logic_vector (5 downto 0) := "000001";
    CONSTANT Local: std_logic_vector (5 downto 0) := "000010";
    CONSTANT North: std_logic_vector (5 downto 0) := "000100";
    CONSTANT East:  std_logic_vector (5 downto 0) := "001000";
    CONSTANT West:  std_logic_vector (5 downto 0) := "010000";
    CONSTANT South: std_logic_vector (5 downto 0) := "100000";

    SIGNAL state, state_in : std_logic_vector (5 downto 0) := IDLE; -- : STATE_TYPE := IDLE;
    SIGNAL grant_Y_N_sig, grant_Y_E_sig, grant_Y_W_sig, grant_Y_S_sig, grant_Y_L_sig : std_logic;

    -- Checkers output related signals used for AWAT!
    SIGNAL  arbiter_out_checkers_output: std_logic;      
    SIGNAL  arbiter_out_checkers_output_sync: std_logic;      

begin

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Arbiter_out checkers module instantiation 
    CHECKERS: Arbiter_out_one_hot_checkers 
                                        port map (
                                                    credit => credit, 
                                                    req_X_N  => X_N_Y, 
                                                    req_X_E  => X_E_Y, 
                                                    req_X_W  => X_W_Y, 
                                                    req_X_S  => X_S_Y, 
                                                    req_X_L  => X_L_Y,
                                                    state    => state,
                                                                
                                                    grant_Y_N => grant_Y_N_sig, 
                                                    grant_Y_E => grant_Y_E_sig, 
                                                    grant_Y_W => grant_Y_W_sig, 
                                                    grant_Y_S => grant_Y_S_sig, 
                                                    grant_Y_L => grant_Y_L_sig, 
                                                    state_in  => state_in, 

                                                    -- Checkers output
                                                    arbiter_out_checkers_output => arbiter_out_checkers_output
                                                );

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- Sequential part 

    process (clk, reset)begin
      if reset = '0' then
          state <= IDLE;
      elsif clk'event and clk ='1' then
        if (valid_in = '1' and Arbiter_out_checkers_output_sync = '0') then
          state <= state_in;
        end if;
      end if;
    end process;

    -- AWAIT-related logic (Sequential)
    process(Arbiter_out_checkers_output, clk)
    begin
      if Arbiter_out_checkers_output = '1' then -- If there is a transient fault detected in Arbiter_out
            Arbiter_out_checkers_output_sync <= '1';
      else -- Hopefully the transient fault would disappear 
            if clk'event and clk = '0' then 
                  Arbiter_out_checkers_output_sync <= '0';
            end if;
      end if; 
    end process;

-----------------------------------------------------------------------
-----------------------------------------------------------------------

    -- AWAIT-related logic

    -- To be completed!


    -- Arbiter_out-related logic

    grant_Y_N <= grant_Y_N_sig; 
    grant_Y_E <= grant_Y_E_sig; 
    grant_Y_W <= grant_Y_W_sig; 
    grant_Y_S <= grant_Y_S_sig; 
    grant_Y_L <= grant_Y_L_sig; 

    -- Arbiter_out main FSM

    process(state, X_N_Y, X_E_Y, X_W_Y, X_S_Y, X_L_Y, credit) 
    begin

        grant_Y_N_sig <= '0';
        grant_Y_E_sig <= '0';
        grant_Y_W_sig <= '0';
        grant_Y_S_sig <= '0';
        grant_Y_L_sig <= '0';

        case state is 

          when IDLE =>
              if X_N_Y ='1'  then
                  state_in <= North;
              elsif X_E_Y = '1' then
                  state_in <= East;
              elsif X_W_Y = '1' then
                  state_in <= West;
              elsif X_S_Y = '1' then
                  state_in <= South;
              elsif X_L_Y = '1' then
                  state_in <= Local;
              else
                  state_in <= IDLE;
              end if; 

          when North =>
              if credit /= std_logic_vector(to_unsigned(0, credit'length)) and X_N_Y = '1' then
                grant_Y_N_sig <= '1';
              end if;
              if X_N_Y ='1'  then
                  state_in <= North;
              elsif X_E_Y = '1' then
                  state_in <= East;
              elsif X_W_Y = '1' then
                  state_in <= West;
              elsif X_S_Y = '1' then
                  state_in <= South;
              elsif X_L_Y = '1' then
                  state_in <= Local;
              else
                  state_in <= IDLE;
              end if;

          when East =>
              if credit /= std_logic_vector(to_unsigned(0, credit'length)) and X_E_Y = '1' then
                grant_Y_E_sig <= '1';
              end if;
              if X_E_Y = '1' then
                  state_in <= East;
              elsif X_W_Y = '1' then
                  state_in <= West;
              elsif X_S_Y = '1' then
                  state_in <= South;
              elsif X_L_Y = '1' then
                  state_in <= Local;
              elsif X_N_Y ='1'  then
                  state_in <= North;
              else
                  state_in <= IDLE;
              end if;

          when West =>
              if credit /= std_logic_vector(to_unsigned(0, credit'length)) and X_W_Y = '1' then
                grant_Y_W_sig <= '1';
              end if;
              if X_W_Y = '1' then
                  state_in <= West;
              elsif X_S_Y = '1' then
                  state_in <= South;
              elsif X_L_Y = '1' then
                  state_in <= Local;
              elsif X_N_Y ='1'  then
                  state_in <= North;
              elsif X_E_Y = '1' then
                  state_in <= East;
              else
                  state_in <= IDLE;
              end if;

          when South =>
              if credit /= std_logic_vector(to_unsigned(0, credit'length)) and X_S_Y = '1' then
                grant_Y_S_sig <= '1';
              end if;
              if X_S_Y = '1' then
                  state_in <= South;
              elsif X_L_Y = '1' then
                  state_in <= Local;
              elsif X_N_Y ='1'  then
                  state_in <= North;
              elsif X_E_Y = '1' then
                  state_in <= East;
              elsif X_W_Y = '1' then
                  state_in <= West;
              else
                  state_in <= IDLE;
              end if;

          when others =>
              if credit /= std_logic_vector(to_unsigned(0, credit'length)) and X_L_Y = '1' then
                grant_Y_L_sig <= '1';
              end if;
              if X_L_Y = '1' then
                  state_in <= Local;
              elsif X_N_Y ='1'  then
                  state_in <= North;
              elsif X_E_Y = '1' then
                  state_in <= East;
              elsif X_W_Y = '1' then
                  state_in <= West;
              elsif X_S_Y = '1' then
                  state_in <= South;
              else
                  state_in <= IDLE;
              end if; 

        end case;

    end process;

end;
