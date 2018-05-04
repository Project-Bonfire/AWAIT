library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;

entity LBDR_with_checkers is
    generic (
            cur_addr_rst: integer := 5;
            Rxy_rst     : integer := 60;
            Cx_rst      : integer := 15
            );
    port (  reset: in  std_logic;
            clk  : in  std_logic;
            empty: in  std_logic;
            flit_type: in std_logic_vector(2 downto 0);
            cur_addr_y, cur_addr_x: in std_logic_vector(6 downto 0);
            dst_addr_y, dst_addr_x: in std_logic_vector(6 downto 0);
            grant_N, grant_E, grant_W, grant_S, grant_L: in std_logic;

            Req_N_valid, Req_E_valid, Req_W_valid, Req_S_valid, Req_L_valid: out std_logic; 
            Req_N, Req_E, Req_W, Req_S, Req_L: out std_logic 
            );
end LBDR_with_checkers;

architecture behavior of LBDR_with_checkers is

      component LBDR_checkers is
            generic (
                  cur_addr_rst: integer := 5;
                  Rxy_rst     : integer := 60;
                  Cx_rst      : integer := 15
                  );
          port (  
                  empty: in  std_logic;
                  flit_type: in std_logic_vector(2 downto 0);
                  Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF: in std_logic;
                  grant_N, grant_E, grant_W, grant_S, grant_L: in std_logic;            
                  Req_N_in, Req_E_in, Req_W_in, Req_S_in, Req_L_in: in std_logic;
                  N1_out, E1_out, W1_out, S1_out: in std_logic;
                  cur_addr_y, cur_addr_x: in std_logic_vector(6 downto 0);
                  dst_addr_y, dst_addr_x: in std_logic_vector(6 downto 0);
                  grants_out: in std_logic;

                  -- Functional Checker outputs
                  err_header_not_empty_Requests_in_onehot, 
                  err_header_empty_Requests_FF_Requests_in_equal, 
                  err_tail_not_empty_grants_Requests_in_all_zero, 
                  err_body_or_invalid_Requests_FF_Requests_in_equal: out std_logic;

                  -- Structural checker outputs
                  err_grants, 
                  err_not_grants, 
                  err_dst_addr_cur_addr_N1, 
                  err_dst_addr_cur_addr_not_N1, 
                  err_dst_addr_cur_addr_E1, 
                  err_dst_addr_cur_addr_not_E1, 
                  err_dst_addr_cur_addr_W1, 
                  err_dst_addr_cur_addr_not_W1, 
                  err_dst_addr_cur_addr_S1, 
                  err_dst_addr_cur_addr_not_S1, 
                  err_header_not_empty_Req_N_in, 
                  err_header_not_empty_Req_E_in, 
                  err_header_not_empty_Req_W_in, 
                  err_header_not_empty_Req_S_in, 
                  err_header_not_empty_Req_L_in, 
                  err_header_empty_Req_N_in_Req_N_FF, 
                  err_header_empty_Req_E_in_Req_E_FF, 
                  err_header_empty_Req_W_in_Req_W_FF, 
                  err_header_empty_Req_S_in_Req_S_FF, 
                  err_header_empty_Req_L_in_Req_L_FF, 
                  err_tail_not_empty_grants_not_Req_N_in, 
                  err_tail_not_empty_grants_not_Req_E_in, 
                  err_tail_not_empty_grants_not_Req_W_in, 
                  err_tail_not_empty_grants_not_Req_S_in, 
                  err_tail_not_empty_grants_not_Req_L_in, 
                  err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
                  err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
                  err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
                  err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
                  err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
                  err_tail_empty_Req_N_in_Req_N_FF_equal, 
                  err_tail_empty_Req_E_in_Req_E_FF_equal, 
                  err_tail_empty_Req_W_in_Req_W_FF_equal, 
                  err_tail_empty_Req_S_in_Req_S_FF_equal, 
                  err_tail_empty_Req_L_in_Req_L_FF_equal, 
                  err_body_or_invalid_Req_N_in_Req_N_FF, 
                  err_body_or_invalid_Req_E_in_Req_E_FF, 
                  err_body_or_invalid_Req_W_in_Req_W_FF, 
                  err_body_or_invalid_Req_S_in_Req_S_FF, 
                  err_body_or_invalid_Req_L_in_Req_L_FF: out std_logic
                  );
      end component;

      signal Cx :  std_logic_vector(3 downto 0);
      signal Rxy:  std_logic_vector(7 downto 0);
      signal N1, E1, W1, S1: std_logic :='0';  
      signal Req_N_in, Req_E_in, Req_W_in, Req_S_in, Req_L_in: std_logic;
      signal Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF: std_logic;
      signal grants: std_logic;

            -- Checker outputs
            -- Functional Checker outputs
      signal      err_header_not_empty_Requests_in_onehot, 
                  err_header_empty_Requests_FF_Requests_in_equal, 
                  err_tail_not_empty_grants_Requests_in_all_zero, 
                  err_body_or_invalid_Requests_FF_Requests_in_equal,  

                  -- Structural checker outputs
                  err_grants, 
                  err_not_grants, 
                  err_dst_addr_cur_addr_N1, 
                  err_dst_addr_cur_addr_not_N1, 
                  err_dst_addr_cur_addr_E1, 
                  err_dst_addr_cur_addr_not_E1, 
                  err_dst_addr_cur_addr_W1, 
                  err_dst_addr_cur_addr_not_W1, 
                  err_dst_addr_cur_addr_S1, 
                  err_dst_addr_cur_addr_not_S1, 
                  err_header_not_empty_Req_N_in, 
                  err_header_not_empty_Req_E_in, 
                  err_header_not_empty_Req_W_in, 
                  err_header_not_empty_Req_S_in, 
                  err_header_not_empty_Req_L_in, 
                  err_header_empty_Req_N_in_Req_N_FF, 
                  err_header_empty_Req_E_in_Req_E_FF, 
                  err_header_empty_Req_W_in_Req_W_FF, 
                  err_header_empty_Req_S_in_Req_S_FF, 
                  err_header_empty_Req_L_in_Req_L_FF, 
                  err_tail_not_empty_grants_not_Req_N_in, 
                  err_tail_not_empty_grants_not_Req_E_in, 
                  err_tail_not_empty_grants_not_Req_W_in, 
                  err_tail_not_empty_grants_not_Req_S_in, 
                  err_tail_not_empty_grants_not_Req_L_in, 
                  err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
                  err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
                  err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
                  err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
                  err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
                  err_tail_empty_Req_N_in_Req_N_FF_equal, 
                  err_tail_empty_Req_E_in_Req_E_FF_equal, 
                  err_tail_empty_Req_W_in_Req_W_FF_equal, 
                  err_tail_empty_Req_S_in_Req_S_FF_equal, 
                  err_tail_empty_Req_L_in_Req_L_FF_equal, 
                  err_body_or_invalid_Req_N_in_Req_N_FF, 
                  err_body_or_invalid_Req_E_in_Req_E_FF, 
                  err_body_or_invalid_Req_W_in_Req_W_FF, 
                  err_body_or_invalid_Req_S_in_Req_S_FF, 
                  err_body_or_invalid_Req_L_in_Req_L_FF : std_logic;

      signal      N_Req_LBDR_checkers_ORed, E_Req_LBDR_checkers_ORed, W_Req_LBDR_checkers_ORed, S_Req_LBDR_checkers_ORed, L_Req_LBDR_checkers_ORed: std_logic;
      signal      N_Req_LBDR_checkers_ORed_sync, E_Req_LBDR_checkers_ORed_sync, W_Req_LBDR_checkers_ORed_sync, S_Req_LBDR_checkers_ORed_sync, L_Req_LBDR_checkers_ORed_sync: std_logic;

      signal      Req_N_valid_sig, Req_E_valid_sig, Req_W_valid_sig, Req_S_valid_sig, Req_L_valid_sig: std_logic;

begin 


      N_Req_LBDR_checkers_ORed <=       ( err_header_not_empty_Requests_in_onehot or
                                          err_header_empty_Requests_FF_Requests_in_equal or
                                          err_tail_not_empty_grants_Requests_in_all_zero or
                                          err_body_or_invalid_Requests_FF_Requests_in_equal or
                                          err_grants or 
                                          err_not_grants or
                                          err_dst_addr_cur_addr_N1 or
                                          err_dst_addr_cur_addr_not_N1 or
                                          err_header_not_empty_Req_N_in or
                                          err_header_empty_Req_N_in_Req_N_FF or 
                                          err_tail_not_empty_grants_not_Req_N_in or 
                                          err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                                          err_tail_empty_Req_N_in_Req_N_FF_equal or 
                                          err_body_or_invalid_Req_N_in_Req_N_FF);

     E_Req_LBDR_checkers_ORed <=         (err_header_not_empty_Requests_in_onehot or
                                          err_header_empty_Requests_FF_Requests_in_equal or
                                          err_tail_not_empty_grants_Requests_in_all_zero or
                                          err_body_or_invalid_Requests_FF_Requests_in_equal or

                                          err_grants or 
                                          err_not_grants or
                                          err_dst_addr_cur_addr_E1 or
                                          err_dst_addr_cur_addr_not_E1 or
                                          err_header_not_empty_Req_E_in or
                                          err_header_empty_Req_E_in_Req_E_FF or 
                                          err_tail_not_empty_grants_not_Req_E_in or 
                                          err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                                          err_tail_empty_Req_E_in_Req_E_FF_equal or 
                                          err_body_or_invalid_Req_E_in_Req_E_FF);

      W_Req_LBDR_checkers_ORed <=        (err_header_not_empty_Requests_in_onehot or
                                          err_header_empty_Requests_FF_Requests_in_equal or
                                          err_tail_not_empty_grants_Requests_in_all_zero or
                                          err_body_or_invalid_Requests_FF_Requests_in_equal or

                                          err_grants or 
                                          err_not_grants or
                                          err_dst_addr_cur_addr_W1 or
                                          err_dst_addr_cur_addr_not_W1 or
                                          err_header_not_empty_Req_N_in or
                                          err_header_empty_Req_W_in_Req_W_FF or 
                                          err_tail_not_empty_grants_not_Req_W_in or 
                                          err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                                          err_tail_empty_Req_W_in_Req_W_FF_equal or 
                                          err_body_or_invalid_Req_W_in_Req_W_FF);

      S_Req_LBDR_checkers_ORed <=        (err_header_not_empty_Requests_in_onehot or
                                          err_header_empty_Requests_FF_Requests_in_equal or
                                          err_tail_not_empty_grants_Requests_in_all_zero or
                                          err_body_or_invalid_Requests_FF_Requests_in_equal or

                                          err_grants or 
                                          err_not_grants or
                                          err_dst_addr_cur_addr_S1 or
                                          err_dst_addr_cur_addr_not_S1 or
                                          err_header_not_empty_Req_S_in or
                                          err_header_empty_Req_S_in_Req_S_FF or 
                                          err_tail_not_empty_grants_not_Req_S_in or 
                                          err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                                          err_tail_empty_Req_S_in_Req_S_FF_equal or 
                                          err_body_or_invalid_Req_S_in_Req_S_FF);

      L_Req_LBDR_checkers_ORed <=        (err_header_not_empty_Requests_in_onehot or
                                          err_header_empty_Requests_FF_Requests_in_equal or
                                          err_tail_not_empty_grants_Requests_in_all_zero or
                                          err_body_or_invalid_Requests_FF_Requests_in_equal or

                                          err_grants or 
                                          err_not_grants or
                                          err_header_not_empty_Req_L_in or
                                          err_header_empty_Req_L_in_Req_L_FF or 
                                          err_tail_not_empty_grants_not_Req_L_in or 
                                          err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                                          err_tail_empty_Req_L_in_Req_L_FF_equal or 
                                          err_body_or_invalid_Req_L_in_Req_L_FF);

      -- Bubble-related logic
      process(N_Req_LBDR_checkers_ORed, E_Req_LBDR_checkers_ORed, W_Req_LBDR_checkers_ORed, S_Req_LBDR_checkers_ORed, L_Req_LBDR_checkers_ORed, clk)
      begin
            if N_Req_LBDR_checkers_ORed = '1' then -- If there is a transient fault detected in LBDR
                  N_Req_LBDR_checkers_ORed_sync <= '1';
            else -- Hopefully the transient fault would disappear 
                  if clk'event and clk = '0' then 
                        N_Req_LBDR_checkers_ORed_sync <= '0';
                  end if;
            end if; 

            if E_Req_LBDR_checkers_ORed = '1' then -- If there is a transient fault detected in LBDR
                  E_Req_LBDR_checkers_ORed_sync <= '1';
            else -- Hopefully the transient fault would disappear 
                  if clk'event and clk = '0' then 
                        E_Req_LBDR_checkers_ORed_sync <= '0';
                  end if;
            end if; 

            if W_Req_LBDR_checkers_ORed = '1' then -- If there is a transient fault detected in LBDR
                  W_Req_LBDR_checkers_ORed_sync <= '1';
            else -- Hopefully the transient fault would disappear 
                  if clk'event and clk = '0' then 
                        W_Req_LBDR_checkers_ORed_sync <= '0';
                  end if;
            end if; 

            if S_Req_LBDR_checkers_ORed = '1' then -- If there is a transient fault detected in LBDR
                  S_Req_LBDR_checkers_ORed_sync <= '1';
            else -- Hopefully the transient fault would disappear 
                  if clk'event and clk = '0' then 
                        S_Req_LBDR_checkers_ORed_sync <= '0';
                  end if;
            end if; 

            if L_Req_LBDR_checkers_ORed = '1' then -- If there is a transient fault detected in LBDR
                  L_Req_LBDR_checkers_ORed_sync <= '1';
            else -- Hopefully the transient fault would disappear 
                  if clk'event and clk = '0' then 
                        L_Req_LBDR_checkers_ORed_sync <= '0';
                  end if;
            end if;             
      end process;

      Req_N_valid <= not N_Req_LBDR_checkers_ORed_sync;
      Req_E_valid <= not N_Req_LBDR_checkers_ORed_sync;
      Req_W_valid <= not N_Req_LBDR_checkers_ORed_sync;
      Req_S_valid <= not N_Req_LBDR_checkers_ORed_sync;
      Req_L_valid <= not N_Req_LBDR_checkers_ORed_sync;

      -- LBDR packet drop routing part checkers instantiation
      LBDR_CHECKERS_LOGIC: LBDR_checkers  generic map (cur_addr_rst => cur_addr_rst, Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
                                port map (
                                          empty       => empty,        
                                          flit_type   => flit_type,        
                                          Req_N_FF    => Req_N_FF, 
                                          Req_E_FF    => Req_E_FF, 
                                          Req_W_FF    => Req_W_FF, 
                                          Req_S_FF    => Req_S_FF, 
                                          Req_L_FF    => Req_L_FF, 
                                          grant_N     => grant_N, 
                                          grant_E     => grant_E, 
                                          grant_W     => grant_W, 
                                          grant_S     => grant_S, 
                                          grant_L     => grant_L,                                                 
                                          Req_N_in    => Req_N_in, 
                                          Req_E_in    => Req_E_in, 
                                          Req_W_in    => Req_W_in, 
                                          Req_S_in    => Req_S_in, 
                                          Req_L_in    => Req_L_in, 
                                          N1_out      => N1, 
                                          E1_out      => E1, 
                                          W1_out      => W1, 
                                          S1_out      => S1, 
                                          cur_addr_y  => cur_addr_y, 
                                          cur_addr_x  => cur_addr_x,
                                          dst_addr_y  => dst_addr_y, 
                                          dst_addr_x  => dst_addr_x,
                                          grants_out  => grants, 

                                          -- Functional Checker outputs
                                          err_header_not_empty_Requests_in_onehot => err_header_not_empty_Requests_in_onehot,
                                          err_header_empty_Requests_FF_Requests_in_equal => err_header_empty_Requests_FF_Requests_in_equal,
                                          err_tail_not_empty_grants_Requests_in_all_zero => err_tail_not_empty_grants_Requests_in_all_zero,
                                          err_body_or_invalid_Requests_FF_Requests_in_equal => err_body_or_invalid_Requests_FF_Requests_in_equal,

                                          -- Structural checker outputs
                                          err_grants => err_grants, 
                                          err_not_grants => err_not_grants, 
                                          err_dst_addr_cur_addr_N1 => err_dst_addr_cur_addr_N1, 
                                          err_dst_addr_cur_addr_not_N1 => err_dst_addr_cur_addr_not_N1, 
                                          err_dst_addr_cur_addr_E1 => err_dst_addr_cur_addr_E1, 
                                          err_dst_addr_cur_addr_not_E1 => err_dst_addr_cur_addr_not_E1, 
                                          err_dst_addr_cur_addr_W1 => err_dst_addr_cur_addr_W1, 
                                          err_dst_addr_cur_addr_not_W1 => err_dst_addr_cur_addr_not_W1, 
                                          err_dst_addr_cur_addr_S1 => err_dst_addr_cur_addr_S1, 
                                          err_dst_addr_cur_addr_not_S1 => err_dst_addr_cur_addr_not_S1, 
                                          err_header_not_empty_Req_N_in => err_header_not_empty_Req_N_in, 
                                          err_header_not_empty_Req_E_in => err_header_not_empty_Req_E_in, 
                                          err_header_not_empty_Req_W_in => err_header_not_empty_Req_W_in, 
                                          err_header_not_empty_Req_S_in => err_header_not_empty_Req_S_in, 
                                          err_header_not_empty_Req_L_in => err_header_not_empty_Req_L_in, 
                                          err_header_empty_Req_N_in_Req_N_FF => err_header_empty_Req_N_in_Req_N_FF, 
                                          err_header_empty_Req_E_in_Req_E_FF => err_header_empty_Req_E_in_Req_E_FF, 
                                          err_header_empty_Req_W_in_Req_W_FF => err_header_empty_Req_W_in_Req_W_FF, 
                                          err_header_empty_Req_S_in_Req_S_FF => err_header_empty_Req_S_in_Req_S_FF, 
                                          err_header_empty_Req_L_in_Req_L_FF => err_header_empty_Req_L_in_Req_L_FF, 
                                          err_tail_not_empty_grants_not_Req_N_in => err_tail_not_empty_grants_not_Req_N_in, 
                                          err_tail_not_empty_grants_not_Req_E_in => err_tail_not_empty_grants_not_Req_E_in, 
                                          err_tail_not_empty_grants_not_Req_W_in => err_tail_not_empty_grants_not_Req_W_in, 
                                          err_tail_not_empty_grants_not_Req_S_in => err_tail_not_empty_grants_not_Req_S_in, 
                                          err_tail_not_empty_grants_not_Req_L_in => err_tail_not_empty_grants_not_Req_L_in, 
                                          err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal => err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
                                          err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal => err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
                                          err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal => err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
                                          err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal => err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
                                          err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal => err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
                                          err_tail_empty_Req_N_in_Req_N_FF_equal => err_tail_empty_Req_N_in_Req_N_FF_equal, 
                                          err_tail_empty_Req_E_in_Req_E_FF_equal => err_tail_empty_Req_E_in_Req_E_FF_equal, 
                                          err_tail_empty_Req_W_in_Req_W_FF_equal => err_tail_empty_Req_W_in_Req_W_FF_equal, 
                                          err_tail_empty_Req_S_in_Req_S_FF_equal => err_tail_empty_Req_S_in_Req_S_FF_equal, 
                                          err_tail_empty_Req_L_in_Req_L_FF_equal => err_tail_empty_Req_L_in_Req_L_FF_equal, 
                                          err_body_or_invalid_Req_N_in_Req_N_FF => err_body_or_invalid_Req_N_in_Req_N_FF, 
                                          err_body_or_invalid_Req_E_in_Req_E_FF => err_body_or_invalid_Req_E_in_Req_E_FF, 
                                          err_body_or_invalid_Req_W_in_Req_W_FF => err_body_or_invalid_Req_W_in_Req_W_FF, 
                                          err_body_or_invalid_Req_S_in_Req_S_FF => err_body_or_invalid_Req_S_in_Req_S_FF, 
                                          err_body_or_invalid_Req_L_in_Req_L_FF => err_body_or_invalid_Req_L_in_Req_L_FF
                                         );

      grants <= grant_N or grant_E or grant_W or grant_S or grant_L;

      Cx  <= std_logic_vector(to_unsigned(Cx_rst,   Cx'length));
      Rxy <= std_logic_vector(to_unsigned(Rxy_rst, Rxy'length));

      -- First phase of LBDR logic
      N1 <= '1' when  dst_addr_y < cur_addr_y else '0';
      E1 <= '1' when  cur_addr_x < dst_addr_x else '0';
      W1 <= '1' when  dst_addr_x < cur_addr_x else '0';
      S1 <= '1' when  cur_addr_y < dst_addr_y else '0';

      process(clk, reset)
      begin
            if reset = '0' then 
              Req_N_FF <= '0';
              Req_E_FF <= '0';
              Req_W_FF <= '0';
              Req_S_FF <= '0';
              Req_L_FF <= '0';
            elsif clk'event and clk = '1' then
              Req_N_FF <= Req_N_in;
              Req_E_FF <= Req_E_in;
              Req_W_FF <= Req_W_in;
              Req_S_FF <= Req_S_in;
              Req_L_FF <= Req_L_in;
            end if;
      end process;
       

      -- The combionational part

      Req_N <= Req_N_FF;
      Req_E <= Req_E_FF;
      Req_W <= Req_W_FF;
      Req_S <= Req_S_FF;
      Req_L <= Req_L_FF;

      -- Second phase of LBDR logic
      process(N1, E1, W1, S1, Rxy, Cx, flit_type, empty, Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF, grants) begin
       if flit_type = "001" and empty = '0' then
              Req_N_in <= ((N1 and not E1 and not W1) or (N1 and E1 and Rxy(0)) or (N1 and W1 and Rxy(1))) and Cx(0);
              Req_E_in <= ((E1 and not N1 and not S1) or (E1 and N1 and Rxy(2)) or (E1 and S1 and Rxy(3))) and Cx(1);
              Req_W_in <= ((W1 and not N1 and not S1) or (W1 and N1 and Rxy(4)) or (W1 and S1 and Rxy(5))) and Cx(2);
              Req_S_in <= ((S1 and not E1 and not W1) or (S1 and E1 and Rxy(6)) or (S1 and W1 and Rxy(7))) and Cx(3);
              Req_L_in <= not N1 and  not E1 and not W1 and not S1;

        elsif flit_type = "100" and empty = '0' and grants = '1' then
              Req_N_in <= '0';
              Req_E_in <= '0';
              Req_W_in <= '0';
              Req_S_in <= '0';
              Req_L_in <= '0';

        else
              Req_N_in <= Req_N_FF;
              Req_E_in <= Req_E_FF;
              Req_W_in <= Req_W_FF;
              Req_S_in <= Req_S_FF;
              Req_L_in <= Req_L_FF;
        end if;
      end process;


end behavior;