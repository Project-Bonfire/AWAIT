--Copyright (C) 2016 Siavoosh Payandeh Azad

library ieee;
use ieee.std_logic_1164.all;
--use IEEE.math_real."ceil";
--use IEEE.math_real."log2";
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL;

use work.router_pack.all;

entity router_credit_based is
    generic (
        DATA_WIDTH: integer := 32;
        current_address : integer := 0;
        Rxy_rst : integer   := 10;
        Cx_rst  : integer   := 10;
        NoC_size_x: integer := 4
    );
    port (
        reset, clk: in std_logic;

        RX_N, RX_E, RX_W, RX_S, RX_L: in std_logic_vector (DATA_WIDTH-1 downto 0);

        credit_in_N, credit_in_E, credit_in_W, credit_in_S, credit_in_L: in std_logic;
        valid_in_N,  valid_in_E,  valid_in_W,  valid_in_S,  valid_in_L : in std_logic;

        -- BUBBLES
        hold_in_N,  hold_in_E,  hold_in_W,  hold_in_S,  hold_in_L : in  std_logic; -- BUBBLE IN
        hold_out_N, hold_out_E, hold_out_W, hold_out_S, hold_out_L: out std_logic; -- BUBBLE OUT

        valid_out_N,  valid_out_E,  valid_out_W,  valid_out_S,  valid_out_L : out std_logic;
        credit_out_N, credit_out_E, credit_out_W, credit_out_S, credit_out_L: out std_logic;

        TX_N, TX_E, TX_W, TX_S, TX_L: out std_logic_vector (DATA_WIDTH-1 downto 0)
    );
end router_credit_based;


architecture behavior of router_credit_based is

    signal FIFO_D_out_N, FIFO_D_out_E, FIFO_D_out_W, FIFO_D_out_S, FIFO_D_out_L: std_logic_vector(DATA_WIDTH-1 downto 0);

    signal Grant_NN, Grant_NE, Grant_NW, Grant_NS, Grant_NL: std_logic;
    signal Grant_EN, Grant_EE, Grant_EW, Grant_ES, Grant_EL: std_logic;
    signal Grant_WN, Grant_WE, Grant_WW, Grant_WS, Grant_WL: std_logic;
    signal Grant_SN, Grant_SE, Grant_SW, Grant_SS, Grant_SL: std_logic;
    signal Grant_LN, Grant_LE, Grant_LW, Grant_LS, Grant_LL: std_logic;


    signal Grant_NN_xbar, Grant_NE_xbar, Grant_NW_xbar, Grant_NS_xbar, Grant_NL_xbar: std_logic;
    signal Grant_EN_xbar, Grant_EE_xbar, Grant_EW_xbar, Grant_ES_xbar, Grant_EL_xbar: std_logic;
    signal Grant_WN_xbar, Grant_WE_xbar, Grant_WW_xbar, Grant_WS_xbar, Grant_WL_xbar: std_logic;
    signal Grant_SN_xbar, Grant_SE_xbar, Grant_SW_xbar, Grant_SS_xbar, Grant_SL_xbar: std_logic;
    signal Grant_LN_xbar, Grant_LE_xbar, Grant_LW_xbar, Grant_LS_xbar, Grant_LL_xbar: std_logic;

    signal Req_NN_valid, Req_EN_valid, Req_WN_valid, Req_SN_valid, Req_LN_valid: std_logic;
    signal Req_NE_valid, Req_EE_valid, Req_WE_valid, Req_SE_valid, Req_LE_valid: std_logic;
    signal Req_NW_valid, Req_EW_valid, Req_WW_valid, Req_SW_valid, Req_LW_valid: std_logic;
    signal Req_NS_valid, Req_ES_valid, Req_WS_valid, Req_SS_valid, Req_LS_valid: std_logic;
    signal Req_NL_valid, Req_EL_valid, Req_WL_valid, Req_SL_valid, Req_LL_valid: std_logic;

    signal Req_NN, Req_EN, Req_WN, Req_SN, Req_LN: std_logic;
    signal Req_NE, Req_EE, Req_WE, Req_SE, Req_LE: std_logic;
    signal Req_NW, Req_EW, Req_WW, Req_SW, Req_LW: std_logic;
    signal Req_NS, Req_ES, Req_WS, Req_SS, Req_LS: std_logic;
    signal Req_NL, Req_EL, Req_WL, Req_SL, Req_LL: std_logic;

    signal empty_N, empty_E, empty_W, empty_S, empty_L: std_logic;

    signal Xbar_sel_N, Xbar_sel_E, Xbar_sel_W, Xbar_sel_S, Xbar_sel_L: std_logic_vector(4 downto 0);

    --for bubbles
    signal faulty_N, faulty_E, faulty_W, faulty_S, faulty_L: std_logic;
    signal faulty_N_sync, faulty_E_sync, faulty_W_sync, faulty_S_sync, faulty_L_sync: std_logic;
    signal valid_not_faulty_N, valid_not_faulty_E, valid_not_faulty_W, valid_not_faulty_S, valid_not_faulty_L: std_logic;

    signal  N_err_header_not_empty_Requests_in_onehot, 
            N_err_header_empty_Requests_FF_Requests_in_equal, 
            N_err_tail_not_empty_grants_Requests_in_all_zero, 
            N_err_body_or_invalid_Requests_FF_Requests_in_equal, 
            N_err_grants                                           , 
            N_err_not_grants                                       , 
            N_err_dst_addr_cur_addr_N1                             , 
            N_err_dst_addr_cur_addr_not_N1                         , 
            N_err_dst_addr_cur_addr_E1                             , 
            N_err_dst_addr_cur_addr_not_E1                         , 
            N_err_dst_addr_cur_addr_W1                             , 
            N_err_dst_addr_cur_addr_not_W1                         , 
            N_err_dst_addr_cur_addr_S1                             , 
            N_err_dst_addr_cur_addr_not_S1                         , 
            N_err_header_not_empty_Req_N_in                        , 
            N_err_header_not_empty_Req_E_in                        , 
            N_err_header_not_empty_Req_W_in                        , 
            N_err_header_not_empty_Req_S_in                        , 
            N_err_header_not_empty_Req_L_in                        , 
            N_err_header_empty_Req_N_in_Req_N_FF                   , 
            N_err_header_empty_Req_E_in_Req_E_FF                   , 
            N_err_header_empty_Req_W_in_Req_W_FF                   , 
            N_err_header_empty_Req_S_in_Req_S_FF                   , 
            N_err_header_empty_Req_L_in_Req_L_FF                   , 
            N_err_tail_not_empty_grants_not_Req_N_in               , 
            N_err_tail_not_empty_grants_not_Req_E_in               , 
            N_err_tail_not_empty_grants_not_Req_W_in               , 
            N_err_tail_not_empty_grants_not_Req_S_in               , 
            N_err_tail_not_empty_grants_not_Req_L_in               , 
            N_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
            N_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
            N_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
            N_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
            N_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
            N_err_tail_empty_Req_N_in_Req_N_FF_equal               , 
            N_err_tail_empty_Req_E_in_Req_E_FF_equal               , 
            N_err_tail_empty_Req_W_in_Req_W_FF_equal               , 
            N_err_tail_empty_Req_S_in_Req_S_FF_equal               , 
            N_err_tail_empty_Req_L_in_Req_L_FF_equal               , 
            N_err_body_or_invalid_Req_N_in_Req_N_FF                , 
            N_err_body_or_invalid_Req_E_in_Req_E_FF                , 
            N_err_body_or_invalid_Req_W_in_Req_W_FF                , 
            N_err_body_or_invalid_Req_S_in_Req_S_FF                , 
            N_err_body_or_invalid_Req_L_in_Req_L_FF, 

            E_err_header_not_empty_Requests_in_onehot, 
            E_err_header_empty_Requests_FF_Requests_in_equal, 
            E_err_tail_not_empty_grants_Requests_in_all_zero, 
            E_err_body_or_invalid_Requests_FF_Requests_in_equal, 
            E_err_grants                                           , 
            E_err_not_grants                                       , 
            E_err_dst_addr_cur_addr_N1                             , 
            E_err_dst_addr_cur_addr_not_N1                         , 
            E_err_dst_addr_cur_addr_E1                             , 
            E_err_dst_addr_cur_addr_not_E1                         , 
            E_err_dst_addr_cur_addr_W1                             , 
            E_err_dst_addr_cur_addr_not_W1                         , 
            E_err_dst_addr_cur_addr_S1                             , 
            E_err_dst_addr_cur_addr_not_S1                         , 
            E_err_header_not_empty_Req_N_in                        , 
            E_err_header_not_empty_Req_E_in                        , 
            E_err_header_not_empty_Req_W_in                        , 
            E_err_header_not_empty_Req_S_in                        , 
            E_err_header_not_empty_Req_L_in                        , 
            E_err_header_empty_Req_N_in_Req_N_FF                   , 
            E_err_header_empty_Req_E_in_Req_E_FF                   , 
            E_err_header_empty_Req_W_in_Req_W_FF                   , 
            E_err_header_empty_Req_S_in_Req_S_FF                   , 
            E_err_header_empty_Req_L_in_Req_L_FF                   , 
            E_err_tail_not_empty_grants_not_Req_N_in               , 
            E_err_tail_not_empty_grants_not_Req_E_in               , 
            E_err_tail_not_empty_grants_not_Req_W_in               , 
            E_err_tail_not_empty_grants_not_Req_S_in               , 
            E_err_tail_not_empty_grants_not_Req_L_in               , 
            E_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
            E_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
            E_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
            E_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
            E_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
            E_err_tail_empty_Req_N_in_Req_N_FF_equal               , 
            E_err_tail_empty_Req_E_in_Req_E_FF_equal               , 
            E_err_tail_empty_Req_W_in_Req_W_FF_equal               , 
            E_err_tail_empty_Req_S_in_Req_S_FF_equal               , 
            E_err_tail_empty_Req_L_in_Req_L_FF_equal               , 
            E_err_body_or_invalid_Req_N_in_Req_N_FF                , 
            E_err_body_or_invalid_Req_E_in_Req_E_FF                , 
            E_err_body_or_invalid_Req_W_in_Req_W_FF                , 
            E_err_body_or_invalid_Req_S_in_Req_S_FF                , 
            E_err_body_or_invalid_Req_L_in_Req_L_FF, 

            W_err_header_not_empty_Requests_in_onehot, 
            W_err_header_empty_Requests_FF_Requests_in_equal, 
            W_err_tail_not_empty_grants_Requests_in_all_zero, 
            W_err_body_or_invalid_Requests_FF_Requests_in_equal, 
            W_err_grants                                           , 
            W_err_not_grants                                       , 
            W_err_dst_addr_cur_addr_N1                             , 
            W_err_dst_addr_cur_addr_not_N1                         , 
            W_err_dst_addr_cur_addr_E1                             , 
            W_err_dst_addr_cur_addr_not_E1                         , 
            W_err_dst_addr_cur_addr_W1                             , 
            W_err_dst_addr_cur_addr_not_W1                         , 
            W_err_dst_addr_cur_addr_S1                             , 
            W_err_dst_addr_cur_addr_not_S1                         , 
            W_err_header_not_empty_Req_N_in                        , 
            W_err_header_not_empty_Req_E_in                        , 
            W_err_header_not_empty_Req_W_in                        , 
            W_err_header_not_empty_Req_S_in                        , 
            W_err_header_not_empty_Req_L_in                        , 
            W_err_header_empty_Req_N_in_Req_N_FF                   , 
            W_err_header_empty_Req_E_in_Req_E_FF                   , 
            W_err_header_empty_Req_W_in_Req_W_FF                   , 
            W_err_header_empty_Req_S_in_Req_S_FF                   , 
            W_err_header_empty_Req_L_in_Req_L_FF                   , 
            W_err_tail_not_empty_grants_not_Req_N_in               , 
            W_err_tail_not_empty_grants_not_Req_E_in               , 
            W_err_tail_not_empty_grants_not_Req_W_in               , 
            W_err_tail_not_empty_grants_not_Req_S_in               , 
            W_err_tail_not_empty_grants_not_Req_L_in               , 
            W_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
            W_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
            W_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
            W_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
            W_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
            W_err_tail_empty_Req_N_in_Req_N_FF_equal               , 
            W_err_tail_empty_Req_E_in_Req_E_FF_equal               , 
            W_err_tail_empty_Req_W_in_Req_W_FF_equal               , 
            W_err_tail_empty_Req_S_in_Req_S_FF_equal               , 
            W_err_tail_empty_Req_L_in_Req_L_FF_equal               , 
            W_err_body_or_invalid_Req_N_in_Req_N_FF                , 
            W_err_body_or_invalid_Req_E_in_Req_E_FF                , 
            W_err_body_or_invalid_Req_W_in_Req_W_FF                , 
            W_err_body_or_invalid_Req_S_in_Req_S_FF                , 
            W_err_body_or_invalid_Req_L_in_Req_L_FF, 

            S_err_header_not_empty_Requests_in_onehot, 
            S_err_header_empty_Requests_FF_Requests_in_equal, 
            S_err_tail_not_empty_grants_Requests_in_all_zero, 
            S_err_body_or_invalid_Requests_FF_Requests_in_equal, 
            S_err_grants                                           , 
            S_err_not_grants                                       , 
            S_err_dst_addr_cur_addr_N1                             , 
            S_err_dst_addr_cur_addr_not_N1                         , 
            S_err_dst_addr_cur_addr_E1                             , 
            S_err_dst_addr_cur_addr_not_E1                         , 
            S_err_dst_addr_cur_addr_W1                             , 
            S_err_dst_addr_cur_addr_not_W1                         , 
            S_err_dst_addr_cur_addr_S1                             , 
            S_err_dst_addr_cur_addr_not_S1                         , 
            S_err_header_not_empty_Req_N_in                        , 
            S_err_header_not_empty_Req_E_in                        , 
            S_err_header_not_empty_Req_W_in                        , 
            S_err_header_not_empty_Req_S_in                        , 
            S_err_header_not_empty_Req_L_in                        , 
            S_err_header_empty_Req_N_in_Req_N_FF                   , 
            S_err_header_empty_Req_E_in_Req_E_FF                   , 
            S_err_header_empty_Req_W_in_Req_W_FF                   , 
            S_err_header_empty_Req_S_in_Req_S_FF                   , 
            S_err_header_empty_Req_L_in_Req_L_FF                   , 
            S_err_tail_not_empty_grants_not_Req_N_in               , 
            S_err_tail_not_empty_grants_not_Req_E_in               , 
            S_err_tail_not_empty_grants_not_Req_W_in               , 
            S_err_tail_not_empty_grants_not_Req_S_in               , 
            S_err_tail_not_empty_grants_not_Req_L_in               , 
            S_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
            S_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
            S_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
            S_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
            S_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
            S_err_tail_empty_Req_N_in_Req_N_FF_equal               , 
            S_err_tail_empty_Req_E_in_Req_E_FF_equal               , 
            S_err_tail_empty_Req_W_in_Req_W_FF_equal               , 
            S_err_tail_empty_Req_S_in_Req_S_FF_equal               , 
            S_err_tail_empty_Req_L_in_Req_L_FF_equal               , 
            S_err_body_or_invalid_Req_N_in_Req_N_FF                , 
            S_err_body_or_invalid_Req_E_in_Req_E_FF                , 
            S_err_body_or_invalid_Req_W_in_Req_W_FF                , 
            S_err_body_or_invalid_Req_S_in_Req_S_FF                , 
            S_err_body_or_invalid_Req_L_in_Req_L_FF, 

            L_err_header_not_empty_Requests_in_onehot, 
            L_err_header_empty_Requests_FF_Requests_in_equal, 
            L_err_tail_not_empty_grants_Requests_in_all_zero, 
            L_err_body_or_invalid_Requests_FF_Requests_in_equal, 
            L_err_grants                                           , 
            L_err_not_grants                                       , 
            L_err_dst_addr_cur_addr_N1                             , 
            L_err_dst_addr_cur_addr_not_N1                         , 
            L_err_dst_addr_cur_addr_E1                             , 
            L_err_dst_addr_cur_addr_not_E1                         , 
            L_err_dst_addr_cur_addr_W1                             , 
            L_err_dst_addr_cur_addr_not_W1                         , 
            L_err_dst_addr_cur_addr_S1                             , 
            L_err_dst_addr_cur_addr_not_S1                         , 
            L_err_header_not_empty_Req_N_in                        , 
            L_err_header_not_empty_Req_E_in                        , 
            L_err_header_not_empty_Req_W_in                        , 
            L_err_header_not_empty_Req_S_in                        , 
            L_err_header_not_empty_Req_L_in                        , 
            L_err_header_empty_Req_N_in_Req_N_FF                   , 
            L_err_header_empty_Req_E_in_Req_E_FF                   , 
            L_err_header_empty_Req_W_in_Req_W_FF                   , 
            L_err_header_empty_Req_S_in_Req_S_FF                   , 
            L_err_header_empty_Req_L_in_Req_L_FF                   , 
            L_err_tail_not_empty_grants_not_Req_N_in               , 
            L_err_tail_not_empty_grants_not_Req_E_in               , 
            L_err_tail_not_empty_grants_not_Req_W_in               , 
            L_err_tail_not_empty_grants_not_Req_S_in               , 
            L_err_tail_not_empty_grants_not_Req_L_in               , 
            L_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal, 
            L_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal, 
            L_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal, 
            L_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal, 
            L_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal, 
            L_err_tail_empty_Req_N_in_Req_N_FF_equal               , 
            L_err_tail_empty_Req_E_in_Req_E_FF_equal               , 
            L_err_tail_empty_Req_W_in_Req_W_FF_equal               , 
            L_err_tail_empty_Req_S_in_Req_S_FF_equal               , 
            L_err_tail_empty_Req_L_in_Req_L_FF_equal               , 
            L_err_body_or_invalid_Req_N_in_Req_N_FF                , 
            L_err_body_or_invalid_Req_E_in_Req_E_FF                , 
            L_err_body_or_invalid_Req_W_in_Req_W_FF                , 
            L_err_body_or_invalid_Req_S_in_Req_S_FF                , 
            L_err_body_or_invalid_Req_L_in_Req_L_FF: std_logic;    

                -- Arbiter_in checker signals
    signal      N_err_arbiter_in_Requests_state_in_state_not_equal, 

                N_err_IDLE_Req_N, 
                N_err_IDLE_grant_N,
                N_err_North_Req_N, 
                N_err_North_grant_N, 
                N_err_East_Req_E, 
                N_err_East_grant_E, 
                N_err_West_Req_W, 
                N_err_West_grant_W, 
                N_err_South_Req_S,
                N_err_South_grant_S,
                N_err_Local_Req_L, 
                N_err_Local_grant_L,

                N_err_IDLE_Req_E,
                N_err_IDLE_grant_E,
                N_err_North_Req_E,
                N_err_North_grant_E,
                N_err_East_Req_W,
                N_err_East_grant_W,
                N_err_West_Req_S,
                N_err_West_grant_S,
                N_err_South_Req_L,
                N_err_South_grant_L,
                N_err_Local_Req_N,
                N_err_Local_grant_N,

                N_err_IDLE_Req_W,
                N_err_IDLE_grant_W,
                N_err_North_Req_W,
                N_err_North_grant_W,
                N_err_East_Req_S,
                N_err_East_grant_S,
                N_err_West_Req_L,
                N_err_West_grant_L,
                N_err_South_Req_N, 
                N_err_South_grant_N,
                N_err_Local_Req_E,
                N_err_Local_grant_E, 

                N_err_IDLE_Req_S, 
                N_err_IDLE_grant_S, 
                N_err_North_Req_S, 
                N_err_North_grant_S, 
                N_err_East_Req_L, 
                N_err_East_grant_L, 
                N_err_West_Req_N, 
                N_err_West_grant_N, 
                N_err_South_Req_E, 
                N_err_South_grant_E, 
                N_err_Local_Req_W, 
                N_err_Local_grant_W, 

                N_err_IDLE_Req_L, 
                N_err_IDLE_grant_L, 
                N_err_North_Req_L, 
                N_err_North_grant_L, 
                N_err_East_Req_N, 
                N_err_East_grant_N, 
                N_err_West_Req_E, 
                N_err_West_grant_E, 
                N_err_South_Req_W, 
                N_err_South_grant_W, 
                N_err_Local_Req_S, 
                N_err_Local_grant_S, 

                N_err_arbiter_in_state_in_onehot, 
                N_err_arbiter_in_no_request_grants, 
                N_err_arbiter_in_request_no_grants, 

                N_err_no_Req_N_grant_N,
                N_err_no_Req_E_grant_E, 
                N_err_no_Req_W_grant_W, 
                N_err_no_Req_S_grant_S, 
                N_err_no_Req_L_grant_L, 

                E_err_arbiter_in_Requests_state_in_state_not_equal, 

                E_err_IDLE_Req_N, 
                E_err_IDLE_grant_N,
                E_err_North_Req_N, 
                E_err_North_grant_N, 
                E_err_East_Req_E, 
                E_err_East_grant_E, 
                E_err_West_Req_W, 
                E_err_West_grant_W, 
                E_err_South_Req_S,
                E_err_South_grant_S,
                E_err_Local_Req_L, 
                E_err_Local_grant_L,

                E_err_IDLE_Req_E,
                E_err_IDLE_grant_E,
                E_err_North_Req_E,
                E_err_North_grant_E,
                E_err_East_Req_W,
                E_err_East_grant_W,
                E_err_West_Req_S,
                E_err_West_grant_S,
                E_err_South_Req_L,
                E_err_South_grant_L,
                E_err_Local_Req_N,
                E_err_Local_grant_N,

                E_err_IDLE_Req_W,
                E_err_IDLE_grant_W,
                E_err_North_Req_W,
                E_err_North_grant_W,
                E_err_East_Req_S,
                E_err_East_grant_S,
                E_err_West_Req_L,
                E_err_West_grant_L,
                E_err_South_Req_N, 
                E_err_South_grant_N,
                E_err_Local_Req_E,
                E_err_Local_grant_E, 

                E_err_IDLE_Req_S, 
                E_err_IDLE_grant_S, 
                E_err_North_Req_S, 
                E_err_North_grant_S, 
                E_err_East_Req_L, 
                E_err_East_grant_L, 
                E_err_West_Req_N, 
                E_err_West_grant_N, 
                E_err_South_Req_E, 
                E_err_South_grant_E, 
                E_err_Local_Req_W, 
                E_err_Local_grant_W, 

                E_err_IDLE_Req_L, 
                E_err_IDLE_grant_L, 
                E_err_North_Req_L, 
                E_err_North_grant_L, 
                E_err_East_Req_N, 
                E_err_East_grant_N, 
                E_err_West_Req_E, 
                E_err_West_grant_E, 
                E_err_South_Req_W, 
                E_err_South_grant_W, 
                E_err_Local_Req_S, 
                E_err_Local_grant_S, 

                E_err_arbiter_in_state_in_onehot, 
                E_err_arbiter_in_no_request_grants, 
                E_err_arbiter_in_request_no_grants, 

                E_err_no_Req_N_grant_N,
                E_err_no_Req_E_grant_E, 
                E_err_no_Req_W_grant_W, 
                E_err_no_Req_S_grant_S, 
                E_err_no_Req_L_grant_L, 

                W_err_arbiter_in_Requests_state_in_state_not_equal, 

                W_err_IDLE_Req_N, 
                W_err_IDLE_grant_N,
                W_err_North_Req_N, 
                W_err_North_grant_N, 
                W_err_East_Req_E, 
                W_err_East_grant_E, 
                W_err_West_Req_W, 
                W_err_West_grant_W, 
                W_err_South_Req_S,
                W_err_South_grant_S,
                W_err_Local_Req_L, 
                W_err_Local_grant_L,

                W_err_IDLE_Req_E,
                W_err_IDLE_grant_E,
                W_err_North_Req_E,
                W_err_North_grant_E,
                W_err_East_Req_W,
                W_err_East_grant_W,
                W_err_West_Req_S,
                W_err_West_grant_S,
                W_err_South_Req_L,
                W_err_South_grant_L,
                W_err_Local_Req_N,
                W_err_Local_grant_N,

                W_err_IDLE_Req_W,
                W_err_IDLE_grant_W,
                W_err_North_Req_W,
                W_err_North_grant_W,
                W_err_East_Req_S,
                W_err_East_grant_S,
                W_err_West_Req_L,
                W_err_West_grant_L,
                W_err_South_Req_N, 
                W_err_South_grant_N,
                W_err_Local_Req_E,
                W_err_Local_grant_E, 

                W_err_IDLE_Req_S, 
                W_err_IDLE_grant_S, 
                W_err_North_Req_S, 
                W_err_North_grant_S, 
                W_err_East_Req_L, 
                W_err_East_grant_L, 
                W_err_West_Req_N, 
                W_err_West_grant_N, 
                W_err_South_Req_E, 
                W_err_South_grant_E, 
                W_err_Local_Req_W, 
                W_err_Local_grant_W, 

                W_err_IDLE_Req_L, 
                W_err_IDLE_grant_L, 
                W_err_North_Req_L, 
                W_err_North_grant_L, 
                W_err_East_Req_N, 
                W_err_East_grant_N, 
                W_err_West_Req_E, 
                W_err_West_grant_E, 
                W_err_South_Req_W, 
                W_err_South_grant_W, 
                W_err_Local_Req_S, 
                W_err_Local_grant_S, 

                W_err_arbiter_in_state_in_onehot, 
                W_err_arbiter_in_no_request_grants, 
                W_err_arbiter_in_request_no_grants, 

                W_err_no_Req_N_grant_N,
                W_err_no_Req_E_grant_E, 
                W_err_no_Req_W_grant_W, 
                W_err_no_Req_S_grant_S, 
                W_err_no_Req_L_grant_L, 

                S_err_arbiter_in_Requests_state_in_state_not_equal, 

                S_err_IDLE_Req_N, 
                S_err_IDLE_grant_N,
                S_err_North_Req_N, 
                S_err_North_grant_N, 
                S_err_East_Req_E, 
                S_err_East_grant_E, 
                S_err_West_Req_W, 
                S_err_West_grant_W, 
                S_err_South_Req_S,
                S_err_South_grant_S,
                S_err_Local_Req_L, 
                S_err_Local_grant_L,

                S_err_IDLE_Req_E,
                S_err_IDLE_grant_E,
                S_err_North_Req_E,
                S_err_North_grant_E,
                S_err_East_Req_W,
                S_err_East_grant_W,
                S_err_West_Req_S,
                S_err_West_grant_S,
                S_err_South_Req_L,
                S_err_South_grant_L,
                S_err_Local_Req_N,
                S_err_Local_grant_N,

                S_err_IDLE_Req_W,
                S_err_IDLE_grant_W,
                S_err_North_Req_W,
                S_err_North_grant_W,
                S_err_East_Req_S,
                S_err_East_grant_S,
                S_err_West_Req_L,
                S_err_West_grant_L,
                S_err_South_Req_N, 
                S_err_South_grant_N,
                S_err_Local_Req_E,
                S_err_Local_grant_E, 

                S_err_IDLE_Req_S, 
                S_err_IDLE_grant_S, 
                S_err_North_Req_S, 
                S_err_North_grant_S, 
                S_err_East_Req_L, 
                S_err_East_grant_L, 
                S_err_West_Req_N, 
                S_err_West_grant_N, 
                S_err_South_Req_E, 
                S_err_South_grant_E, 
                S_err_Local_Req_W, 
                S_err_Local_grant_W, 

                S_err_IDLE_Req_L, 
                S_err_IDLE_grant_L, 
                S_err_North_Req_L, 
                S_err_North_grant_L, 
                S_err_East_Req_N, 
                S_err_East_grant_N, 
                S_err_West_Req_E, 
                S_err_West_grant_E, 
                S_err_South_Req_W, 
                S_err_South_grant_W, 
                S_err_Local_Req_S, 
                S_err_Local_grant_S, 

                S_err_arbiter_in_state_in_onehot, 
                S_err_arbiter_in_no_request_grants, 
                S_err_arbiter_in_request_no_grants, 

                S_err_no_Req_N_grant_N,
                S_err_no_Req_E_grant_E, 
                S_err_no_Req_W_grant_W, 
                S_err_no_Req_S_grant_S, 
                S_err_no_Req_L_grant_L, 

                L_err_arbiter_in_Requests_state_in_state_not_equal, 

                L_err_IDLE_Req_N, 
                L_err_IDLE_grant_N,
                L_err_North_Req_N, 
                L_err_North_grant_N, 
                L_err_East_Req_E, 
                L_err_East_grant_E, 
                L_err_West_Req_W, 
                L_err_West_grant_W, 
                L_err_South_Req_S,
                L_err_South_grant_S,
                L_err_Local_Req_L, 
                L_err_Local_grant_L,

                L_err_IDLE_Req_E,
                L_err_IDLE_grant_E,
                L_err_North_Req_E,
                L_err_North_grant_E,
                L_err_East_Req_W,
                L_err_East_grant_W,
                L_err_West_Req_S,
                L_err_West_grant_S,
                L_err_South_Req_L,
                L_err_South_grant_L,
                L_err_Local_Req_N,
                L_err_Local_grant_N,

                L_err_IDLE_Req_W,
                L_err_IDLE_grant_W,
                L_err_North_Req_W,
                L_err_North_grant_W,
                L_err_East_Req_S,
                L_err_East_grant_S,
                L_err_West_Req_L,
                L_err_West_grant_L,
                L_err_South_Req_N, 
                L_err_South_grant_N,
                L_err_Local_Req_E,
                L_err_Local_grant_E, 

                L_err_IDLE_Req_S, 
                L_err_IDLE_grant_S, 
                L_err_North_Req_S, 
                L_err_North_grant_S, 
                L_err_East_Req_L, 
                L_err_East_grant_L, 
                L_err_West_Req_N, 
                L_err_West_grant_N, 
                L_err_South_Req_E, 
                L_err_South_grant_E, 
                L_err_Local_Req_W, 
                L_err_Local_grant_W, 

                L_err_IDLE_Req_L, 
                L_err_IDLE_grant_L, 
                L_err_North_Req_L, 
                L_err_North_grant_L, 
                L_err_East_Req_N, 
                L_err_East_grant_N, 
                L_err_West_Req_E, 
                L_err_West_grant_E, 
                L_err_South_Req_W, 
                L_err_South_grant_W, 
                L_err_Local_Req_S, 
                L_err_Local_grant_S, 

                L_err_arbiter_in_state_in_onehot, 
                L_err_arbiter_in_no_request_grants, 
                L_err_arbiter_in_request_no_grants, 

                L_err_no_Req_N_grant_N,
                L_err_no_Req_E_grant_E, 
                L_err_no_Req_W_grant_W, 
                L_err_no_Req_S_grant_S, 
                L_err_no_Req_L_grant_L, 

                -- Arbiter_out checker outputs
                N_err_arbiter_out_Requests_state_in_state_not_equal, 
           
                N_err_IDLE_req_X_N, 
                N_err_North_req_X_N, 
                N_err_North_credit_not_zero_req_X_N_grant_N, 
                N_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
                N_err_East_req_X_E, 
                N_err_East_credit_not_zero_req_X_E_grant_E, 
                N_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
                N_err_West_req_X_W, 
                N_err_West_credit_not_zero_req_X_E_grant_E, 
                N_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
                N_err_South_req_X_S, 
                N_err_South_credit_not_zero_req_X_S_grant_S, 
                N_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
                N_err_Local_req_X_L, 
                N_err_Local_credit_not_zero_req_X_L_grant_L, 
                N_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

                N_err_IDLE_req_X_E, 
                N_err_North_req_X_E, 
                N_err_East_req_X_W, 
                N_err_West_req_X_S, 
                N_err_South_req_X_L, 
                N_err_Local_req_X_N, 
           
                N_err_IDLE_req_X_W, 
                N_err_North_req_X_W, 
                N_err_East_req_X_S, 
                N_err_West_req_X_L, 
                N_err_South_req_X_N, 
                N_err_Local_req_X_E, 
           
                N_err_IDLE_req_X_S, 
                N_err_North_req_X_S, 
                N_err_East_req_X_L, 
                N_err_West_req_X_N, 
                N_err_South_req_X_E, 
                N_err_Local_req_X_W, 
           
                N_err_IDLE_req_X_L, 
                N_err_North_req_X_L, 
                N_err_East_req_X_N, 
                N_err_West_req_X_E, 
                N_err_South_req_X_W, 
                N_err_Local_req_X_S, 
           
                N_err_arbiter_out_state_in_onehot, 
                N_err_arbiter_out_no_request_grants, 
                N_err_arbiter_out_request_IDLE_state, 

                N_err_request_IDLE_not_Grants, 
                N_err_state_North_Invalid_Grant, 
                N_err_state_East_Invalid_Grant, 
                N_err_state_West_Invalid_Grant, 
                N_err_state_South_Invalid_Grant, 
                N_err_state_Local_Invalid_Grant, 
                N_err_Grants_onehot_or_all_zero, 

                E_err_arbiter_out_Requests_state_in_state_not_equal, 
           
                E_err_IDLE_req_X_N, 
                E_err_North_req_X_N, 
                E_err_North_credit_not_zero_req_X_N_grant_N, 
                E_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
                E_err_East_req_X_E, 
                E_err_East_credit_not_zero_req_X_E_grant_E, 
                E_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
                E_err_West_req_X_W, 
                E_err_West_credit_not_zero_req_X_E_grant_E, 
                E_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
                E_err_South_req_X_S, 
                E_err_South_credit_not_zero_req_X_S_grant_S, 
                E_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
                E_err_Local_req_X_L, 
                E_err_Local_credit_not_zero_req_X_L_grant_L, 
                E_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

                E_err_IDLE_req_X_E, 
                E_err_North_req_X_E, 
                E_err_East_req_X_W, 
                E_err_West_req_X_S, 
                E_err_South_req_X_L, 
                E_err_Local_req_X_N, 
           
                E_err_IDLE_req_X_W, 
                E_err_North_req_X_W, 
                E_err_East_req_X_S, 
                E_err_West_req_X_L, 
                E_err_South_req_X_N, 
                E_err_Local_req_X_E, 
           
                E_err_IDLE_req_X_S, 
                E_err_North_req_X_S, 
                E_err_East_req_X_L, 
                E_err_West_req_X_N, 
                E_err_South_req_X_E, 
                E_err_Local_req_X_W, 
           
                E_err_IDLE_req_X_L, 
                E_err_North_req_X_L, 
                E_err_East_req_X_N, 
                E_err_West_req_X_E, 
                E_err_South_req_X_W, 
                E_err_Local_req_X_S, 
           
                E_err_arbiter_out_state_in_onehot, 
                E_err_arbiter_out_no_request_grants, 
                E_err_arbiter_out_request_IDLE_state, 

                E_err_request_IDLE_not_Grants, 
                E_err_state_North_Invalid_Grant, 
                E_err_state_East_Invalid_Grant, 
                E_err_state_West_Invalid_Grant, 
                E_err_state_South_Invalid_Grant, 
                E_err_state_Local_Invalid_Grant, 
                E_err_Grants_onehot_or_all_zero, 

                W_err_arbiter_out_Requests_state_in_state_not_equal, 
           
                W_err_IDLE_req_X_N, 
                W_err_North_req_X_N, 
                W_err_North_credit_not_zero_req_X_N_grant_N, 
                W_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
                W_err_East_req_X_E, 
                W_err_East_credit_not_zero_req_X_E_grant_E, 
                W_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
                W_err_West_req_X_W, 
                W_err_West_credit_not_zero_req_X_E_grant_E, 
                W_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
                W_err_South_req_X_S, 
                W_err_South_credit_not_zero_req_X_S_grant_S, 
                W_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
                W_err_Local_req_X_L, 
                W_err_Local_credit_not_zero_req_X_L_grant_L, 
                W_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

                W_err_IDLE_req_X_E, 
                W_err_North_req_X_E, 
                W_err_East_req_X_W, 
                W_err_West_req_X_S, 
                W_err_South_req_X_L, 
                W_err_Local_req_X_N, 
           
                W_err_IDLE_req_X_W, 
                W_err_North_req_X_W, 
                W_err_East_req_X_S, 
                W_err_West_req_X_L, 
                W_err_South_req_X_N, 
                W_err_Local_req_X_E, 
           
                W_err_IDLE_req_X_S, 
                W_err_North_req_X_S, 
                W_err_East_req_X_L, 
                W_err_West_req_X_N, 
                W_err_South_req_X_E, 
                W_err_Local_req_X_W, 
           
                W_err_IDLE_req_X_L, 
                W_err_North_req_X_L, 
                W_err_East_req_X_N, 
                W_err_West_req_X_E, 
                W_err_South_req_X_W, 
                W_err_Local_req_X_S, 
           
                W_err_arbiter_out_state_in_onehot, 
                W_err_arbiter_out_no_request_grants, 
                W_err_arbiter_out_request_IDLE_state, 

                W_err_request_IDLE_not_Grants, 
                W_err_state_North_Invalid_Grant, 
                W_err_state_East_Invalid_Grant, 
                W_err_state_West_Invalid_Grant, 
                W_err_state_South_Invalid_Grant, 
                W_err_state_Local_Invalid_Grant, 
                W_err_Grants_onehot_or_all_zero,            

                S_err_arbiter_out_Requests_state_in_state_not_equal, 
           
                S_err_IDLE_req_X_N, 
                S_err_North_req_X_N, 
                S_err_North_credit_not_zero_req_X_N_grant_N, 
                S_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
                S_err_East_req_X_E, 
                S_err_East_credit_not_zero_req_X_E_grant_E, 
                S_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
                S_err_West_req_X_W, 
                S_err_West_credit_not_zero_req_X_E_grant_E, 
                S_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
                S_err_South_req_X_S, 
                S_err_South_credit_not_zero_req_X_S_grant_S, 
                S_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
                S_err_Local_req_X_L, 
                S_err_Local_credit_not_zero_req_X_L_grant_L, 
                S_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

                S_err_IDLE_req_X_E, 
                S_err_North_req_X_E, 
                S_err_East_req_X_W, 
                S_err_West_req_X_S, 
                S_err_South_req_X_L, 
                S_err_Local_req_X_N, 
           
                S_err_IDLE_req_X_W, 
                S_err_North_req_X_W, 
                S_err_East_req_X_S, 
                S_err_West_req_X_L, 
                S_err_South_req_X_N, 
                S_err_Local_req_X_E, 
           
                S_err_IDLE_req_X_S, 
                S_err_North_req_X_S, 
                S_err_East_req_X_L, 
                S_err_West_req_X_N, 
                S_err_South_req_X_E, 
                S_err_Local_req_X_W, 
           
                S_err_IDLE_req_X_L, 
                S_err_North_req_X_L, 
                S_err_East_req_X_N, 
                S_err_West_req_X_E, 
                S_err_South_req_X_W, 
                S_err_Local_req_X_S, 
           
                S_err_arbiter_out_state_in_onehot, 
                S_err_arbiter_out_no_request_grants, 
                S_err_arbiter_out_request_IDLE_state, 

                S_err_request_IDLE_not_Grants, 
                S_err_state_North_Invalid_Grant, 
                S_err_state_East_Invalid_Grant, 
                S_err_state_West_Invalid_Grant, 
                S_err_state_South_Invalid_Grant, 
                S_err_state_Local_Invalid_Grant, 
                S_err_Grants_onehot_or_all_zero,              

                L_err_arbiter_out_Requests_state_in_state_not_equal, 
           
                L_err_IDLE_req_X_N, 
                L_err_North_req_X_N, 
                L_err_North_credit_not_zero_req_X_N_grant_N, 
                L_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
                L_err_East_req_X_E, 
                L_err_East_credit_not_zero_req_X_E_grant_E, 
                L_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
                L_err_West_req_X_W, 
                L_err_West_credit_not_zero_req_X_E_grant_E, 
                L_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
                L_err_South_req_X_S, 
                L_err_South_credit_not_zero_req_X_S_grant_S, 
                L_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
                L_err_Local_req_X_L, 
                L_err_Local_credit_not_zero_req_X_L_grant_L, 
                L_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

                L_err_IDLE_req_X_E, 
                L_err_North_req_X_E, 
                L_err_East_req_X_W, 
                L_err_West_req_X_S, 
                L_err_South_req_X_L, 
                L_err_Local_req_X_N, 
           
                L_err_IDLE_req_X_W, 
                L_err_North_req_X_W, 
                L_err_East_req_X_S, 
                L_err_West_req_X_L, 
                L_err_South_req_X_N, 
                L_err_Local_req_X_E, 
           
                L_err_IDLE_req_X_S, 
                L_err_North_req_X_S, 
                L_err_East_req_X_L, 
                L_err_West_req_X_N, 
                L_err_South_req_X_E, 
                L_err_Local_req_X_W, 
           
                L_err_IDLE_req_X_L, 
                L_err_North_req_X_L, 
                L_err_East_req_X_N, 
                L_err_West_req_X_E, 
                L_err_South_req_X_W, 
                L_err_Local_req_X_S, 
           
                L_err_arbiter_out_state_in_onehot, 
                L_err_arbiter_out_no_request_grants, 
                L_err_arbiter_out_request_IDLE_state, 

                L_err_request_IDLE_not_Grants, 
                L_err_state_North_Invalid_Grant, 
                L_err_state_East_Invalid_Grant, 
                L_err_state_West_Invalid_Grant, 
                L_err_state_South_Invalid_Grant, 
                L_err_state_Local_Invalid_Grant, 
                L_err_Grants_onehot_or_all_zero : std_logic;



    signal N_LBDR_checkers_ORed, E_LBDR_checkers_ORed, W_LBDR_checkers_ORed, S_LBDR_checkers_ORed, L_LBDR_checkers_ORed: std_logic;
begin
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


-- error checker for incoming links (parity check)
INPUT_PARITY_N:  parity_checker_for_router_links generic map (DATA_WIDTH => DATA_WIDTH)
    port map (RX => RX_N, valid_in => valid_in_N, faulty => faulty_N);

INPUT_PARITY_E:  parity_checker_for_router_links generic map (DATA_WIDTH => DATA_WIDTH)
    port map (RX => RX_E, valid_in => valid_in_E, faulty => faulty_E);

INPUT_PARITY_W:  parity_checker_for_router_links generic map (DATA_WIDTH => DATA_WIDTH)
    port map (RX => RX_W, valid_in => valid_in_W, faulty => faulty_W);

INPUT_PARITY_S:  parity_checker_for_router_links generic map (DATA_WIDTH => DATA_WIDTH)
    port map (RX => RX_S, valid_in => valid_in_S, faulty => faulty_S);

INPUT_PARITY_L:  parity_checker_for_router_links generic map (DATA_WIDTH => DATA_WIDTH)
    port map (RX => RX_L, valid_in => valid_in_L, faulty => faulty_L);

process(faulty_N,faulty_E,faulty_W,faulty_S,faulty_L, clk) begin
    
    if faulty_N = '1' then
        faulty_N_sync <= '1';
    else
        if clk'event and clk = '0' then 
           faulty_N_sync <= '0';
        end if;
    end if; 

    if faulty_E = '1' then
        faulty_E_sync <= '1';
    else
        if clk'event and clk = '0' then 
           faulty_E_sync <= '0';
        end if;
    end if; 


    if faulty_W = '1' then
        faulty_W_sync <= '1';
    else
        if clk'event and clk = '0' then 
           faulty_W_sync <= '0';
        end if;
    end if; 

    if faulty_S = '1' then
        faulty_S_sync <= '1';
    else
        if clk'event and clk = '0' then 
           faulty_S_sync <= '0';
        end if;
    end if; 

    if faulty_L = '1' then
        faulty_L_sync <= '1';
    else
        if clk'event and clk = '0' then 
           faulty_L_sync <= '0';
        end if;
    end if; 
end process;


valid_not_faulty_N <= valid_in_N and not faulty_N_sync;
valid_not_faulty_E <= valid_in_E and not faulty_E_sync;
valid_not_faulty_W <= valid_in_W and not faulty_W_sync;
valid_not_faulty_S <= valid_in_S and not faulty_S_sync;
valid_not_faulty_L <= valid_in_L and not faulty_L_sync;

-- can we block just some inputs/outputs?
hold_out_N <= faulty_N_sync;
hold_out_E <= faulty_E_sync;
hold_out_W <= faulty_W_sync;
hold_out_S <= faulty_S_sync;
hold_out_L <= faulty_L_sync;

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
-- All LBDR checkers for each LBDR module ORed

N_LBDR_checkers_ORed <= N_err_header_not_empty_Requests_in_onehot or
                        N_err_header_empty_Requests_FF_Requests_in_equal or
                        N_err_tail_not_empty_grants_Requests_in_all_zero or
                        N_err_body_or_invalid_Requests_FF_Requests_in_equal or
                        N_err_grants or
                        N_err_not_grants or
                        N_err_dst_addr_cur_addr_N1 or
                        N_err_dst_addr_cur_addr_not_N1 or
                        N_err_dst_addr_cur_addr_E1 or
                        N_err_dst_addr_cur_addr_not_E1 or
                        N_err_dst_addr_cur_addr_W1 or
                        N_err_dst_addr_cur_addr_not_W1 or
                        N_err_dst_addr_cur_addr_S1 or
                        N_err_dst_addr_cur_addr_not_S1 or
                        N_err_header_not_empty_Req_N_in or
                        N_err_header_not_empty_Req_E_in or
                        N_err_header_not_empty_Req_W_in or
                        N_err_header_not_empty_Req_S_in or
                        N_err_header_not_empty_Req_L_in or
                        N_err_header_empty_Req_N_in_Req_N_FF or
                        N_err_header_empty_Req_E_in_Req_E_FF or
                        N_err_header_empty_Req_W_in_Req_W_FF or
                        N_err_header_empty_Req_S_in_Req_S_FF or
                        N_err_header_empty_Req_L_in_Req_L_FF or
                        N_err_tail_not_empty_grants_not_Req_N_in or
                        N_err_tail_not_empty_grants_not_Req_E_in or
                        N_err_tail_not_empty_grants_not_Req_W_in or
                        N_err_tail_not_empty_grants_not_Req_S_in or
                        N_err_tail_not_empty_grants_not_Req_L_in or
                        N_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                        N_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                        N_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                        N_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                        N_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                        N_err_tail_empty_Req_N_in_Req_N_FF_equal or
                        N_err_tail_empty_Req_E_in_Req_E_FF_equal or
                        N_err_tail_empty_Req_W_in_Req_W_FF_equal or
                        N_err_tail_empty_Req_S_in_Req_S_FF_equal or
                        N_err_tail_empty_Req_L_in_Req_L_FF_equal or
                        N_err_body_or_invalid_Req_N_in_Req_N_FF or
                        N_err_body_or_invalid_Req_E_in_Req_E_FF or
                        N_err_body_or_invalid_Req_W_in_Req_W_FF or
                        N_err_body_or_invalid_Req_S_in_Req_S_FF or
                        N_err_body_or_invalid_Req_L_in_Req_L_FF;

E_LBDR_checkers_ORed <= E_err_header_not_empty_Requests_in_onehot or
                        E_err_header_empty_Requests_FF_Requests_in_equal or
                        E_err_tail_not_empty_grants_Requests_in_all_zero or
                        E_err_body_or_invalid_Requests_FF_Requests_in_equal or
                        E_err_grants or
                        E_err_not_grants or
                        E_err_dst_addr_cur_addr_N1 or
                        E_err_dst_addr_cur_addr_not_N1 or
                        E_err_dst_addr_cur_addr_E1 or
                        E_err_dst_addr_cur_addr_not_E1 or
                        E_err_dst_addr_cur_addr_W1 or
                        E_err_dst_addr_cur_addr_not_W1 or
                        E_err_dst_addr_cur_addr_S1 or
                        E_err_dst_addr_cur_addr_not_S1 or
                        E_err_header_not_empty_Req_N_in or
                        E_err_header_not_empty_Req_E_in or
                        E_err_header_not_empty_Req_W_in or
                        E_err_header_not_empty_Req_S_in or
                        E_err_header_not_empty_Req_L_in or
                        E_err_header_empty_Req_N_in_Req_N_FF or
                        E_err_header_empty_Req_E_in_Req_E_FF or
                        E_err_header_empty_Req_W_in_Req_W_FF or
                        E_err_header_empty_Req_S_in_Req_S_FF or
                        E_err_header_empty_Req_L_in_Req_L_FF or
                        E_err_tail_not_empty_grants_not_Req_N_in or
                        E_err_tail_not_empty_grants_not_Req_E_in or
                        E_err_tail_not_empty_grants_not_Req_W_in or
                        E_err_tail_not_empty_grants_not_Req_S_in or
                        E_err_tail_not_empty_grants_not_Req_L_in or
                        E_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                        E_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                        E_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                        E_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                        E_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                        E_err_tail_empty_Req_N_in_Req_N_FF_equal or
                        E_err_tail_empty_Req_E_in_Req_E_FF_equal or
                        E_err_tail_empty_Req_W_in_Req_W_FF_equal or
                        E_err_tail_empty_Req_S_in_Req_S_FF_equal or
                        E_err_tail_empty_Req_L_in_Req_L_FF_equal or
                        E_err_body_or_invalid_Req_N_in_Req_N_FF or
                        E_err_body_or_invalid_Req_E_in_Req_E_FF or
                        E_err_body_or_invalid_Req_W_in_Req_W_FF or
                        E_err_body_or_invalid_Req_S_in_Req_S_FF or
                        E_err_body_or_invalid_Req_L_in_Req_L_FF;

W_LBDR_checkers_ORed <= W_err_header_not_empty_Requests_in_onehot or
                        W_err_header_empty_Requests_FF_Requests_in_equal or
                        W_err_tail_not_empty_grants_Requests_in_all_zero or
                        W_err_body_or_invalid_Requests_FF_Requests_in_equal or
                        W_err_grants or
                        W_err_not_grants or
                        W_err_dst_addr_cur_addr_N1 or
                        W_err_dst_addr_cur_addr_not_N1 or
                        W_err_dst_addr_cur_addr_E1 or
                        W_err_dst_addr_cur_addr_not_E1 or
                        W_err_dst_addr_cur_addr_W1 or
                        W_err_dst_addr_cur_addr_not_W1 or
                        W_err_dst_addr_cur_addr_S1 or
                        W_err_dst_addr_cur_addr_not_S1 or
                        W_err_header_not_empty_Req_N_in or
                        W_err_header_not_empty_Req_E_in or
                        W_err_header_not_empty_Req_W_in or
                        W_err_header_not_empty_Req_S_in or
                        W_err_header_not_empty_Req_L_in or
                        W_err_header_empty_Req_N_in_Req_N_FF or
                        W_err_header_empty_Req_E_in_Req_E_FF or
                        W_err_header_empty_Req_W_in_Req_W_FF or
                        W_err_header_empty_Req_S_in_Req_S_FF or
                        W_err_header_empty_Req_L_in_Req_L_FF or
                        W_err_tail_not_empty_grants_not_Req_N_in or
                        W_err_tail_not_empty_grants_not_Req_E_in or
                        W_err_tail_not_empty_grants_not_Req_W_in or
                        W_err_tail_not_empty_grants_not_Req_S_in or
                        W_err_tail_not_empty_grants_not_Req_L_in or
                        W_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                        W_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                        W_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                        W_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                        W_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                        W_err_tail_empty_Req_N_in_Req_N_FF_equal or
                        W_err_tail_empty_Req_E_in_Req_E_FF_equal or
                        W_err_tail_empty_Req_W_in_Req_W_FF_equal or
                        W_err_tail_empty_Req_S_in_Req_S_FF_equal or
                        W_err_tail_empty_Req_L_in_Req_L_FF_equal or
                        W_err_body_or_invalid_Req_N_in_Req_N_FF or
                        W_err_body_or_invalid_Req_E_in_Req_E_FF or
                        W_err_body_or_invalid_Req_W_in_Req_W_FF or
                        W_err_body_or_invalid_Req_S_in_Req_S_FF or
                        W_err_body_or_invalid_Req_L_in_Req_L_FF;

S_LBDR_checkers_ORed <= S_err_header_not_empty_Requests_in_onehot or
                        S_err_header_empty_Requests_FF_Requests_in_equal or
                        S_err_tail_not_empty_grants_Requests_in_all_zero or
                        S_err_body_or_invalid_Requests_FF_Requests_in_equal or
                        S_err_grants or
                        S_err_not_grants or
                        S_err_dst_addr_cur_addr_N1 or
                        S_err_dst_addr_cur_addr_not_N1 or
                        S_err_dst_addr_cur_addr_E1 or
                        S_err_dst_addr_cur_addr_not_E1 or
                        S_err_dst_addr_cur_addr_W1 or
                        S_err_dst_addr_cur_addr_not_W1 or
                        S_err_dst_addr_cur_addr_S1 or
                        S_err_dst_addr_cur_addr_not_S1 or
                        S_err_header_not_empty_Req_N_in or
                        S_err_header_not_empty_Req_E_in or
                        S_err_header_not_empty_Req_W_in or
                        S_err_header_not_empty_Req_S_in or
                        S_err_header_not_empty_Req_L_in or
                        S_err_header_empty_Req_N_in_Req_N_FF or
                        S_err_header_empty_Req_E_in_Req_E_FF or
                        S_err_header_empty_Req_W_in_Req_W_FF or
                        S_err_header_empty_Req_S_in_Req_S_FF or
                        S_err_header_empty_Req_L_in_Req_L_FF or
                        S_err_tail_not_empty_grants_not_Req_N_in or
                        S_err_tail_not_empty_grants_not_Req_E_in or
                        S_err_tail_not_empty_grants_not_Req_W_in or
                        S_err_tail_not_empty_grants_not_Req_S_in or
                        S_err_tail_not_empty_grants_not_Req_L_in or
                        S_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                        S_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                        S_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                        S_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                        S_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                        S_err_tail_empty_Req_N_in_Req_N_FF_equal or
                        S_err_tail_empty_Req_E_in_Req_E_FF_equal or
                        S_err_tail_empty_Req_W_in_Req_W_FF_equal or
                        S_err_tail_empty_Req_S_in_Req_S_FF_equal or
                        S_err_tail_empty_Req_L_in_Req_L_FF_equal or
                        S_err_body_or_invalid_Req_N_in_Req_N_FF or
                        S_err_body_or_invalid_Req_E_in_Req_E_FF or
                        S_err_body_or_invalid_Req_W_in_Req_W_FF or
                        S_err_body_or_invalid_Req_S_in_Req_S_FF or
                        S_err_body_or_invalid_Req_L_in_Req_L_FF;

L_LBDR_checkers_ORed <= L_err_header_not_empty_Requests_in_onehot or
                        L_err_header_empty_Requests_FF_Requests_in_equal or
                        L_err_tail_not_empty_grants_Requests_in_all_zero or
                        L_err_body_or_invalid_Requests_FF_Requests_in_equal or
                        L_err_grants or
                        L_err_not_grants or
                        L_err_dst_addr_cur_addr_N1 or
                        L_err_dst_addr_cur_addr_not_N1 or
                        L_err_dst_addr_cur_addr_E1 or
                        L_err_dst_addr_cur_addr_not_E1 or
                        L_err_dst_addr_cur_addr_W1 or
                        L_err_dst_addr_cur_addr_not_W1 or
                        L_err_dst_addr_cur_addr_S1 or
                        L_err_dst_addr_cur_addr_not_S1 or
                        L_err_header_not_empty_Req_N_in or
                        L_err_header_not_empty_Req_E_in or
                        L_err_header_not_empty_Req_W_in or
                        L_err_header_not_empty_Req_S_in or
                        L_err_header_not_empty_Req_L_in or
                        L_err_header_empty_Req_N_in_Req_N_FF or
                        L_err_header_empty_Req_E_in_Req_E_FF or
                        L_err_header_empty_Req_W_in_Req_W_FF or
                        L_err_header_empty_Req_S_in_Req_S_FF or
                        L_err_header_empty_Req_L_in_Req_L_FF or
                        L_err_tail_not_empty_grants_not_Req_N_in or
                        L_err_tail_not_empty_grants_not_Req_E_in or
                        L_err_tail_not_empty_grants_not_Req_W_in or
                        L_err_tail_not_empty_grants_not_Req_S_in or
                        L_err_tail_not_empty_grants_not_Req_L_in or
                        L_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal or
                        L_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal or
                        L_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal or
                        L_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal or
                        L_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal or
                        L_err_tail_empty_Req_N_in_Req_N_FF_equal or
                        L_err_tail_empty_Req_E_in_Req_E_FF_equal or
                        L_err_tail_empty_Req_W_in_Req_W_FF_equal or
                        L_err_tail_empty_Req_S_in_Req_S_FF_equal or
                        L_err_tail_empty_Req_L_in_Req_L_FF_equal or
                        L_err_body_or_invalid_Req_N_in_Req_N_FF or
                        L_err_body_or_invalid_Req_E_in_Req_E_FF or
                        L_err_body_or_invalid_Req_W_in_Req_W_FF or
                        L_err_body_or_invalid_Req_S_in_Req_S_FF or
                        L_err_body_or_invalid_Req_L_in_Req_L_FF;                                                                                                

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


-- all the FIFOs
FIFO_N: FIFO_credit_based generic map (DATA_WIDTH => DATA_WIDTH)
    port map (reset => reset, clk => clk, RX => RX_N, valid_in => valid_not_faulty_N,
            read_en_N => '0', read_en_E => Grant_EN, read_en_W => Grant_WN, read_en_S => Grant_SN, read_en_L => Grant_LN,
            credit_out => credit_out_N, empty_out => empty_N, Data_out => FIFO_D_out_N);

FIFO_E: FIFO_credit_based generic map (DATA_WIDTH => DATA_WIDTH)
    port map (reset => reset, clk => clk, RX => RX_E, valid_in => valid_not_faulty_E,
            read_en_N => Grant_NE, read_en_E => '0', read_en_W => Grant_WE, read_en_S => Grant_SE, read_en_L => Grant_LE,
            credit_out => credit_out_E, empty_out => empty_E, Data_out => FIFO_D_out_E);

FIFO_W: FIFO_credit_based generic map (DATA_WIDTH => DATA_WIDTH)
    port map (reset => reset, clk => clk, RX => RX_W, valid_in => valid_not_faulty_W,
            read_en_N => Grant_NW, read_en_E => Grant_EW, read_en_W => '0', read_en_S => Grant_SW, read_en_L => Grant_LW,
            credit_out => credit_out_W, empty_out => empty_W, Data_out => FIFO_D_out_W);

FIFO_S: FIFO_credit_based generic map (DATA_WIDTH => DATA_WIDTH)
    port map (reset => reset, clk => clk, RX => RX_S, valid_in => valid_not_faulty_S,
            read_en_N => Grant_NS, read_en_E => Grant_ES, read_en_W => Grant_WS, read_en_S => '0', read_en_L => Grant_LS,
            credit_out => credit_out_S, empty_out => empty_S, Data_out => FIFO_D_out_S);

FIFO_L: FIFO_credit_based generic map (DATA_WIDTH => DATA_WIDTH)
    port map (reset => reset, clk => clk, RX => RX_L, valid_in => valid_not_faulty_L,
            read_en_N => Grant_NL, read_en_E => Grant_EL, read_en_W => Grant_WL, read_en_S => Grant_SL, read_en_L => '0',
            credit_out => credit_out_L, empty_out => empty_L, Data_out => FIFO_D_out_L);
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

-- all the LBDRs
LBDR_N: LBDR_with_checkers generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
   PORT MAP (reset => reset, clk => clk, empty => empty_N,
             flit_type => FIFO_D_out_N(DATA_WIDTH-1 downto DATA_WIDTH-3),
             cur_addr_y => std_logic_vector(to_unsigned(current_address / NoC_size_x,7)),
             cur_addr_x => std_logic_vector(to_unsigned(current_address mod NoC_size_x,7)),
             dst_addr_y => FIFO_D_out_N(14 downto 8),
             dst_addr_x => FIFO_D_out_N(7 downto 1),
             grant_N => '0', grant_E => Grant_EN, grant_W => Grant_WN, grant_S => Grant_SN, grant_L => Grant_LN,
             Req_N_valid => Req_NN_valid, Req_E_valid => Req_NE_valid, Req_W_valid => Req_NW_valid, Req_S_valid => Req_NS_valid, Req_L_valid => Req_NL_valid, 
             Req_N => Req_NN, Req_E => Req_NE, Req_W => Req_NW, Req_S => Req_NS, Req_L => Req_NL, 
            
            -- Functional Checker outputs
            err_header_not_empty_Requests_in_onehot                 => N_err_header_not_empty_Requests_in_onehot,
            err_header_empty_Requests_FF_Requests_in_equal          => N_err_header_empty_Requests_FF_Requests_in_equal,
            err_tail_not_empty_grants_Requests_in_all_zero          => N_err_tail_not_empty_grants_Requests_in_all_zero,
            err_body_or_invalid_Requests_FF_Requests_in_equal       => N_err_body_or_invalid_Requests_FF_Requests_in_equal,

            -- Structural checker outputs 
            err_grants                                              => N_err_grants,
            err_not_grants                                          => N_err_not_grants,
            err_dst_addr_cur_addr_N1                                => N_err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1                            => N_err_dst_addr_cur_addr_not_N1,
            err_dst_addr_cur_addr_E1                                => N_err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1                            => N_err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1                                => N_err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1                            => N_err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1                                => N_err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1                            => N_err_dst_addr_cur_addr_not_S1,
            err_header_not_empty_Req_N_in                           => N_err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in                           => N_err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in                           => N_err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in                           => N_err_header_not_empty_Req_S_in,
            err_header_not_empty_Req_L_in                           => N_err_header_not_empty_Req_L_in,
            err_header_empty_Req_N_in_Req_N_FF                      => N_err_header_empty_Req_N_in_Req_N_FF,
            err_header_empty_Req_E_in_Req_E_FF                      => N_err_header_empty_Req_E_in_Req_E_FF,
            err_header_empty_Req_W_in_Req_W_FF                      => N_err_header_empty_Req_W_in_Req_W_FF,
            err_header_empty_Req_S_in_Req_S_FF                      => N_err_header_empty_Req_S_in_Req_S_FF,
            err_header_empty_Req_L_in_Req_L_FF                      => N_err_header_empty_Req_L_in_Req_L_FF,
            err_tail_not_empty_grants_not_Req_N_in                  => N_err_tail_not_empty_grants_not_Req_N_in,
            err_tail_not_empty_grants_not_Req_E_in                  => N_err_tail_not_empty_grants_not_Req_E_in,
            err_tail_not_empty_grants_not_Req_W_in                  => N_err_tail_not_empty_grants_not_Req_W_in,
            err_tail_not_empty_grants_not_Req_S_in                  => N_err_tail_not_empty_grants_not_Req_S_in,
            err_tail_not_empty_grants_not_Req_L_in                  => N_err_tail_not_empty_grants_not_Req_L_in,
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal   => N_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal,
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal   => N_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal,
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal   => N_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal,
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal   => N_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal,
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal   => N_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal,
            err_tail_empty_Req_N_in_Req_N_FF_equal                  => N_err_tail_empty_Req_N_in_Req_N_FF_equal,
            err_tail_empty_Req_E_in_Req_E_FF_equal                  => N_err_tail_empty_Req_E_in_Req_E_FF_equal,
            err_tail_empty_Req_W_in_Req_W_FF_equal                  => N_err_tail_empty_Req_W_in_Req_W_FF_equal,
            err_tail_empty_Req_S_in_Req_S_FF_equal                  => N_err_tail_empty_Req_S_in_Req_S_FF_equal,
            err_tail_empty_Req_L_in_Req_L_FF_equal                  => N_err_tail_empty_Req_L_in_Req_L_FF_equal,
            err_body_or_invalid_Req_N_in_Req_N_FF                   => N_err_body_or_invalid_Req_N_in_Req_N_FF,
            err_body_or_invalid_Req_E_in_Req_E_FF                   => N_err_body_or_invalid_Req_E_in_Req_E_FF,
            err_body_or_invalid_Req_W_in_Req_W_FF                   => N_err_body_or_invalid_Req_W_in_Req_W_FF,
            err_body_or_invalid_Req_S_in_Req_S_FF                   => N_err_body_or_invalid_Req_S_in_Req_S_FF,
            err_body_or_invalid_Req_L_in_Req_L_FF                   => N_err_body_or_invalid_Req_L_in_Req_L_FF
             );

LBDR_E: LBDR_with_checkers generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_E,
             flit_type => FIFO_D_out_E(DATA_WIDTH-1 downto DATA_WIDTH-3),
             cur_addr_y => std_logic_vector(to_unsigned(current_address / NoC_size_x,7)),
             cur_addr_x => std_logic_vector(to_unsigned(current_address mod NoC_size_x,7)),
             dst_addr_y => FIFO_D_out_E(14 downto 8),
             dst_addr_x => FIFO_D_out_E(7 downto 1),
             grant_N => Grant_NE, grant_E =>'0', grant_W => Grant_WE, grant_S => Grant_SE, grant_L => Grant_LE,
             Req_N_valid => Req_EN_valid, Req_E_valid => Req_EE_valid, Req_W_valid => Req_EW_valid, Req_S_valid => Req_ES_valid, Req_L_valid => Req_EL_valid, 
             Req_N => Req_EN, Req_E => Req_EE, Req_W => Req_EW, Req_S => Req_ES, Req_L => Req_EL, 

            -- Functional Checker outputs
            err_header_not_empty_Requests_in_onehot                 => E_err_header_not_empty_Requests_in_onehot,
            err_header_empty_Requests_FF_Requests_in_equal          => E_err_header_empty_Requests_FF_Requests_in_equal,
            err_tail_not_empty_grants_Requests_in_all_zero          => E_err_tail_not_empty_grants_Requests_in_all_zero,
            err_body_or_invalid_Requests_FF_Requests_in_equal       => E_err_body_or_invalid_Requests_FF_Requests_in_equal,

            -- Structural checker outputs
            err_grants                                              => E_err_grants,
            err_not_grants                                          => E_err_not_grants,
            err_dst_addr_cur_addr_N1                                => E_err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1                            => E_err_dst_addr_cur_addr_not_N1,
            err_dst_addr_cur_addr_E1                                => E_err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1                            => E_err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1                                => E_err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1                            => E_err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1                                => E_err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1                            => E_err_dst_addr_cur_addr_not_S1,
            err_header_not_empty_Req_N_in                           => E_err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in                           => E_err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in                           => E_err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in                           => E_err_header_not_empty_Req_S_in,
            err_header_not_empty_Req_L_in                           => E_err_header_not_empty_Req_L_in,
            err_header_empty_Req_N_in_Req_N_FF                      => E_err_header_empty_Req_N_in_Req_N_FF,
            err_header_empty_Req_E_in_Req_E_FF                      => E_err_header_empty_Req_E_in_Req_E_FF,
            err_header_empty_Req_W_in_Req_W_FF                      => E_err_header_empty_Req_W_in_Req_W_FF,
            err_header_empty_Req_S_in_Req_S_FF                      => E_err_header_empty_Req_S_in_Req_S_FF,
            err_header_empty_Req_L_in_Req_L_FF                      => E_err_header_empty_Req_L_in_Req_L_FF,
            err_tail_not_empty_grants_not_Req_N_in                  => E_err_tail_not_empty_grants_not_Req_N_in,
            err_tail_not_empty_grants_not_Req_E_in                  => E_err_tail_not_empty_grants_not_Req_E_in,
            err_tail_not_empty_grants_not_Req_W_in                  => E_err_tail_not_empty_grants_not_Req_W_in,
            err_tail_not_empty_grants_not_Req_S_in                  => E_err_tail_not_empty_grants_not_Req_S_in,
            err_tail_not_empty_grants_not_Req_L_in                  => E_err_tail_not_empty_grants_not_Req_L_in,
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal   => E_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal,
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal   => E_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal,
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal   => E_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal,
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal   => E_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal,
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal   => E_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal,
            err_tail_empty_Req_N_in_Req_N_FF_equal                  => E_err_tail_empty_Req_N_in_Req_N_FF_equal,
            err_tail_empty_Req_E_in_Req_E_FF_equal                  => E_err_tail_empty_Req_E_in_Req_E_FF_equal,
            err_tail_empty_Req_W_in_Req_W_FF_equal                  => E_err_tail_empty_Req_W_in_Req_W_FF_equal,
            err_tail_empty_Req_S_in_Req_S_FF_equal                  => E_err_tail_empty_Req_S_in_Req_S_FF_equal,
            err_tail_empty_Req_L_in_Req_L_FF_equal                  => E_err_tail_empty_Req_L_in_Req_L_FF_equal,
            err_body_or_invalid_Req_N_in_Req_N_FF                   => E_err_body_or_invalid_Req_N_in_Req_N_FF,
            err_body_or_invalid_Req_E_in_Req_E_FF                   => E_err_body_or_invalid_Req_E_in_Req_E_FF,
            err_body_or_invalid_Req_W_in_Req_W_FF                   => E_err_body_or_invalid_Req_W_in_Req_W_FF,
            err_body_or_invalid_Req_S_in_Req_S_FF                   => E_err_body_or_invalid_Req_S_in_Req_S_FF,
            err_body_or_invalid_Req_L_in_Req_L_FF                   => E_err_body_or_invalid_Req_L_in_Req_L_FF
             );

LBDR_W: LBDR_with_checkers generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_W,
             flit_type => FIFO_D_out_W(DATA_WIDTH-1 downto DATA_WIDTH-3),
             cur_addr_y => std_logic_vector(to_unsigned(current_address / NoC_size_x,7)),
             cur_addr_x => std_logic_vector(to_unsigned(current_address mod NoC_size_x,7)),
             dst_addr_y => FIFO_D_out_W(14 downto 8),
             dst_addr_x => FIFO_D_out_W(7 downto 1),
             grant_N => Grant_NW, grant_E => Grant_EW, grant_W =>'0' ,grant_S => Grant_SW, grant_L => Grant_LW,
             Req_N_valid => Req_WN_valid, Req_E_valid => Req_WE_valid, Req_W_valid => Req_WW_valid, Req_S_valid => Req_WS_valid, Req_L_valid => Req_WL_valid, 
             Req_N => Req_WN, Req_E => Req_WE, Req_W => Req_WW, Req_S => Req_WS, Req_L => Req_WL, 

            -- Functional Checker outputs
            err_header_not_empty_Requests_in_onehot                 => W_err_header_not_empty_Requests_in_onehot,
            err_header_empty_Requests_FF_Requests_in_equal          => W_err_header_empty_Requests_FF_Requests_in_equal,
            err_tail_not_empty_grants_Requests_in_all_zero          => W_err_tail_not_empty_grants_Requests_in_all_zero,
            err_body_or_invalid_Requests_FF_Requests_in_equal       => W_err_body_or_invalid_Requests_FF_Requests_in_equal,

            -- Structural checker outputs
            err_grants                                              => W_err_grants,
            err_not_grants                                          => W_err_not_grants,
            err_dst_addr_cur_addr_N1                                => W_err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1                            => W_err_dst_addr_cur_addr_not_N1,
            err_dst_addr_cur_addr_E1                                => W_err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1                            => W_err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1                                => W_err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1                            => W_err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1                                => W_err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1                            => W_err_dst_addr_cur_addr_not_S1,
            err_header_not_empty_Req_N_in                           => W_err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in                           => W_err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in                           => W_err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in                           => W_err_header_not_empty_Req_S_in,
            err_header_not_empty_Req_L_in                           => W_err_header_not_empty_Req_L_in,
            err_header_empty_Req_N_in_Req_N_FF                      => W_err_header_empty_Req_N_in_Req_N_FF,
            err_header_empty_Req_E_in_Req_E_FF                      => W_err_header_empty_Req_E_in_Req_E_FF,
            err_header_empty_Req_W_in_Req_W_FF                      => W_err_header_empty_Req_W_in_Req_W_FF,
            err_header_empty_Req_S_in_Req_S_FF                      => W_err_header_empty_Req_S_in_Req_S_FF,
            err_header_empty_Req_L_in_Req_L_FF                      => W_err_header_empty_Req_L_in_Req_L_FF,
            err_tail_not_empty_grants_not_Req_N_in                  => W_err_tail_not_empty_grants_not_Req_N_in,
            err_tail_not_empty_grants_not_Req_E_in                  => W_err_tail_not_empty_grants_not_Req_E_in,
            err_tail_not_empty_grants_not_Req_W_in                  => W_err_tail_not_empty_grants_not_Req_W_in,
            err_tail_not_empty_grants_not_Req_S_in                  => W_err_tail_not_empty_grants_not_Req_S_in,
            err_tail_not_empty_grants_not_Req_L_in                  => W_err_tail_not_empty_grants_not_Req_L_in,
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal   => W_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal,
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal   => W_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal,
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal   => W_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal,
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal   => W_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal,
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal   => W_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal,
            err_tail_empty_Req_N_in_Req_N_FF_equal                  => W_err_tail_empty_Req_N_in_Req_N_FF_equal,
            err_tail_empty_Req_E_in_Req_E_FF_equal                  => W_err_tail_empty_Req_E_in_Req_E_FF_equal,
            err_tail_empty_Req_W_in_Req_W_FF_equal                  => W_err_tail_empty_Req_W_in_Req_W_FF_equal,
            err_tail_empty_Req_S_in_Req_S_FF_equal                  => W_err_tail_empty_Req_S_in_Req_S_FF_equal,
            err_tail_empty_Req_L_in_Req_L_FF_equal                  => W_err_tail_empty_Req_L_in_Req_L_FF_equal,
            err_body_or_invalid_Req_N_in_Req_N_FF                   => W_err_body_or_invalid_Req_N_in_Req_N_FF,
            err_body_or_invalid_Req_E_in_Req_E_FF                   => W_err_body_or_invalid_Req_E_in_Req_E_FF,
            err_body_or_invalid_Req_W_in_Req_W_FF                   => W_err_body_or_invalid_Req_W_in_Req_W_FF,
            err_body_or_invalid_Req_S_in_Req_S_FF                   => W_err_body_or_invalid_Req_S_in_Req_S_FF,
            err_body_or_invalid_Req_L_in_Req_L_FF                   => W_err_body_or_invalid_Req_L_in_Req_L_FF

             );

LBDR_S: LBDR_with_checkers generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_S,
             flit_type => FIFO_D_out_S(DATA_WIDTH-1 downto DATA_WIDTH-3),
             cur_addr_y => std_logic_vector(to_unsigned(current_address / NoC_size_x,7)),
             cur_addr_x => std_logic_vector(to_unsigned(current_address mod NoC_size_x,7)),
             dst_addr_y => FIFO_D_out_S(14 downto 8),
             dst_addr_x => FIFO_D_out_S(7 downto 1),
             grant_N => Grant_NS, grant_E => Grant_ES, grant_W => Grant_WS ,grant_S => '0', grant_L => Grant_LS,
             Req_N_valid => Req_SN_valid, Req_E_valid => Req_SE_valid, Req_W_valid => Req_SW_valid, Req_S_valid => Req_SS_valid, Req_L_valid => Req_SL_valid, 
             Req_N => Req_SN, Req_E => Req_SE, Req_W => Req_SW, Req_S => Req_SS, Req_L => Req_SL, 

            -- Functional Checker outputs
            err_header_not_empty_Requests_in_onehot                 => S_err_header_not_empty_Requests_in_onehot,
            err_header_empty_Requests_FF_Requests_in_equal          => S_err_header_empty_Requests_FF_Requests_in_equal,
            err_tail_not_empty_grants_Requests_in_all_zero          => S_err_tail_not_empty_grants_Requests_in_all_zero,
            err_body_or_invalid_Requests_FF_Requests_in_equal       => S_err_body_or_invalid_Requests_FF_Requests_in_equal,

            -- Structural checker outputs
            err_grants                                              => S_err_grants,
            err_not_grants                                          => S_err_not_grants,
            err_dst_addr_cur_addr_N1                                => S_err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1                            => S_err_dst_addr_cur_addr_not_N1,
            err_dst_addr_cur_addr_E1                                => S_err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1                            => S_err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1                                => S_err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1                            => S_err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1                                => S_err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1                            => S_err_dst_addr_cur_addr_not_S1,
            err_header_not_empty_Req_N_in                           => S_err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in                           => S_err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in                           => S_err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in                           => S_err_header_not_empty_Req_S_in,
            err_header_not_empty_Req_L_in                           => S_err_header_not_empty_Req_L_in,
            err_header_empty_Req_N_in_Req_N_FF                      => S_err_header_empty_Req_N_in_Req_N_FF,
            err_header_empty_Req_E_in_Req_E_FF                      => S_err_header_empty_Req_E_in_Req_E_FF,
            err_header_empty_Req_W_in_Req_W_FF                      => S_err_header_empty_Req_W_in_Req_W_FF,
            err_header_empty_Req_S_in_Req_S_FF                      => S_err_header_empty_Req_S_in_Req_S_FF,
            err_header_empty_Req_L_in_Req_L_FF                      => S_err_header_empty_Req_L_in_Req_L_FF,
            err_tail_not_empty_grants_not_Req_N_in                  => S_err_tail_not_empty_grants_not_Req_N_in,
            err_tail_not_empty_grants_not_Req_E_in                  => S_err_tail_not_empty_grants_not_Req_E_in,
            err_tail_not_empty_grants_not_Req_W_in                  => S_err_tail_not_empty_grants_not_Req_W_in,
            err_tail_not_empty_grants_not_Req_S_in                  => S_err_tail_not_empty_grants_not_Req_S_in,
            err_tail_not_empty_grants_not_Req_L_in                  => S_err_tail_not_empty_grants_not_Req_L_in,
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal   => S_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal,
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal   => S_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal,
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal   => S_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal,
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal   => S_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal,
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal   => S_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal,
            err_tail_empty_Req_N_in_Req_N_FF_equal                  => S_err_tail_empty_Req_N_in_Req_N_FF_equal,
            err_tail_empty_Req_E_in_Req_E_FF_equal                  => S_err_tail_empty_Req_E_in_Req_E_FF_equal,
            err_tail_empty_Req_W_in_Req_W_FF_equal                  => S_err_tail_empty_Req_W_in_Req_W_FF_equal,
            err_tail_empty_Req_S_in_Req_S_FF_equal                  => S_err_tail_empty_Req_S_in_Req_S_FF_equal,
            err_tail_empty_Req_L_in_Req_L_FF_equal                  => S_err_tail_empty_Req_L_in_Req_L_FF_equal,
            err_body_or_invalid_Req_N_in_Req_N_FF                   => S_err_body_or_invalid_Req_N_in_Req_N_FF,
            err_body_or_invalid_Req_E_in_Req_E_FF                   => S_err_body_or_invalid_Req_E_in_Req_E_FF,
            err_body_or_invalid_Req_W_in_Req_W_FF                   => S_err_body_or_invalid_Req_W_in_Req_W_FF,
            err_body_or_invalid_Req_S_in_Req_S_FF                   => S_err_body_or_invalid_Req_S_in_Req_S_FF,
            err_body_or_invalid_Req_L_in_Req_L_FF                   => S_err_body_or_invalid_Req_L_in_Req_L_FF
             );

LBDR_L: LBDR_with_checkers generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_L,
             flit_type => FIFO_D_out_L(DATA_WIDTH-1 downto DATA_WIDTH-3),
             cur_addr_y => std_logic_vector(to_unsigned(current_address / NoC_size_x,7)),
             cur_addr_x => std_logic_vector(to_unsigned(current_address mod NoC_size_x,7)),
             dst_addr_y => FIFO_D_out_L(14 downto 8),
             dst_addr_x => FIFO_D_out_L(7 downto 1),
             grant_N => Grant_NL, grant_E => Grant_EL, grant_W => Grant_WL,grant_S => Grant_SL, grant_L => '0',
             Req_N_valid => Req_LN_valid, Req_E_valid => Req_LE_valid, Req_W_valid => Req_LW_valid, Req_S_valid => Req_LS_valid, Req_L_valid => Req_LL_valid, 
             Req_N => Req_LN, Req_E => Req_LE, Req_W => Req_LW, Req_S => Req_LS, Req_L => Req_LL, 

            -- Functional Checker outputs
            err_header_not_empty_Requests_in_onehot                 => L_err_header_not_empty_Requests_in_onehot,
            err_header_empty_Requests_FF_Requests_in_equal          => L_err_header_empty_Requests_FF_Requests_in_equal,
            err_tail_not_empty_grants_Requests_in_all_zero          => L_err_tail_not_empty_grants_Requests_in_all_zero,
            err_body_or_invalid_Requests_FF_Requests_in_equal       => L_err_body_or_invalid_Requests_FF_Requests_in_equal,

            -- Structural checker outputs
            err_grants                                              => L_err_grants,
            err_not_grants                                          => L_err_not_grants,
            err_dst_addr_cur_addr_N1                                => L_err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1                            => L_err_dst_addr_cur_addr_not_N1,
            err_dst_addr_cur_addr_E1                                => L_err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1                            => L_err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1                                => L_err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1                            => L_err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1                                => L_err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1                            => L_err_dst_addr_cur_addr_not_S1,
            err_header_not_empty_Req_N_in                           => L_err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in                           => L_err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in                           => L_err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in                           => L_err_header_not_empty_Req_S_in,
            err_header_not_empty_Req_L_in                           => L_err_header_not_empty_Req_L_in,
            err_header_empty_Req_N_in_Req_N_FF                      => L_err_header_empty_Req_N_in_Req_N_FF,
            err_header_empty_Req_E_in_Req_E_FF                      => L_err_header_empty_Req_E_in_Req_E_FF,
            err_header_empty_Req_W_in_Req_W_FF                      => L_err_header_empty_Req_W_in_Req_W_FF,
            err_header_empty_Req_S_in_Req_S_FF                      => L_err_header_empty_Req_S_in_Req_S_FF,
            err_header_empty_Req_L_in_Req_L_FF                      => L_err_header_empty_Req_L_in_Req_L_FF,
            err_tail_not_empty_grants_not_Req_N_in                  => L_err_tail_not_empty_grants_not_Req_N_in,
            err_tail_not_empty_grants_not_Req_E_in                  => L_err_tail_not_empty_grants_not_Req_E_in,
            err_tail_not_empty_grants_not_Req_W_in                  => L_err_tail_not_empty_grants_not_Req_W_in,
            err_tail_not_empty_grants_not_Req_S_in                  => L_err_tail_not_empty_grants_not_Req_S_in,
            err_tail_not_empty_grants_not_Req_L_in                  => L_err_tail_not_empty_grants_not_Req_L_in,
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal   => L_err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal,
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal   => L_err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal,
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal   => L_err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal,
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal   => L_err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal,
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal   => L_err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal,
            err_tail_empty_Req_N_in_Req_N_FF_equal                  => L_err_tail_empty_Req_N_in_Req_N_FF_equal,
            err_tail_empty_Req_E_in_Req_E_FF_equal                  => L_err_tail_empty_Req_E_in_Req_E_FF_equal,
            err_tail_empty_Req_W_in_Req_W_FF_equal                  => L_err_tail_empty_Req_W_in_Req_W_FF_equal,
            err_tail_empty_Req_S_in_Req_S_FF_equal                  => L_err_tail_empty_Req_S_in_Req_S_FF_equal,
            err_tail_empty_Req_L_in_Req_L_FF_equal                  => L_err_tail_empty_Req_L_in_Req_L_FF_equal,
            err_body_or_invalid_Req_N_in_Req_N_FF                   => L_err_body_or_invalid_Req_N_in_Req_N_FF,
            err_body_or_invalid_Req_E_in_Req_E_FF                   => L_err_body_or_invalid_Req_E_in_Req_E_FF,
            err_body_or_invalid_Req_W_in_Req_W_FF                   => L_err_body_or_invalid_Req_W_in_Req_W_FF,
            err_body_or_invalid_Req_S_in_Req_S_FF                   => L_err_body_or_invalid_Req_S_in_Req_S_FF,
            err_body_or_invalid_Req_L_in_Req_L_FF                   => L_err_body_or_invalid_Req_L_in_Req_L_FF
             );

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

-- switch allocator

allocator_unit: allocator 
            port map ( reset => reset, clk => clk,
            -- flow control
            credit_in_N => credit_in_N, credit_in_E => credit_in_E, credit_in_W => credit_in_W, credit_in_S => credit_in_S, credit_in_L => credit_in_L,
            
            -- BUBBLES
            hold_in_N => hold_in_N, hold_in_E => hold_in_E, hold_in_W => hold_in_W, hold_in_S => hold_in_S, hold_in_L => hold_in_L,

            -- requests from the LBDRS
            req_N_N_valid => '0',           req_N_E_valid => Req_NE_valid,  req_N_W_valid => Req_NW_valid,  req_N_S_valid => Req_NS_valid,  req_N_L_valid => Req_NL_valid,
            req_E_N_valid => Req_EN_valid,  req_E_E_valid => '0',           req_E_W_valid => Req_EW_valid,  req_E_S_valid => Req_ES_valid,  req_E_L_valid => Req_EL_valid,
            req_W_N_valid => Req_WN_valid,  req_W_E_valid => Req_WE_valid,  req_W_W_valid => '0',           req_W_S_valid => Req_WS_valid,  req_W_L_valid => Req_WL_valid,
            req_S_N_valid => Req_SN_valid,  req_S_E_valid => Req_SE_valid,  req_S_W_valid => Req_SW_valid,  req_S_S_valid => '0',           req_S_L_valid => Req_SL_valid,
            req_L_N_valid => Req_LN_valid,  req_L_E_valid => Req_LE_valid,  req_L_W_valid => Req_LW_valid,  req_L_S_valid => Req_LS_valid,  req_L_L_valid => '0',

            req_N_N => '0',     req_N_E => Req_NE,  req_N_W => Req_NW,  req_N_S => Req_NS,  req_N_L => Req_NL,
            req_E_N => Req_EN,  req_E_E => '0',     req_E_W => Req_EW,  req_E_S => Req_ES,  req_E_L => Req_EL,
            req_W_N => Req_WN,  req_W_E => Req_WE,  req_W_W => '0',     req_W_S => Req_WS,  req_W_L => Req_WL,
            req_S_N => Req_SN,  req_S_E => Req_SE,  req_S_W => Req_SW,  req_S_S => '0',     req_S_L => Req_SL,
            req_L_N => Req_LN,  req_L_E => Req_LE,  req_L_W => Req_LW,  req_L_S => Req_LS,  req_L_L => '0',
            empty_N => empty_N, empty_E => empty_E, empty_w => empty_W, empty_S => empty_S, empty_L => empty_L,
            valid_N => valid_out_N, valid_E => valid_out_E, valid_W => valid_out_W, valid_S => valid_out_S, valid_L => valid_out_L,
            -- grant_X_Y means the grant for X output port towards Y input port
            -- this means for any X in [N, E, W, S, L] then set grant_X_Y is one hot!
            grant_N_N => Grant_NN, grant_N_E => Grant_NE, grant_N_W => Grant_NW, grant_N_S => Grant_NS, grant_N_L => Grant_NL,
            grant_E_N => Grant_EN, grant_E_E => Grant_EE, grant_E_W => Grant_EW, grant_E_S => Grant_ES, grant_E_L => Grant_EL,
            grant_W_N => Grant_WN, grant_W_E => Grant_WE, grant_W_W => Grant_WW, grant_W_S => Grant_WS, grant_W_L => Grant_WL,
            grant_S_N => Grant_SN, grant_S_E => Grant_SE, grant_S_W => Grant_SW, grant_S_S => Grant_SS, grant_S_L => Grant_SL,
            grant_L_N => Grant_LN, grant_L_E => Grant_LE, grant_L_W => Grant_LW, grant_L_S => Grant_LS, grant_L_L => Grant_LL,

            grant_N_N_xbar => Grant_NN_xbar, grant_N_E_xbar => Grant_NE_xbar, grant_N_W_xbar => Grant_NW_xbar, grant_N_S_xbar => Grant_NS_xbar, grant_N_L_xbar => Grant_NL_xbar,
            grant_E_N_xbar => Grant_EN_xbar, grant_E_E_xbar => Grant_EE_xbar, grant_E_W_xbar => Grant_EW_xbar, grant_E_S_xbar => Grant_ES_xbar, grant_E_L_xbar => Grant_EL_xbar,
            grant_W_N_xbar => Grant_WN_xbar, grant_W_E_xbar => Grant_WE_xbar, grant_W_W_xbar => Grant_WW_xbar, grant_W_S_xbar => Grant_WS_xbar, grant_W_L_xbar => Grant_WL_xbar,
            grant_S_N_xbar => Grant_SN_xbar, grant_S_E_xbar => Grant_SE_xbar, grant_S_W_xbar => Grant_SW_xbar, grant_S_S_xbar => Grant_SS_xbar, grant_S_L_xbar => Grant_SL_xbar,
            grant_L_N_xbar => Grant_LN_xbar, grant_L_E_xbar => Grant_LE_xbar, grant_L_W_xbar => Grant_LW_xbar, grant_L_S_xbar => Grant_LS_xbar, grant_L_L_xbar => Grant_LL_xbar, 

            N_err_arbiter_in_Requests_state_in_state_not_equal => N_err_arbiter_in_Requests_state_in_state_not_equal , 

            N_err_IDLE_Req_N => N_err_IDLE_Req_N , 
            N_err_IDLE_grant_N=> N_err_IDLE_grant_N, 
            N_err_North_Req_N => N_err_North_Req_N , 
            N_err_North_grant_N => N_err_North_grant_N , 
            N_err_East_Req_E => N_err_East_Req_E , 
            N_err_East_grant_E => N_err_East_grant_E , 
            N_err_West_Req_W => N_err_West_Req_W , 
            N_err_West_grant_W => N_err_West_grant_W , 
            N_err_South_Req_S=> N_err_South_Req_S, 
            N_err_South_grant_S=> N_err_South_grant_S, 
            N_err_Local_Req_L => N_err_Local_Req_L , 
            N_err_Local_grant_L=> N_err_Local_grant_L, 

            N_err_IDLE_Req_E=> N_err_IDLE_Req_E, 
            N_err_IDLE_grant_E=> N_err_IDLE_grant_E, 
            N_err_North_Req_E=> N_err_North_Req_E, 
            N_err_North_grant_E=> N_err_North_grant_E, 
            N_err_East_Req_W=> N_err_East_Req_W, 
            N_err_East_grant_W=> N_err_East_grant_W, 
            N_err_West_Req_S=> N_err_West_Req_S, 
            N_err_West_grant_S=> N_err_West_grant_S, 
            N_err_South_Req_L=> N_err_South_Req_L, 
            N_err_South_grant_L=> N_err_South_grant_L, 
            N_err_Local_Req_N=> N_err_Local_Req_N, 
            N_err_Local_grant_N=> N_err_Local_grant_N, 

            N_err_IDLE_Req_W=> N_err_IDLE_Req_W, 
            N_err_IDLE_grant_W=> N_err_IDLE_grant_W, 
            N_err_North_Req_W=> N_err_North_Req_W, 
            N_err_North_grant_W=> N_err_North_grant_W, 
            N_err_East_Req_S=> N_err_East_Req_S, 
            N_err_East_grant_S=> N_err_East_grant_S, 
            N_err_West_Req_L=> N_err_West_Req_L, 
            N_err_West_grant_L=> N_err_West_grant_L, 
            N_err_South_Req_N => N_err_South_Req_N , 
            N_err_South_grant_N=> N_err_South_grant_N, 
            N_err_Local_Req_E=> N_err_Local_Req_E, 
            N_err_Local_grant_E => N_err_Local_grant_E , 

            N_err_IDLE_Req_S => N_err_IDLE_Req_S , 
            N_err_IDLE_grant_S => N_err_IDLE_grant_S , 
            N_err_North_Req_S => N_err_North_Req_S , 
            N_err_North_grant_S => N_err_North_grant_S , 
            N_err_East_Req_L => N_err_East_Req_L , 
            N_err_East_grant_L => N_err_East_grant_L , 
            N_err_West_Req_N => N_err_West_Req_N , 
            N_err_West_grant_N => N_err_West_grant_N , 
            N_err_South_Req_E => N_err_South_Req_E , 
            N_err_South_grant_E => N_err_South_grant_E , 
            N_err_Local_Req_W => N_err_Local_Req_W , 
            N_err_Local_grant_W => N_err_Local_grant_W , 

            N_err_IDLE_Req_L => N_err_IDLE_Req_L , 
            N_err_IDLE_grant_L => N_err_IDLE_grant_L , 
            N_err_North_Req_L => N_err_North_Req_L , 
            N_err_North_grant_L => N_err_North_grant_L , 
            N_err_East_Req_N => N_err_East_Req_N , 
            N_err_East_grant_N => N_err_East_grant_N , 
            N_err_West_Req_E => N_err_West_Req_E , 
            N_err_West_grant_E => N_err_West_grant_E , 
            N_err_South_Req_W => N_err_South_Req_W , 
            N_err_South_grant_W => N_err_South_grant_W , 
            N_err_Local_Req_S => N_err_Local_Req_S , 
            N_err_Local_grant_S => N_err_Local_grant_S , 

            N_err_arbiter_in_state_in_onehot => N_err_arbiter_in_state_in_onehot , 
            N_err_arbiter_in_no_request_grants => N_err_arbiter_in_no_request_grants , 
            N_err_arbiter_in_request_no_grants => N_err_arbiter_in_request_no_grants , 

            N_err_no_Req_N_grant_N=> N_err_no_Req_N_grant_N, 
            N_err_no_Req_E_grant_E => N_err_no_Req_E_grant_E , 
            N_err_no_Req_W_grant_W => N_err_no_Req_W_grant_W , 
            N_err_no_Req_S_grant_S => N_err_no_Req_S_grant_S , 
            N_err_no_Req_L_grant_L => N_err_no_Req_L_grant_L , 

            E_err_arbiter_in_Requests_state_in_state_not_equal => E_err_arbiter_in_Requests_state_in_state_not_equal , 

            E_err_IDLE_Req_N => E_err_IDLE_Req_N , 
            E_err_IDLE_grant_N=> E_err_IDLE_grant_N, 
            E_err_North_Req_N => E_err_North_Req_N , 
            E_err_North_grant_N => E_err_North_grant_N , 
            E_err_East_Req_E => E_err_East_Req_E , 
            E_err_East_grant_E => E_err_East_grant_E , 
            E_err_West_Req_W => E_err_West_Req_W , 
            E_err_West_grant_W => E_err_West_grant_W , 
            E_err_South_Req_S=> E_err_South_Req_S, 
            E_err_South_grant_S=> E_err_South_grant_S, 
            E_err_Local_Req_L => E_err_Local_Req_L , 
            E_err_Local_grant_L=> E_err_Local_grant_L, 

            E_err_IDLE_Req_E=> E_err_IDLE_Req_E, 
            E_err_IDLE_grant_E=> E_err_IDLE_grant_E, 
            E_err_North_Req_E=> E_err_North_Req_E, 
            E_err_North_grant_E=> E_err_North_grant_E, 
            E_err_East_Req_W=> E_err_East_Req_W, 
            E_err_East_grant_W=> E_err_East_grant_W, 
            E_err_West_Req_S=> E_err_West_Req_S, 
            E_err_West_grant_S=> E_err_West_grant_S, 
            E_err_South_Req_L=> E_err_South_Req_L, 
            E_err_South_grant_L=> E_err_South_grant_L, 
            E_err_Local_Req_N=> E_err_Local_Req_N, 
            E_err_Local_grant_N=> E_err_Local_grant_N, 

            E_err_IDLE_Req_W=> E_err_IDLE_Req_W, 
            E_err_IDLE_grant_W=> E_err_IDLE_grant_W, 
            E_err_North_Req_W=> E_err_North_Req_W, 
            E_err_North_grant_W=> E_err_North_grant_W, 
            E_err_East_Req_S=> E_err_East_Req_S, 
            E_err_East_grant_S=> E_err_East_grant_S, 
            E_err_West_Req_L=> E_err_West_Req_L, 
            E_err_West_grant_L=> E_err_West_grant_L, 
            E_err_South_Req_N => E_err_South_Req_N , 
            E_err_South_grant_N=> E_err_South_grant_N, 
            E_err_Local_Req_E=> E_err_Local_Req_E, 
            E_err_Local_grant_E => E_err_Local_grant_E , 

            E_err_IDLE_Req_S => E_err_IDLE_Req_S , 
            E_err_IDLE_grant_S => E_err_IDLE_grant_S , 
            E_err_North_Req_S => E_err_North_Req_S , 
            E_err_North_grant_S => E_err_North_grant_S , 
            E_err_East_Req_L => E_err_East_Req_L , 
            E_err_East_grant_L => E_err_East_grant_L , 
            E_err_West_Req_N => E_err_West_Req_N , 
            E_err_West_grant_N => E_err_West_grant_N , 
            E_err_South_Req_E => E_err_South_Req_E , 
            E_err_South_grant_E => E_err_South_grant_E , 
            E_err_Local_Req_W => E_err_Local_Req_W , 
            E_err_Local_grant_W => E_err_Local_grant_W , 

            E_err_IDLE_Req_L => E_err_IDLE_Req_L , 
            E_err_IDLE_grant_L => E_err_IDLE_grant_L , 
            E_err_North_Req_L => E_err_North_Req_L , 
            E_err_North_grant_L => E_err_North_grant_L , 
            E_err_East_Req_N => E_err_East_Req_N , 
            E_err_East_grant_N => E_err_East_grant_N , 
            E_err_West_Req_E => E_err_West_Req_E , 
            E_err_West_grant_E => E_err_West_grant_E , 
            E_err_South_Req_W => E_err_South_Req_W , 
            E_err_South_grant_W => E_err_South_grant_W , 
            E_err_Local_Req_S => E_err_Local_Req_S , 
            E_err_Local_grant_S => E_err_Local_grant_S , 

            E_err_arbiter_in_state_in_onehot => E_err_arbiter_in_state_in_onehot , 
            E_err_arbiter_in_no_request_grants => E_err_arbiter_in_no_request_grants , 
            E_err_arbiter_in_request_no_grants => E_err_arbiter_in_request_no_grants , 

            E_err_no_Req_N_grant_N=> E_err_no_Req_N_grant_N, 
            E_err_no_Req_E_grant_E => E_err_no_Req_E_grant_E , 
            E_err_no_Req_W_grant_W => E_err_no_Req_W_grant_W , 
            E_err_no_Req_S_grant_S => E_err_no_Req_S_grant_S , 
            E_err_no_Req_L_grant_L => E_err_no_Req_L_grant_L , 

            W_err_arbiter_in_Requests_state_in_state_not_equal => W_err_arbiter_in_Requests_state_in_state_not_equal , 

            W_err_IDLE_Req_N => W_err_IDLE_Req_N , 
            W_err_IDLE_grant_N=> W_err_IDLE_grant_N, 
            W_err_North_Req_N => W_err_North_Req_N , 
            W_err_North_grant_N => W_err_North_grant_N , 
            W_err_East_Req_E => W_err_East_Req_E , 
            W_err_East_grant_E => W_err_East_grant_E , 
            W_err_West_Req_W => W_err_West_Req_W , 
            W_err_West_grant_W => W_err_West_grant_W , 
            W_err_South_Req_S=> W_err_South_Req_S, 
            W_err_South_grant_S=> W_err_South_grant_S, 
            W_err_Local_Req_L => W_err_Local_Req_L , 
            W_err_Local_grant_L=> W_err_Local_grant_L, 

            W_err_IDLE_Req_E=> W_err_IDLE_Req_E, 
            W_err_IDLE_grant_E=> W_err_IDLE_grant_E, 
            W_err_North_Req_E=> W_err_North_Req_E, 
            W_err_North_grant_E=> W_err_North_grant_E, 
            W_err_East_Req_W=> W_err_East_Req_W, 
            W_err_East_grant_W=> W_err_East_grant_W, 
            W_err_West_Req_S=> W_err_West_Req_S, 
            W_err_West_grant_S=> W_err_West_grant_S, 
            W_err_South_Req_L=> W_err_South_Req_L, 
            W_err_South_grant_L=> W_err_South_grant_L, 
            W_err_Local_Req_N=> W_err_Local_Req_N, 
            W_err_Local_grant_N=> W_err_Local_grant_N, 

            W_err_IDLE_Req_W=> W_err_IDLE_Req_W, 
            W_err_IDLE_grant_W=> W_err_IDLE_grant_W, 
            W_err_North_Req_W=> W_err_North_Req_W, 
            W_err_North_grant_W=> W_err_North_grant_W, 
            W_err_East_Req_S=> W_err_East_Req_S, 
            W_err_East_grant_S=> W_err_East_grant_S, 
            W_err_West_Req_L=> W_err_West_Req_L, 
            W_err_West_grant_L=> W_err_West_grant_L, 
            W_err_South_Req_N => W_err_South_Req_N , 
            W_err_South_grant_N=> W_err_South_grant_N, 
            W_err_Local_Req_E=> W_err_Local_Req_E, 
            W_err_Local_grant_E => W_err_Local_grant_E , 

            W_err_IDLE_Req_S => W_err_IDLE_Req_S , 
            W_err_IDLE_grant_S => W_err_IDLE_grant_S , 
            W_err_North_Req_S => W_err_North_Req_S , 
            W_err_North_grant_S => W_err_North_grant_S , 
            W_err_East_Req_L => W_err_East_Req_L , 
            W_err_East_grant_L => W_err_East_grant_L , 
            W_err_West_Req_N => W_err_West_Req_N , 
            W_err_West_grant_N => W_err_West_grant_N , 
            W_err_South_Req_E => W_err_South_Req_E , 
            W_err_South_grant_E => W_err_South_grant_E , 
            W_err_Local_Req_W => W_err_Local_Req_W , 
            W_err_Local_grant_W => W_err_Local_grant_W , 

            W_err_IDLE_Req_L => W_err_IDLE_Req_L , 
            W_err_IDLE_grant_L => W_err_IDLE_grant_L , 
            W_err_North_Req_L => W_err_North_Req_L , 
            W_err_North_grant_L => W_err_North_grant_L , 
            W_err_East_Req_N => W_err_East_Req_N , 
            W_err_East_grant_N => W_err_East_grant_N , 
            W_err_West_Req_E => W_err_West_Req_E , 
            W_err_West_grant_E => W_err_West_grant_E , 
            W_err_South_Req_W => W_err_South_Req_W , 
            W_err_South_grant_W => W_err_South_grant_W , 
            W_err_Local_Req_S => W_err_Local_Req_S , 
            W_err_Local_grant_S => W_err_Local_grant_S , 

            W_err_arbiter_in_state_in_onehot => W_err_arbiter_in_state_in_onehot , 
            W_err_arbiter_in_no_request_grants => W_err_arbiter_in_no_request_grants , 
            W_err_arbiter_in_request_no_grants => W_err_arbiter_in_request_no_grants , 

            W_err_no_Req_N_grant_N=> W_err_no_Req_N_grant_N, 
            W_err_no_Req_E_grant_E => W_err_no_Req_E_grant_E , 
            W_err_no_Req_W_grant_W => W_err_no_Req_W_grant_W , 
            W_err_no_Req_S_grant_S => W_err_no_Req_S_grant_S , 
            W_err_no_Req_L_grant_L => W_err_no_Req_L_grant_L , 

            S_err_arbiter_in_Requests_state_in_state_not_equal => S_err_arbiter_in_Requests_state_in_state_not_equal , 

            S_err_IDLE_Req_N => S_err_IDLE_Req_N , 
            S_err_IDLE_grant_N=> S_err_IDLE_grant_N, 
            S_err_North_Req_N => S_err_North_Req_N , 
            S_err_North_grant_N => S_err_North_grant_N , 
            S_err_East_Req_E => S_err_East_Req_E , 
            S_err_East_grant_E => S_err_East_grant_E , 
            S_err_West_Req_W => S_err_West_Req_W , 
            S_err_West_grant_W => S_err_West_grant_W , 
            S_err_South_Req_S=> S_err_South_Req_S, 
            S_err_South_grant_S=> S_err_South_grant_S, 
            S_err_Local_Req_L => S_err_Local_Req_L , 
            S_err_Local_grant_L=> S_err_Local_grant_L, 

            S_err_IDLE_Req_E=> S_err_IDLE_Req_E, 
            S_err_IDLE_grant_E=> S_err_IDLE_grant_E, 
            S_err_North_Req_E=> S_err_North_Req_E, 
            S_err_North_grant_E=> S_err_North_grant_E, 
            S_err_East_Req_W=> S_err_East_Req_W, 
            S_err_East_grant_W=> S_err_East_grant_W, 
            S_err_West_Req_S=> S_err_West_Req_S, 
            S_err_West_grant_S=> S_err_West_grant_S, 
            S_err_South_Req_L=> S_err_South_Req_L, 
            S_err_South_grant_L=> S_err_South_grant_L, 
            S_err_Local_Req_N=> S_err_Local_Req_N, 
            S_err_Local_grant_N=> S_err_Local_grant_N, 

            S_err_IDLE_Req_W=> S_err_IDLE_Req_W, 
            S_err_IDLE_grant_W=> S_err_IDLE_grant_W, 
            S_err_North_Req_W=> S_err_North_Req_W, 
            S_err_North_grant_W=> S_err_North_grant_W, 
            S_err_East_Req_S=> S_err_East_Req_S, 
            S_err_East_grant_S=> S_err_East_grant_S, 
            S_err_West_Req_L=> S_err_West_Req_L, 
            S_err_West_grant_L=> S_err_West_grant_L, 
            S_err_South_Req_N => S_err_South_Req_N , 
            S_err_South_grant_N=> S_err_South_grant_N, 
            S_err_Local_Req_E=> S_err_Local_Req_E, 
            S_err_Local_grant_E => S_err_Local_grant_E , 

            S_err_IDLE_Req_S => S_err_IDLE_Req_S , 
            S_err_IDLE_grant_S => S_err_IDLE_grant_S , 
            S_err_North_Req_S => S_err_North_Req_S , 
            S_err_North_grant_S => S_err_North_grant_S , 
            S_err_East_Req_L => S_err_East_Req_L , 
            S_err_East_grant_L => S_err_East_grant_L , 
            S_err_West_Req_N => S_err_West_Req_N , 
            S_err_West_grant_N => S_err_West_grant_N , 
            S_err_South_Req_E => S_err_South_Req_E , 
            S_err_South_grant_E => S_err_South_grant_E , 
            S_err_Local_Req_W => S_err_Local_Req_W , 
            S_err_Local_grant_W => S_err_Local_grant_W , 

            S_err_IDLE_Req_L => S_err_IDLE_Req_L , 
            S_err_IDLE_grant_L => S_err_IDLE_grant_L , 
            S_err_North_Req_L => S_err_North_Req_L , 
            S_err_North_grant_L => S_err_North_grant_L , 
            S_err_East_Req_N => S_err_East_Req_N , 
            S_err_East_grant_N => S_err_East_grant_N , 
            S_err_West_Req_E => S_err_West_Req_E , 
            S_err_West_grant_E => S_err_West_grant_E , 
            S_err_South_Req_W => S_err_South_Req_W , 
            S_err_South_grant_W => S_err_South_grant_W , 
            S_err_Local_Req_S => S_err_Local_Req_S , 
            S_err_Local_grant_S => S_err_Local_grant_S , 

            S_err_arbiter_in_state_in_onehot => S_err_arbiter_in_state_in_onehot , 
            S_err_arbiter_in_no_request_grants => S_err_arbiter_in_no_request_grants , 
            S_err_arbiter_in_request_no_grants => S_err_arbiter_in_request_no_grants , 

            S_err_no_Req_N_grant_N=> S_err_no_Req_N_grant_N, 
            S_err_no_Req_E_grant_E => S_err_no_Req_E_grant_E , 
            S_err_no_Req_W_grant_W => S_err_no_Req_W_grant_W , 
            S_err_no_Req_S_grant_S => S_err_no_Req_S_grant_S , 
            S_err_no_Req_L_grant_L => S_err_no_Req_L_grant_L , 

            L_err_arbiter_in_Requests_state_in_state_not_equal => L_err_arbiter_in_Requests_state_in_state_not_equal , 

            L_err_IDLE_Req_N => L_err_IDLE_Req_N , 
            L_err_IDLE_grant_N=> L_err_IDLE_grant_N, 
            L_err_North_Req_N => L_err_North_Req_N , 
            L_err_North_grant_N => L_err_North_grant_N , 
            L_err_East_Req_E => L_err_East_Req_E , 
            L_err_East_grant_E => L_err_East_grant_E , 
            L_err_West_Req_W => L_err_West_Req_W , 
            L_err_West_grant_W => L_err_West_grant_W , 
            L_err_South_Req_S=> L_err_South_Req_S, 
            L_err_South_grant_S=> L_err_South_grant_S, 
            L_err_Local_Req_L => L_err_Local_Req_L , 
            L_err_Local_grant_L=> L_err_Local_grant_L, 

            L_err_IDLE_Req_E=> L_err_IDLE_Req_E, 
            L_err_IDLE_grant_E=> L_err_IDLE_grant_E, 
            L_err_North_Req_E=> L_err_North_Req_E, 
            L_err_North_grant_E=> L_err_North_grant_E, 
            L_err_East_Req_W=> L_err_East_Req_W, 
            L_err_East_grant_W=> L_err_East_grant_W, 
            L_err_West_Req_S=> L_err_West_Req_S, 
            L_err_West_grant_S=> L_err_West_grant_S, 
            L_err_South_Req_L=> L_err_South_Req_L, 
            L_err_South_grant_L=> L_err_South_grant_L, 
            L_err_Local_Req_N=> L_err_Local_Req_N, 
            L_err_Local_grant_N=> L_err_Local_grant_N, 

            L_err_IDLE_Req_W=> L_err_IDLE_Req_W, 
            L_err_IDLE_grant_W=> L_err_IDLE_grant_W, 
            L_err_North_Req_W=> L_err_North_Req_W, 
            L_err_North_grant_W=> L_err_North_grant_W, 
            L_err_East_Req_S=> L_err_East_Req_S, 
            L_err_East_grant_S=> L_err_East_grant_S, 
            L_err_West_Req_L=> L_err_West_Req_L, 
            L_err_West_grant_L=> L_err_West_grant_L, 
            L_err_South_Req_N => L_err_South_Req_N , 
            L_err_South_grant_N=> L_err_South_grant_N, 
            L_err_Local_Req_E=> L_err_Local_Req_E, 
            L_err_Local_grant_E => L_err_Local_grant_E , 

            L_err_IDLE_Req_S => L_err_IDLE_Req_S , 
            L_err_IDLE_grant_S => L_err_IDLE_grant_S , 
            L_err_North_Req_S => L_err_North_Req_S , 
            L_err_North_grant_S => L_err_North_grant_S , 
            L_err_East_Req_L => L_err_East_Req_L , 
            L_err_East_grant_L => L_err_East_grant_L , 
            L_err_West_Req_N => L_err_West_Req_N , 
            L_err_West_grant_N => L_err_West_grant_N , 
            L_err_South_Req_E => L_err_South_Req_E , 
            L_err_South_grant_E => L_err_South_grant_E , 
            L_err_Local_Req_W => L_err_Local_Req_W , 
            L_err_Local_grant_W => L_err_Local_grant_W , 

            L_err_IDLE_Req_L => L_err_IDLE_Req_L , 
            L_err_IDLE_grant_L => L_err_IDLE_grant_L , 
            L_err_North_Req_L => L_err_North_Req_L , 
            L_err_North_grant_L => L_err_North_grant_L , 
            L_err_East_Req_N => L_err_East_Req_N , 
            L_err_East_grant_N => L_err_East_grant_N , 
            L_err_West_Req_E => L_err_West_Req_E , 
            L_err_West_grant_E => L_err_West_grant_E , 
            L_err_South_Req_W => L_err_South_Req_W , 
            L_err_South_grant_W => L_err_South_grant_W , 
            L_err_Local_Req_S => L_err_Local_Req_S , 
            L_err_Local_grant_S => L_err_Local_grant_S , 

            L_err_arbiter_in_state_in_onehot => L_err_arbiter_in_state_in_onehot , 
            L_err_arbiter_in_no_request_grants => L_err_arbiter_in_no_request_grants , 
            L_err_arbiter_in_request_no_grants => L_err_arbiter_in_request_no_grants , 

            L_err_no_Req_N_grant_N=> L_err_no_Req_N_grant_N, 
            L_err_no_Req_E_grant_E => L_err_no_Req_E_grant_E , 
            L_err_no_Req_W_grant_W => L_err_no_Req_W_grant_W , 
            L_err_no_Req_S_grant_S => L_err_no_Req_S_grant_S , 
            L_err_no_Req_L_grant_L => L_err_no_Req_L_grant_L , 

            -- Arbiter_out checker outputs
            N_err_arbiter_out_Requests_state_in_state_not_equal => N_err_arbiter_out_Requests_state_in_state_not_equal , 
       
            N_err_IDLE_req_X_N => N_err_IDLE_req_X_N , 
            N_err_North_req_X_N => N_err_North_req_X_N , 
            N_err_North_credit_not_zero_req_X_N_grant_N => N_err_North_credit_not_zero_req_X_N_grant_N , 
            N_err_North_credit_zero_or_not_req_X_N_not_grant_N => N_err_North_credit_zero_or_not_req_X_N_not_grant_N , 
            N_err_East_req_X_E => N_err_East_req_X_E , 
            N_err_East_credit_not_zero_req_X_E_grant_E => N_err_East_credit_not_zero_req_X_E_grant_E , 
            N_err_East_credit_zero_or_not_req_X_E_not_grant_E => N_err_East_credit_zero_or_not_req_X_E_not_grant_E , 
            N_err_West_req_X_W => N_err_West_req_X_W , 
            N_err_West_credit_not_zero_req_X_E_grant_E => N_err_West_credit_not_zero_req_X_E_grant_E , 
            N_err_West_credit_zero_or_not_req_X_W_not_grant_W => N_err_West_credit_zero_or_not_req_X_W_not_grant_W , 
            N_err_South_req_X_S => N_err_South_req_X_S , 
            N_err_South_credit_not_zero_req_X_S_grant_S => N_err_South_credit_not_zero_req_X_S_grant_S , 
            N_err_South_credit_zero_or_not_req_X_S_not_grant_S => N_err_South_credit_zero_or_not_req_X_S_not_grant_S , 
            N_err_Local_req_X_L => N_err_Local_req_X_L , 
            N_err_Local_credit_not_zero_req_X_L_grant_L => N_err_Local_credit_not_zero_req_X_L_grant_L , 
            N_err_Local_credit_zero_or_not_req_X_L_not_grant_L => N_err_Local_credit_zero_or_not_req_X_L_not_grant_L , 

            N_err_IDLE_req_X_E => N_err_IDLE_req_X_E , 
            N_err_North_req_X_E => N_err_North_req_X_E , 
            N_err_East_req_X_W => N_err_East_req_X_W , 
            N_err_West_req_X_S => N_err_West_req_X_S , 
            N_err_South_req_X_L => N_err_South_req_X_L , 
            N_err_Local_req_X_N => N_err_Local_req_X_N , 
       
            N_err_IDLE_req_X_W => N_err_IDLE_req_X_W , 
            N_err_North_req_X_W => N_err_North_req_X_W , 
            N_err_East_req_X_S => N_err_East_req_X_S , 
            N_err_West_req_X_L => N_err_West_req_X_L , 
            N_err_South_req_X_N => N_err_South_req_X_N , 
            N_err_Local_req_X_E => N_err_Local_req_X_E , 
       
            N_err_IDLE_req_X_S => N_err_IDLE_req_X_S , 
            N_err_North_req_X_S => N_err_North_req_X_S , 
            N_err_East_req_X_L => N_err_East_req_X_L , 
            N_err_West_req_X_N => N_err_West_req_X_N , 
            N_err_South_req_X_E => N_err_South_req_X_E , 
            N_err_Local_req_X_W => N_err_Local_req_X_W , 
       
            N_err_IDLE_req_X_L => N_err_IDLE_req_X_L , 
            N_err_North_req_X_L => N_err_North_req_X_L , 
            N_err_East_req_X_N => N_err_East_req_X_N , 
            N_err_West_req_X_E => N_err_West_req_X_E , 
            N_err_South_req_X_W => N_err_South_req_X_W , 
            N_err_Local_req_X_S => N_err_Local_req_X_S , 
       
            N_err_arbiter_out_state_in_onehot => N_err_arbiter_out_state_in_onehot , 
            N_err_arbiter_out_no_request_grants => N_err_arbiter_out_no_request_grants , 
            N_err_arbiter_out_request_IDLE_state => N_err_arbiter_out_request_IDLE_state , 

            N_err_request_IDLE_not_Grants => N_err_request_IDLE_not_Grants , 
            N_err_state_North_Invalid_Grant => N_err_state_North_Invalid_Grant , 
            N_err_state_East_Invalid_Grant => N_err_state_East_Invalid_Grant , 
            N_err_state_West_Invalid_Grant => N_err_state_West_Invalid_Grant , 
            N_err_state_South_Invalid_Grant => N_err_state_South_Invalid_Grant , 
            N_err_state_Local_Invalid_Grant => N_err_state_Local_Invalid_Grant , 
            N_err_Grants_onehot_or_all_zero => N_err_Grants_onehot_or_all_zero , 

            E_err_arbiter_out_Requests_state_in_state_not_equal => E_err_arbiter_out_Requests_state_in_state_not_equal , 
       
            E_err_IDLE_req_X_N => E_err_IDLE_req_X_N , 
            E_err_North_req_X_N => E_err_North_req_X_N , 
            E_err_North_credit_not_zero_req_X_N_grant_N => E_err_North_credit_not_zero_req_X_N_grant_N , 
            E_err_North_credit_zero_or_not_req_X_N_not_grant_N => E_err_North_credit_zero_or_not_req_X_N_not_grant_N , 
            E_err_East_req_X_E => E_err_East_req_X_E , 
            E_err_East_credit_not_zero_req_X_E_grant_E => E_err_East_credit_not_zero_req_X_E_grant_E , 
            E_err_East_credit_zero_or_not_req_X_E_not_grant_E => E_err_East_credit_zero_or_not_req_X_E_not_grant_E , 
            E_err_West_req_X_W => E_err_West_req_X_W , 
            E_err_West_credit_not_zero_req_X_E_grant_E => E_err_West_credit_not_zero_req_X_E_grant_E , 
            E_err_West_credit_zero_or_not_req_X_W_not_grant_W => E_err_West_credit_zero_or_not_req_X_W_not_grant_W , 
            E_err_South_req_X_S => E_err_South_req_X_S , 
            E_err_South_credit_not_zero_req_X_S_grant_S => E_err_South_credit_not_zero_req_X_S_grant_S , 
            E_err_South_credit_zero_or_not_req_X_S_not_grant_S => E_err_South_credit_zero_or_not_req_X_S_not_grant_S , 
            E_err_Local_req_X_L => E_err_Local_req_X_L , 
            E_err_Local_credit_not_zero_req_X_L_grant_L => E_err_Local_credit_not_zero_req_X_L_grant_L , 
            E_err_Local_credit_zero_or_not_req_X_L_not_grant_L => E_err_Local_credit_zero_or_not_req_X_L_not_grant_L , 

            E_err_IDLE_req_X_E => E_err_IDLE_req_X_E , 
            E_err_North_req_X_E => E_err_North_req_X_E , 
            E_err_East_req_X_W => E_err_East_req_X_W , 
            E_err_West_req_X_S => E_err_West_req_X_S , 
            E_err_South_req_X_L => E_err_South_req_X_L , 
            E_err_Local_req_X_N => E_err_Local_req_X_N , 
       
            E_err_IDLE_req_X_W => E_err_IDLE_req_X_W , 
            E_err_North_req_X_W => E_err_North_req_X_W , 
            E_err_East_req_X_S => E_err_East_req_X_S , 
            E_err_West_req_X_L => E_err_West_req_X_L , 
            E_err_South_req_X_N => E_err_South_req_X_N , 
            E_err_Local_req_X_E => E_err_Local_req_X_E , 
       
            E_err_IDLE_req_X_S => E_err_IDLE_req_X_S , 
            E_err_North_req_X_S => E_err_North_req_X_S , 
            E_err_East_req_X_L => E_err_East_req_X_L , 
            E_err_West_req_X_N => E_err_West_req_X_N , 
            E_err_South_req_X_E => E_err_South_req_X_E , 
            E_err_Local_req_X_W => E_err_Local_req_X_W , 
       
            E_err_IDLE_req_X_L => E_err_IDLE_req_X_L , 
            E_err_North_req_X_L => E_err_North_req_X_L , 
            E_err_East_req_X_N => E_err_East_req_X_N , 
            E_err_West_req_X_E => E_err_West_req_X_E , 
            E_err_South_req_X_W => E_err_South_req_X_W , 
            E_err_Local_req_X_S => E_err_Local_req_X_S , 
       
            E_err_arbiter_out_state_in_onehot => E_err_arbiter_out_state_in_onehot , 
            E_err_arbiter_out_no_request_grants => E_err_arbiter_out_no_request_grants , 
            E_err_arbiter_out_request_IDLE_state => E_err_arbiter_out_request_IDLE_state , 

            E_err_request_IDLE_not_Grants => E_err_request_IDLE_not_Grants , 
            E_err_state_North_Invalid_Grant => E_err_state_North_Invalid_Grant , 
            E_err_state_East_Invalid_Grant => E_err_state_East_Invalid_Grant , 
            E_err_state_West_Invalid_Grant => E_err_state_West_Invalid_Grant , 
            E_err_state_South_Invalid_Grant => E_err_state_South_Invalid_Grant , 
            E_err_state_Local_Invalid_Grant => E_err_state_Local_Invalid_Grant , 
            E_err_Grants_onehot_or_all_zero => E_err_Grants_onehot_or_all_zero , 

            W_err_arbiter_out_Requests_state_in_state_not_equal => W_err_arbiter_out_Requests_state_in_state_not_equal , 
       
            W_err_IDLE_req_X_N => W_err_IDLE_req_X_N , 
            W_err_North_req_X_N => W_err_North_req_X_N , 
            W_err_North_credit_not_zero_req_X_N_grant_N => W_err_North_credit_not_zero_req_X_N_grant_N , 
            W_err_North_credit_zero_or_not_req_X_N_not_grant_N => W_err_North_credit_zero_or_not_req_X_N_not_grant_N , 
            W_err_East_req_X_E => W_err_East_req_X_E , 
            W_err_East_credit_not_zero_req_X_E_grant_E => W_err_East_credit_not_zero_req_X_E_grant_E , 
            W_err_East_credit_zero_or_not_req_X_E_not_grant_E => W_err_East_credit_zero_or_not_req_X_E_not_grant_E , 
            W_err_West_req_X_W => W_err_West_req_X_W , 
            W_err_West_credit_not_zero_req_X_E_grant_E => W_err_West_credit_not_zero_req_X_E_grant_E , 
            W_err_West_credit_zero_or_not_req_X_W_not_grant_W => W_err_West_credit_zero_or_not_req_X_W_not_grant_W , 
            W_err_South_req_X_S => W_err_South_req_X_S , 
            W_err_South_credit_not_zero_req_X_S_grant_S => W_err_South_credit_not_zero_req_X_S_grant_S , 
            W_err_South_credit_zero_or_not_req_X_S_not_grant_S => W_err_South_credit_zero_or_not_req_X_S_not_grant_S , 
            W_err_Local_req_X_L => W_err_Local_req_X_L , 
            W_err_Local_credit_not_zero_req_X_L_grant_L => W_err_Local_credit_not_zero_req_X_L_grant_L , 
            W_err_Local_credit_zero_or_not_req_X_L_not_grant_L => W_err_Local_credit_zero_or_not_req_X_L_not_grant_L , 

            W_err_IDLE_req_X_E => W_err_IDLE_req_X_E , 
            W_err_North_req_X_E => W_err_North_req_X_E , 
            W_err_East_req_X_W => W_err_East_req_X_W , 
            W_err_West_req_X_S => W_err_West_req_X_S , 
            W_err_South_req_X_L => W_err_South_req_X_L , 
            W_err_Local_req_X_N => W_err_Local_req_X_N , 
       
            W_err_IDLE_req_X_W => W_err_IDLE_req_X_W , 
            W_err_North_req_X_W => W_err_North_req_X_W , 
            W_err_East_req_X_S => W_err_East_req_X_S , 
            W_err_West_req_X_L => W_err_West_req_X_L , 
            W_err_South_req_X_N => W_err_South_req_X_N , 
            W_err_Local_req_X_E => W_err_Local_req_X_E , 
       
            W_err_IDLE_req_X_S => W_err_IDLE_req_X_S , 
            W_err_North_req_X_S => W_err_North_req_X_S , 
            W_err_East_req_X_L => W_err_East_req_X_L , 
            W_err_West_req_X_N => W_err_West_req_X_N , 
            W_err_South_req_X_E => W_err_South_req_X_E , 
            W_err_Local_req_X_W => W_err_Local_req_X_W , 
       
            W_err_IDLE_req_X_L => W_err_IDLE_req_X_L , 
            W_err_North_req_X_L => W_err_North_req_X_L , 
            W_err_East_req_X_N => W_err_East_req_X_N , 
            W_err_West_req_X_E => W_err_West_req_X_E , 
            W_err_South_req_X_W => W_err_South_req_X_W , 
            W_err_Local_req_X_S => W_err_Local_req_X_S , 
       
            W_err_arbiter_out_state_in_onehot => W_err_arbiter_out_state_in_onehot , 
            W_err_arbiter_out_no_request_grants => W_err_arbiter_out_no_request_grants , 
            W_err_arbiter_out_request_IDLE_state => W_err_arbiter_out_request_IDLE_state , 

            W_err_request_IDLE_not_Grants => W_err_request_IDLE_not_Grants , 
            W_err_state_North_Invalid_Grant => W_err_state_North_Invalid_Grant , 
            W_err_state_East_Invalid_Grant => W_err_state_East_Invalid_Grant , 
            W_err_state_West_Invalid_Grant => W_err_state_West_Invalid_Grant , 
            W_err_state_South_Invalid_Grant => W_err_state_South_Invalid_Grant , 
            W_err_state_Local_Invalid_Grant => W_err_state_Local_Invalid_Grant , 
            W_err_Grants_onehot_or_all_zero             => W_err_Grants_onehot_or_all_zero             , 

            S_err_arbiter_out_Requests_state_in_state_not_equal => S_err_arbiter_out_Requests_state_in_state_not_equal , 
       
            S_err_IDLE_req_X_N => S_err_IDLE_req_X_N , 
            S_err_North_req_X_N => S_err_North_req_X_N , 
            S_err_North_credit_not_zero_req_X_N_grant_N => S_err_North_credit_not_zero_req_X_N_grant_N , 
            S_err_North_credit_zero_or_not_req_X_N_not_grant_N => S_err_North_credit_zero_or_not_req_X_N_not_grant_N , 
            S_err_East_req_X_E => S_err_East_req_X_E , 
            S_err_East_credit_not_zero_req_X_E_grant_E => S_err_East_credit_not_zero_req_X_E_grant_E , 
            S_err_East_credit_zero_or_not_req_X_E_not_grant_E => S_err_East_credit_zero_or_not_req_X_E_not_grant_E , 
            S_err_West_req_X_W => S_err_West_req_X_W , 
            S_err_West_credit_not_zero_req_X_E_grant_E => S_err_West_credit_not_zero_req_X_E_grant_E , 
            S_err_West_credit_zero_or_not_req_X_W_not_grant_W => S_err_West_credit_zero_or_not_req_X_W_not_grant_W , 
            S_err_South_req_X_S => S_err_South_req_X_S , 
            S_err_South_credit_not_zero_req_X_S_grant_S => S_err_South_credit_not_zero_req_X_S_grant_S , 
            S_err_South_credit_zero_or_not_req_X_S_not_grant_S => S_err_South_credit_zero_or_not_req_X_S_not_grant_S , 
            S_err_Local_req_X_L => S_err_Local_req_X_L , 
            S_err_Local_credit_not_zero_req_X_L_grant_L => S_err_Local_credit_not_zero_req_X_L_grant_L , 
            S_err_Local_credit_zero_or_not_req_X_L_not_grant_L => S_err_Local_credit_zero_or_not_req_X_L_not_grant_L , 

            S_err_IDLE_req_X_E => S_err_IDLE_req_X_E , 
            S_err_North_req_X_E => S_err_North_req_X_E , 
            S_err_East_req_X_W => S_err_East_req_X_W , 
            S_err_West_req_X_S => S_err_West_req_X_S , 
            S_err_South_req_X_L => S_err_South_req_X_L , 
            S_err_Local_req_X_N => S_err_Local_req_X_N , 
       
            S_err_IDLE_req_X_W => S_err_IDLE_req_X_W , 
            S_err_North_req_X_W => S_err_North_req_X_W , 
            S_err_East_req_X_S => S_err_East_req_X_S , 
            S_err_West_req_X_L => S_err_West_req_X_L , 
            S_err_South_req_X_N => S_err_South_req_X_N , 
            S_err_Local_req_X_E => S_err_Local_req_X_E , 
       
            S_err_IDLE_req_X_S => S_err_IDLE_req_X_S , 
            S_err_North_req_X_S => S_err_North_req_X_S , 
            S_err_East_req_X_L => S_err_East_req_X_L , 
            S_err_West_req_X_N => S_err_West_req_X_N , 
            S_err_South_req_X_E => S_err_South_req_X_E , 
            S_err_Local_req_X_W => S_err_Local_req_X_W , 
       
            S_err_IDLE_req_X_L => S_err_IDLE_req_X_L , 
            S_err_North_req_X_L => S_err_North_req_X_L , 
            S_err_East_req_X_N => S_err_East_req_X_N , 
            S_err_West_req_X_E => S_err_West_req_X_E , 
            S_err_South_req_X_W => S_err_South_req_X_W , 
            S_err_Local_req_X_S => S_err_Local_req_X_S , 
       
            S_err_arbiter_out_state_in_onehot => S_err_arbiter_out_state_in_onehot , 
            S_err_arbiter_out_no_request_grants => S_err_arbiter_out_no_request_grants , 
            S_err_arbiter_out_request_IDLE_state => S_err_arbiter_out_request_IDLE_state , 

            S_err_request_IDLE_not_Grants => S_err_request_IDLE_not_Grants , 
            S_err_state_North_Invalid_Grant => S_err_state_North_Invalid_Grant , 
            S_err_state_East_Invalid_Grant => S_err_state_East_Invalid_Grant , 
            S_err_state_West_Invalid_Grant => S_err_state_West_Invalid_Grant , 
            S_err_state_South_Invalid_Grant => S_err_state_South_Invalid_Grant , 
            S_err_state_Local_Invalid_Grant => S_err_state_Local_Invalid_Grant , 
            S_err_Grants_onehot_or_all_zero              => S_err_Grants_onehot_or_all_zero              , 

            L_err_arbiter_out_Requests_state_in_state_not_equal => L_err_arbiter_out_Requests_state_in_state_not_equal , 
       
            L_err_IDLE_req_X_N => L_err_IDLE_req_X_N , 
            L_err_North_req_X_N => L_err_North_req_X_N , 
            L_err_North_credit_not_zero_req_X_N_grant_N => L_err_North_credit_not_zero_req_X_N_grant_N , 
            L_err_North_credit_zero_or_not_req_X_N_not_grant_N => L_err_North_credit_zero_or_not_req_X_N_not_grant_N , 
            L_err_East_req_X_E => L_err_East_req_X_E , 
            L_err_East_credit_not_zero_req_X_E_grant_E => L_err_East_credit_not_zero_req_X_E_grant_E , 
            L_err_East_credit_zero_or_not_req_X_E_not_grant_E => L_err_East_credit_zero_or_not_req_X_E_not_grant_E , 
            L_err_West_req_X_W => L_err_West_req_X_W , 
            L_err_West_credit_not_zero_req_X_E_grant_E => L_err_West_credit_not_zero_req_X_E_grant_E , 
            L_err_West_credit_zero_or_not_req_X_W_not_grant_W => L_err_West_credit_zero_or_not_req_X_W_not_grant_W , 
            L_err_South_req_X_S => L_err_South_req_X_S , 
            L_err_South_credit_not_zero_req_X_S_grant_S => L_err_South_credit_not_zero_req_X_S_grant_S , 
            L_err_South_credit_zero_or_not_req_X_S_not_grant_S => L_err_South_credit_zero_or_not_req_X_S_not_grant_S , 
            L_err_Local_req_X_L => L_err_Local_req_X_L , 
            L_err_Local_credit_not_zero_req_X_L_grant_L => L_err_Local_credit_not_zero_req_X_L_grant_L , 
            L_err_Local_credit_zero_or_not_req_X_L_not_grant_L => L_err_Local_credit_zero_or_not_req_X_L_not_grant_L , 

            L_err_IDLE_req_X_E => L_err_IDLE_req_X_E , 
            L_err_North_req_X_E => L_err_North_req_X_E , 
            L_err_East_req_X_W => L_err_East_req_X_W , 
            L_err_West_req_X_S => L_err_West_req_X_S , 
            L_err_South_req_X_L => L_err_South_req_X_L , 
            L_err_Local_req_X_N => L_err_Local_req_X_N , 
       
            L_err_IDLE_req_X_W => L_err_IDLE_req_X_W , 
            L_err_North_req_X_W => L_err_North_req_X_W , 
            L_err_East_req_X_S => L_err_East_req_X_S , 
            L_err_West_req_X_L => L_err_West_req_X_L , 
            L_err_South_req_X_N => L_err_South_req_X_N , 
            L_err_Local_req_X_E => L_err_Local_req_X_E , 
       
            L_err_IDLE_req_X_S => L_err_IDLE_req_X_S , 
            L_err_North_req_X_S => L_err_North_req_X_S , 
            L_err_East_req_X_L => L_err_East_req_X_L , 
            L_err_West_req_X_N => L_err_West_req_X_N , 
            L_err_South_req_X_E => L_err_South_req_X_E , 
            L_err_Local_req_X_W => L_err_Local_req_X_W , 
       
            L_err_IDLE_req_X_L => L_err_IDLE_req_X_L , 
            L_err_North_req_X_L => L_err_North_req_X_L , 
            L_err_East_req_X_N => L_err_East_req_X_N , 
            L_err_West_req_X_E => L_err_West_req_X_E , 
            L_err_South_req_X_W => L_err_South_req_X_W , 
            L_err_Local_req_X_S => L_err_Local_req_X_S , 
       
            L_err_arbiter_out_state_in_onehot => L_err_arbiter_out_state_in_onehot , 
            L_err_arbiter_out_no_request_grants => L_err_arbiter_out_no_request_grants , 
            L_err_arbiter_out_request_IDLE_state => L_err_arbiter_out_request_IDLE_state , 

            L_err_request_IDLE_not_Grants => L_err_request_IDLE_not_Grants , 
            L_err_state_North_Invalid_Grant => L_err_state_North_Invalid_Grant , 
            L_err_state_East_Invalid_Grant => L_err_state_East_Invalid_Grant , 
            L_err_state_West_Invalid_Grant => L_err_state_West_Invalid_Grant , 
            L_err_state_South_Invalid_Grant => L_err_state_South_Invalid_Grant , 
            L_err_state_Local_Invalid_Grant => L_err_state_Local_Invalid_Grant , 
            L_err_Grants_onehot_or_all_zero => L_err_Grants_onehot_or_all_zero

            );

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
-- all the Xbar select_signals

Xbar_sel_N <= '0'            & Grant_NE_xbar  & Grant_NW_xbar  & Grant_NS_xbar  & Grant_NL_xbar;
Xbar_sel_E <= Grant_EN_xbar  & '0'            & Grant_EW_xbar  & Grant_ES_xbar  & Grant_EL_xbar;
Xbar_sel_W <= Grant_WN_xbar  & Grant_WE_xbar  & '0'            & Grant_WS_xbar  & Grant_WL_xbar;
Xbar_sel_S <= Grant_SN_xbar  & Grant_SE_xbar  & Grant_SW_xbar  & '0'            & Grant_SL_xbar;
Xbar_sel_L <= Grant_LN_xbar  & Grant_LE_xbar  & Grant_LW_xbar  & Grant_LS_xbar  & '0';


------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
 -- all the Xbars
XBAR_N: XBAR generic map (DATA_WIDTH  => DATA_WIDTH)
   PORT MAP (North_in => FIFO_D_out_N, East_in => FIFO_D_out_E, West_in => FIFO_D_out_W, South_in => FIFO_D_out_S, Local_in => FIFO_D_out_L,
        sel => Xbar_sel_N,  Data_out=> TX_N);
XBAR_E: XBAR generic map (DATA_WIDTH  => DATA_WIDTH)
   PORT MAP (North_in => FIFO_D_out_N, East_in => FIFO_D_out_E, West_in => FIFO_D_out_W, South_in => FIFO_D_out_S, Local_in => FIFO_D_out_L,
        sel => Xbar_sel_E,  Data_out=> TX_E);
XBAR_W: XBAR generic map (DATA_WIDTH  => DATA_WIDTH)
   PORT MAP (North_in => FIFO_D_out_N, East_in => FIFO_D_out_E, West_in => FIFO_D_out_W, South_in => FIFO_D_out_S, Local_in => FIFO_D_out_L,
        sel => Xbar_sel_W,  Data_out=> TX_W);
XBAR_S: XBAR generic map (DATA_WIDTH  => DATA_WIDTH)
   PORT MAP (North_in => FIFO_D_out_N, East_in => FIFO_D_out_E, West_in => FIFO_D_out_W, South_in => FIFO_D_out_S, Local_in => FIFO_D_out_L,
        sel => Xbar_sel_S,  Data_out=> TX_S);
XBAR_L: XBAR generic map (DATA_WIDTH  => DATA_WIDTH)
   PORT MAP (North_in => FIFO_D_out_N, East_in => FIFO_D_out_E, West_in => FIFO_D_out_W, South_in => FIFO_D_out_S, Local_in => FIFO_D_out_L,
        sel => Xbar_sel_L,  Data_out=> TX_L);

end;
