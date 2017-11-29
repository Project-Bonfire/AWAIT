--Copyright (C) 2017 Siavoosh Payandeh Azad Behrad Niazmand Rene Pihlak

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;
use work.component_pack.all;

entity LBDR_bubble_combinatory_with_sequential is
    generic (
        cur_addr_rst: integer := 8;
        Rxy_rst:      integer := 8;
        Cx_rst:       integer := 8;
        NoC_size:     integer := 4
    );
    port (  reset:              in std_logic;
            clk:                in std_logic;
            
            Faulty_C_N, Faulty_C_E, Faulty_C_W, Faulty_C_S: in std_logic;

            empty:              in std_logic;
            flit_type:          in std_logic_vector(2 downto 0);
            dst_addr:           in std_logic_vector(NoC_size-1 downto 0);
            faulty:             in std_logic;
            packet_drop_order:  out std_logic;
	          grant_N, grant_E, grant_W, grant_S, grant_L: in std_logic;
            Req_N, Req_E, Req_W, Req_S, Req_L: out std_logic;

            Rxy_reconf_PE:      in std_logic_vector(7 downto 0);
            Cx_reconf_PE:       in std_logic_vector(3 downto 0);
            Reconfig_command:   in std_logic; 

            -- Checker outputs
            -- Routing part checkers            
            err_header_empty_Requests_FF_Requests_in, err_tail_Requests_in_all_zero, err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in, err_grants_onehot, err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in, err_dst_addr_cur_addr_N1, err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1, err_dst_addr_cur_addr_not_E1, err_dst_addr_cur_addr_W1, err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1, err_dst_addr_cur_addr_not_S1, err_dst_addr_cur_addr_Req_L_in, err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in, err_header_not_empty_Req_E_in, err_header_not_empty_Req_W_in, err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal, err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order, 

            -- Cx_Reconf checkers
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

            -- Rxy_Reconf checkers
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal : out std_logic            
            );
end LBDR_bubble_combinatory_with_sequential;

architecture behavior of LBDR_bubble_combinatory_with_sequential is

  signal Cx_sig, Cx_in_sig:  std_logic_vector(3 downto 0);
  signal Temp_Cx_sig, Temp_Cx_in_sig:  std_logic_vector(3 downto 0);

  signal reconfig_cx_sig, reconfig_cx_in_sig: std_logic;
  signal ReConf_FF_in_sig, ReConf_FF_out_sig: std_logic;

  signal Rxy_sig, Rxy_in_sig:  std_logic_vector(7 downto 0);
  signal Rxy_tmp_sig, Rxy_tmp_in_sig:  std_logic_vector(7 downto 0);

  signal cur_addr:  std_logic_vector(NoC_size-1 downto 0);  
  signal N1, E1, W1, S1  :std_logic :='0';  
  signal Req_N_in_sig, Req_E_in_sig, Req_W_in_sig, Req_S_in_sig, Req_L_in_sig: std_logic;
  signal Req_N_FF_sig, Req_E_FF_sig, Req_W_FF_sig, Req_S_FF_sig, Req_L_FF_sig: std_logic;
  signal grants: std_logic;
  signal packet_drop_sig, packet_drop_in_sig: std_logic;
  
  -- Signal(s) required for checker(s)
  signal packet_drop_order_sig: std_logic;

-------------------------------------      
-------------------------------------      

begin 

-- Becuase of checkers we did this

  --packet_drop_order <= packet_drop_order_sig;


-- LBDR SEQUENTIAL COMPONENT

LBDR_bubble_seq_c:
    LBDR_bubble_seq
    generic map (Rxy_rst => Rxy_rst, Cx_rst => Cx_rst)
    port map(
              -- INPUTS
              reset           => reset,
              clk             => clk,

              -- INPUTS INNER
              Cx_in           => Cx_in_sig,
              reconfig_cx_in  => reconfig_cx_in_sig,
              Rxy_in          => Rxy_in_sig,
              Rxy_tmp_in      => Rxy_tmp_in_sig,
              Req_N_in        => Req_N_in_sig,
              Req_E_in        => Req_E_in_sig,
              Req_W_in        => Req_W_in_sig,
              Req_S_in        => Req_S_in_sig,
              Req_L_in        => Req_L_in_sig,
              Temp_Cx_in      => Temp_Cx_in_sig,
              ReConf_FF_in    => ReConf_FF_in_sig,
              packet_drop_in  => packet_drop_in_sig,

              -- OUTPUTS INNER
              Cx              => Cx_sig,
              reconfig_cx     => reconfig_cx_sig,
              Rxy             => Rxy_sig,
              Rxy_tmp         => Rxy_tmp_sig,
              Req_N_FF        => Req_N_FF_sig,
              Req_E_FF        => Req_E_FF_sig,
              Req_W_FF        => Req_W_FF_sig,
              Req_S_FF        => Req_S_FF_sig,
              Req_L_FF        => Req_L_FF_sig,
              Temp_Cx         => Temp_Cx_sig,
              --reconfig_cx   => reconfig_cx,
              ReConf_FF_out   => ReConf_FF_out_sig,
              packet_drop     => packet_drop_sig
      );

-- LBDR COMBINATORY COMPONENT
LBDR_bubble_comb_c:
    LBDR_bubble_comb
    generic map(cur_addr_rst => cur_addr_rst, Rxy_rst => Rxy_rst, Cx_rst => Cx_rst, NoC_size => NoC_size)
    port map(
              -- INPUTS
            reset => reset,
            clk => clk,

            -- OUTPUTS
            packet_drop_order => packet_drop_order_sig,
            Req_N             => Req_N,
            Req_E             => Req_E,
            Req_W             => Req_W,
            Req_S             => Req_S,
            Req_L             => Req_L,

            -- INPUTS
            Faulty_C_N        => Faulty_C_N,
            Faulty_C_E        => Faulty_C_E,
            Faulty_C_W        => Faulty_C_W,
            Faulty_C_S        => Faulty_C_S,

            empty             => empty,
            flit_type         => flit_type,
            dst_addr          => dst_addr,
            faulty            => faulty,
            grant_N           => grant_N,
            grant_E           => grant_E,
            grant_W           => grant_W,
            grant_S           => grant_S,
            grant_L           => grant_L,

            Rxy_reconf_PE     => Rxy_reconf_PE,
            Cx_reconf_PE      => Cx_reconf_PE,
            Reconfig_command  => Reconfig_command,

            -- INPUTS INNER
            Cx                => Cx_sig,
            Temp_Cx           => Temp_Cx_sig,
            reconfig_cx       => reconfig_cx_sig,
            ReConf_FF_out     => ReConf_FF_out_sig,
            Rxy               => Rxy_sig,
            Rxy_tmp           => Rxy_tmp_sig,
            Req_N_FF          => Req_N_FF_sig,
            Req_E_FF          => Req_E_FF_sig,
            Req_W_FF          => Req_W_FF_sig,
            Req_S_FF          => Req_S_FF_sig,
            Req_L_FF          => Req_L_FF_sig,
            packet_drop       => packet_drop_sig,

            -- OUTPUTS INNER
            Cx_in             => Cx_in_sig,
            Temp_Cx_in        => Temp_Cx_in_sig,
            reconfig_cx_in    => reconfig_cx_in_sig,
            ReConf_FF_in      => ReConf_FF_in_sig,
            Rxy_in            => Rxy_in_sig,
            Rxy_tmp_in        => Rxy_tmp_in_sig,
            Req_N_in          => Req_N_in_sig,
            Req_E_in          => Req_E_in_sig,
            Req_W_in          => Req_W_in_sig,
            Req_S_in          => Req_S_in_sig,
            Req_L_in          => Req_L_in_sig,
            packet_drop_in    => packet_drop_in_sig,


            -- Checker outputs
            -- Routing part checkers            
            err_header_empty_Requests_FF_Requests_in => err_header_empty_Requests_FF_Requests_in,
            err_tail_Requests_in_all_zero => err_tail_Requests_in_all_zero,
            err_tail_empty_Requests_FF_Requests_in => err_tail_empty_Requests_FF_Requests_in, 
            err_tail_not_empty_not_grants_Requests_FF_Requests_in => err_tail_not_empty_not_grants_Requests_FF_Requests_in,
            err_grants_onehot => err_grants_onehot,
            err_grants_mismatch => err_grants_mismatch, 
            err_header_tail_Requests_FF_Requests_in => err_header_tail_Requests_FF_Requests_in,
            err_dst_addr_cur_addr_N1 => err_dst_addr_cur_addr_N1,
            err_dst_addr_cur_addr_not_N1 => err_dst_addr_cur_addr_not_N1, 
            err_dst_addr_cur_addr_E1 => err_dst_addr_cur_addr_E1,
            err_dst_addr_cur_addr_not_E1 => err_dst_addr_cur_addr_not_E1,
            err_dst_addr_cur_addr_W1 => err_dst_addr_cur_addr_W1,
            err_dst_addr_cur_addr_not_W1 => err_dst_addr_cur_addr_not_W1,
            err_dst_addr_cur_addr_S1 => err_dst_addr_cur_addr_S1,
            err_dst_addr_cur_addr_not_S1 => err_dst_addr_cur_addr_not_S1,
            err_dst_addr_cur_addr_Req_L_in => err_dst_addr_cur_addr_Req_L_in,
            err_dst_addr_cur_addr_not_Req_L_in => err_dst_addr_cur_addr_not_Req_L_in, 
            err_header_not_empty_faulty_drop_packet_in => err_header_not_empty_faulty_drop_packet_in, -- added according to new design
            err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change => err_header_not_empty_not_faulty_drop_packet_in_packet_drop_not_change, -- added according to new design
            err_header_not_empty_faulty_Req_in_all_zero => err_header_not_empty_faulty_Req_in_all_zero, -- added according to new design
            err_header_not_empty_Req_N_in => err_header_not_empty_Req_N_in,
            err_header_not_empty_Req_E_in => err_header_not_empty_Req_E_in,
            err_header_not_empty_Req_W_in => err_header_not_empty_Req_W_in,
            err_header_not_empty_Req_S_in => err_header_not_empty_Req_S_in, 
            err_header_empty_packet_drop_in_packet_drop_equal => err_header_empty_packet_drop_in_packet_drop_equal,
            err_tail_not_empty_packet_drop_not_packet_drop_in => err_tail_not_empty_packet_drop_not_packet_drop_in, 
            err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal => err_tail_not_empty_not_packet_drop_packet_drop_in_packet_drop_equal, 
            err_invalid_or_body_flit_packet_drop_in_packet_drop_equal => err_invalid_or_body_flit_packet_drop_in_packet_drop_equal, 
            err_packet_drop_order => err_packet_drop_order, 

            -- Cx_Reconf checkers
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal => err_reconfig_cx_flit_type_Tail_not_empty_grants_Cx_in_Temp_Cx_equal, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in => err_reconfig_cx_flit_type_Tail_not_empty_grants_not_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Cx_in_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_reconfig_cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_Faulty_C_Temp_Cx_in, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Reconfig_command_reconfig_cx_in, 
            err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal => err_reconfig_cx_flit_type_Tail_not_empty_grants_Temp_Cx_in_Temp_Cx_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_Temp_Cx_in_Cx_reconf_PE_equal, 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_reconfig_cx_in_reconfig_cx_equal, -- Added 
            err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal => err_not_reconfig_cx_flit_type_not_Tail_empty_not_grants_not_Faulty_C_not_Reconfig_command_Temp_Cx_in_Temp_Cx_equal, -- Added

            -- Rxy_Reconf checkers
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp => err_ReConf_FF_out_flit_type_Tail_not_empty_grants_Rxy_in_Rxy_tmp, 
            err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in => err_ReConf_FF_out_flit_type_Tail_not_empty_grants_not_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal => err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Rxy_in_Rxy_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in => err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_ReConf_FF_in, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal => err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_Reconfig_command_Rxy_tmp_in_Rxy_reconf_PE_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal => err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_Rxy_tmp_in_Rxy_tmp_equal, 
            err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal => err_not_ReConf_FF_out_flit_type_not_Tail_empty_not_grants_not_Reconfig_command_ReConf_FF_in_ReConf_FF_out_equal
      );
   
--packet_drop_order_sig <= packet_drop;

END;