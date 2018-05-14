library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;

entity LBDR_checkers is
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
            err_Req_N_Req_S_active, 
            err_Req_E_Req_W_active,   
            err_header_not_empty_Requests_in_onehot_XY_routing, 
            err_header_not_empty_Req_E_in_not_Req_N_in_XY_routing, 
            err_header_not_empty_Req_E_in_not_Req_S_in_XY_routing, 
            err_header_not_empty_Req_W_in_not_Req_N_in_XY_routing, 
            err_header_not_empty_Req_W_in_not_Req_S_in_XY_routing, 
            err_header_not_empty_curr_addr_dst_addr_equal_Req_L_in, 
            err_header_not_empty_curr_addr_dst_addr_not_equal_not_Req_L_in: out std_logic; 
            --err_header_empty_Requests_FF_Requests_in_equal, 
            --err_tail_not_empty_grants_Requests_in_all_zero, 
            --err_body_or_invalid_Requests_FF_Requests_in_equal: out std_logic;

            -- Structural checker outputs
            err_empty_Req_N_in_Req_N_FF, 
            err_empty_Req_E_in_Req_E_FF, 
            err_empty_Req_W_in_Req_W_FF, 
            err_empty_Req_S_in_Req_S_FF, 
            err_empty_Req_L_in_Req_L_FF, 
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
end LBDR_checkers;

architecture behavior of LBDR_checkers is

    signal Requests_FF: std_logic_vector(4 downto 0);
    signal Requests_in: std_logic_vector(4 downto 0);
    -- For now, we are not introducing checkers for LBDR routing and connectivity bits!
    signal Cx :  std_logic_vector(3 downto 0);
    signal Rxy:  std_logic_vector(7 downto 0);

begin 

    Requests_FF   <= Req_N_FF & Req_E_FF & Req_W_FF & Req_S_FF & Req_L_FF;
    Requests_in   <= Req_N_in & Req_E_in & Req_W_in & Req_S_in & Req_L_in;

    Cx  <= std_logic_vector(to_unsigned(Cx_rst,   Cx'length));  
    Rxy <= std_logic_vector(to_unsigned(Rxy_rst, Rxy'length));


    -- Implementing checkers in form of concurrent assignments (combinational assertions)

    -- Functional Checkers

    -- North and South cannot go active at the same time
    process (Req_N_FF, Req_S_FF, Req_N_in, Req_S_in, N1_out, S1_out)
    begin
        if (Req_N_FF = '1' and Req_S_FF = '1') or (Req_N_in = '1' and Req_S_in = '1') or (N1_out = '1' and S1_out = '1') then
            err_Req_N_Req_S_active <= '1';
        else
            err_Req_N_Req_S_active <= '0';
        end if;
    end process;

    -- East and West cannot go active at the same time
    process (Req_E_FF, Req_W_FF, Req_E_in, Req_W_in, E1_out, W1_out)
    begin
        if (Req_E_FF = '1' and Req_W_FF = '1') or (Req_E_in = '1' and Req_W_in = '1') or (E1_out = '1' and W1_out = '1') then
            err_Req_E_Req_W_active <= '1';
        else
            err_Req_E_Req_W_active <= '0';
        end if;
    end process;

    -- This checker is only valid when using deterministic routing, such as XY or YX!
    process (flit_type, empty, Rxy, Requests_in)
    begin
        if (flit_type = "001" and empty = '0' and Rxy = "00111100" and Requests_in /= "00001" and Requests_in /= "00010" and Requests_in /= "00100" and
            Requests_in /= "01000" and Requests_in /= "10000") then
            err_header_not_empty_Requests_in_onehot_XY_routing <= '1';
        else 
            err_header_not_empty_Requests_in_onehot_XY_routing <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, Req_E_in, Req_N_in)
    begin
        if (flit_type = "001" and empty = '0' and Rxy = "00111100" and Req_E_in = '1' and Req_N_in = '1') then
            err_header_not_empty_Req_E_in_not_Req_N_in_XY_routing <= '1';
        else 
            err_header_not_empty_Req_E_in_not_Req_N_in_XY_routing <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, Req_W_in, Req_N_in)
    begin
        if (flit_type = "001" and empty = '0' and Rxy = "00111100" and Req_W_in = '1' and Req_N_in = '1') then
            err_header_not_empty_Req_W_in_not_Req_N_in_XY_routing <= '1';
        else 
            err_header_not_empty_Req_W_in_not_Req_N_in_XY_routing <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, Req_E_in, Req_S_in)
    begin
        if (flit_type = "001" and empty = '0' and Rxy = "00111100" and Req_E_in = '1' and Req_S_in = '1') then
            err_header_not_empty_Req_E_in_not_Req_S_in_XY_routing <= '1';
        else 
            err_header_not_empty_Req_E_in_not_Req_S_in_XY_routing <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, Req_E_in, Req_S_in)
    begin
        if (flit_type = "001" and empty = '0' and Rxy = "00111100" and Req_W_in = '1' and Req_N_in = '1') then
            err_header_not_empty_Req_W_in_not_Req_S_in_XY_routing <= '1';
        else 
            err_header_not_empty_Req_W_in_not_Req_S_in_XY_routing <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, cur_addr_x, cur_addr_y, dst_addr_x, dst_addr_y, Req_L_in)
    begin
        if (flit_type = "001" and empty = '0' and cur_addr_x = dst_addr_x and cur_addr_y = dst_addr_y and Req_L_in = '0') then
            err_header_not_empty_curr_addr_dst_addr_equal_Req_L_in <= '1';
        else 
            err_header_not_empty_curr_addr_dst_addr_equal_Req_L_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Rxy, cur_addr_x, cur_addr_y, dst_addr_x, dst_addr_y, Req_L_in)
    begin
        if (flit_type = "001" and empty = '0' and cur_addr_x /= dst_addr_x and cur_addr_y /= dst_addr_y and Req_L_in = '1') then
            err_header_not_empty_curr_addr_dst_addr_not_equal_not_Req_L_in <= '1';
        else 
            err_header_not_empty_curr_addr_dst_addr_not_equal_not_Req_L_in <= '0';
        end if;
    end process;

    --process (flit_type, empty, Requests_FF, Requests_in)
    --begin
    --    if (flit_type = "001" and empty = '1' and Requests_FF /= Requests_in) then
    --        err_header_empty_Requests_FF_Requests_in_equal <= '1';
    --    else 
    --        err_header_empty_Requests_FF_Requests_in_equal <= '0';
    --    end if;
    --end process;

    --process (flit_type, empty, grants_out, Requests_in)
    --begin
    --    if (flit_type = "100" and empty = '0' and grants_out = '1' and Requests_in /= "00000") then
    --        err_tail_not_empty_grants_Requests_in_all_zero <= '1';
    --    else 
    --        err_tail_not_empty_grants_Requests_in_all_zero <= '0';
    --    end if;
    --end process;

    --process (flit_type, Requests_FF, Requests_in)
    --begin
    --    if (flit_type /= "001" and flit_type /= "100" and Requests_FF /= Requests_in) then
    --        err_body_or_invalid_Requests_FF_Requests_in_equal <= '1';
    --    else 
    --        err_body_or_invalid_Requests_FF_Requests_in_equal <= '0';
    --    end if;
    --end process;

    -- Structural Checkers

    process (empty, Req_N_in, Req_N_FF)
    begin
        if (empty = '1' and Req_N_in /= Req_N_FF) then
            err_empty_Req_N_in_Req_N_FF <= '1';
        else
            err_empty_Req_N_in_Req_N_FF <= '0'; 
        end if;
    end process;

    process (empty, Req_E_in, Req_E_FF)
    begin
        if (empty = '1' and Req_E_in /= Req_E_FF) then
            err_empty_Req_E_in_Req_E_FF <= '1';
        else
            err_empty_Req_E_in_Req_E_FF <= '0'; 
        end if;
    end process;

    process (empty, Req_W_in, Req_W_FF)
    begin
        if (empty = '1' and Req_W_in /= Req_W_FF) then
            err_empty_Req_W_in_Req_W_FF <= '1';
        else
            err_empty_Req_W_in_Req_W_FF <= '0'; 
        end if;
    end process;

    process (empty, Req_S_in, Req_S_FF)
    begin
        if (empty = '1' and Req_S_in /= Req_S_FF) then
            err_empty_Req_S_in_Req_S_FF <= '1';
        else
            err_empty_Req_S_in_Req_S_FF <= '0'; 
        end if;
    end process;

    process (empty, Req_L_in, Req_L_FF)
    begin
        if (empty = '1' and Req_L_in /= Req_L_FF) then
            err_empty_Req_L_in_Req_L_FF <= '1';
        else
            err_empty_Req_L_in_Req_L_FF <= '0'; 
        end if;
    end process;

    process (grant_N, grant_E, grant_W, grant_S, grant_L, grants_out)
    begin
        if ( (grant_N = '1' or grant_E = '1' or grant_W = '1' or grant_S = '1' or grant_L = '1') and grants_out = '0' ) then
            err_grants <= '1';
        else
            err_grants <= '0'; 
        end if;
    end process;

    process (grant_N, grant_E, grant_W, grant_S, grant_L, grants_out)
    begin
        if ( (grant_N = '0' and grant_E = '0' and grant_W = '0' and grant_S = '0' and grant_L = '0') and grants_out = '1' ) then
            err_not_grants <= '1';
        else 
            err_not_grants <= '0'; 
        end if;
    end process;

    process (dst_addr_y, cur_addr_y, N1_out)
    begin
        if ( dst_addr_y < cur_addr_y and N1_out = '0') then
            err_dst_addr_cur_addr_N1 <= '1';
        else 
            err_dst_addr_cur_addr_N1 <= '0';
        end if;
    end process;

    process (dst_addr_y, cur_addr_y, N1_out)
    begin
        if ( dst_addr_y >= cur_addr_y and N1_out = '1') then
            err_dst_addr_cur_addr_not_N1 <= '1';
        else 
            err_dst_addr_cur_addr_not_N1 <= '0';
        end if;
    end process;

    process (cur_addr_x, dst_addr_x, E1_out)
    begin
        if ( cur_addr_x < dst_addr_x and E1_out = '0') then
            err_dst_addr_cur_addr_E1 <= '1';
        else 
            err_dst_addr_cur_addr_E1 <= '0';
        end if;
    end process;

    process (cur_addr_x, dst_addr_x, E1_out)
    begin
        if ( cur_addr_x >= dst_addr_x and E1_out = '1') then
            err_dst_addr_cur_addr_not_E1 <= '1';
        else 
            err_dst_addr_cur_addr_not_E1 <= '0';
        end if;
    end process;

    process (dst_addr_x, cur_addr_x, W1_out)
    begin
        if ( dst_addr_x < cur_addr_x and W1_out = '0') then
            err_dst_addr_cur_addr_W1 <= '1';
        else 
            err_dst_addr_cur_addr_W1 <= '0';
        end if;
    end process;

    process (dst_addr_x, cur_addr_x, W1_out)
    begin
        if ( dst_addr_x >= cur_addr_x and W1_out = '1') then
            err_dst_addr_cur_addr_not_W1 <= '1';
        else 
            err_dst_addr_cur_addr_not_W1 <= '0';
        end if;
    end process;

    process (cur_addr_y, dst_addr_y, S1_out)
    begin
        if ( cur_addr_y < dst_addr_y and S1_out = '0') then
            err_dst_addr_cur_addr_S1 <= '1';
        else 
            err_dst_addr_cur_addr_S1 <= '0';
        end if;
    end process;

    process (cur_addr_y, dst_addr_y, S1_out)
    begin
        if ( cur_addr_y >= dst_addr_y and S1_out = '1') then
            err_dst_addr_cur_addr_not_S1 <= '1';
        else 
            err_dst_addr_cur_addr_not_S1 <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_N_in, N1_out, E1_out, W1_out, Rxy, Cx)
    begin
        if ( flit_type = "001" and empty = '0' and Req_N_in /= (((N1_out and not E1_out and not W1_out) or (N1_out and E1_out and Rxy(0)) or (N1_out and W1_out and Rxy(1))) and Cx(0)) ) then
            err_header_not_empty_Req_N_in <= '1';
        else 
            err_header_not_empty_Req_N_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_E_in, N1_out, E1_out, S1_out, Rxy, Cx)
    begin
        if ( flit_type = "001" and empty = '0' and Req_E_in /= (((E1_out and not N1_out and not S1_out) or (E1_out and N1_out and Rxy(2)) or (E1_out and S1_out and Rxy(3))) and Cx(1)) ) then
            err_header_not_empty_Req_E_in <= '1';
        else 
            err_header_not_empty_Req_E_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_W_in, N1_out, W1_out, S1_out, Rxy, Cx)
    begin
        if ( flit_type = "001" and empty = '0' and Req_W_in /= (((W1_out and not N1_out and not S1_out) or (W1_out and N1_out and Rxy(4)) or (W1_out and S1_out and Rxy(5))) and Cx(2)) ) then
            err_header_not_empty_Req_W_in <= '1';
        else 
            err_header_not_empty_Req_W_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_S_in, E1_out, W1_out, S1_out, Rxy, Cx)
    begin
        if ( flit_type = "001" and empty = '0' and Req_S_in /= (((S1_out and not E1_out and not W1_out) or (S1_out and E1_out and Rxy(6)) or (S1_out and W1_out and Rxy(7))) and Cx(3)) ) then
            err_header_not_empty_Req_S_in <= '1';
        else 
            err_header_not_empty_Req_S_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_L_in, N1_out, E1_out, W1_out, S1_out)
    begin
        if ( flit_type = "001" and empty = '0' and Req_L_in /= (not N1_out and not E1_out and not W1_out and not S1_out) ) then
            err_header_not_empty_Req_L_in <= '1';
        else 
            err_header_not_empty_Req_L_in <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_N_in, Req_N_FF)
    begin
        if (flit_type = "001" and empty = '1' and Req_N_in /= Req_N_FF) then
            err_header_empty_Req_N_in_Req_N_FF <= '1';
        else 
            err_header_empty_Req_N_in_Req_N_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_E_in, Req_E_FF)
    begin
        if (flit_type = "001" and empty = '1' and Req_E_in /= Req_E_FF) then
            err_header_empty_Req_E_in_Req_E_FF <= '1';
        else 
            err_header_empty_Req_E_in_Req_E_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_W_in, Req_W_FF)
    begin
        if (flit_type = "001" and empty = '1' and Req_W_in /= Req_W_FF) then
            err_header_empty_Req_W_in_Req_W_FF <= '1';
        else 
            err_header_empty_Req_W_in_Req_W_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_S_in, Req_S_FF)
    begin
        if (flit_type = "001" and empty = '1' and Req_S_in /= Req_S_FF) then
            err_header_empty_Req_S_in_Req_S_FF <= '1';
        else 
            err_header_empty_Req_S_in_Req_S_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_L_in, Req_L_FF)
    begin
        if (flit_type = "001" and empty = '1' and Req_L_in /= Req_L_FF) then
            err_header_empty_Req_L_in_Req_L_FF <= '1';
        else 
            err_header_empty_Req_L_in_Req_L_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_N_in)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '1' and Req_N_in = '1') then
            err_tail_not_empty_grants_not_Req_N_in <= '1';
        else 
            err_tail_not_empty_grants_not_Req_N_in <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_E_in)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '1' and Req_E_in = '1') then
            err_tail_not_empty_grants_not_Req_E_in <= '1';
        else 
            err_tail_not_empty_grants_not_Req_E_in <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_W_in)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '1' and Req_W_in = '1') then
            err_tail_not_empty_grants_not_Req_W_in <= '1';
        else 
            err_tail_not_empty_grants_not_Req_W_in <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_S_in)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '1' and Req_S_in = '1') then
            err_tail_not_empty_grants_not_Req_S_in <= '1';
        else 
            err_tail_not_empty_grants_not_Req_S_in <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_L_in)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '1' and Req_L_in = '1') then
            err_tail_not_empty_grants_not_Req_L_in <= '1';
        else 
            err_tail_not_empty_grants_not_Req_L_in <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_N_in, Req_N_FF)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '0' and Req_N_in /= Req_N_FF) then
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal <= '1';
        else 
            err_tail_not_empty_not_grants_Req_N_in_Req_N_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_E_in, Req_E_FF)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '0' and Req_E_in /= Req_E_FF) then
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal <= '1';
        else 
            err_tail_not_empty_not_grants_Req_E_in_Req_E_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_W_in, Req_W_FF)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '0' and Req_W_in /= Req_W_FF) then
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal <= '1';
        else 
            err_tail_not_empty_not_grants_Req_W_in_Req_W_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_S_in, Req_S_FF)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '0' and Req_S_in /= Req_S_FF) then
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal <= '1';
        else 
            err_tail_not_empty_not_grants_Req_S_in_Req_S_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, grants_out, Req_L_in, Req_L_FF)
    begin
        if ( flit_type = "100" and empty = '0' and grants_out = '0' and Req_L_in /= Req_L_FF) then
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal <= '1';
        else 
            err_tail_not_empty_not_grants_Req_L_in_Req_L_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_N_in, Req_N_FF)
    begin
        if ( flit_type = "100" and empty = '1' and Req_N_in /= Req_N_FF) then
            err_tail_empty_Req_N_in_Req_N_FF_equal <= '1';
        else 
            err_tail_empty_Req_N_in_Req_N_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_E_in, Req_E_FF)
    begin
        if ( flit_type = "100" and empty = '1' and Req_E_in /= Req_E_FF) then
            err_tail_empty_Req_E_in_Req_E_FF_equal <= '1';
        else 
            err_tail_empty_Req_E_in_Req_E_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_W_in, Req_W_FF)
    begin
        if ( flit_type = "100" and empty = '1' and Req_W_in /= Req_W_FF) then
            err_tail_empty_Req_W_in_Req_W_FF_equal <= '1';
        else 
            err_tail_empty_Req_W_in_Req_W_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_S_in, Req_S_FF)
    begin
        if ( flit_type = "100" and empty = '1' and Req_S_in /= Req_S_FF) then
            err_tail_empty_Req_S_in_Req_S_FF_equal <= '1';
        else 
            err_tail_empty_Req_S_in_Req_S_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_L_in, Req_L_FF)
    begin
        if ( flit_type = "100" and empty = '1' and Req_L_in /= Req_L_FF) then
            err_tail_empty_Req_L_in_Req_L_FF_equal <= '1';
        else 
            err_tail_empty_Req_L_in_Req_L_FF_equal <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_N_in, Req_N_FF)
    begin
        if ( flit_type /= "001" and flit_type /= "100" and Req_N_in /= Req_N_FF) then -- Body flit or invalid flit type
            err_body_or_invalid_Req_N_in_Req_N_FF <= '1';
        else 
            err_body_or_invalid_Req_N_in_Req_N_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_E_in, Req_E_FF)
    begin
        if ( flit_type /= "001" and flit_type /= "100" and Req_E_in /= Req_E_FF) then -- Body flit or invalid flit type
            err_body_or_invalid_Req_E_in_Req_E_FF <= '1';
        else 
            err_body_or_invalid_Req_E_in_Req_E_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_W_in, Req_W_FF)
    begin
        if ( flit_type /= "001" and flit_type /= "100" and Req_W_in /= Req_W_FF) then -- Body flit or invalid flit type
            err_body_or_invalid_Req_W_in_Req_W_FF <= '1';
        else 
            err_body_or_invalid_Req_W_in_Req_W_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_S_in, Req_S_FF)
    begin
        if ( flit_type /= "001" and flit_type /= "100" and Req_S_in /= Req_S_FF) then -- Body flit or invalid flit type
            err_body_or_invalid_Req_S_in_Req_S_FF <= '1';
        else 
            err_body_or_invalid_Req_S_in_Req_S_FF <= '0';
        end if;
    end process;

    process (flit_type, empty, Req_L_in, Req_L_FF)
    begin
        if ( flit_type /= "001" and flit_type /= "100" and Req_L_in /= Req_L_FF) then -- Body flit or invalid flit type
            err_body_or_invalid_Req_L_in_Req_L_FF <= '1';
        else 
            err_body_or_invalid_Req_L_in_Req_L_FF <= '0';
        end if;
    end process;

end behavior;