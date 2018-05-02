library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;

entity LBDR_pseudo_with_checkers_top is
    generic (
            cur_addr_rst: integer := 5;
            Rxy_rst     : integer := 60;
            Cx_rst      : integer := 15
            );
    port (  empty: in  std_logic;
            flit_type: in std_logic_vector(2 downto 0);
            cur_addr_y, cur_addr_x: in std_logic_vector(6 downto 0);
            dst_addr_y, dst_addr_x: in std_logic_vector(6 downto 0);
            grant_N, grant_E, grant_W, grant_S, grant_L: in std_logic;
            Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF: in std_logic;

            Req_N_in, Req_E_in, Req_W_in, Req_S_in, Req_L_in: out std_logic;
            N1_out, E1_out, W1_out, S1_out: out std_logic;
            grants_out: out std_logic;

            -- Checker outputs
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
end LBDR_pseudo_with_checkers_top;

architecture behavior of LBDR_pseudo_with_checkers_top is

component LBDR_pseudo is
    generic (
            cur_addr_rst: integer := 5;
            Rxy_rst     : integer := 60;
            Cx_rst      : integer := 15
            );
    port (  empty: in  std_logic;
            flit_type: in std_logic_vector(2 downto 0);
            cur_addr_y, cur_addr_x: in std_logic_vector(6 downto 0);
            dst_addr_y, dst_addr_x: in std_logic_vector(6 downto 0);
            grant_N, grant_E, grant_W, grant_S, grant_L: in std_logic;
            Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF: in std_logic;

            Req_N_in, Req_E_in, Req_W_in, Req_S_in, Req_L_in: out std_logic;
            N1_out, E1_out, W1_out, S1_out: out std_logic;
            grants_out: out std_logic
            );
end component;

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

signal Req_N_in_sig, Req_E_in_sig, Req_W_in_sig, Req_S_in_sig, Req_L_in_sig: std_logic;
signal N1_out_sig, E1_out_sig, W1_out_sig, S1_out_sig: std_logic;
signal grants_out_sig: std_logic;

begin 

Req_N_in <= Req_N_in_sig;
Req_E_in <= Req_E_in_sig;
Req_W_in <= Req_W_in_sig;
Req_S_in <= Req_S_in_sig;
Req_L_in <= Req_L_in_sig;
N1_out <= N1_out_sig;
E1_out <= E1_out_sig;
W1_out <= W1_out_sig;
S1_out <= S1_out_sig;
grants_out <= grants_out_sig;

-- LBDR packet drop routing part (pseudo-combinational) module instantiation
LBDR: LBDR_pseudo generic map (cur_addr_rst => 5, Rxy_rst => 60, Cx_rst => 15)
                          port map (
                                    empty => empty, 
                                    flit_type => flit_type, 
                                    cur_addr_y => cur_addr_y, 
                                    cur_addr_x => cur_addr_x, 
                                    dst_addr_y => dst_addr_y, 
                                    dst_addr_x => dst_addr_x, 
                                    grant_N => grant_N, 
                                    grant_E => grant_E, 
                                    grant_W => grant_W, 
                                    grant_S => grant_S, 
                                    grant_L => grant_L, 
                                    Req_N_FF => Req_N_FF, 
                                    Req_E_FF => Req_E_FF, 
                                    Req_W_FF => Req_W_FF, 
                                    Req_S_FF => Req_S_FF, 
                                    Req_L_FF => Req_L_FF, 

                                    Req_N_in => Req_N_in_sig, 
                                    Req_E_in => Req_E_in_sig, 
                                    Req_W_in => Req_W_in_sig, 
                                    Req_S_in => Req_S_in_sig, 
                                    Req_L_in => Req_L_in_sig, 
                                    N1_out => N1_out_sig, 
                                    E1_out => E1_out_sig, 
                                    W1_out => W1_out_sig, 
                                    S1_out => S1_out_sig, 
                                    grants_out => grants_out_sig
                                   );


-- LBDR packet drop routing part checkers instantiation
CHECKERS: LBDR_checkers  generic map (cur_addr_rst => 5, Rxy_rst => 60, Cx_rst => 15)
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
                                    Req_N_in    => Req_N_in_sig, 
                                    Req_E_in    => Req_E_in_sig, 
                                    Req_W_in    => Req_W_in_sig, 
                                    Req_S_in    => Req_S_in_sig, 
                                    Req_L_in    => Req_L_in_sig, 
                                    N1_out      => N1_out_sig, 
                                    E1_out      => E1_out_sig, 
                                    W1_out      => W1_out_sig, 
                                    S1_out      => S1_out_sig, 
                                    cur_addr_y  => cur_addr_y, 
                                    cur_addr_x  => cur_addr_x,
                                    dst_addr_y  => dst_addr_y, 
                                    dst_addr_x  => dst_addr_x,
                                    grants_out  => grants_out_sig, 

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


end behavior;