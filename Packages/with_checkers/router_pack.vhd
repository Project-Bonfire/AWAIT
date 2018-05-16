---------------------------------------------------------------------
-- TITLE: Plasma Misc. Package
-- Main AUTHOR: Steve Rhoads (rhoadss@yahoo.com)
-- DATE CREATED: 2/15/01
-- FILENAME: mlite_pack.vhd
-- PROJECT: Plasma CPU core
-- COPYRIGHT: Software placed into the public domain by the author.
--    Software 'as is' without warranty.  Author liable for nothing.
-- DESCRIPTION:
--    Data types, constants, and add functions needed for the Plasma CPU.

-- modified by: Siavoosh Payandeh Azad
-- Change logs:
--            * An NI has been added to the file as a new module
--            * some changes has been applied to the ports of the older modules
--              to facilitate the new module!
---------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package router_pack is

    -- for bubbles
    COMPONENT parity_checker_for_router_links is
        generic(
                DATA_WIDTH : integer := 32
            );
        port(
                RX       : in std_logic_vector (DATA_WIDTH-1 downto 0);
                valid_in : in std_logic;
                faulty   : out std_logic
            );
    end COMPONENT;

    COMPONENT FIFO_credit_based_with_checkers is
  generic (
        DATA_WIDTH: integer := 32
    );
    port (  reset     : in  std_logic;
            clk       : in  std_logic;
            RX        : in  std_logic_vector (DATA_WIDTH-1 downto 0);
            valid_in  : in  std_logic;
            read_en_N : in  std_logic;
            read_en_E : in  std_logic;
            read_en_W : in  std_logic;
            read_en_S : in  std_logic;
            read_en_L : in  std_logic;

            credit_out: out std_logic;
            empty_out : out std_logic;
            Data_out  : out std_logic_vector (DATA_WIDTH-1 downto 0);
            hold_out: out std_logic
    );
  end COMPONENT;

COMPONENT allocator is
    generic(credit_width_L: integer := 10;
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

            -- Checker outputs
            -- Arbiter_in checker outputs
            N_err_arbiter_in_Requests_state_in_state_not_equal, 

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
            N_err_no_Req_L_grant_L : out std_logic;

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
            E_err_no_Req_L_grant_L : out std_logic;

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
            W_err_no_Req_L_grant_L : out std_logic;

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
            S_err_no_Req_L_grant_L : out std_logic;

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
            L_err_no_Req_L_grant_L : out std_logic;

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
            N_err_Grants_onehot_or_all_zero : out std_logic;

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
            E_err_Grants_onehot_or_all_zero : out std_logic;

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
            W_err_Grants_onehot_or_all_zero : out std_logic;            

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
            S_err_Grants_onehot_or_all_zero : out std_logic;             

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
            L_err_Grants_onehot_or_all_zero : out std_logic                         
            );
end COMPONENT;

COMPONENT LBDR_with_checkers is
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
end COMPONENT;

  COMPONENT XBAR is
    generic (
        DATA_WIDTH: integer := 32
    );
    port (
        North_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        East_in  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        West_in  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        South_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        Local_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        sel      : in  std_logic_vector(4 downto 0);
        Data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
  end COMPONENT;

  component NI is
   generic(current_x : integer := 10; 	-- the current node's x
           current_y : integer := 10; 	-- the current node's y
           NI_depth  : integer := 32;
           NI_couter_size : integer := 5; -- should be set to log2 of NI_depth
           reserved_address : std_logic_vector(29 downto 0) := "000000000000000001111111111111"; -- NI's memory mapped reserved
           flag_address     : std_logic_vector(29 downto 0) := "000000000000000010000000000000";  -- reserved address for the flag register
           counter_address  : std_logic_vector(29 downto 0) := "000000000000000010000000000001");  -- packet counter register address!
   port(clk               : in  std_logic;
        reset             : in  std_logic;
        enable            : in  std_logic;
        write_byte_enable : in  std_logic_vector(3  downto 0);
        address           : in  std_logic_vector(31 downto 2);
        data_write        : in  std_logic_vector(31 downto 0);
        data_read         : out std_logic_vector(31 downto 0);

        -- interrupt signal: disabled!
        irq_out           : out std_logic;

        -- signals for sending packets to network
        credit_in   : in  std_logic;
        valid_out   : out std_logic;
        TX          : out std_logic_vector(31 downto 0);  -- data sent to the NoC

        -- signals for reciving packets from the network
        credit_out  : out std_logic;
        valid_in    : in  std_logic;
        RX          : in  std_logic_vector(31 downto 0)  -- data recieved form the NoC

  );
end component; --entity NI

end; --package body
