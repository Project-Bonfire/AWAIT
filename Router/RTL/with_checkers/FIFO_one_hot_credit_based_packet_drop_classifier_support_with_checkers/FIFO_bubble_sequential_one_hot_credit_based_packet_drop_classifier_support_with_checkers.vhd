--Copyright (C) 2016 Siavoosh Payandeh Azad

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.component_pack.all;

entity FIFO_credit_based is
    generic (
        DATA_WIDTH: integer := 32
    );
    port (  reset:      in std_logic;
            clk:        in std_logic;

            read_pointer_in:    in std_logic;
            write_pointer_in:   in std_logic;

            FIFO_MEM_1_in, 
            FIFO_MEM_2_in, 
            FIFO_MEM_3_in, 
            FIFO_MEM_4_in:      in std_logic_vector(DATA_WIDTH-1 downto 0);
            
            fake_credit_counter_in: in std_logic_vector(1 downto 0);
            write_en:           in std_logic;
            faulty_packet_in:   in std_logic;
            credit_in:          in std_logic;
            state_in:           in std_logic;

            credit_out:     out std_logic;

            read_pointer:   out std_logic;
            write_pointer:  out std_logic;
            
            FIFO_MEM_1, 
            FIFO_MEM_2, 
            FIFO_MEM_3, 
            FIFO_MEM_4:     out std_logic_vector(DATA_WIDTH-1 downto 0);
            
            fake_credit_counter:    out std_logic_vector(1 downto 0);
            faulty_packet_out:      out std_logic;
            state_out:              out std_logic
    );
end FIFO_credit_based;

architecture behavior of FIFO_credit_based is
      
   -- Packet Dropping FSM states encoded as one-hot (because of checkers for one-bit error detection)
   CONSTANT Idle: std_logic_vector (4 downto 0)          := "00001";

begin

   -- Sequential part

   process (clk, reset)begin
        if reset = '0' then
            read_pointer  <= "0001";
            write_pointer <= "0001";

            FIFO_MEM_1 <= (others=>'0'); FIFO_MEM_2 <= (others=>'0'); FIFO_MEM_3 <= (others=>'0'); FIFO_MEM_4 <= (others=>'0');

            fake_credit_counter <= (others=>'0');
            faulty_packet_out <= '0';
            credit_out  <= '0';
            state_out   <= Idle;
            fault_info_out <= '0';
        elsif clk'event and clk = '1' then
            write_pointer <= write_pointer_in;
            read_pointer  <=  read_pointer_in;
            state_out <= state_in;
            
            faulty_packet_out <=  faulty_packet_in;
            credit_out <= credit_in;
            fake_credit_counter <= fake_credit_counter_in;   

            if write_en = '1' then 
               --write into the memory
               FIFO_MEM_1 <= FIFO_MEM_1_in; FIFO_MEM_2 <= FIFO_MEM_2_in; FIFO_MEM_3 <= FIFO_MEM_3_in; FIFO_MEM_4 <= FIFO_MEM_4_in;                   
            end if;
            fault_info_out <= fault_info_in;
        end if;
    end process;

end;
