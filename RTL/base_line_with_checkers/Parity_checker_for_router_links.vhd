--Copyright (C) 2018 Rene Pihlak

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity parity_checker_for_router_links is
	generic(
			DATA_WIDTH : integer := 32
		);
	port(
			RX 		 : in std_logic_vector(DATA_WIDTH-1 downto 0);
			valid_in : in std_logic;
			faulty   : out std_logic
		);
end parity_checker_for_router_links;

architecture behavior of Parity_checker_for_router_links is

begin

	err_check : process( RX, valid_in)
	begin
		if valid_in='1' and XOR_REDUCE(RX) /= '0' then 
			faulty <= '1';
		else
			faulty <= '0';
		end if;
	end process ; -- err_check

end architecture ; -- behavior