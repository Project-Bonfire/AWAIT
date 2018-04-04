--Copyright (C) 2016 Siavoosh Payandeh Azad
------------------------------------------------------------
-- This file is automatically generated Please do not change!
-- Here are the parameters:
-- 	 network size x:4
-- 	 network size y:4
-- 	 data width:32
-- 	 traffic pattern:
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.TB_Package.all;

use work.router_pack.all;

USE ieee.numeric_std.ALL; 
-- use IEEE.math_real."ceil";
-- use IEEE.math_real."log2";

entity tb_network_4x4 is
end tb_network_4x4; 


architecture behavior of tb_network_4x4 is

-- Declaring network component

function log2( i : integer) return integer is 
    variable temp    : integer := i; 
    variable ret_val : integer := 1; --log2 of 0 should equal 1 because you still need 1 bit to represent 0 
  begin                  
    while temp > 1 loop 
      ret_val := ret_val + 1; 
      temp    := temp / 2;      
    end loop; 
     
    return ret_val; 
  end function; 

component network_4x4 is
 generic (DATA_WIDTH: integer := 32);
port (reset: in  std_logic; 
	clk: in  std_logic; 
	--------------
	RX_L_0: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_0, valid_out_L_0: out std_logic;
	credit_in_L_0, valid_in_L_0: in std_logic;
	TX_L_0: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_1: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_1, valid_out_L_1: out std_logic;
	credit_in_L_1, valid_in_L_1: in std_logic;
	TX_L_1: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_2: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_2, valid_out_L_2: out std_logic;
	credit_in_L_2, valid_in_L_2: in std_logic;
	TX_L_2: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_3: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_3, valid_out_L_3: out std_logic;
	credit_in_L_3, valid_in_L_3: in std_logic;
	TX_L_3: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_4: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_4, valid_out_L_4: out std_logic;
	credit_in_L_4, valid_in_L_4: in std_logic;
	TX_L_4: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_5: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_5, valid_out_L_5: out std_logic;
	credit_in_L_5, valid_in_L_5: in std_logic;
	TX_L_5: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_6: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_6, valid_out_L_6: out std_logic;
	credit_in_L_6, valid_in_L_6: in std_logic;
	TX_L_6: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_7: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_7, valid_out_L_7: out std_logic;
	credit_in_L_7, valid_in_L_7: in std_logic;
	TX_L_7: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_8: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_8, valid_out_L_8: out std_logic;
	credit_in_L_8, valid_in_L_8: in std_logic;
	TX_L_8: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_9: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_9, valid_out_L_9: out std_logic;
	credit_in_L_9, valid_in_L_9: in std_logic;
	TX_L_9: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_10: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_10, valid_out_L_10: out std_logic;
	credit_in_L_10, valid_in_L_10: in std_logic;
	TX_L_10: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_11: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_11, valid_out_L_11: out std_logic;
	credit_in_L_11, valid_in_L_11: in std_logic;
	TX_L_11: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_12: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_12, valid_out_L_12: out std_logic;
	credit_in_L_12, valid_in_L_12: in std_logic;
	TX_L_12: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_13: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_13, valid_out_L_13: out std_logic;
	credit_in_L_13, valid_in_L_13: in std_logic;
	TX_L_13: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_14: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_14, valid_out_L_14: out std_logic;
	credit_in_L_14, valid_in_L_14: in std_logic;
	TX_L_14: out std_logic_vector (DATA_WIDTH-1 downto 0);
	--------------
	RX_L_15: in std_logic_vector (DATA_WIDTH-1 downto 0);
	credit_out_L_15, valid_out_L_15: out std_logic;
	credit_in_L_15, valid_in_L_15: in std_logic;
	TX_L_15: out std_logic_vector (DATA_WIDTH-1 downto 0)

            ); 
end component; 
component flit_tracker is
    generic (
        DATA_WIDTH: integer := 32;
        tracker_file: string :="track.txt"
    );
    port (
        clk: in std_logic;
        RX: in std_logic_vector (DATA_WIDTH-1 downto 0); 
        valid_in : in std_logic 
    );
end component;

-- generating bulk signals...
	signal RX_L_0, TX_L_0:  std_logic_vector (31 downto 0);
	signal credit_counter_out_0:  std_logic_vector (1 downto 0);
	signal credit_out_L_0, credit_in_L_0, valid_in_L_0, valid_out_L_0: std_logic;
	signal RX_L_1, TX_L_1:  std_logic_vector (31 downto 0);
	signal credit_counter_out_1:  std_logic_vector (1 downto 0);
	signal credit_out_L_1, credit_in_L_1, valid_in_L_1, valid_out_L_1: std_logic;
	signal RX_L_2, TX_L_2:  std_logic_vector (31 downto 0);
	signal credit_counter_out_2:  std_logic_vector (1 downto 0);
	signal credit_out_L_2, credit_in_L_2, valid_in_L_2, valid_out_L_2: std_logic;
	signal RX_L_3, TX_L_3:  std_logic_vector (31 downto 0);
	signal credit_counter_out_3:  std_logic_vector (1 downto 0);
	signal credit_out_L_3, credit_in_L_3, valid_in_L_3, valid_out_L_3: std_logic;
	signal RX_L_4, TX_L_4:  std_logic_vector (31 downto 0);
	signal credit_counter_out_4:  std_logic_vector (1 downto 0);
	signal credit_out_L_4, credit_in_L_4, valid_in_L_4, valid_out_L_4: std_logic;
	signal RX_L_5, TX_L_5:  std_logic_vector (31 downto 0);
	signal credit_counter_out_5:  std_logic_vector (1 downto 0);
	signal credit_out_L_5, credit_in_L_5, valid_in_L_5, valid_out_L_5: std_logic;
	signal RX_L_6, TX_L_6:  std_logic_vector (31 downto 0);
	signal credit_counter_out_6:  std_logic_vector (1 downto 0);
	signal credit_out_L_6, credit_in_L_6, valid_in_L_6, valid_out_L_6: std_logic;
	signal RX_L_7, TX_L_7:  std_logic_vector (31 downto 0);
	signal credit_counter_out_7:  std_logic_vector (1 downto 0);
	signal credit_out_L_7, credit_in_L_7, valid_in_L_7, valid_out_L_7: std_logic;
	signal RX_L_8, TX_L_8:  std_logic_vector (31 downto 0);
	signal credit_counter_out_8:  std_logic_vector (1 downto 0);
	signal credit_out_L_8, credit_in_L_8, valid_in_L_8, valid_out_L_8: std_logic;
	signal RX_L_9, TX_L_9:  std_logic_vector (31 downto 0);
	signal credit_counter_out_9:  std_logic_vector (1 downto 0);
	signal credit_out_L_9, credit_in_L_9, valid_in_L_9, valid_out_L_9: std_logic;
	signal RX_L_10, TX_L_10:  std_logic_vector (31 downto 0);
	signal credit_counter_out_10:  std_logic_vector (1 downto 0);
	signal credit_out_L_10, credit_in_L_10, valid_in_L_10, valid_out_L_10: std_logic;
	signal RX_L_11, TX_L_11:  std_logic_vector (31 downto 0);
	signal credit_counter_out_11:  std_logic_vector (1 downto 0);
	signal credit_out_L_11, credit_in_L_11, valid_in_L_11, valid_out_L_11: std_logic;
	signal RX_L_12, TX_L_12:  std_logic_vector (31 downto 0);
	signal credit_counter_out_12:  std_logic_vector (1 downto 0);
	signal credit_out_L_12, credit_in_L_12, valid_in_L_12, valid_out_L_12: std_logic;
	signal RX_L_13, TX_L_13:  std_logic_vector (31 downto 0);
	signal credit_counter_out_13:  std_logic_vector (1 downto 0);
	signal credit_out_L_13, credit_in_L_13, valid_in_L_13, valid_out_L_13: std_logic;
	signal RX_L_14, TX_L_14:  std_logic_vector (31 downto 0);
	signal credit_counter_out_14:  std_logic_vector (1 downto 0);
	signal credit_out_L_14, credit_in_L_14, valid_in_L_14, valid_out_L_14: std_logic;
	signal RX_L_15, TX_L_15:  std_logic_vector (31 downto 0);
	signal credit_counter_out_15:  std_logic_vector (1 downto 0);
	signal credit_out_L_15, credit_in_L_15, valid_in_L_15, valid_out_L_15: std_logic;
	signal reserved_address :        std_logic_vector(29 downto 0):= "000000000000000001111111111111";
	signal flag_address :            std_logic_vector(29 downto 0):= "000000000000000010000000000000" ; -- reserved address for the memory mapped I/O
	signal counter_address :         std_logic_vector(29 downto 0):= "000000000000000010000000000001";
	signal reconfiguration_address : std_logic_vector(29 downto 0):= "000000000000000010000000000010";  -- reserved address for reconfiguration register
	signal self_diagnosis_address :  std_logic_vector(29 downto 0):= "000000000000000010000000000011";
	signal irq_out_0, irq_out_1, irq_out_2, irq_out_3, irq_out_4, irq_out_5, irq_out_6, irq_out_7, irq_out_8, irq_out_9, irq_out_10, irq_out_11, irq_out_12, irq_out_13, irq_out_14, irq_out_15: std_logic;
	signal test_0, test_1, test_2, test_3, test_4, test_5, test_6, test_7, test_8, test_9, test_10, test_11, test_12, test_13, test_14, test_15: std_logic_vector(31 downto 0);
	signal enable_0, enable_1, enable_2, enable_3, enable_4, enable_5, enable_6, enable_7, enable_8, enable_9, enable_10, enable_11, enable_12, enable_13, enable_14, enable_15: std_logic;
	signal write_byte_enable_0, write_byte_enable_1, write_byte_enable_2, write_byte_enable_3, write_byte_enable_4, write_byte_enable_5, write_byte_enable_6, write_byte_enable_7, write_byte_enable_8, write_byte_enable_9, write_byte_enable_10, write_byte_enable_11, write_byte_enable_12, write_byte_enable_13, write_byte_enable_14, write_byte_enable_15: std_logic_vector(3 downto 0);
	signal address_0, address_1, address_2, address_3, address_4, address_5, address_6, address_7, address_8, address_9, address_10, address_11, address_12, address_13, address_14, address_15: std_logic_vector(31 downto 2);
	signal data_write_0, data_write_1, data_write_2, data_write_3, data_write_4, data_write_5, data_write_6, data_write_7, data_write_8, data_write_9, data_write_10, data_write_11, data_write_12, data_write_13, data_write_14, data_write_15: std_logic_vector(31 downto 0);
	signal data_read_0, data_read_1, data_read_2, data_read_3, data_read_4, data_read_5, data_read_6, data_read_7, data_read_8, data_read_9, data_read_10, data_read_11, data_read_12, data_read_13, data_read_14, data_read_15: std_logic_vector(31 downto 0);
	--------------
	constant clk_period : time := 10 ns;
	constant NoC_size_x : integer := 4;
	constant NoC_size_y : integer := 4;
	signal reset, not_reset, clk: std_logic :='0';

begin

   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;   
        clk <= '1';
        wait for clk_period/2; 
   end process;

reset <= '1' after 1 ns;
 
NoC: network_4x4 generic map (DATA_WIDTH  => 32)
port map (reset, clk, 
	RX_L_0, credit_out_L_0, valid_out_L_0, credit_in_L_0, valid_in_L_0,  TX_L_0, 
	RX_L_1, credit_out_L_1, valid_out_L_1, credit_in_L_1, valid_in_L_1,  TX_L_1, 
	RX_L_2, credit_out_L_2, valid_out_L_2, credit_in_L_2, valid_in_L_2,  TX_L_2, 
	RX_L_3, credit_out_L_3, valid_out_L_3, credit_in_L_3, valid_in_L_3,  TX_L_3, 
	RX_L_4, credit_out_L_4, valid_out_L_4, credit_in_L_4, valid_in_L_4,  TX_L_4, 
	RX_L_5, credit_out_L_5, valid_out_L_5, credit_in_L_5, valid_in_L_5,  TX_L_5, 
	RX_L_6, credit_out_L_6, valid_out_L_6, credit_in_L_6, valid_in_L_6,  TX_L_6, 
	RX_L_7, credit_out_L_7, valid_out_L_7, credit_in_L_7, valid_in_L_7,  TX_L_7, 
	RX_L_8, credit_out_L_8, valid_out_L_8, credit_in_L_8, valid_in_L_8,  TX_L_8, 
	RX_L_9, credit_out_L_9, valid_out_L_9, credit_in_L_9, valid_in_L_9,  TX_L_9, 
	RX_L_10, credit_out_L_10, valid_out_L_10, credit_in_L_10, valid_in_L_10,  TX_L_10, 
	RX_L_11, credit_out_L_11, valid_out_L_11, credit_in_L_11, valid_in_L_11,  TX_L_11, 
	RX_L_12, credit_out_L_12, valid_out_L_12, credit_in_L_12, valid_in_L_12,  TX_L_12, 
	RX_L_13, credit_out_L_13, valid_out_L_13, credit_in_L_13, valid_in_L_13,  TX_L_13, 
	RX_L_14, credit_out_L_14, valid_out_L_14, credit_in_L_14, valid_in_L_14,  TX_L_14, 
	RX_L_15, credit_out_L_15, valid_out_L_15, credit_in_L_15, valid_in_L_15,  TX_L_15
            ); 
not_reset <= not reset; 

-- connecting the NIs
NI_0: NI 
   generic map(current_x => 0, current_y => 0,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_0, 
        write_byte_enable => write_byte_enable_0, 
        address => address_0, 
        data_write => data_write_0, 
        data_read => data_read_0, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_0, 
        -- signals for sending packets to network
        credit_in => credit_out_L_0, 
        valid_out => valid_in_L_0,
        TX => RX_L_0, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_0, 
        valid_in => valid_out_L_0,
        RX => TX_L_0
  );
NI_1: NI 
   generic map(current_x => 1, current_y => 0,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_1, 
        write_byte_enable => write_byte_enable_1, 
        address => address_1, 
        data_write => data_write_1, 
        data_read => data_read_1, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_1, 
        -- signals for sending packets to network
        credit_in => credit_out_L_1, 
        valid_out => valid_in_L_1,
        TX => RX_L_1, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_1, 
        valid_in => valid_out_L_1,
        RX => TX_L_1
  );
NI_2: NI 
   generic map(current_x => 2, current_y => 0,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_2, 
        write_byte_enable => write_byte_enable_2, 
        address => address_2, 
        data_write => data_write_2, 
        data_read => data_read_2, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_2, 
        -- signals for sending packets to network
        credit_in => credit_out_L_2, 
        valid_out => valid_in_L_2,
        TX => RX_L_2, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_2, 
        valid_in => valid_out_L_2,
        RX => TX_L_2
  );
NI_3: NI 
   generic map(current_x => 3, current_y => 0,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_3, 
        write_byte_enable => write_byte_enable_3, 
        address => address_3, 
        data_write => data_write_3, 
        data_read => data_read_3, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_3, 
        -- signals for sending packets to network
        credit_in => credit_out_L_3, 
        valid_out => valid_in_L_3,
        TX => RX_L_3, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_3, 
        valid_in => valid_out_L_3,
        RX => TX_L_3
  );
NI_4: NI 
   generic map(current_x => 0, current_y => 1,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_4, 
        write_byte_enable => write_byte_enable_4, 
        address => address_4, 
        data_write => data_write_4, 
        data_read => data_read_4, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_4, 
        -- signals for sending packets to network
        credit_in => credit_out_L_4, 
        valid_out => valid_in_L_4,
        TX => RX_L_4, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_4, 
        valid_in => valid_out_L_4,
        RX => TX_L_4
  );
NI_5: NI 
   generic map(current_x => 1, current_y => 1,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_5, 
        write_byte_enable => write_byte_enable_5, 
        address => address_5, 
        data_write => data_write_5, 
        data_read => data_read_5, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_5, 
        -- signals for sending packets to network
        credit_in => credit_out_L_5, 
        valid_out => valid_in_L_5,
        TX => RX_L_5, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_5, 
        valid_in => valid_out_L_5,
        RX => TX_L_5
  );
NI_6: NI 
   generic map(current_x => 2, current_y => 1,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_6, 
        write_byte_enable => write_byte_enable_6, 
        address => address_6, 
        data_write => data_write_6, 
        data_read => data_read_6, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_6, 
        -- signals for sending packets to network
        credit_in => credit_out_L_6, 
        valid_out => valid_in_L_6,
        TX => RX_L_6, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_6, 
        valid_in => valid_out_L_6,
        RX => TX_L_6
  );
NI_7: NI 
   generic map(current_x => 3, current_y => 1,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_7, 
        write_byte_enable => write_byte_enable_7, 
        address => address_7, 
        data_write => data_write_7, 
        data_read => data_read_7, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_7, 
        -- signals for sending packets to network
        credit_in => credit_out_L_7, 
        valid_out => valid_in_L_7,
        TX => RX_L_7, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_7, 
        valid_in => valid_out_L_7,
        RX => TX_L_7
  );
NI_8: NI 
   generic map(current_x => 0, current_y => 2,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_8, 
        write_byte_enable => write_byte_enable_8, 
        address => address_8, 
        data_write => data_write_8, 
        data_read => data_read_8, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_8, 
        -- signals for sending packets to network
        credit_in => credit_out_L_8, 
        valid_out => valid_in_L_8,
        TX => RX_L_8, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_8, 
        valid_in => valid_out_L_8,
        RX => TX_L_8
  );
NI_9: NI 
   generic map(current_x => 1, current_y => 2,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_9, 
        write_byte_enable => write_byte_enable_9, 
        address => address_9, 
        data_write => data_write_9, 
        data_read => data_read_9, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_9, 
        -- signals for sending packets to network
        credit_in => credit_out_L_9, 
        valid_out => valid_in_L_9,
        TX => RX_L_9, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_9, 
        valid_in => valid_out_L_9,
        RX => TX_L_9
  );
NI_10: NI 
   generic map(current_x => 2, current_y => 2,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_10, 
        write_byte_enable => write_byte_enable_10, 
        address => address_10, 
        data_write => data_write_10, 
        data_read => data_read_10, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_10, 
        -- signals for sending packets to network
        credit_in => credit_out_L_10, 
        valid_out => valid_in_L_10,
        TX => RX_L_10, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_10, 
        valid_in => valid_out_L_10,
        RX => TX_L_10
  );
NI_11: NI 
   generic map(current_x => 3, current_y => 2,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_11, 
        write_byte_enable => write_byte_enable_11, 
        address => address_11, 
        data_write => data_write_11, 
        data_read => data_read_11, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_11, 
        -- signals for sending packets to network
        credit_in => credit_out_L_11, 
        valid_out => valid_in_L_11,
        TX => RX_L_11, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_11, 
        valid_in => valid_out_L_11,
        RX => TX_L_11
  );
NI_12: NI 
   generic map(current_x => 0, current_y => 3,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_12, 
        write_byte_enable => write_byte_enable_12, 
        address => address_12, 
        data_write => data_write_12, 
        data_read => data_read_12, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_12, 
        -- signals for sending packets to network
        credit_in => credit_out_L_12, 
        valid_out => valid_in_L_12,
        TX => RX_L_12, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_12, 
        valid_in => valid_out_L_12,
        RX => TX_L_12
  );
NI_13: NI 
   generic map(current_x => 1, current_y => 3,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_13, 
        write_byte_enable => write_byte_enable_13, 
        address => address_13, 
        data_write => data_write_13, 
        data_read => data_read_13, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_13, 
        -- signals for sending packets to network
        credit_in => credit_out_L_13, 
        valid_out => valid_in_L_13,
        TX => RX_L_13, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_13, 
        valid_in => valid_out_L_13,
        RX => TX_L_13
  );
NI_14: NI 
   generic map(current_x => 2, current_y => 3,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_14, 
        write_byte_enable => write_byte_enable_14, 
        address => address_14, 
        data_write => data_write_14, 
        data_read => data_read_14, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_14, 
        -- signals for sending packets to network
        credit_in => credit_out_L_14, 
        valid_out => valid_in_L_14,
        TX => RX_L_14, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_14, 
        valid_in => valid_out_L_14,
        RX => TX_L_14
  );
NI_15: NI 
   generic map(current_x => 3, current_y => 3,
               NI_depth => 1024,
               NI_couter_size => 10
           ) 
   port map(clk => clk , reset => not_reset , enable => enable_15, 
        write_byte_enable => write_byte_enable_15, 
        address => address_15, 
        data_write => data_write_15, 
        data_read => data_read_15, 
        -- interrupt signal: generated evertime a packet is recieved!
        irq_out => irq_out_15, 
        -- signals for sending packets to network
        credit_in => credit_out_L_15, 
        valid_out => valid_in_L_15,
        TX => RX_L_15, -- data sent to the NoC
        -- signals for reciving packets from the network
        credit_out => credit_in_L_15, 
        valid_in => valid_out_L_15,
        RX => TX_L_15
  );


-- connecting the packet generators
NI_control(4,4, 100, 0, 3, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_0, write_byte_enable_0, address_0, data_write_0, data_read_0, test_0); 

NI_control(4,4, 100, 1, 38, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_1, write_byte_enable_1, address_1, data_write_1, data_read_1, test_1); 

NI_control(4,4, 100, 2, 7, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_2, write_byte_enable_2, address_2, data_write_2, data_read_2, test_2); 

NI_control(4,4, 100, 3, 43, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_3, write_byte_enable_3, address_3, data_write_3, data_read_3, test_3); 

NI_control(4,4, 100, 4, 30, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_4, write_byte_enable_4, address_4, data_write_4, data_read_4, test_4); 

NI_control(4,4, 100, 5, 25, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_5, write_byte_enable_5, address_5, data_write_5, data_read_5, test_5); 

NI_control(4,4, 100, 6, 13, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_6, write_byte_enable_6, address_6, data_write_6, data_read_6, test_6); 

NI_control(4,4, 100, 7, 41, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_7, write_byte_enable_7, address_7, data_write_7, data_read_7, test_7); 

NI_control(4,4, 100, 8, 40, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_8, write_byte_enable_8, address_8, data_write_8, data_read_8, test_8); 

NI_control(4,4, 100, 9, 42, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_9, write_byte_enable_9, address_9, data_write_9, data_read_9, test_9); 

NI_control(4,4, 100, 10, 11, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_10, write_byte_enable_10, address_10, data_write_10, data_read_10, test_10); 

NI_control(4,4, 100, 11, 20, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_11, write_byte_enable_11, address_11, data_write_11, data_read_11, test_11); 

NI_control(4,4, 100, 12, 36, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_12, write_byte_enable_12, address_12, data_write_12, data_read_12, test_12); 

NI_control(4,4, 100, 13, 6, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_13, write_byte_enable_13, address_13, data_write_13, data_read_13, test_13); 

NI_control(4,4, 100, 14, 14, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_14, write_byte_enable_14, address_14, data_write_14, data_read_14, test_14); 

NI_control(4,4, 100, 15, 18, 8, 8, 800 ns, clk,
           -- NI configuration
           reserved_address, flag_address, counter_address, reconfiguration_address,
           -- NI signals
           enable_15, write_byte_enable_15, address_15, data_write_15, data_read_15, test_15); 



end;
