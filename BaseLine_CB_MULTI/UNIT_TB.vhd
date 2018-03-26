----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2018 00:58:45
-- Design Name: 
-- Module Name: UNIT_SERIAL_TOP_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

library work;
use work.router_pack.all;

entity UNIT_TB is
end UNIT_TB;

architecture Behavioral of UNIT_TB is

-- SIGNALS
signal CLK          : std_logic 	:= '0';
signal RST          : std_logic 	:= '1';

-- CONSTANTS
constant CLK_PERIOD	: time	:= 10 ns;

begin

RST <= '0' after CLK_PERIOD;

clk_pros: process
begin
	wait for CLK_PERIOD/2;
	CLK <= not CLK;
end process;

end Behavioral;