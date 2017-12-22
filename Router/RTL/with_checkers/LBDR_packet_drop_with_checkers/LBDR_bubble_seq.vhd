--Copyright (C) 2017 Siavoosh Payandeh Azad Behrad Niazmand Rene Pihlak

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.ALL;
use work.component_pack.all;

entity LBDR_bubble_seq is
    generic (
      Rxy_rst: integer 	:= 8;
      Cx_rst: integer 	:= 8--;
    );
    port (  
    	-- INPUTS
    	reset: 		in std_logic;
      clk: 			in std_logic;

      -- INPUTS INNER
      Cx_in: 			    in std_logic_vector(3 downto 0);
			reconfig_cx_in: in std_logic;
			Rxy_in: 		    in std_logic_vector(7 downto 0);
			Rxy_tmp_in: 	  in std_logic_vector(7 downto 0);
			Req_N_in, Req_E_in, Req_W_in, Req_S_in, Req_L_in: in std_logic;
			Temp_Cx_in: 	  in std_logic_vector(3 downto 0);
			ReConf_FF_in: 	in std_logic;
			packet_drop_in: in std_logic;
      --hold_in:        in std_logic;
      fault_in:       in std_logic;

			-- OUTPUTS INNER
			Cx: 			      out std_logic_vector(3 downto 0);
			reconfig_cx: 	  out std_logic;
			Rxy: 			      out std_logic_vector(7 downto 0);
			Rxy_tmp: 		    out std_logic_vector(7 downto 0);
			Req_N_FF, Req_E_FF, Req_W_FF, Req_S_FF, Req_L_FF: out std_logic;
			Temp_Cx: 		    out std_logic_vector(3 downto 0);
			ReConf_FF_out: 	out std_logic;
			packet_drop: 	  out std_logic
      );
end LBDR_bubble_seq;

architecture behavior of LBDR_bubble_seq is

begin

-- Sequential part

process(clk, reset)
begin
if reset = '0' then 
  Rxy      <= std_logic_vector(to_unsigned(Rxy_rst, Rxy'length));
  Rxy_tmp  <= (others => '0');

  Req_N_FF <= '0'; 
  Req_E_FF <= '0'; 
  Req_W_FF <= '0'; 
  Req_S_FF <= '0'; 
  Req_L_FF <= '0';

  Cx            <= std_logic_vector(to_unsigned(Cx_rst, Cx'length));
  Temp_Cx       <= (others => '0');
  ReConf_FF_out <= '0';
  reconfig_cx   <= '0';
  packet_drop   <= '0';

elsif clk'event and clk = '1' and fault_in = '0' then -- and hold_in = '0' then
  Rxy      <= Rxy_in;	
  Rxy_tmp  <=  Rxy_tmp_in;

  Req_N_FF <= Req_N_in; 
  Req_E_FF <= Req_E_in; 
  Req_W_FF <= Req_W_in; 
  Req_S_FF <= Req_S_in; 
  Req_L_FF <= Req_L_in;

  ReConf_FF_out <= ReConf_FF_in;
  Cx            <= Cx_in;
  reconfig_cx   <= reconfig_cx_in;
  Temp_Cx       <= Temp_Cx_in;
  packet_drop   <= packet_drop_in;
end if;
end process;
end behavior;