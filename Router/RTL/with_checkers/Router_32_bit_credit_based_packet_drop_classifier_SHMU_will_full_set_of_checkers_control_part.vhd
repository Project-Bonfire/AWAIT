--Copyright (C) 2016 Siavoosh Payandeh Azad, Behrad Niazmand

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_misc.all;
use work.component_pack.all;

entity router_credit_based_PD_C_SHMU_control_part_with_checkers is  --fault classifier plus packet-dropping 
    generic (
        cur_addr_rst : integer := 5;
        Rxy_rst : integer := 60;
        Cx_rst : integer := 15;
        NoC_size: integer := 4
    );
    port (
    reset, clk: in std_logic;

    credit_in_N, credit_in_E, credit_in_W,  credit_in_S,  credit_in_L: in std_logic;
    Faulty_N_in, Faulty_E_in, Faulty_W_in, Faulty_S_in: in std_logic;
    Rxy_reconf_PE: in  std_logic_vector(7 downto 0);
    Cx_reconf_PE: in  std_logic_vector(3 downto 0);
    Reconfig_command : in std_logic;
    empty_N, empty_E, empty_W, empty_S, empty_L: in std_logic;
    dst_addr_N, dst_addr_E, dst_addr_W, dst_addr_S, dst_addr_L: in std_logic_vector(NoC_size-1 downto 0);
    flit_type_N, flit_type_E, flit_type_W, flit_type_S, flit_type_L: in std_logic_vector(2 downto 0);
    LBDR_Fault_N, LBDR_Fault_E, LBDR_Fault_W, LBDR_Fault_S, LBDR_Fault_L: in std_logic;

    hold_in_N, hold_in_E, hold_in_S, hold_in_W, hold_in_L: in std_logic := '0';

    valid_out_N, valid_out_E, valid_out_W, valid_out_S, valid_out_L : out std_logic;
    Xbar_sel_N, Xbar_sel_E, Xbar_sel_W, Xbar_sel_S, Xbar_sel_L: out std_logic_vector (4 downto 0);
    packet_drop_order_N, packet_drop_order_E, packet_drop_order_W, packet_drop_order_S, packet_drop_order_L: out std_logic;
    FIFO_N_read_en_E, FIFO_N_read_en_W, FIFO_N_read_en_S, FIFO_N_read_en_L: out std_logic;
    FIFO_E_read_en_N, FIFO_E_read_en_W, FIFO_E_read_en_S, FIFO_E_read_en_L: out std_logic;
    FIFO_W_read_en_N, FIFO_W_read_en_E, FIFO_W_read_en_S, FIFO_W_read_en_L: out std_logic;
    FIFO_S_read_en_N, FIFO_S_read_en_E, FIFO_S_read_en_W, FIFO_S_read_en_L: out std_logic;
    FIFO_L_read_en_N, FIFO_L_read_en_E, FIFO_L_read_en_W, FIFO_L_read_en_S: out std_logic;

    hold_out_N, hold_out_E, hold_out_S, hold_out_W, hold_out_L: out std_logic := '0';

    -- LBDR checkers (5 LBDR modules)
    -- North
    N_err_header_empty_Requests_FF_Requests_in, 
    N_err_tail_Requests_in_all_zero, 
    N_err_tail_empty_Requests_FF_Requests_in, 
    N_err_tail_not_empty_not_grants_Requests_FF_Requests_in,
    N_err_grants_onehot,
    N_err_grants_mismatch, 
    N_err_header_tail_Requests_FF_Requests_in, 
    N_err_dst_addr_cur_addr_N1,
    N_err_dst_addr_cur_addr_not_N1,
    N_err_dst_addr_cur_addr_E1,
    N_err_dst_addr_cur_addr_not_E1,
    N_err_dst_addr_cur_addr_W1,
    N_err_dst_addr_cur_addr_not_W1,
    N_err_dst_addr_cur_addr_S1,
    N_err_dst_addr_cur_addr_not_S1, 
    N_err_dst_addr_cur_addr_Req_L_in, 
    N_err_dst_addr_cur_addr_not_Req_L_in, 
    N_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
    N_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
    N_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
    N_err_header_not_empty_Req_N_in,
    N_err_header_not_empty_Req_E_in,
    N_err_header_not_empty_Req_W_in,
    N_err_header_not_empty_Req_S_in, 
    N_err_header_empty_packet_drop_in_packet_drop_equal, 
    N_err_tail_not_empty_packet_drop_not_packet_drop_in, 
    N_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
    N_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
    N_err_packet_drop_order, 

    N_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
    N_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
    N_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
    N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

    N_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
    N_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
    N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
    N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
    N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
    N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
    N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal, 

    -- East
    E_err_header_empty_Requests_FF_Requests_in, 
    E_err_tail_Requests_in_all_zero, 
    E_err_tail_empty_Requests_FF_Requests_in, 
    E_err_tail_not_empty_not_grants_Requests_FF_Requests_in,
    E_err_grants_onehot,
    E_err_grants_mismatch, 
    E_err_header_tail_Requests_FF_Requests_in, 
    E_err_dst_addr_cur_addr_N1,
    E_err_dst_addr_cur_addr_not_N1,
    E_err_dst_addr_cur_addr_E1,
    E_err_dst_addr_cur_addr_not_E1,
    E_err_dst_addr_cur_addr_W1,
    E_err_dst_addr_cur_addr_not_W1,
    E_err_dst_addr_cur_addr_S1,
    E_err_dst_addr_cur_addr_not_S1, 
    E_err_dst_addr_cur_addr_Req_L_in, 
    E_err_dst_addr_cur_addr_not_Req_L_in, 
    E_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
    E_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
    E_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
    E_err_header_not_empty_Req_N_in,
    E_err_header_not_empty_Req_E_in,
    E_err_header_not_empty_Req_W_in,
    E_err_header_not_empty_Req_S_in, 
    E_err_header_empty_packet_drop_in_packet_drop_equal, 
    E_err_tail_not_empty_packet_drop_not_packet_drop_in, 
    E_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
    E_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
    E_err_packet_drop_order, 

    E_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
    E_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
    E_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
    E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

    E_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
    E_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
    E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
    E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
    E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
    E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
    E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal, 

    -- West
    W_err_header_empty_Requests_FF_Requests_in, 
    W_err_tail_Requests_in_all_zero, 
    W_err_tail_empty_Requests_FF_Requests_in, 
    W_err_tail_not_empty_not_grants_Requests_FF_Requests_in,
    W_err_grants_onehot,
    W_err_grants_mismatch, 
    W_err_header_tail_Requests_FF_Requests_in, 
    W_err_dst_addr_cur_addr_N1, W_err_dst_addr_cur_addr_not_N1, W_err_dst_addr_cur_addr_E1, W_err_dst_addr_cur_addr_not_E1, 
    W_err_dst_addr_cur_addr_W1, W_err_dst_addr_cur_addr_not_W1, W_err_dst_addr_cur_addr_S1, W_err_dst_addr_cur_addr_not_S1,  W_err_dst_addr_cur_addr_Req_L_in, 
    W_err_dst_addr_cur_addr_not_Req_L_in, 
    W_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
    W_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
    W_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
    W_err_header_not_empty_Req_N_in, W_err_header_not_empty_Req_E_in, W_err_header_not_empty_Req_W_in, W_err_header_not_empty_Req_S_in, 
    W_err_header_empty_packet_drop_in_packet_drop_equal, 
    W_err_tail_not_empty_packet_drop_not_packet_drop_in, 
    W_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
    W_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
    W_err_packet_drop_order, 

    W_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
    W_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
    W_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
    W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

    W_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
    W_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
    W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
    W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
    W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
    W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
    W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal, 

    -- South
    S_err_header_empty_Requests_FF_Requests_in, 
    S_err_tail_Requests_in_all_zero, 
    S_err_tail_empty_Requests_FF_Requests_in, 
    S_err_tail_not_empty_not_grants_Requests_FF_Requests_in,
    S_err_grants_onehot,
    S_err_grants_mismatch, 
    S_err_header_tail_Requests_FF_Requests_in, 
    S_err_dst_addr_cur_addr_N1, S_err_dst_addr_cur_addr_not_N1, S_err_dst_addr_cur_addr_E1, S_err_dst_addr_cur_addr_not_E1, 
    S_err_dst_addr_cur_addr_W1, S_err_dst_addr_cur_addr_not_W1, S_err_dst_addr_cur_addr_S1, S_err_dst_addr_cur_addr_not_S1, 
    S_err_dst_addr_cur_addr_Req_L_in, 
    S_err_dst_addr_cur_addr_not_Req_L_in, 
    S_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
    S_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
    S_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
    S_err_header_not_empty_Req_N_in, S_err_header_not_empty_Req_E_in, S_err_header_not_empty_Req_W_in, S_err_header_not_empty_Req_S_in, 
    S_err_header_empty_packet_drop_in_packet_drop_equal, 
    S_err_tail_not_empty_packet_drop_not_packet_drop_in, 
    S_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
    S_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
    S_err_packet_drop_order, 

    S_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
    S_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
    S_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
    S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

    S_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
    S_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
    S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
    S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
    S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
    S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
    S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal, 

    -- Local
    L_err_header_empty_Requests_FF_Requests_in, L_err_tail_Requests_in_all_zero, L_err_tail_empty_Requests_FF_Requests_in, 
    L_err_tail_not_empty_not_grants_Requests_FF_Requests_in, L_err_grants_onehot, L_err_grants_mismatch, 
    L_err_header_tail_Requests_FF_Requests_in, L_err_dst_addr_cur_addr_N1, L_err_dst_addr_cur_addr_not_N1,
    L_err_dst_addr_cur_addr_E1, L_err_dst_addr_cur_addr_not_E1, L_err_dst_addr_cur_addr_W1,
    L_err_dst_addr_cur_addr_not_W1, L_err_dst_addr_cur_addr_S1, L_err_dst_addr_cur_addr_not_S1, 
    L_err_dst_addr_cur_addr_Req_L_in, L_err_dst_addr_cur_addr_not_Req_L_in, 
    L_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
    L_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
    L_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
    L_err_header_not_empty_Req_N_in, L_err_header_not_empty_Req_E_in, L_err_header_not_empty_Req_W_in, L_err_header_not_empty_Req_S_in, 
    L_err_header_empty_packet_drop_in_packet_drop_equal, 
    L_err_tail_not_empty_packet_drop_not_packet_drop_in, 
    L_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
    L_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
    L_err_packet_drop_order, 

    L_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
    L_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
    L_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
    L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

    L_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
    L_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
    L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
    L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
    L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
    L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
    L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal, 

    -- Allocator checkers (5 x Arbiter_in and 5 x Arbiter_out modules + Allocator internal logic checkers)
    -- Allocator logic checker outputs
    err_grant_N_N_sig_not_empty_N_grant_N_N, err_not_grant_N_N_sig_or_empty_N_not_grant_N_N, 
    err_grant_N_E_sig_not_empty_E_grant_N_E, err_not_grant_N_E_sig_or_empty_E_not_grant_N_E, 
    err_grant_N_W_sig_not_empty_W_grant_N_W, err_not_grant_N_W_sig_or_empty_W_not_grant_N_W, 
    err_grant_N_S_sig_not_empty_S_grant_N_S, err_not_grant_N_S_sig_or_empty_S_not_grant_N_S, 
    err_grant_N_L_sig_not_empty_L_grant_N_L, err_not_grant_N_L_sig_or_empty_L_not_grant_N_L, 

    err_grant_E_N_sig_not_empty_N_grant_E_N, err_not_grant_E_N_sig_or_empty_N_not_grant_E_N, 
    err_grant_E_E_sig_not_empty_E_grant_E_E, err_not_grant_E_E_sig_or_empty_E_not_grant_E_E, 
    err_grant_E_W_sig_not_empty_W_grant_E_W, err_not_grant_E_W_sig_or_empty_W_not_grant_E_W, 
    err_grant_E_S_sig_not_empty_S_grant_E_S, err_not_grant_E_S_sig_or_empty_S_not_grant_E_S, 
    err_grant_E_L_sig_not_empty_L_grant_E_L, err_not_grant_E_L_sig_or_empty_L_not_grant_E_L, 

    err_grant_W_N_sig_not_empty_N_grant_W_N, err_not_grant_W_N_sig_or_empty_N_not_grant_W_N, 
    err_grant_W_E_sig_not_empty_E_grant_W_E, err_not_grant_W_E_sig_or_empty_E_not_grant_W_E, 
    err_grant_W_W_sig_not_empty_W_grant_W_W, err_not_grant_W_W_sig_or_empty_W_not_grant_W_W, 
    err_grant_W_S_sig_not_empty_S_grant_W_S, err_not_grant_W_S_sig_or_empty_S_not_grant_W_S, 
    err_grant_W_L_sig_not_empty_L_grant_W_L, err_not_grant_W_L_sig_or_empty_L_not_grant_W_L, 

    err_grant_S_N_sig_not_empty_N_grant_S_N, err_not_grant_S_N_sig_or_empty_N_not_grant_S_N, 
    err_grant_S_E_sig_not_empty_E_grant_S_E, err_not_grant_S_E_sig_or_empty_E_not_grant_S_E, 
    err_grant_S_W_sig_not_empty_W_grant_S_W, err_not_grant_S_W_sig_or_empty_W_not_grant_S_W, 
    err_grant_S_S_sig_not_empty_S_grant_S_S, err_not_grant_S_S_sig_or_empty_S_not_grant_S_S, 
    err_grant_S_L_sig_not_empty_L_grant_S_L, err_not_grant_S_L_sig_or_empty_L_not_grant_S_L, 

    err_grant_L_N_sig_not_empty_N_grant_L_N, err_not_grant_L_N_sig_or_empty_N_not_grant_L_N, 
    err_grant_L_E_sig_not_empty_E_grant_L_E, err_not_grant_L_E_sig_or_empty_E_not_grant_L_E, 
    err_grant_L_W_sig_not_empty_W_grant_L_W, err_not_grant_L_W_sig_or_empty_W_not_grant_L_W, 
    err_grant_L_S_sig_not_empty_S_grant_L_S, err_not_grant_L_S_sig_or_empty_S_not_grant_L_S, 
    err_grant_L_L_sig_not_empty_L_grant_L_L, err_not_grant_L_L_sig_or_empty_L_not_grant_L_L, 

    err_grant_signals_not_empty_grant_N, err_not_grant_signals_empty_not_grant_N, 
    err_grant_signals_not_empty_grant_E, err_not_grant_signals_empty_not_grant_E, 
    err_grant_signals_not_empty_grant_W, err_not_grant_signals_empty_not_grant_W, 
    err_grant_signals_not_empty_grant_S, err_not_grant_signals_empty_not_grant_S, 
    err_grant_signals_not_empty_grant_L, err_not_grant_signals_empty_not_grant_L, 

    err_grants_valid_not_match, 

    -- Allocator credit_counter logic checker outputs
    err_credit_in_N_grant_N_credit_counter_N_in_credit_counter_N_out_equal, 
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
    err_not_credit_in_L_not_grant_L_credit_counter_L_in_credit_counter_L_out_equal, 

    -- Arbiter_in Checker signals (part of allocator unit)
    -- North Arbiter_in checker outputs
    N_err_Requests_state_in_state_not_equal, 

    N_err_IDLE_Req_N, N_err_IDLE_grant_N,N_err_North_Req_N, N_err_North_grant_N, N_err_East_Req_E, N_err_East_grant_E, N_err_West_Req_W, 
    N_err_West_grant_W, N_err_South_Req_S,N_err_South_grant_S,N_err_Local_Req_L, N_err_Local_grant_L,
    N_err_IDLE_Req_E, N_err_IDLE_grant_E, N_err_North_Req_E, N_err_North_grant_E, N_err_East_Req_W, N_err_East_grant_W, N_err_West_Req_S, 
    N_err_West_grant_S, N_err_South_Req_L, N_err_South_grant_L, N_err_Local_Req_N, N_err_Local_grant_N,
    N_err_IDLE_Req_W, N_err_IDLE_grant_W, N_err_North_Req_W, N_err_North_grant_W, N_err_East_Req_S, N_err_East_grant_S, N_err_West_Req_L, 
    N_err_West_grant_L, N_err_South_Req_N,  N_err_South_grant_N, N_err_Local_Req_E, N_err_Local_grant_E, 
    N_err_IDLE_Req_S, N_err_IDLE_grant_S, N_err_North_Req_S, N_err_North_grant_S, N_err_East_Req_L, N_err_East_grant_L, N_err_West_Req_N, 
    N_err_West_grant_N, N_err_South_Req_E, N_err_South_grant_E, N_err_Local_Req_W, N_err_Local_grant_W, 
    N_err_IDLE_Req_L, N_err_IDLE_grant_L, N_err_North_Req_L, N_err_North_grant_L, N_err_East_Req_N, N_err_East_grant_N, N_err_West_Req_E, 
    N_err_West_grant_E, N_err_South_Req_W, N_err_South_grant_W, N_err_Local_Req_S, N_err_Local_grant_S, 
    N_err_arbiter_state_in_onehot, N_err_no_request_grants, N_err_request_no_grants, 

    N_err_no_Req_N_grant_N, N_err_no_Req_E_grant_E, N_err_no_Req_W_grant_W, N_err_no_Req_S_grant_S, N_err_no_Req_L_grant_L, 

    -- East Arbiter_in checker outputs
    E_err_Requests_state_in_state_not_equal, 

    E_err_IDLE_Req_N, E_err_IDLE_grant_N, E_err_North_Req_N,  E_err_North_grant_N,  E_err_East_Req_E,  E_err_East_grant_E, E_err_West_Req_W, 
    E_err_West_grant_W,  E_err_South_Req_S, E_err_South_grant_S, E_err_Local_Req_L,  E_err_Local_grant_L,
    E_err_IDLE_Req_E, E_err_IDLE_grant_E, E_err_North_Req_E, E_err_North_grant_E, E_err_East_Req_W, E_err_East_grant_W, E_err_West_Req_S, 
    E_err_West_grant_S, E_err_South_Req_L, E_err_South_grant_L, E_err_Local_Req_N, E_err_Local_grant_N,
    E_err_IDLE_Req_W, E_err_IDLE_grant_W, E_err_North_Req_W, E_err_North_grant_W, E_err_East_Req_S, E_err_East_grant_S, E_err_West_Req_L, 
    E_err_West_grant_L, E_err_South_Req_N,  E_err_South_grant_N, E_err_Local_Req_E, E_err_Local_grant_E, 
    E_err_IDLE_Req_S, E_err_IDLE_grant_S, E_err_North_Req_S, E_err_North_grant_S, E_err_East_Req_L, E_err_East_grant_L, E_err_West_Req_N, 
    E_err_West_grant_N, E_err_South_Req_E, E_err_South_grant_E, E_err_Local_Req_W, E_err_Local_grant_W, 
    E_err_IDLE_Req_L, E_err_IDLE_grant_L, E_err_North_Req_L, E_err_North_grant_L, E_err_East_Req_N, E_err_East_grant_N, E_err_West_Req_E, 
    E_err_West_grant_E, E_err_South_Req_W, E_err_South_grant_W, E_err_Local_Req_S, E_err_Local_grant_S, 

    E_err_arbiter_state_in_onehot, E_err_no_request_grants, E_err_request_no_grants, 

    E_err_no_Req_N_grant_N, E_err_no_Req_E_grant_E, E_err_no_Req_W_grant_W, E_err_no_Req_S_grant_S, E_err_no_Req_L_grant_L, 

    -- West Arbiter_in checker outputs
    W_err_Requests_state_in_state_not_equal, 

    W_err_IDLE_Req_N, W_err_IDLE_grant_N, W_err_North_Req_N, W_err_North_grant_N, W_err_East_Req_E, W_err_East_grant_E, W_err_West_Req_W, 
    W_err_West_grant_W, W_err_South_Req_S, W_err_South_grant_S, W_err_Local_Req_L, W_err_Local_grant_L, 
    W_err_IDLE_Req_E, W_err_IDLE_grant_E, W_err_North_Req_E, W_err_North_grant_E, W_err_East_Req_W, W_err_East_grant_W, W_err_West_Req_S, 
    W_err_West_grant_S, W_err_South_Req_L, W_err_South_grant_L, W_err_Local_Req_N, W_err_Local_grant_N,
    W_err_IDLE_Req_W, W_err_IDLE_grant_W, W_err_North_Req_W, W_err_North_grant_W, W_err_East_Req_S, W_err_East_grant_S, W_err_West_Req_L, 
    W_err_West_grant_L, W_err_South_Req_N, W_err_South_grant_N, W_err_Local_Req_E, W_err_Local_grant_E, 
    W_err_IDLE_Req_S, W_err_IDLE_grant_S, W_err_North_Req_S, W_err_North_grant_S, W_err_East_Req_L, W_err_East_grant_L, W_err_West_Req_N, 
    W_err_West_grant_N, W_err_South_Req_E, W_err_South_grant_E, W_err_Local_Req_W, W_err_Local_grant_W, 
    W_err_IDLE_Req_L, W_err_IDLE_grant_L, W_err_North_Req_L, W_err_North_grant_L, W_err_East_Req_N, W_err_East_grant_N, W_err_West_Req_E, 
    W_err_West_grant_E, W_err_South_Req_W, W_err_South_grant_W, W_err_Local_Req_S, W_err_Local_grant_S, 

    W_err_arbiter_state_in_onehot, W_err_no_request_grants, W_err_request_no_grants, 

    W_err_no_Req_N_grant_N, W_err_no_Req_E_grant_E, W_err_no_Req_W_grant_W, W_err_no_Req_S_grant_S, W_err_no_Req_L_grant_L, 

    -- South Arbiter_in checker outputs
    S_err_Requests_state_in_state_not_equal, 

    S_err_IDLE_Req_N, S_err_IDLE_grant_N,S_err_North_Req_N, S_err_North_grant_N, S_err_East_Req_E, S_err_East_grant_E, S_err_West_Req_W, 
    S_err_West_grant_W, S_err_South_Req_S,S_err_South_grant_S,S_err_Local_Req_L, S_err_Local_grant_L,
    S_err_IDLE_Req_E, S_err_IDLE_grant_E, S_err_North_Req_E, S_err_North_grant_E, S_err_East_Req_W, S_err_East_grant_W, S_err_West_Req_S, 
    S_err_West_grant_S, S_err_South_Req_L, S_err_South_grant_L, S_err_Local_Req_N, S_err_Local_grant_N,
    S_err_IDLE_Req_W, S_err_IDLE_grant_W, S_err_North_Req_W, S_err_North_grant_W, S_err_East_Req_S, S_err_East_grant_S, S_err_West_Req_L, 
    S_err_West_grant_L, S_err_South_Req_N,  S_err_South_grant_N, S_err_Local_Req_E, S_err_Local_grant_E, 
    S_err_IDLE_Req_S, S_err_IDLE_grant_S, S_err_North_Req_S, S_err_North_grant_S, S_err_East_Req_L, S_err_East_grant_L, S_err_West_Req_N, 
    S_err_West_grant_N, S_err_South_Req_E, S_err_South_grant_E, S_err_Local_Req_W, S_err_Local_grant_W, 
    S_err_IDLE_Req_L, S_err_IDLE_grant_L, S_err_North_Req_L, S_err_North_grant_L, S_err_East_Req_N, S_err_East_grant_N, S_err_West_Req_E, 
    S_err_West_grant_E, S_err_South_Req_W, S_err_South_grant_W, S_err_Local_Req_S, S_err_Local_grant_S, 

    S_err_arbiter_state_in_onehot, 
    S_err_no_request_grants, 
    S_err_request_no_grants, 

    S_err_no_Req_N_grant_N, S_err_no_Req_E_grant_E, S_err_no_Req_W_grant_W, S_err_no_Req_S_grant_S, S_err_no_Req_L_grant_L, 

    -- Local Arbiter_in checker outputs
    L_err_Requests_state_in_state_not_equal, 

    L_err_IDLE_Req_N, L_err_IDLE_grant_N,L_err_North_Req_N, L_err_North_grant_N, L_err_East_Req_E, 
    L_err_East_grant_E, L_err_West_Req_W, L_err_West_grant_W, L_err_South_Req_S,L_err_South_grant_S,
    L_err_Local_Req_L, L_err_Local_grant_L,

    L_err_IDLE_Req_E, L_err_IDLE_grant_E, L_err_North_Req_E, L_err_North_grant_E, L_err_East_Req_W, 
    L_err_East_grant_W, L_err_West_Req_S, L_err_West_grant_S, L_err_South_Req_L, L_err_South_grant_L, 
    L_err_Local_Req_N, L_err_Local_grant_N,

    L_err_IDLE_Req_W, L_err_IDLE_grant_W, L_err_North_Req_W, L_err_North_grant_W, L_err_East_Req_S, 
    L_err_East_grant_S, L_err_West_Req_L, L_err_West_grant_L, L_err_South_Req_N,  L_err_South_grant_N, 
    L_err_Local_Req_E, L_err_Local_grant_E, 

    L_err_IDLE_Req_S, L_err_IDLE_grant_S, L_err_North_Req_S, L_err_North_grant_S, L_err_East_Req_L, 
    L_err_East_grant_L, L_err_West_Req_N, L_err_West_grant_N, L_err_South_Req_E, L_err_South_grant_E, 
    L_err_Local_Req_W, L_err_Local_grant_W, 

    L_err_IDLE_Req_L, L_err_IDLE_grant_L, L_err_North_Req_L, L_err_North_grant_L, L_err_East_Req_N, 
    L_err_East_grant_N, L_err_West_Req_E, L_err_West_grant_E, L_err_South_Req_W, L_err_South_grant_W, 
    L_err_Local_Req_S, L_err_Local_grant_S, 

    L_err_arbiter_state_in_onehot, L_err_no_request_grants, L_err_request_no_grants, 

    L_err_no_Req_N_grant_N, L_err_no_Req_E_grant_E,  L_err_no_Req_W_grant_W,  L_err_no_Req_S_grant_S,  
    L_err_no_Req_L_grant_L, 

    -- Arbiter_out Checker signals (part of allocator unit)
    -- North Arbiter_out checker outputs
    N_arbiter_out_err_Requests_state_in_state_not_equal, 

    N_err_IDLE_req_X_N, N_err_North_req_X_N, N_err_North_credit_not_zero_req_X_N_grant_N, N_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
    N_err_East_req_X_E, N_err_East_credit_not_zero_req_X_E_grant_E, N_err_East_credit_zero_or_not_req_X_E_not_grant_E, N_err_West_req_X_W, 
    N_err_West_credit_not_zero_req_X_W_grant_W, N_err_West_credit_zero_or_not_req_X_W_not_grant_W, N_err_South_req_X_S, N_err_South_credit_not_zero_req_X_S_grant_S, 
    N_err_South_credit_zero_or_not_req_X_S_not_grant_S, N_err_Local_req_X_L, N_err_Local_credit_not_zero_req_X_L_grant_L, N_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

    N_err_IDLE_req_X_E, N_err_North_req_X_E, N_err_East_req_X_W, N_err_West_req_X_S, N_err_South_req_X_L, N_err_Local_req_X_N, 
    N_err_IDLE_req_X_W, N_err_North_req_X_W, N_err_East_req_X_S, N_err_West_req_X_L, N_err_South_req_X_N, N_err_Local_req_X_E, 
    N_err_IDLE_req_X_S, N_err_North_req_X_S, N_err_East_req_X_L, N_err_West_req_X_N, N_err_South_req_X_E, N_err_Local_req_X_W, 
    N_err_IDLE_req_X_L, N_err_North_req_X_L, N_err_East_req_X_N, N_err_West_req_X_E, N_err_South_req_X_W, N_err_Local_req_X_S, 

    N_arbiter_out_err_state_in_onehot, N_arbiter_out_err_no_request_grants, N_err_request_IDLE_state, 

    N_err_request_IDLE_not_Grants, N_err_state_North_Invalid_Grant, N_err_state_East_Invalid_Grant, 
    N_err_state_West_Invalid_Grant, N_err_state_South_Invalid_Grant, N_err_state_Local_Invalid_Grant, 
    N_err_Grants_onehot_or_all_zero, 

    -- East Arbiter_out checker outputs
    E_arbiter_out_err_Requests_state_in_state_not_equal, 

    E_err_IDLE_req_X_N, E_err_North_req_X_N, E_err_North_credit_not_zero_req_X_N_grant_N, E_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
    E_err_East_req_X_E, E_err_East_credit_not_zero_req_X_E_grant_E, E_err_East_credit_zero_or_not_req_X_E_not_grant_E, E_err_West_req_X_W, 
    E_err_West_credit_not_zero_req_X_W_grant_W, E_err_West_credit_zero_or_not_req_X_W_not_grant_W, E_err_South_req_X_S, E_err_South_credit_not_zero_req_X_S_grant_S, 
    E_err_South_credit_zero_or_not_req_X_S_not_grant_S, E_err_Local_req_X_L, E_err_Local_credit_not_zero_req_X_L_grant_L, E_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

    E_err_IDLE_req_X_E, E_err_North_req_X_E, E_err_East_req_X_W, E_err_West_req_X_S, E_err_South_req_X_L, E_err_Local_req_X_N, 
    E_err_IDLE_req_X_W, E_err_North_req_X_W, E_err_East_req_X_S, E_err_West_req_X_L, E_err_South_req_X_N, E_err_Local_req_X_E, 
    E_err_IDLE_req_X_S, E_err_North_req_X_S, E_err_East_req_X_L, E_err_West_req_X_N, E_err_South_req_X_E, E_err_Local_req_X_W, 
    E_err_IDLE_req_X_L, E_err_North_req_X_L, E_err_East_req_X_N, E_err_West_req_X_E, E_err_South_req_X_W, E_err_Local_req_X_S, 

    E_arbiter_out_err_state_in_onehot, E_arbiter_out_err_no_request_grants, E_err_request_IDLE_state, 

    E_err_request_IDLE_not_Grants, E_err_state_North_Invalid_Grant, E_err_state_East_Invalid_Grant, E_err_state_West_Invalid_Grant,  
    E_err_state_South_Invalid_Grant, E_err_state_Local_Invalid_Grant, E_err_Grants_onehot_or_all_zero, 

    -- West Arbiter_out checker outputs
    W_arbiter_out_err_Requests_state_in_state_not_equal, 

    W_err_IDLE_req_X_N, W_err_North_req_X_N, W_err_North_credit_not_zero_req_X_N_grant_N, 
    W_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
    W_err_East_req_X_E, W_err_East_credit_not_zero_req_X_E_grant_E, W_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
    W_err_West_req_X_W, W_err_West_credit_not_zero_req_X_W_grant_W, W_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
    W_err_South_req_X_S, W_err_South_credit_not_zero_req_X_S_grant_S, W_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
    W_err_Local_req_X_L, W_err_Local_credit_not_zero_req_X_L_grant_L, W_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

    W_err_IDLE_req_X_E, W_err_North_req_X_E, W_err_East_req_X_W, W_err_West_req_X_S, W_err_South_req_X_L, W_err_Local_req_X_N, 
    W_err_IDLE_req_X_W, W_err_North_req_X_W, W_err_East_req_X_S, W_err_West_req_X_L, W_err_South_req_X_N, W_err_Local_req_X_E, 
    W_err_IDLE_req_X_S, W_err_North_req_X_S, W_err_East_req_X_L, W_err_West_req_X_N, W_err_South_req_X_E, W_err_Local_req_X_W, 
    W_err_IDLE_req_X_L, W_err_North_req_X_L, W_err_East_req_X_N, W_err_West_req_X_E, W_err_South_req_X_W, W_err_Local_req_X_S, 

    W_arbiter_out_err_state_in_onehot, W_arbiter_out_err_no_request_grants, W_err_request_IDLE_state, 

    W_err_request_IDLE_not_Grants, W_err_state_North_Invalid_Grant,W_err_state_East_Invalid_Grant, 
    W_err_state_West_Invalid_Grant, W_err_state_South_Invalid_Grant,W_err_state_Local_Invalid_Grant,
    W_err_Grants_onehot_or_all_zero, 

    -- South Arbiter_out checker outputs
    S_arbiter_out_err_Requests_state_in_state_not_equal, 

    S_err_IDLE_req_X_N, S_err_North_req_X_N, S_err_North_credit_not_zero_req_X_N_grant_N, 
    S_err_North_credit_zero_or_not_req_X_N_not_grant_N, S_err_East_req_X_E, S_err_East_credit_not_zero_req_X_E_grant_E, 
    S_err_East_credit_zero_or_not_req_X_E_not_grant_E, S_err_West_req_X_W, S_err_West_credit_not_zero_req_X_W_grant_W, 
    S_err_West_credit_zero_or_not_req_X_W_not_grant_W, S_err_South_req_X_S, S_err_South_credit_not_zero_req_X_S_grant_S, 
    S_err_South_credit_zero_or_not_req_X_S_not_grant_S, S_err_Local_req_X_L, S_err_Local_credit_not_zero_req_X_L_grant_L, 
    S_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

    S_err_IDLE_req_X_E, S_err_North_req_X_E, S_err_East_req_X_W, S_err_West_req_X_S, S_err_South_req_X_L, S_err_Local_req_X_N, 
    S_err_IDLE_req_X_W, S_err_North_req_X_W, S_err_East_req_X_S, S_err_West_req_X_L, S_err_South_req_X_N, S_err_Local_req_X_E, 
    S_err_IDLE_req_X_S, S_err_North_req_X_S, S_err_East_req_X_L, S_err_West_req_X_N, S_err_South_req_X_E, S_err_Local_req_X_W, 
    S_err_IDLE_req_X_L, S_err_North_req_X_L, S_err_East_req_X_N, S_err_West_req_X_E, S_err_South_req_X_W, S_err_Local_req_X_S, 

    S_arbiter_out_err_state_in_onehot, S_arbiter_out_err_no_request_grants, S_err_request_IDLE_state, 

    S_err_request_IDLE_not_Grants, S_err_state_North_Invalid_Grant, S_err_state_East_Invalid_Grant, S_err_state_West_Invalid_Grant, 
    S_err_state_South_Invalid_Grant, S_err_state_Local_Invalid_Grant, S_err_Grants_onehot_or_all_zero, 

    -- Local Arbiter_out checker outputs
    L_arbiter_out_err_Requests_state_in_state_not_equal, 

    L_err_IDLE_req_X_N, L_err_North_req_X_N, L_err_North_credit_not_zero_req_X_N_grant_N, L_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
    L_err_East_req_X_E, L_err_East_credit_not_zero_req_X_E_grant_E, L_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
    L_err_West_req_X_W, L_err_West_credit_not_zero_req_X_W_grant_W, L_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
    L_err_South_req_X_S, L_err_South_credit_not_zero_req_X_S_grant_S, L_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
    L_err_Local_req_X_L, L_err_Local_credit_not_zero_req_X_L_grant_L, L_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

    L_err_IDLE_req_X_E, L_err_North_req_X_E, L_err_East_req_X_W, L_err_West_req_X_S, L_err_South_req_X_L, L_err_Local_req_X_N, 
    L_err_IDLE_req_X_W, L_err_North_req_X_W, L_err_East_req_X_S, L_err_West_req_X_L, L_err_South_req_X_N, L_err_Local_req_X_E, 
    L_err_IDLE_req_X_S, L_err_North_req_X_S, L_err_East_req_X_L, L_err_West_req_X_N, L_err_South_req_X_E, L_err_Local_req_X_W, 
    L_err_IDLE_req_X_L, L_err_North_req_X_L, L_err_East_req_X_N, L_err_West_req_X_E, L_err_South_req_X_W, L_err_Local_req_X_S, 

    L_arbiter_out_err_state_in_onehot, L_arbiter_out_err_no_request_grants, L_err_request_IDLE_state, 

    L_err_request_IDLE_not_Grants, L_err_state_North_Invalid_Grant,L_err_state_East_Invalid_Grant, 
    L_err_state_West_Invalid_Grant, L_err_state_South_Invalid_Grant, L_err_state_Local_Invalid_Grant,
    L_err_Grants_onehot_or_all_zero: out std_logic
 ); 
end router_credit_based_PD_C_SHMU_control_part_with_checkers; 

architecture behavior of router_credit_based_PD_C_SHMU_control_part_with_checkers is

    signal Req_EN, Req_WN, Req_SN, Req_LN: std_logic;
    signal Req_NE, Req_WE, Req_SE, Req_LE: std_logic;
    signal Req_NW, Req_EW, Req_SW, Req_LW: std_logic;
    signal Req_NS, Req_ES, Req_WS, Req_LS: std_logic;
    signal Req_NL, Req_EL, Req_WL, Req_SL: std_logic;

    -- Grant_XY : Grant signal generated from Arbiter for output X connected to FIFO of input Y
    signal Grant_NE, Grant_NW, Grant_NS, Grant_NL: std_logic;
    signal Grant_EN, Grant_EW, Grant_ES, Grant_EL: std_logic;
    signal Grant_WN, Grant_WE, Grant_WS, Grant_WL: std_logic;
    signal Grant_SN, Grant_SE, Grant_SW, Grant_SL: std_logic;
    signal Grant_LN, Grant_LE, Grant_LW, Grant_LS: std_logic;

    -- valid_out_X: LBDR signaled the validity of output
    signal valid_LBDR_N_sig, valid_LBDR_E_sig, valid_LBDR_S_sig, valid_LBDR_W_sig, valid_LBDR_L_sig: std_logic;

    signal valid_out_N_sig, valid_out_E_sig, valid_out_S_sig, valid_out_W_sig, valid_out_L_sig: std_logic;

    -- BUBBLES
    signal hold_out_N_sig, hold_out_E_sig, hold_out_S_sig, hold_out_W_sig, hold_out_L_sig: std_logic := '0';
    
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

begin

-- Taking grant signals to output, which will serve as read_en inputs for FIFOs

FIFO_E_read_en_N <= Grant_NE;   FIFO_N_read_en_E <= Grant_EN;   FIFO_N_read_en_W <= Grant_WN;
FIFO_W_read_en_N <= Grant_NW;   FIFO_W_read_en_E <= Grant_EW;   FIFO_E_read_en_W <= Grant_WE;
FIFO_S_read_en_N <= Grant_NS;   FIFO_S_read_en_E <= Grant_ES;   FIFO_S_read_en_W <= Grant_WS;
FIFO_L_read_en_N <= Grant_NL;   FIFO_L_read_en_E <= Grant_EL;   FIFO_L_read_en_W <= Grant_WL;

FIFO_N_read_en_S <= Grant_SN;   FIFO_N_read_en_L <= Grant_LN; 
FIFO_E_read_en_S <= Grant_SE;   FIFO_E_read_en_L <= Grant_LE; 
FIFO_W_read_en_S <= Grant_SW;   FIFO_W_read_en_L <= Grant_LW; 
FIFO_L_read_en_S <= Grant_SL;   FIFO_S_read_en_L <= Grant_LS; 

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

--- all the LBDRs
LBDR_N: LBDR_bubble_combinatory_with_sequential generic map (cur_addr_rst => cur_addr_rst, Cx_rst => Cx_rst, Rxy_rst => Rxy_rst, NoC_size => NoC_size)
       PORT MAP (reset => reset, clk => clk, empty => empty_N, 
             Faulty_C_N => Faulty_N_in, Faulty_C_E => Faulty_E_in, Faulty_C_W => Faulty_W_in, Faulty_C_S => Faulty_S_in,  
             flit_type => flit_type_N, dst_addr=> dst_addr_N,
             faulty => LBDR_Fault_N, packet_drop_order => packet_drop_order_N,
             grant_N => '0', grant_E =>Grant_EN, grant_W => Grant_WN, grant_S=>Grant_SN, grant_L =>Grant_LN,
             Req_N=> open, Req_E=>Req_NE, Req_W=>Req_NW, Req_S=>Req_NS, Req_L=>Req_NL,
             Rxy_reconf_PE => Rxy_reconf_PE, Cx_reconf_PE => Cx_reconf_PE, Reconfig_command=>Reconfig_command,

             --hold_in => hold_in_N, 
             hold_out => hold_out_N_sig, 
             --valid_out => valid_LBDR_N_sig,

             -- Checker outputs
            err_header_empty_Requests_FF_Requests_in => N_err_header_empty_Requests_FF_Requests_in, 
            err_tail_Requests_in_all_zero => N_err_tail_Requests_in_all_zero, 
            err_tail_empty_Requests_FF_Requests_in => N_err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => N_err_tail_not_empty_not_grants_Requests_FF_Requests_in, 
            err_grants_onehot => N_err_grants_onehot, 
            err_grants_mismatch => N_err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => N_err_header_tail_Requests_FF_Requests_in, 
            err_dst_addr_cur_addr_N1 => N_err_dst_addr_cur_addr_N1, 
            err_dst_addr_cur_addr_not_N1 => N_err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => N_err_dst_addr_cur_addr_E1, 
            err_dst_addr_cur_addr_not_E1 => N_err_dst_addr_cur_addr_not_E1, 
            err_dst_addr_cur_addr_W1 => N_err_dst_addr_cur_addr_W1, 
            err_dst_addr_cur_addr_not_W1 => N_err_dst_addr_cur_addr_not_W1, 
            err_dst_addr_cur_addr_S1 => N_err_dst_addr_cur_addr_S1, 
            err_dst_addr_cur_addr_not_S1 => N_err_dst_addr_cur_addr_not_S1, 
            err_dst_addr_cur_addr_Req_L_in => N_err_dst_addr_cur_addr_Req_L_in, 
            err_dst_addr_cur_addr_not_Req_L_in => N_err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => N_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => N_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => N_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => N_err_header_not_empty_Req_N_in, 
            err_header_not_empty_Req_E_in => N_err_header_not_empty_Req_E_in, 
            err_header_not_empty_Req_W_in => N_err_header_not_empty_Req_W_in, 
            err_header_not_empty_Req_S_in => N_err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => N_err_header_empty_packet_drop_in_packet_drop_equal, 
            err_tail_not_empty_packet_drop_not_packet_drop_in => N_err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => N_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => N_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => N_err_packet_drop_order, 

            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => N_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => N_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => N_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => N_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, 

            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => N_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => N_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => N_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
          );

LBDR_E: LBDR_bubble_combinatory_with_sequential generic map (cur_addr_rst => cur_addr_rst, Cx_rst => Cx_rst, Rxy_rst => Rxy_rst, NoC_size => NoC_size)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_E, 
             Faulty_C_N => Faulty_N_in, Faulty_C_E => Faulty_E_in, Faulty_C_W => Faulty_W_in, Faulty_C_S => Faulty_S_in,  
             flit_type => flit_type_E, dst_addr=> dst_addr_E,
             faulty => LBDR_Fault_E, packet_drop_order => packet_drop_order_E,
             grant_N => Grant_NE, grant_E =>'0', grant_W => Grant_WE, grant_S=>Grant_SE, grant_L =>Grant_LE,
             Req_N=> Req_EN, Req_E=>open, Req_W=>Req_EW, Req_S=>Req_ES, Req_L=>Req_EL,
             Rxy_reconf_PE => Rxy_reconf_PE, Cx_reconf_PE => Cx_reconf_PE, Reconfig_command=>Reconfig_command,

             --hold_in => hold_in_E, 
             hold_out => hold_out_E_sig, 
             --valid_out => valid_LBDR_E_sig,

             -- Checker outputs
            err_header_empty_Requests_FF_Requests_in => E_err_header_empty_Requests_FF_Requests_in, 
            err_tail_Requests_in_all_zero => E_err_tail_Requests_in_all_zero, 
            err_tail_empty_Requests_FF_Requests_in => E_err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => E_err_tail_not_empty_not_grants_Requests_FF_Requests_in, 
            err_grants_onehot => E_err_grants_onehot, 
            err_grants_mismatch => E_err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => E_err_header_tail_Requests_FF_Requests_in, 
            err_dst_addr_cur_addr_N1 => E_err_dst_addr_cur_addr_N1, 
            err_dst_addr_cur_addr_not_N1 => E_err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => E_err_dst_addr_cur_addr_E1, 
            err_dst_addr_cur_addr_not_E1 => E_err_dst_addr_cur_addr_not_E1, 
            err_dst_addr_cur_addr_W1 => E_err_dst_addr_cur_addr_W1, 
            err_dst_addr_cur_addr_not_W1 => E_err_dst_addr_cur_addr_not_W1, 
            err_dst_addr_cur_addr_S1 => E_err_dst_addr_cur_addr_S1, 
            err_dst_addr_cur_addr_not_S1 => E_err_dst_addr_cur_addr_not_S1, 
            err_dst_addr_cur_addr_Req_L_in => E_err_dst_addr_cur_addr_Req_L_in, 
            err_dst_addr_cur_addr_not_Req_L_in => E_err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => E_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => E_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => E_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => E_err_header_not_empty_Req_N_in, 
            err_header_not_empty_Req_E_in => E_err_header_not_empty_Req_E_in, 
            err_header_not_empty_Req_W_in => E_err_header_not_empty_Req_W_in, 
            err_header_not_empty_Req_S_in => E_err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => E_err_header_empty_packet_drop_in_packet_drop_equal, 
            err_tail_not_empty_packet_drop_not_packet_drop_in => E_err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => E_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => E_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => E_err_packet_drop_order, 

            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => E_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => E_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => E_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => E_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, 

            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => E_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => E_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => E_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
           );

LBDR_W: LBDR_bubble_combinatory_with_sequential generic map (cur_addr_rst => cur_addr_rst, Cx_rst => Cx_rst, Rxy_rst => Rxy_rst, NoC_size => NoC_size)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_W,  
             Faulty_C_N => Faulty_N_in, Faulty_C_E => Faulty_E_in, Faulty_C_W => Faulty_W_in, Faulty_C_S => Faulty_S_in,  
             flit_type => flit_type_W, dst_addr=> dst_addr_W,
             faulty => LBDR_Fault_W, packet_drop_order => packet_drop_order_W,
             grant_N => Grant_NW, grant_E =>Grant_EW, grant_W =>'0' ,grant_S=>Grant_SW, grant_L =>Grant_LW,
             Req_N=> Req_WN, Req_E=>Req_WE, Req_W=>open, Req_S=>Req_WS, Req_L=>Req_WL,
             Rxy_reconf_PE => Rxy_reconf_PE, Cx_reconf_PE => Cx_reconf_PE, Reconfig_command=>Reconfig_command,

             --hold_in => hold_in_W, 
             hold_out => hold_out_W_sig, 
             --valid_out => valid_LBDR_W_sig,

             -- Checker outputs
            err_header_empty_Requests_FF_Requests_in => W_err_header_empty_Requests_FF_Requests_in, 
            err_tail_Requests_in_all_zero => W_err_tail_Requests_in_all_zero, 
            err_tail_empty_Requests_FF_Requests_in => W_err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => W_err_tail_not_empty_not_grants_Requests_FF_Requests_in, 
            err_grants_onehot => W_err_grants_onehot, 
            err_grants_mismatch => W_err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => W_err_header_tail_Requests_FF_Requests_in, 
            err_dst_addr_cur_addr_N1 => W_err_dst_addr_cur_addr_N1, 
            err_dst_addr_cur_addr_not_N1 => W_err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => W_err_dst_addr_cur_addr_E1, 
            err_dst_addr_cur_addr_not_E1 => W_err_dst_addr_cur_addr_not_E1, 
            err_dst_addr_cur_addr_W1 => W_err_dst_addr_cur_addr_W1, 
            err_dst_addr_cur_addr_not_W1 => W_err_dst_addr_cur_addr_not_W1, 
            err_dst_addr_cur_addr_S1 => W_err_dst_addr_cur_addr_S1, 
            err_dst_addr_cur_addr_not_S1 => W_err_dst_addr_cur_addr_not_S1, 
            err_dst_addr_cur_addr_Req_L_in => W_err_dst_addr_cur_addr_Req_L_in, 
            err_dst_addr_cur_addr_not_Req_L_in => W_err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => W_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => W_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => W_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => W_err_header_not_empty_Req_N_in, 
            err_header_not_empty_Req_E_in => W_err_header_not_empty_Req_E_in, 
            err_header_not_empty_Req_W_in => W_err_header_not_empty_Req_W_in, 
            err_header_not_empty_Req_S_in => W_err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => W_err_header_empty_packet_drop_in_packet_drop_equal, 
            err_tail_not_empty_packet_drop_not_packet_drop_in => W_err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => W_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => W_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => W_err_packet_drop_order, 

            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => W_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => W_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => W_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => W_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, 

            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => W_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => W_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => W_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
           );

LBDR_S: LBDR_bubble_combinatory_with_sequential generic map (cur_addr_rst => cur_addr_rst, Cx_rst => Cx_rst, Rxy_rst => Rxy_rst, NoC_size => NoC_size)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_S, 
             Faulty_C_N => Faulty_N_in, Faulty_C_E => Faulty_E_in, Faulty_C_W => Faulty_W_in, Faulty_C_S => Faulty_S_in,  
             flit_type => flit_type_S, dst_addr=> dst_addr_S,
             faulty => LBDR_Fault_S, packet_drop_order => packet_drop_order_S,
             grant_N => Grant_NS, grant_E =>Grant_ES, grant_W =>Grant_WS ,grant_S=>'0', grant_L =>Grant_LS,
             Req_N=> Req_SN, Req_E=>Req_SE, Req_W=>Req_SW, Req_S=>open, Req_L=>Req_SL,
             Rxy_reconf_PE => Rxy_reconf_PE, Cx_reconf_PE => Cx_reconf_PE, Reconfig_command=>Reconfig_command,

             --hold_in => hold_in_S, 
             hold_out => hold_out_S_sig, 
             --valid_out => valid_LBDR_S_sig,

             -- Checker outputs
            err_header_empty_Requests_FF_Requests_in => S_err_header_empty_Requests_FF_Requests_in, 
            err_tail_Requests_in_all_zero => S_err_tail_Requests_in_all_zero, 
            err_tail_empty_Requests_FF_Requests_in => S_err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => S_err_tail_not_empty_not_grants_Requests_FF_Requests_in, 
            err_grants_onehot => S_err_grants_onehot, 
            err_grants_mismatch => S_err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => S_err_header_tail_Requests_FF_Requests_in, 
            err_dst_addr_cur_addr_N1 => S_err_dst_addr_cur_addr_N1, 
            err_dst_addr_cur_addr_not_N1 => S_err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => S_err_dst_addr_cur_addr_E1, 
            err_dst_addr_cur_addr_not_E1 => S_err_dst_addr_cur_addr_not_E1, 
            err_dst_addr_cur_addr_W1 => S_err_dst_addr_cur_addr_W1, 
            err_dst_addr_cur_addr_not_W1 => S_err_dst_addr_cur_addr_not_W1, 
            err_dst_addr_cur_addr_S1 => S_err_dst_addr_cur_addr_S1, 
            err_dst_addr_cur_addr_not_S1 => S_err_dst_addr_cur_addr_not_S1, 
            err_dst_addr_cur_addr_Req_L_in => S_err_dst_addr_cur_addr_Req_L_in, 
            err_dst_addr_cur_addr_not_Req_L_in => S_err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => S_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => S_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => S_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => S_err_header_not_empty_Req_N_in, 
            err_header_not_empty_Req_E_in => S_err_header_not_empty_Req_E_in, 
            err_header_not_empty_Req_W_in => S_err_header_not_empty_Req_W_in, 
            err_header_not_empty_Req_S_in => S_err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => S_err_header_empty_packet_drop_in_packet_drop_equal, 
            err_tail_not_empty_packet_drop_not_packet_drop_in => S_err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => S_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => S_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => S_err_packet_drop_order, 

            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => S_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => S_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => S_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => S_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, 

            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => S_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => S_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => S_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
           );

LBDR_L: LBDR_bubble_combinatory_with_sequential generic map (cur_addr_rst => cur_addr_rst, Cx_rst => Cx_rst, Rxy_rst => Rxy_rst, NoC_size => NoC_size)
   PORT MAP (reset =>  reset, clk => clk, empty => empty_L, 
             Faulty_C_N => Faulty_N_in, Faulty_C_E => Faulty_E_in, Faulty_C_W => Faulty_W_in, Faulty_C_S => Faulty_S_in,  
             flit_type => flit_type_L, dst_addr=> dst_addr_L,
             faulty => LBDR_Fault_L, packet_drop_order => packet_drop_order_L,
             grant_N => Grant_NL, grant_E =>Grant_EL, grant_W => Grant_WL,grant_S=>Grant_SL, grant_L =>'0',
             Req_N=> Req_LN, Req_E=>Req_LE, Req_W=>Req_LW, Req_S=>Req_LS, Req_L=>open,
             Rxy_reconf_PE => Rxy_reconf_PE, Cx_reconf_PE => Cx_reconf_PE, Reconfig_command=>Reconfig_command,

             --hold_in => hold_in_L, 
             hold_out => hold_out_L_sig, 
             --valid_out => valid_LBDR_L_sig,

             -- Checker outputs
            err_header_empty_Requests_FF_Requests_in => L_err_header_empty_Requests_FF_Requests_in, 
            err_tail_Requests_in_all_zero => L_err_tail_Requests_in_all_zero, 
            err_tail_empty_Requests_FF_Requests_in => L_err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => L_err_tail_not_empty_not_grants_Requests_FF_Requests_in, 
            err_grants_onehot => L_err_grants_onehot, 
            err_grants_mismatch => L_err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => L_err_header_tail_Requests_FF_Requests_in, 
            err_dst_addr_cur_addr_N1 => L_err_dst_addr_cur_addr_N1, 
            err_dst_addr_cur_addr_not_N1 => L_err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => L_err_dst_addr_cur_addr_E1, 
            err_dst_addr_cur_addr_not_E1 => L_err_dst_addr_cur_addr_not_E1, 
            err_dst_addr_cur_addr_W1 => L_err_dst_addr_cur_addr_W1, 
            err_dst_addr_cur_addr_not_W1 => L_err_dst_addr_cur_addr_not_W1, 
            err_dst_addr_cur_addr_S1 => L_err_dst_addr_cur_addr_S1, 
            err_dst_addr_cur_addr_not_S1 => L_err_dst_addr_cur_addr_not_S1, 
            err_dst_addr_cur_addr_Req_L_in => L_err_dst_addr_cur_addr_Req_L_in, 
            err_dst_addr_cur_addr_not_Req_L_in => L_err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => L_err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => L_err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => L_err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => L_err_header_not_empty_Req_N_in, 
            err_header_not_empty_Req_E_in => L_err_header_not_empty_Req_E_in, 
            err_header_not_empty_Req_W_in => L_err_header_not_empty_Req_W_in, 
            err_header_not_empty_Req_S_in => L_err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => L_err_header_empty_packet_drop_in_packet_drop_equal, 
            err_tail_not_empty_packet_drop_not_packet_drop_in => L_err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => L_err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => L_err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => L_err_packet_drop_order, 

            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => L_err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => L_err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => L_err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => L_err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, 

            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => L_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => L_err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => L_err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
           );

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

-- switch allocator
 
allocator_unit: allocator port map ( reset => reset, clk => clk,
            -- flow control
            credit_in_N => credit_in_N, credit_in_E => credit_in_E, credit_in_W => credit_in_W, credit_in_S => credit_in_S, credit_in_L => credit_in_L,

            -- requests from the LBDRS
            req_N_N => '0', req_N_E => Req_NE, req_N_W => Req_NW, req_N_S => Req_NS, req_N_L => Req_NL,
            req_E_N => Req_EN, req_E_E => '0', req_E_W => Req_EW, req_E_S => Req_ES, req_E_L => Req_EL,
            req_W_N => Req_WN, req_W_E => Req_WE, req_W_W => '0', req_W_S => Req_WS, req_W_L => Req_WL,
            req_S_N => Req_SN, req_S_E => Req_SE, req_S_W => Req_SW, req_S_S => '0', req_S_L => Req_SL,
            req_L_N => Req_LN, req_L_E => Req_LE, req_L_W => Req_LW, req_L_S => Req_LS, req_L_L => '0',
            empty_N => empty_N, empty_E => empty_E, empty_w => empty_W, empty_S => empty_S, empty_L => empty_L, 

            -- BUBBLES
            hold_in_N => hold_out_N_sig, hold_in_E => hold_out_E_sig, hold_in_W => hold_out_W_sig, hold_in_S => hold_out_S_sig, hold_in_L => hold_out_L_sig, 

            valid_N => valid_out_N_sig, valid_E => valid_out_E_sig, valid_W => valid_out_W_sig, valid_S => valid_out_S_sig, valid_L => valid_out_L_sig,
            -- grant_X_Y means the grant for X output port towards Y input port
            -- this means for any X in [N, E, W, S, L] then set grant_X_Y is one hot!
            grant_N_N => open, grant_N_E => Grant_NE, grant_N_W => Grant_NW, grant_N_S => Grant_NS, grant_N_L => Grant_NL,
            grant_E_N => Grant_EN, grant_E_E => open, grant_E_W => Grant_EW, grant_E_S => Grant_ES, grant_E_L => Grant_EL,
            grant_W_N => Grant_WN, grant_W_E => Grant_WE, grant_W_W => open, grant_W_S => Grant_WS, grant_W_L => Grant_WL,
            grant_S_N => Grant_SN, grant_S_E => Grant_SE, grant_S_W => Grant_SW, grant_S_S => open, grant_S_L => Grant_SL,
            grant_L_N => Grant_LN, grant_L_E => Grant_LE, grant_L_W => Grant_LW, grant_L_S => Grant_LS, grant_L_L => open,                                                                                             -- Also check inside Allocator's logic

            -- Checker outputs
            -- Allocator logic checker outputs
            err_grant_N_N_sig_not_empty_N_grant_N_N  => err_grant_N_N_sig_not_empty_N_grant_N_N , 
            err_not_grant_N_N_sig_or_empty_N_not_grant_N_N  => err_not_grant_N_N_sig_or_empty_N_not_grant_N_N , 
            err_grant_N_E_sig_not_empty_E_grant_N_E  => err_grant_N_E_sig_not_empty_E_grant_N_E , 
            err_not_grant_N_E_sig_or_empty_E_not_grant_N_E  => err_not_grant_N_E_sig_or_empty_E_not_grant_N_E , 
            err_grant_N_W_sig_not_empty_W_grant_N_W  => err_grant_N_W_sig_not_empty_W_grant_N_W , 
            err_not_grant_N_W_sig_or_empty_W_not_grant_N_W  => err_not_grant_N_W_sig_or_empty_W_not_grant_N_W , 
            err_grant_N_S_sig_not_empty_S_grant_N_S  => err_grant_N_S_sig_not_empty_S_grant_N_S , 
            err_not_grant_N_S_sig_or_empty_S_not_grant_N_S  => err_not_grant_N_S_sig_or_empty_S_not_grant_N_S , 
            err_grant_N_L_sig_not_empty_L_grant_N_L  => err_grant_N_L_sig_not_empty_L_grant_N_L , 
            err_not_grant_N_L_sig_or_empty_L_not_grant_N_L  => err_not_grant_N_L_sig_or_empty_L_not_grant_N_L , 

            err_grant_E_N_sig_not_empty_N_grant_E_N  => err_grant_E_N_sig_not_empty_N_grant_E_N , 
            err_not_grant_E_N_sig_or_empty_N_not_grant_E_N  => err_not_grant_E_N_sig_or_empty_N_not_grant_E_N , 
            err_grant_E_E_sig_not_empty_E_grant_E_E  => err_grant_E_E_sig_not_empty_E_grant_E_E , 
            err_not_grant_E_E_sig_or_empty_E_not_grant_E_E  => err_not_grant_E_E_sig_or_empty_E_not_grant_E_E , 
            err_grant_E_W_sig_not_empty_W_grant_E_W  => err_grant_E_W_sig_not_empty_W_grant_E_W , 
            err_not_grant_E_W_sig_or_empty_W_not_grant_E_W  => err_not_grant_E_W_sig_or_empty_W_not_grant_E_W , 
            err_grant_E_S_sig_not_empty_S_grant_E_S  => err_grant_E_S_sig_not_empty_S_grant_E_S , 
            err_not_grant_E_S_sig_or_empty_S_not_grant_E_S  => err_not_grant_E_S_sig_or_empty_S_not_grant_E_S , 
            err_grant_E_L_sig_not_empty_L_grant_E_L  => err_grant_E_L_sig_not_empty_L_grant_E_L , 
            err_not_grant_E_L_sig_or_empty_L_not_grant_E_L  => err_not_grant_E_L_sig_or_empty_L_not_grant_E_L , 

            err_grant_W_N_sig_not_empty_N_grant_W_N  => err_grant_W_N_sig_not_empty_N_grant_W_N , 
            err_not_grant_W_N_sig_or_empty_N_not_grant_W_N  => err_not_grant_W_N_sig_or_empty_N_not_grant_W_N , 
            err_grant_W_E_sig_not_empty_E_grant_W_E  => err_grant_W_E_sig_not_empty_E_grant_W_E , 
            err_not_grant_W_E_sig_or_empty_E_not_grant_W_E  => err_not_grant_W_E_sig_or_empty_E_not_grant_W_E , 
            err_grant_W_W_sig_not_empty_W_grant_W_W  => err_grant_W_W_sig_not_empty_W_grant_W_W , 
            err_not_grant_W_W_sig_or_empty_W_not_grant_W_W  => err_not_grant_W_W_sig_or_empty_W_not_grant_W_W , 
            err_grant_W_S_sig_not_empty_S_grant_W_S  => err_grant_W_S_sig_not_empty_S_grant_W_S , 
            err_not_grant_W_S_sig_or_empty_S_not_grant_W_S  => err_not_grant_W_S_sig_or_empty_S_not_grant_W_S , 
            err_grant_W_L_sig_not_empty_L_grant_W_L  => err_grant_W_L_sig_not_empty_L_grant_W_L , 
            err_not_grant_W_L_sig_or_empty_L_not_grant_W_L  => err_not_grant_W_L_sig_or_empty_L_not_grant_W_L , 

            err_grant_S_N_sig_not_empty_N_grant_S_N  => err_grant_S_N_sig_not_empty_N_grant_S_N , 
            err_not_grant_S_N_sig_or_empty_N_not_grant_S_N  => err_not_grant_S_N_sig_or_empty_N_not_grant_S_N , 
            err_grant_S_E_sig_not_empty_E_grant_S_E  => err_grant_S_E_sig_not_empty_E_grant_S_E , 
            err_not_grant_S_E_sig_or_empty_E_not_grant_S_E  => err_not_grant_S_E_sig_or_empty_E_not_grant_S_E , 
            err_grant_S_W_sig_not_empty_W_grant_S_W  => err_grant_S_W_sig_not_empty_W_grant_S_W , 
            err_not_grant_S_W_sig_or_empty_W_not_grant_S_W  => err_not_grant_S_W_sig_or_empty_W_not_grant_S_W , 
            err_grant_S_S_sig_not_empty_S_grant_S_S  => err_grant_S_S_sig_not_empty_S_grant_S_S , 
            err_not_grant_S_S_sig_or_empty_S_not_grant_S_S  => err_not_grant_S_S_sig_or_empty_S_not_grant_S_S , 
            err_grant_S_L_sig_not_empty_L_grant_S_L  => err_grant_S_L_sig_not_empty_L_grant_S_L , 
            err_not_grant_S_L_sig_or_empty_L_not_grant_S_L  => err_not_grant_S_L_sig_or_empty_L_not_grant_S_L , 

            err_grant_L_N_sig_not_empty_N_grant_L_N => err_grant_L_N_sig_not_empty_N_grant_L_N , 
            err_not_grant_L_N_sig_or_empty_N_not_grant_L_N => err_not_grant_L_N_sig_or_empty_N_not_grant_L_N , 
            err_grant_L_E_sig_not_empty_E_grant_L_E => err_grant_L_E_sig_not_empty_E_grant_L_E , 
            err_not_grant_L_E_sig_or_empty_E_not_grant_L_E => err_not_grant_L_E_sig_or_empty_E_not_grant_L_E , 
            err_grant_L_W_sig_not_empty_W_grant_L_W => err_grant_L_W_sig_not_empty_W_grant_L_W , 
            err_not_grant_L_W_sig_or_empty_W_not_grant_L_W => err_not_grant_L_W_sig_or_empty_W_not_grant_L_W , 
            err_grant_L_S_sig_not_empty_S_grant_L_S => err_grant_L_S_sig_not_empty_S_grant_L_S , 
            err_not_grant_L_S_sig_or_empty_S_not_grant_L_S => err_not_grant_L_S_sig_or_empty_S_not_grant_L_S , 
            err_grant_L_L_sig_not_empty_L_grant_L_L => err_grant_L_L_sig_not_empty_L_grant_L_L , 
            err_not_grant_L_L_sig_or_empty_L_not_grant_L_L => err_not_grant_L_L_sig_or_empty_L_not_grant_L_L , 

            err_grant_signals_not_empty_grant_N => err_grant_signals_not_empty_grant_N , 
            err_not_grant_signals_empty_not_grant_N => err_not_grant_signals_empty_not_grant_N , 
            err_grant_signals_not_empty_grant_E => err_grant_signals_not_empty_grant_E , 
            err_not_grant_signals_empty_not_grant_E => err_not_grant_signals_empty_not_grant_E , 
            err_grant_signals_not_empty_grant_W => err_grant_signals_not_empty_grant_W , 
            err_not_grant_signals_empty_not_grant_W => err_not_grant_signals_empty_not_grant_W , 
            err_grant_signals_not_empty_grant_S => err_grant_signals_not_empty_grant_S , 
            err_not_grant_signals_empty_not_grant_S => err_not_grant_signals_empty_not_grant_S , 
            err_grant_signals_not_empty_grant_L => err_grant_signals_not_empty_grant_L , 
            err_not_grant_signals_empty_not_grant_L => err_not_grant_signals_empty_not_grant_L , 

            err_grants_valid_not_match => err_grants_valid_not_match , 

            -- Allocator credit counter logic checker outputs
            err_credit_in_N_grant_N_credit_counter_N_in_credit_counter_N_out_equal  => err_credit_in_N_grant_N_credit_counter_N_in_credit_counter_N_out_equal , 
            err_credit_in_N_credit_counter_N_out_increment  => err_credit_in_N_credit_counter_N_out_increment , 
            err_not_credit_in_N_credit_counter_N_out_max_credit_counter_N_in_not_change  => err_not_credit_in_N_credit_counter_N_out_max_credit_counter_N_in_not_change , 
            err_grant_N_credit_counter_N_out_decrement  => err_grant_N_credit_counter_N_out_decrement , 
            err_not_grant_N_or_credit_counter_N_out_zero_credit_counter_N_in_not_change         => err_not_grant_N_or_credit_counter_N_out_zero_credit_counter_N_in_not_change        ,      
            err_not_credit_in_N_not_grant_N_credit_counter_N_in_credit_counter_N_out_equal  => err_not_credit_in_N_not_grant_N_credit_counter_N_in_credit_counter_N_out_equal , 

            err_credit_in_E_grant_E_credit_counter_E_in_credit_counter_E_out_equal  => err_credit_in_E_grant_E_credit_counter_E_in_credit_counter_E_out_equal , 
            err_credit_in_E_credit_counter_E_out_increment  => err_credit_in_E_credit_counter_E_out_increment , 
            err_not_credit_in_E_credit_counter_E_out_max_credit_counter_E_in_not_change  => err_not_credit_in_E_credit_counter_E_out_max_credit_counter_E_in_not_change , 
            err_grant_E_credit_counter_E_out_decrement  => err_grant_E_credit_counter_E_out_decrement , 
            err_not_grant_E_or_credit_counter_E_out_zero_credit_counter_E_in_not_change         => err_not_grant_E_or_credit_counter_E_out_zero_credit_counter_E_in_not_change        ,      
            err_not_credit_in_E_not_grant_E_credit_counter_E_in_credit_counter_E_out_equal  => err_not_credit_in_E_not_grant_E_credit_counter_E_in_credit_counter_E_out_equal , 

            err_credit_in_W_grant_W_credit_counter_W_in_credit_counter_W_out_equal  => err_credit_in_W_grant_W_credit_counter_W_in_credit_counter_W_out_equal , 
            err_credit_in_W_credit_counter_W_out_increment  => err_credit_in_W_credit_counter_W_out_increment , 
            err_not_credit_in_W_credit_counter_W_out_max_credit_counter_W_in_not_change  => err_not_credit_in_W_credit_counter_W_out_max_credit_counter_W_in_not_change , 
            err_grant_W_credit_counter_W_out_decrement  => err_grant_W_credit_counter_W_out_decrement , 
            err_not_grant_W_or_credit_counter_W_out_zero_credit_counter_W_in_not_change         => err_not_grant_W_or_credit_counter_W_out_zero_credit_counter_W_in_not_change        ,      
            err_not_credit_in_W_not_grant_W_credit_counter_W_in_credit_counter_W_out_equal  => err_not_credit_in_W_not_grant_W_credit_counter_W_in_credit_counter_W_out_equal , 

            err_credit_in_S_grant_S_credit_counter_S_in_credit_counter_S_out_equal  => err_credit_in_S_grant_S_credit_counter_S_in_credit_counter_S_out_equal , 
            err_credit_in_S_credit_counter_S_out_increment  => err_credit_in_S_credit_counter_S_out_increment , 
            err_not_credit_in_S_credit_counter_S_out_max_credit_counter_S_in_not_change  => err_not_credit_in_S_credit_counter_S_out_max_credit_counter_S_in_not_change , 
            err_grant_S_credit_counter_S_out_decrement  => err_grant_S_credit_counter_S_out_decrement , 
            err_not_grant_S_or_credit_counter_S_out_zero_credit_counter_S_in_not_change         => err_not_grant_S_or_credit_counter_S_out_zero_credit_counter_S_in_not_change        ,      
            err_not_credit_in_S_not_grant_S_credit_counter_S_in_credit_counter_S_out_equal  => err_not_credit_in_S_not_grant_S_credit_counter_S_in_credit_counter_S_out_equal , 

            err_credit_in_L_grant_L_credit_counter_L_in_credit_counter_L_out_equal  => err_credit_in_L_grant_L_credit_counter_L_in_credit_counter_L_out_equal , 
            err_credit_in_L_credit_counter_L_out_increment  => err_credit_in_L_credit_counter_L_out_increment , 
            err_not_credit_in_L_credit_counter_L_out_max_credit_counter_L_in_not_change  => err_not_credit_in_L_credit_counter_L_out_max_credit_counter_L_in_not_change , 
            err_grant_L_credit_counter_L_out_decrement  => err_grant_L_credit_counter_L_out_decrement , 
            err_not_grant_L_or_credit_counter_L_out_zero_credit_counter_L_in_not_change  => err_not_grant_L_or_credit_counter_L_out_zero_credit_counter_L_in_not_change , 
            err_not_credit_in_L_not_grant_L_credit_counter_L_in_credit_counter_L_out_equal  => err_not_credit_in_L_not_grant_L_credit_counter_L_in_credit_counter_L_out_equal , 

               -- North Arbiter_in Checker outputs
              N_err_Requests_state_in_state_not_equal => N_err_Requests_state_in_state_not_equal,

              N_err_IDLE_Req_N =>    N_err_IDLE_Req_N, N_err_IDLE_grant_N =>  N_err_IDLE_grant_N, N_err_North_Req_N =>   N_err_North_Req_N, 
              N_err_North_grant_N => N_err_North_grant_N, N_err_East_Req_E =>    N_err_East_Req_E, N_err_East_grant_E =>  N_err_East_grant_E, 
              N_err_West_Req_W =>    N_err_West_Req_W, N_err_West_grant_W =>  N_err_West_grant_W, N_err_South_Req_S =>   N_err_South_Req_S, 
              N_err_South_grant_S => N_err_South_grant_S, N_err_Local_Req_L =>   N_err_Local_Req_L, N_err_Local_grant_L => N_err_Local_grant_L,

              N_err_IDLE_Req_E => N_err_IDLE_Req_E, N_err_IDLE_grant_E => N_err_IDLE_grant_E, N_err_North_Req_E => N_err_North_Req_E, 
              N_err_North_grant_E => N_err_North_grant_E, N_err_East_Req_W => N_err_East_Req_W, N_err_East_grant_W => N_err_East_grant_W, 
              N_err_West_Req_S => N_err_West_Req_S, N_err_West_grant_S => N_err_West_grant_S, N_err_South_Req_L => N_err_South_Req_L, 
              N_err_South_grant_L => N_err_South_grant_L, N_err_Local_Req_N => N_err_Local_Req_N, N_err_Local_grant_N => N_err_Local_grant_N,

              N_err_IDLE_Req_W => N_err_IDLE_Req_W, N_err_IDLE_grant_W => N_err_IDLE_grant_W, N_err_North_Req_W => N_err_North_Req_W, 
              N_err_North_grant_W => N_err_North_grant_W, N_err_East_Req_S => N_err_East_Req_S, N_err_East_grant_S => N_err_East_grant_S, 
              N_err_West_Req_L => N_err_West_Req_L, N_err_West_grant_L => N_err_West_grant_L, N_err_South_Req_N => N_err_South_Req_N, 
              N_err_South_grant_N => N_err_South_grant_N, N_err_Local_Req_E => N_err_Local_Req_E, N_err_Local_grant_E => N_err_Local_grant_E,

              N_err_IDLE_Req_S => N_err_IDLE_Req_S, N_err_IDLE_grant_S => N_err_IDLE_grant_S, N_err_North_Req_S => N_err_North_Req_S, 
              N_err_North_grant_S => N_err_North_grant_S, N_err_East_Req_L => N_err_East_Req_L, N_err_East_grant_L => N_err_East_grant_L, 
              N_err_West_Req_N => N_err_West_Req_N, N_err_West_grant_N => N_err_West_grant_N, N_err_South_Req_E => N_err_South_Req_E, 
              N_err_South_grant_E => N_err_South_grant_E, N_err_Local_Req_W => N_err_Local_Req_W, N_err_Local_grant_W => N_err_Local_grant_W,

              N_err_IDLE_Req_L => N_err_IDLE_Req_L, N_err_IDLE_grant_L => N_err_IDLE_grant_L, N_err_North_Req_L => N_err_North_Req_L, 
              N_err_North_grant_L => N_err_North_grant_L, N_err_East_Req_N => N_err_East_Req_N, N_err_East_grant_N => N_err_East_grant_N, 
              N_err_West_Req_E => N_err_West_Req_E, N_err_West_grant_E => N_err_West_grant_E, N_err_South_Req_W => N_err_South_Req_W, 
              N_err_South_grant_W => N_err_South_grant_W, N_err_Local_Req_S => N_err_Local_Req_S, N_err_Local_grant_S => N_err_Local_grant_S,

              N_err_state_in_onehot   => N_err_arbiter_state_in_onehot, N_err_no_request_grants => N_err_no_request_grants,
              N_err_request_no_grants => N_err_request_no_grants, 

              N_err_no_Req_N_grant_N => N_err_no_Req_N_grant_N, N_err_no_Req_E_grant_E => N_err_no_Req_E_grant_E, 
              N_err_no_Req_W_grant_W => N_err_no_Req_W_grant_W, N_err_no_Req_S_grant_S => N_err_no_Req_S_grant_S, 
              N_err_no_Req_L_grant_L => N_err_no_Req_L_grant_L,                  

               -- East Arbiter_in Checker outputs
              E_err_Requests_state_in_state_not_equal => E_err_Requests_state_in_state_not_equal,

              E_err_IDLE_Req_N =>    E_err_IDLE_Req_N, E_err_IDLE_grant_N =>  E_err_IDLE_grant_N, E_err_North_Req_N =>   E_err_North_Req_N, 
              E_err_North_grant_N => E_err_North_grant_N, E_err_East_Req_E =>    E_err_East_Req_E, E_err_East_grant_E =>  E_err_East_grant_E, 
              E_err_West_Req_W =>    E_err_West_Req_W, E_err_West_grant_W =>  E_err_West_grant_W, E_err_South_Req_S =>   E_err_South_Req_S, 
              E_err_South_grant_S => E_err_South_grant_S, E_err_Local_Req_L =>   E_err_Local_Req_L, E_err_Local_grant_L => E_err_Local_grant_L,

              E_err_IDLE_Req_E => E_err_IDLE_Req_E, E_err_IDLE_grant_E => E_err_IDLE_grant_E, E_err_North_Req_E => E_err_North_Req_E, 
              E_err_North_grant_E => E_err_North_grant_E, E_err_East_Req_W => E_err_East_Req_W, E_err_East_grant_W => E_err_East_grant_W, 
              E_err_West_Req_S => E_err_West_Req_S, E_err_West_grant_S => E_err_West_grant_S, E_err_South_Req_L => E_err_South_Req_L, 
              E_err_South_grant_L => E_err_South_grant_L, E_err_Local_Req_N => E_err_Local_Req_N, E_err_Local_grant_N => E_err_Local_grant_N,

              E_err_IDLE_Req_W => E_err_IDLE_Req_W, E_err_IDLE_grant_W => E_err_IDLE_grant_W, E_err_North_Req_W => E_err_North_Req_W, 
              E_err_North_grant_W => E_err_North_grant_W, E_err_East_Req_S => E_err_East_Req_S, E_err_East_grant_S => E_err_East_grant_S, 
              E_err_West_Req_L => E_err_West_Req_L, E_err_West_grant_L => E_err_West_grant_L, E_err_South_Req_N => E_err_South_Req_N, 
              E_err_South_grant_N => E_err_South_grant_N, E_err_Local_Req_E => E_err_Local_Req_E, E_err_Local_grant_E => E_err_Local_grant_E,

              E_err_IDLE_Req_S => E_err_IDLE_Req_S, E_err_IDLE_grant_S => E_err_IDLE_grant_S, E_err_North_Req_S => E_err_North_Req_S, 
              E_err_North_grant_S => E_err_North_grant_S, E_err_East_Req_L => E_err_East_Req_L, E_err_East_grant_L => E_err_East_grant_L, 
              E_err_West_Req_N => E_err_West_Req_N, E_err_West_grant_N => E_err_West_grant_N, E_err_South_Req_E => E_err_South_Req_E, 
              E_err_South_grant_E => E_err_South_grant_E, E_err_Local_Req_W => E_err_Local_Req_W, E_err_Local_grant_W => E_err_Local_grant_W,

              E_err_IDLE_Req_L => E_err_IDLE_Req_L, E_err_IDLE_grant_L => E_err_IDLE_grant_L, E_err_North_Req_L => E_err_North_Req_L, 
              E_err_North_grant_L => E_err_North_grant_L, E_err_East_Req_N => E_err_East_Req_N, E_err_East_grant_N => E_err_East_grant_N, 
              E_err_West_Req_E => E_err_West_Req_E, E_err_West_grant_E => E_err_West_grant_E, E_err_South_Req_W => E_err_South_Req_W, 
              E_err_South_grant_W => E_err_South_grant_W, E_err_Local_Req_S => E_err_Local_Req_S, E_err_Local_grant_S => E_err_Local_grant_S,

              E_err_state_in_onehot   => E_err_arbiter_state_in_onehot, 
              E_err_no_request_grants => E_err_no_request_grants,
              E_err_request_no_grants => E_err_request_no_grants, 

              E_err_no_Req_N_grant_N => E_err_no_Req_N_grant_N, E_err_no_Req_E_grant_E => E_err_no_Req_E_grant_E, 
              E_err_no_Req_W_grant_W => E_err_no_Req_W_grant_W, E_err_no_Req_S_grant_S => E_err_no_Req_S_grant_S, 
              E_err_no_Req_L_grant_L => E_err_no_Req_L_grant_L, 

               -- West Arbiter_in Checker outputs
              W_err_Requests_state_in_state_not_equal => W_err_Requests_state_in_state_not_equal,

              W_err_IDLE_Req_N =>    W_err_IDLE_Req_N, W_err_IDLE_grant_N =>  W_err_IDLE_grant_N, W_err_North_Req_N =>   W_err_North_Req_N, 
              W_err_North_grant_N => W_err_North_grant_N, W_err_East_Req_E =>    W_err_East_Req_E, W_err_East_grant_E =>  W_err_East_grant_E, 
              W_err_West_Req_W =>    W_err_West_Req_W, W_err_West_grant_W =>  W_err_West_grant_W, W_err_South_Req_S =>   W_err_South_Req_S, 
              W_err_South_grant_S => W_err_South_grant_S, W_err_Local_Req_L =>   W_err_Local_Req_L, W_err_Local_grant_L => W_err_Local_grant_L,

              W_err_IDLE_Req_E => W_err_IDLE_Req_E, W_err_IDLE_grant_E => W_err_IDLE_grant_E, W_err_North_Req_E => W_err_North_Req_E, 
              W_err_North_grant_E => W_err_North_grant_E, W_err_East_Req_W => W_err_East_Req_W, W_err_East_grant_W => W_err_East_grant_W, 
              W_err_West_Req_S => W_err_West_Req_S, W_err_West_grant_S => W_err_West_grant_S, W_err_South_Req_L => W_err_South_Req_L, 
              W_err_South_grant_L => W_err_South_grant_L, W_err_Local_Req_N => W_err_Local_Req_N, W_err_Local_grant_N => W_err_Local_grant_N,

              W_err_IDLE_Req_W => W_err_IDLE_Req_W, W_err_IDLE_grant_W => W_err_IDLE_grant_W, W_err_North_Req_W => W_err_North_Req_W, 
              W_err_North_grant_W => W_err_North_grant_W, W_err_East_Req_S => W_err_East_Req_S, W_err_East_grant_S => W_err_East_grant_S, 
              W_err_West_Req_L => W_err_West_Req_L, W_err_West_grant_L => W_err_West_grant_L, W_err_South_Req_N => W_err_South_Req_N, 
              W_err_South_grant_N => W_err_South_grant_N, W_err_Local_Req_E => W_err_Local_Req_E, W_err_Local_grant_E => W_err_Local_grant_E,

              W_err_IDLE_Req_S => W_err_IDLE_Req_S, W_err_IDLE_grant_S => W_err_IDLE_grant_S, W_err_North_Req_S => W_err_North_Req_S, 
              W_err_North_grant_S => W_err_North_grant_S, W_err_East_Req_L => W_err_East_Req_L, W_err_East_grant_L => W_err_East_grant_L, 
              W_err_West_Req_N => W_err_West_Req_N, W_err_West_grant_N => W_err_West_grant_N, W_err_South_Req_E => W_err_South_Req_E, 
              W_err_South_grant_E => W_err_South_grant_E, W_err_Local_Req_W => W_err_Local_Req_W, W_err_Local_grant_W => W_err_Local_grant_W,

              W_err_IDLE_Req_L => W_err_IDLE_Req_L, W_err_IDLE_grant_L => W_err_IDLE_grant_L, W_err_North_Req_L => W_err_North_Req_L, 
              W_err_North_grant_L => W_err_North_grant_L, W_err_East_Req_N => W_err_East_Req_N, W_err_East_grant_N => W_err_East_grant_N, 
              W_err_West_Req_E => W_err_West_Req_E, W_err_West_grant_E => W_err_West_grant_E, W_err_South_Req_W => W_err_South_Req_W, 
              W_err_South_grant_W => W_err_South_grant_W, W_err_Local_Req_S => W_err_Local_Req_S, W_err_Local_grant_S => W_err_Local_grant_S,

              W_err_state_in_onehot   => W_err_arbiter_state_in_onehot, 
              W_err_no_request_grants => W_err_no_request_grants,
              W_err_request_no_grants => W_err_request_no_grants, 

              W_err_no_Req_N_grant_N => W_err_no_Req_N_grant_N, W_err_no_Req_E_grant_E => W_err_no_Req_E_grant_E, 
              W_err_no_Req_W_grant_W => W_err_no_Req_W_grant_W, W_err_no_Req_S_grant_S => W_err_no_Req_S_grant_S, 
              W_err_no_Req_L_grant_L => W_err_no_Req_L_grant_L, 

               -- South Arbiter_in Checker outputs
              S_err_Requests_state_in_state_not_equal => S_err_Requests_state_in_state_not_equal,

              S_err_IDLE_Req_N =>    S_err_IDLE_Req_N, S_err_IDLE_grant_N =>  S_err_IDLE_grant_N, S_err_North_Req_N =>   S_err_North_Req_N, 
              S_err_North_grant_N => S_err_North_grant_N, S_err_East_Req_E =>    S_err_East_Req_E, S_err_East_grant_E =>  S_err_East_grant_E, 
              S_err_West_Req_W =>    S_err_West_Req_W, S_err_West_grant_W =>  S_err_West_grant_W, S_err_South_Req_S =>   S_err_South_Req_S, 
              S_err_South_grant_S => S_err_South_grant_S, S_err_Local_Req_L =>   S_err_Local_Req_L, S_err_Local_grant_L => S_err_Local_grant_L,

              S_err_IDLE_Req_E => S_err_IDLE_Req_E, S_err_IDLE_grant_E => S_err_IDLE_grant_E, S_err_North_Req_E => S_err_North_Req_E, 
              S_err_North_grant_E => S_err_North_grant_E, S_err_East_Req_W => S_err_East_Req_W, S_err_East_grant_W => S_err_East_grant_W, 
              S_err_West_Req_S => S_err_West_Req_S, S_err_West_grant_S => S_err_West_grant_S, S_err_South_Req_L => S_err_South_Req_L, 
              S_err_South_grant_L => S_err_South_grant_L, S_err_Local_Req_N => S_err_Local_Req_N, S_err_Local_grant_N => S_err_Local_grant_N,

              S_err_IDLE_Req_W => S_err_IDLE_Req_W, S_err_IDLE_grant_W => S_err_IDLE_grant_W, S_err_North_Req_W => S_err_North_Req_W, 
              S_err_North_grant_W => S_err_North_grant_W, S_err_East_Req_S => S_err_East_Req_S, S_err_East_grant_S => S_err_East_grant_S, 
              S_err_West_Req_L => S_err_West_Req_L, S_err_West_grant_L => S_err_West_grant_L, S_err_South_Req_N => S_err_South_Req_N, 
              S_err_South_grant_N => S_err_South_grant_N, S_err_Local_Req_E => S_err_Local_Req_E, S_err_Local_grant_E => S_err_Local_grant_E,

              S_err_IDLE_Req_S => S_err_IDLE_Req_S, S_err_IDLE_grant_S => S_err_IDLE_grant_S, S_err_North_Req_S => S_err_North_Req_S, 
              S_err_North_grant_S => S_err_North_grant_S, S_err_East_Req_L => S_err_East_Req_L, S_err_East_grant_L => S_err_East_grant_L, 
              S_err_West_Req_N => S_err_West_Req_N, S_err_West_grant_N => S_err_West_grant_N, S_err_South_Req_E => S_err_South_Req_E, 
              S_err_South_grant_E => S_err_South_grant_E, S_err_Local_Req_W => S_err_Local_Req_W, S_err_Local_grant_W => S_err_Local_grant_W,

              S_err_IDLE_Req_L => S_err_IDLE_Req_L, S_err_IDLE_grant_L => S_err_IDLE_grant_L, S_err_North_Req_L => S_err_North_Req_L, 
              S_err_North_grant_L => S_err_North_grant_L, S_err_East_Req_N => S_err_East_Req_N, S_err_East_grant_N => S_err_East_grant_N, 
              S_err_West_Req_E => S_err_West_Req_E, S_err_West_grant_E => S_err_West_grant_E, S_err_South_Req_W => S_err_South_Req_W, 
              S_err_South_grant_W => S_err_South_grant_W, S_err_Local_Req_S => S_err_Local_Req_S, S_err_Local_grant_S => S_err_Local_grant_S,

              S_err_state_in_onehot   => S_err_arbiter_state_in_onehot, 
              S_err_no_request_grants => S_err_no_request_grants,
              S_err_request_no_grants => S_err_request_no_grants, 

              S_err_no_Req_N_grant_N => S_err_no_Req_N_grant_N, S_err_no_Req_E_grant_E => S_err_no_Req_E_grant_E, 
              S_err_no_Req_W_grant_W => S_err_no_Req_W_grant_W, S_err_no_Req_S_grant_S => S_err_no_Req_S_grant_S,
               S_err_no_Req_L_grant_L => S_err_no_Req_L_grant_L, 

               -- Local Arbiter_in Checker outputs
              L_err_Requests_state_in_state_not_equal => L_err_Requests_state_in_state_not_equal,

              L_err_IDLE_Req_N => L_err_IDLE_Req_N, L_err_IDLE_grant_N =>  L_err_IDLE_grant_N, L_err_North_Req_N => L_err_North_Req_N, 
              L_err_North_grant_N => L_err_North_grant_N, L_err_East_Req_E =>    L_err_East_Req_E, L_err_East_grant_E =>  L_err_East_grant_E, 
              L_err_West_Req_W =>    L_err_West_Req_W, L_err_West_grant_W =>  L_err_West_grant_W, L_err_South_Req_S =>   L_err_South_Req_S, 
              L_err_South_grant_S => L_err_South_grant_S, L_err_Local_Req_L =>   L_err_Local_Req_L, L_err_Local_grant_L => L_err_Local_grant_L,

              L_err_IDLE_Req_E => L_err_IDLE_Req_E, L_err_IDLE_grant_E => L_err_IDLE_grant_E, L_err_North_Req_E => L_err_North_Req_E, 
              L_err_North_grant_E => L_err_North_grant_E, L_err_East_Req_W => L_err_East_Req_W, L_err_East_grant_W => L_err_East_grant_W, 
              L_err_West_Req_S => L_err_West_Req_S, L_err_West_grant_S => L_err_West_grant_S, L_err_South_Req_L => L_err_South_Req_L, 
              L_err_South_grant_L => L_err_South_grant_L, L_err_Local_Req_N => L_err_Local_Req_N, L_err_Local_grant_N => L_err_Local_grant_N,

              L_err_IDLE_Req_W => L_err_IDLE_Req_W, L_err_IDLE_grant_W => L_err_IDLE_grant_W, L_err_North_Req_W => L_err_North_Req_W, 
              L_err_North_grant_W => L_err_North_grant_W, L_err_East_Req_S => L_err_East_Req_S, L_err_East_grant_S => L_err_East_grant_S, 
              L_err_West_Req_L => L_err_West_Req_L, L_err_West_grant_L => L_err_West_grant_L, L_err_South_Req_N => L_err_South_Req_N, 
              L_err_South_grant_N => L_err_South_grant_N, L_err_Local_Req_E => L_err_Local_Req_E, L_err_Local_grant_E => L_err_Local_grant_E,

              L_err_IDLE_Req_S => L_err_IDLE_Req_S, L_err_IDLE_grant_S => L_err_IDLE_grant_S, L_err_North_Req_S => L_err_North_Req_S, 
              L_err_North_grant_S => L_err_North_grant_S, L_err_East_Req_L => L_err_East_Req_L, L_err_East_grant_L => L_err_East_grant_L, 
              L_err_West_Req_N => L_err_West_Req_N, L_err_West_grant_N => L_err_West_grant_N, L_err_South_Req_E => L_err_South_Req_E, 
              L_err_South_grant_E => L_err_South_grant_E, L_err_Local_Req_W => L_err_Local_Req_W, L_err_Local_grant_W => L_err_Local_grant_W,

              L_err_IDLE_Req_L => L_err_IDLE_Req_L, L_err_IDLE_grant_L => L_err_IDLE_grant_L, L_err_North_Req_L => L_err_North_Req_L, 
              L_err_North_grant_L => L_err_North_grant_L, L_err_East_Req_N => L_err_East_Req_N, L_err_East_grant_N => L_err_East_grant_N, 
              L_err_West_Req_E => L_err_West_Req_E, L_err_West_grant_E => L_err_West_grant_E, L_err_South_Req_W => L_err_South_Req_W, 
              L_err_South_grant_W => L_err_South_grant_W, L_err_Local_Req_S => L_err_Local_Req_S, L_err_Local_grant_S => L_err_Local_grant_S,

              L_err_state_in_onehot   => L_err_arbiter_state_in_onehot, 
              L_err_no_request_grants => L_err_no_request_grants,
              L_err_request_no_grants => L_err_request_no_grants, 

              L_err_no_Req_N_grant_N => L_err_no_Req_N_grant_N, L_err_no_Req_E_grant_E => L_err_no_Req_E_grant_E, 
              L_err_no_Req_W_grant_W => L_err_no_Req_W_grant_W, L_err_no_Req_S_grant_S => L_err_no_Req_S_grant_S, 
              L_err_no_Req_L_grant_L => L_err_no_Req_L_grant_L, 

              -- Arbiter_out checker outputs

            -- North Arbiter_out checker outputs
            N_arbiter_out_err_Requests_state_in_state_not_equal => N_arbiter_out_err_Requests_state_in_state_not_equal, 
       
            N_err_IDLE_req_X_N => N_err_IDLE_req_X_N, 
            N_err_North_req_X_N => N_err_North_req_X_N, 
            N_err_North_credit_not_zero_req_X_N_grant_N => N_err_North_credit_not_zero_req_X_N_grant_N, 
            N_err_North_credit_zero_or_not_req_X_N_not_grant_N => N_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
            N_err_East_req_X_E => N_err_East_req_X_E, 
            N_err_East_credit_not_zero_req_X_E_grant_E => N_err_East_credit_not_zero_req_X_E_grant_E, 
            N_err_East_credit_zero_or_not_req_X_E_not_grant_E => N_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
            N_err_West_req_X_W => N_err_West_req_X_W, 
            N_err_West_credit_not_zero_req_X_W_grant_W => N_err_West_credit_not_zero_req_X_W_grant_W, 
            N_err_West_credit_zero_or_not_req_X_W_not_grant_W => N_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
            N_err_South_req_X_S => N_err_South_req_X_S, 
            N_err_South_credit_not_zero_req_X_S_grant_S => N_err_South_credit_not_zero_req_X_S_grant_S, 
            N_err_South_credit_zero_or_not_req_X_S_not_grant_S => N_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
            N_err_Local_req_X_L => N_err_Local_req_X_L, 
            N_err_Local_credit_not_zero_req_X_L_grant_L => N_err_Local_credit_not_zero_req_X_L_grant_L, 
            N_err_Local_credit_zero_or_not_req_X_L_not_grant_L => N_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

            N_err_IDLE_req_X_E => N_err_IDLE_req_X_E, N_err_North_req_X_E => N_err_North_req_X_E, N_err_East_req_X_W => N_err_East_req_X_W, 
            N_err_West_req_X_S => N_err_West_req_X_S, N_err_South_req_X_L => N_err_South_req_X_L, N_err_Local_req_X_N => N_err_Local_req_X_N, 
            N_err_IDLE_req_X_W => N_err_IDLE_req_X_W, N_err_North_req_X_W => N_err_North_req_X_W, N_err_East_req_X_S => N_err_East_req_X_S, 
            N_err_West_req_X_L => N_err_West_req_X_L, N_err_South_req_X_N => N_err_South_req_X_N, N_err_Local_req_X_E => N_err_Local_req_X_E, 
            N_err_IDLE_req_X_S => N_err_IDLE_req_X_S, N_err_North_req_X_S => N_err_North_req_X_S, N_err_East_req_X_L => N_err_East_req_X_L, 
            N_err_West_req_X_N => N_err_West_req_X_N, N_err_South_req_X_E => N_err_South_req_X_E, N_err_Local_req_X_W => N_err_Local_req_X_W, 
            N_err_IDLE_req_X_L => N_err_IDLE_req_X_L, N_err_North_req_X_L => N_err_North_req_X_L, N_err_East_req_X_N => N_err_East_req_X_N, 
            N_err_West_req_X_E => N_err_West_req_X_E, N_err_South_req_X_W => N_err_South_req_X_W, N_err_Local_req_X_S => N_err_Local_req_X_S, 
       
            N_arbiter_out_err_state_in_onehot => N_arbiter_out_err_state_in_onehot, 
            N_arbiter_out_err_no_request_grants => N_arbiter_out_err_no_request_grants, 
            N_err_request_IDLE_state => N_err_request_IDLE_state, 

            N_err_request_IDLE_not_Grants => N_err_request_IDLE_not_Grants, 
            N_err_state_North_Invalid_Grant => N_err_state_North_Invalid_Grant, 
            N_err_state_East_Invalid_Grant => N_err_state_East_Invalid_Grant, 
            N_err_state_West_Invalid_Grant => N_err_state_West_Invalid_Grant, 
            N_err_state_South_Invalid_Grant => N_err_state_South_Invalid_Grant, 
            N_err_state_Local_Invalid_Grant => N_err_state_Local_Invalid_Grant, 
            N_err_Grants_onehot_or_all_zero => N_err_Grants_onehot_or_all_zero,        

            -- East Arbiter_out checker outputs
            E_arbiter_out_err_Requests_state_in_state_not_equal => E_arbiter_out_err_Requests_state_in_state_not_equal, 
       
            E_err_IDLE_req_X_N => E_err_IDLE_req_X_N, 
            E_err_North_req_X_N => E_err_North_req_X_N, 
            E_err_North_credit_not_zero_req_X_N_grant_N => E_err_North_credit_not_zero_req_X_N_grant_N, 
            E_err_North_credit_zero_or_not_req_X_N_not_grant_N => E_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
            E_err_East_req_X_E => E_err_East_req_X_E, 
            E_err_East_credit_not_zero_req_X_E_grant_E => E_err_East_credit_not_zero_req_X_E_grant_E, 
            E_err_East_credit_zero_or_not_req_X_E_not_grant_E => E_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
            E_err_West_req_X_W => E_err_West_req_X_W, 
            E_err_West_credit_not_zero_req_X_W_grant_W => E_err_West_credit_not_zero_req_X_W_grant_W, 
            E_err_West_credit_zero_or_not_req_X_W_not_grant_W => E_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
            E_err_South_req_X_S => E_err_South_req_X_S, 
            E_err_South_credit_not_zero_req_X_S_grant_S => E_err_South_credit_not_zero_req_X_S_grant_S, 
            E_err_South_credit_zero_or_not_req_X_S_not_grant_S => E_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
            E_err_Local_req_X_L => E_err_Local_req_X_L, 
            E_err_Local_credit_not_zero_req_X_L_grant_L => E_err_Local_credit_not_zero_req_X_L_grant_L, 
            E_err_Local_credit_zero_or_not_req_X_L_not_grant_L => E_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

            E_err_IDLE_req_X_E => E_err_IDLE_req_X_E, E_err_North_req_X_E => E_err_North_req_X_E, E_err_East_req_X_W => E_err_East_req_X_W, 
            E_err_West_req_X_S => E_err_West_req_X_S, E_err_South_req_X_L => E_err_South_req_X_L, E_err_Local_req_X_N => E_err_Local_req_X_N, 
       
            E_err_IDLE_req_X_W => E_err_IDLE_req_X_W, E_err_North_req_X_W => E_err_North_req_X_W, E_err_East_req_X_S => E_err_East_req_X_S, 
            E_err_West_req_X_L => E_err_West_req_X_L, E_err_South_req_X_N => E_err_South_req_X_N, E_err_Local_req_X_E => E_err_Local_req_X_E, 
       
            E_err_IDLE_req_X_S => E_err_IDLE_req_X_S, E_err_North_req_X_S => E_err_North_req_X_S, E_err_East_req_X_L => E_err_East_req_X_L, 
            E_err_West_req_X_N => E_err_West_req_X_N, E_err_South_req_X_E => E_err_South_req_X_E, E_err_Local_req_X_W => E_err_Local_req_X_W, 
       
            E_err_IDLE_req_X_L => E_err_IDLE_req_X_L, E_err_North_req_X_L => E_err_North_req_X_L, E_err_East_req_X_N => E_err_East_req_X_N, 
            E_err_West_req_X_E => E_err_West_req_X_E, E_err_South_req_X_W => E_err_South_req_X_W, E_err_Local_req_X_S => E_err_Local_req_X_S, 
       
            E_arbiter_out_err_state_in_onehot => E_arbiter_out_err_state_in_onehot, 
            E_arbiter_out_err_no_request_grants => E_arbiter_out_err_no_request_grants, 
            E_err_request_IDLE_state => E_err_request_IDLE_state, 

            E_err_request_IDLE_not_Grants => E_err_request_IDLE_not_Grants, 
            E_err_state_North_Invalid_Grant => E_err_state_North_Invalid_Grant, 
            E_err_state_East_Invalid_Grant => E_err_state_East_Invalid_Grant, 
            E_err_state_West_Invalid_Grant => E_err_state_West_Invalid_Grant, 
            E_err_state_South_Invalid_Grant => E_err_state_South_Invalid_Grant, 
            E_err_state_Local_Invalid_Grant => E_err_state_Local_Invalid_Grant, 
            E_err_Grants_onehot_or_all_zero => E_err_Grants_onehot_or_all_zero, 

            -- West Arbiter_out checker outputs
            W_arbiter_out_err_Requests_state_in_state_not_equal => W_arbiter_out_err_Requests_state_in_state_not_equal, 
       
            W_err_IDLE_req_X_N => W_err_IDLE_req_X_N, 
            W_err_North_req_X_N => W_err_North_req_X_N, 
            W_err_North_credit_not_zero_req_X_N_grant_N => W_err_North_credit_not_zero_req_X_N_grant_N, 
            W_err_North_credit_zero_or_not_req_X_N_not_grant_N => W_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
            W_err_East_req_X_E => W_err_East_req_X_E, 
            W_err_East_credit_not_zero_req_X_E_grant_E => W_err_East_credit_not_zero_req_X_E_grant_E, 
            W_err_East_credit_zero_or_not_req_X_E_not_grant_E => W_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
            W_err_West_req_X_W => W_err_West_req_X_W, 
            W_err_West_credit_not_zero_req_X_W_grant_W => W_err_West_credit_not_zero_req_X_W_grant_W, 
            W_err_West_credit_zero_or_not_req_X_W_not_grant_W => W_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
            W_err_South_req_X_S => W_err_South_req_X_S, 
            W_err_South_credit_not_zero_req_X_S_grant_S => W_err_South_credit_not_zero_req_X_S_grant_S, 
            W_err_South_credit_zero_or_not_req_X_S_not_grant_S => W_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
            W_err_Local_req_X_L => W_err_Local_req_X_L, 
            W_err_Local_credit_not_zero_req_X_L_grant_L => W_err_Local_credit_not_zero_req_X_L_grant_L, 
            W_err_Local_credit_zero_or_not_req_X_L_not_grant_L => W_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

            W_err_IDLE_req_X_E => W_err_IDLE_req_X_E, W_err_North_req_X_E => W_err_North_req_X_E, W_err_East_req_X_W => W_err_East_req_X_W, 
            W_err_West_req_X_S => W_err_West_req_X_S, W_err_South_req_X_L => W_err_South_req_X_L, W_err_Local_req_X_N => W_err_Local_req_X_N, 
       
            W_err_IDLE_req_X_W => W_err_IDLE_req_X_W, W_err_North_req_X_W => W_err_North_req_X_W, W_err_East_req_X_S => W_err_East_req_X_S, 
            W_err_West_req_X_L => W_err_West_req_X_L, W_err_South_req_X_N => W_err_South_req_X_N, W_err_Local_req_X_E => W_err_Local_req_X_E, 
       
            W_err_IDLE_req_X_S => W_err_IDLE_req_X_S, W_err_North_req_X_S => W_err_North_req_X_S, W_err_East_req_X_L => W_err_East_req_X_L, 
            W_err_West_req_X_N => W_err_West_req_X_N, W_err_South_req_X_E => W_err_South_req_X_E, W_err_Local_req_X_W => W_err_Local_req_X_W, 
       
            W_err_IDLE_req_X_L => W_err_IDLE_req_X_L, W_err_North_req_X_L => W_err_North_req_X_L, W_err_East_req_X_N => W_err_East_req_X_N, 
            W_err_West_req_X_E => W_err_West_req_X_E, W_err_South_req_X_W => W_err_South_req_X_W, W_err_Local_req_X_S => W_err_Local_req_X_S, 
       
            W_arbiter_out_err_state_in_onehot => W_arbiter_out_err_state_in_onehot, 
            W_arbiter_out_err_no_request_grants => W_arbiter_out_err_no_request_grants, 
            W_err_request_IDLE_state => W_err_request_IDLE_state, 

            W_err_request_IDLE_not_Grants => W_err_request_IDLE_not_Grants, W_err_state_North_Invalid_Grant => W_err_state_North_Invalid_Grant, 
            W_err_state_East_Invalid_Grant => W_err_state_East_Invalid_Grant, W_err_state_West_Invalid_Grant => W_err_state_West_Invalid_Grant, 
            W_err_state_South_Invalid_Grant => W_err_state_South_Invalid_Grant, W_err_state_Local_Invalid_Grant => W_err_state_Local_Invalid_Grant, 
            W_err_Grants_onehot_or_all_zero => W_err_Grants_onehot_or_all_zero, 

            -- South Arbiter_out checker outputs
            S_arbiter_out_err_Requests_state_in_state_not_equal => S_arbiter_out_err_Requests_state_in_state_not_equal, 
       
            S_err_IDLE_req_X_N => S_err_IDLE_req_X_N, 
            S_err_North_req_X_N => S_err_North_req_X_N, 
            S_err_North_credit_not_zero_req_X_N_grant_N => S_err_North_credit_not_zero_req_X_N_grant_N, 
            S_err_North_credit_zero_or_not_req_X_N_not_grant_N => S_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
            S_err_East_req_X_E => S_err_East_req_X_E, 
            S_err_East_credit_not_zero_req_X_E_grant_E => S_err_East_credit_not_zero_req_X_E_grant_E, 
            S_err_East_credit_zero_or_not_req_X_E_not_grant_E => S_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
            S_err_West_req_X_W => S_err_West_req_X_W, 
            S_err_West_credit_not_zero_req_X_W_grant_W => S_err_West_credit_not_zero_req_X_W_grant_W, 
            S_err_West_credit_zero_or_not_req_X_W_not_grant_W => S_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
            S_err_South_req_X_S => S_err_South_req_X_S, 
            S_err_South_credit_not_zero_req_X_S_grant_S => S_err_South_credit_not_zero_req_X_S_grant_S, 
            S_err_South_credit_zero_or_not_req_X_S_not_grant_S => S_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
            S_err_Local_req_X_L => S_err_Local_req_X_L, 
            S_err_Local_credit_not_zero_req_X_L_grant_L => S_err_Local_credit_not_zero_req_X_L_grant_L, 
            S_err_Local_credit_zero_or_not_req_X_L_not_grant_L => S_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

            S_err_IDLE_req_X_E => S_err_IDLE_req_X_E, S_err_North_req_X_E => S_err_North_req_X_E, S_err_East_req_X_W => S_err_East_req_X_W, 
            S_err_West_req_X_S => S_err_West_req_X_S, S_err_South_req_X_L => S_err_South_req_X_L, S_err_Local_req_X_N => S_err_Local_req_X_N, 
       
            S_err_IDLE_req_X_W => S_err_IDLE_req_X_W, S_err_North_req_X_W => S_err_North_req_X_W, S_err_East_req_X_S => S_err_East_req_X_S, 
            S_err_West_req_X_L => S_err_West_req_X_L, S_err_South_req_X_N => S_err_South_req_X_N, S_err_Local_req_X_E => S_err_Local_req_X_E, 
       
            S_err_IDLE_req_X_S => S_err_IDLE_req_X_S, S_err_North_req_X_S => S_err_North_req_X_S, S_err_East_req_X_L => S_err_East_req_X_L, 
            S_err_West_req_X_N => S_err_West_req_X_N, S_err_South_req_X_E => S_err_South_req_X_E, S_err_Local_req_X_W => S_err_Local_req_X_W, 
       
            S_err_IDLE_req_X_L => S_err_IDLE_req_X_L, S_err_North_req_X_L => S_err_North_req_X_L, S_err_East_req_X_N => S_err_East_req_X_N, 
            S_err_West_req_X_E => S_err_West_req_X_E, S_err_South_req_X_W => S_err_South_req_X_W, S_err_Local_req_X_S => S_err_Local_req_X_S, 
       
            S_arbiter_out_err_state_in_onehot => S_arbiter_out_err_state_in_onehot, 
            S_arbiter_out_err_no_request_grants => S_arbiter_out_err_no_request_grants, 
            S_err_request_IDLE_state => S_err_request_IDLE_state, 

            S_err_request_IDLE_not_Grants => S_err_request_IDLE_not_Grants, S_err_state_North_Invalid_Grant => S_err_state_North_Invalid_Grant, 
            S_err_state_East_Invalid_Grant => S_err_state_East_Invalid_Grant, S_err_state_West_Invalid_Grant => S_err_state_West_Invalid_Grant, 
            S_err_state_South_Invalid_Grant => S_err_state_South_Invalid_Grant, S_err_state_Local_Invalid_Grant => S_err_state_Local_Invalid_Grant, 
            S_err_Grants_onehot_or_all_zero => S_err_Grants_onehot_or_all_zero, 

            -- Local Arbiter_out checker outputs
            L_arbiter_out_err_Requests_state_in_state_not_equal => L_arbiter_out_err_Requests_state_in_state_not_equal, 
       
            L_err_IDLE_req_X_N => L_err_IDLE_req_X_N, 
            L_err_North_req_X_N => L_err_North_req_X_N, 
            L_err_North_credit_not_zero_req_X_N_grant_N => L_err_North_credit_not_zero_req_X_N_grant_N, 
            L_err_North_credit_zero_or_not_req_X_N_not_grant_N => L_err_North_credit_zero_or_not_req_X_N_not_grant_N, 
            L_err_East_req_X_E => L_err_East_req_X_E, 
            L_err_East_credit_not_zero_req_X_E_grant_E => L_err_East_credit_not_zero_req_X_E_grant_E, 
            L_err_East_credit_zero_or_not_req_X_E_not_grant_E => L_err_East_credit_zero_or_not_req_X_E_not_grant_E, 
            L_err_West_req_X_W => L_err_West_req_X_W, 
            L_err_West_credit_not_zero_req_X_W_grant_W => L_err_West_credit_not_zero_req_X_W_grant_W, 
            L_err_West_credit_zero_or_not_req_X_W_not_grant_W => L_err_West_credit_zero_or_not_req_X_W_not_grant_W, 
            L_err_South_req_X_S => L_err_South_req_X_S, 
            L_err_South_credit_not_zero_req_X_S_grant_S => L_err_South_credit_not_zero_req_X_S_grant_S, 
            L_err_South_credit_zero_or_not_req_X_S_not_grant_S => L_err_South_credit_zero_or_not_req_X_S_not_grant_S, 
            L_err_Local_req_X_L => L_err_Local_req_X_L, 
            L_err_Local_credit_not_zero_req_X_L_grant_L => L_err_Local_credit_not_zero_req_X_L_grant_L, 
            L_err_Local_credit_zero_or_not_req_X_L_not_grant_L => L_err_Local_credit_zero_or_not_req_X_L_not_grant_L, 

            L_err_IDLE_req_X_E => L_err_IDLE_req_X_E, L_err_North_req_X_E => L_err_North_req_X_E, L_err_East_req_X_W => L_err_East_req_X_W, 
            L_err_West_req_X_S => L_err_West_req_X_S, L_err_South_req_X_L => L_err_South_req_X_L, L_err_Local_req_X_N => L_err_Local_req_X_N, 
            L_err_IDLE_req_X_W => L_err_IDLE_req_X_W, L_err_North_req_X_W => L_err_North_req_X_W, L_err_East_req_X_S => L_err_East_req_X_S, 
            L_err_West_req_X_L => L_err_West_req_X_L, L_err_South_req_X_N => L_err_South_req_X_N, L_err_Local_req_X_E => L_err_Local_req_X_E, 
            L_err_IDLE_req_X_S => L_err_IDLE_req_X_S, L_err_North_req_X_S => L_err_North_req_X_S, L_err_East_req_X_L => L_err_East_req_X_L, 
            L_err_West_req_X_N => L_err_West_req_X_N, L_err_South_req_X_E => L_err_South_req_X_E, L_err_Local_req_X_W => L_err_Local_req_X_W, 
            L_err_IDLE_req_X_L => L_err_IDLE_req_X_L, L_err_North_req_X_L => L_err_North_req_X_L, L_err_East_req_X_N => L_err_East_req_X_N, 
            L_err_West_req_X_E => L_err_West_req_X_E, L_err_South_req_X_W => L_err_South_req_X_W, L_err_Local_req_X_S => L_err_Local_req_X_S, 
       
            L_arbiter_out_err_state_in_onehot => L_arbiter_out_err_state_in_onehot, 
            L_arbiter_out_err_no_request_grants => L_arbiter_out_err_no_request_grants, 
            L_err_request_IDLE_state => L_err_request_IDLE_state, 

            L_err_request_IDLE_not_Grants => L_err_request_IDLE_not_Grants, 
            L_err_state_North_Invalid_Grant => L_err_state_North_Invalid_Grant, 
            L_err_state_East_Invalid_Grant => L_err_state_East_Invalid_Grant, 
            L_err_state_West_Invalid_Grant => L_err_state_West_Invalid_Grant, 
            L_err_state_South_Invalid_Grant => L_err_state_South_Invalid_Grant, 
            L_err_state_Local_Invalid_Grant => L_err_state_Local_Invalid_Grant, 
            L_err_Grants_onehot_or_all_zero => L_err_Grants_onehot_or_all_zero              
          );

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
-- all the Xbar select_signals

Xbar_sel_N <= '0' & Grant_NE & Grant_NW & Grant_NS & Grant_NL;
Xbar_sel_E <= Grant_EN & '0' & Grant_EW & Grant_ES & Grant_EL;
Xbar_sel_W <= Grant_WN & Grant_WE & '0' & Grant_WS & Grant_WL;
Xbar_sel_S <= Grant_SN & Grant_SE & Grant_SW & '0' & Grant_SL;
Xbar_sel_L <= Grant_LN & Grant_LE & Grant_LW & Grant_LS & '0';

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

valid_out_N <= valid_out_N_sig; -- and valid_LBDR_N_sig;
valid_out_E <= valid_out_E_sig; -- and valid_LBDR_E_sig;
valid_out_S <= valid_out_S_sig; -- and valid_LBDR_S_sig;
valid_out_W <= valid_out_W_sig; -- and valid_LBDR_W_sig;
valid_out_L <= valid_out_L_sig; -- and valid_LBDR_L_sig;

-- BUBBLES OUT  -- do we need it?

hold_out_N <= hold_out_N_sig;
hold_out_E <= hold_out_E_sig;
hold_out_W <= hold_out_W_sig;
hold_out_S <= hold_out_S_sig;
hold_out_L <= hold_out_L_sig;


end;