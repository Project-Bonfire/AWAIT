--Copyright (C) 2016 Siavoosh Payandeh Azad

library ieee;
use ieee.std_logic_1164.all;

entity FIFO_credit_based_checkers is
    port (  valid_in  : in  std_logic;
            read_en_N : in  std_logic;
            read_en_E : in  std_logic;
            read_en_W : in  std_logic;
            read_en_S : in  std_logic;
            read_en_L : in  std_logic;
            read_pointer: in std_logic_vector(3 downto 0);
            read_pointer_in: in std_logic_vector(3 downto 0);
            write_pointer: in std_logic_vector(3 downto 0);
            write_pointer_in: in std_logic_vector(3 downto 0);
            full: in std_logic; 
            empty: in std_logic;
            read_en: in std_logic;
            write_en: in std_logic;

            -- FIFO Control Part Checker Outputs
            -- Functional Checkers
            err_full_empty, 
            err_empty_read_en, 
            err_full_write_en, 
            err_read_pointer_in_onehot, 
            err_write_pointer_in_onehot, 

            -- Structural Checkers
            err_read_en_ORed_not_empty_read_en, 
            err_empty_not_read_en, 
            err_all_read_en_zero_not_read_en, 
            err_write_en_write_pointer_update, 
            err_write_en_write_pointer_not_update, 
            err_read_en_not_empty_read_pointer_update, 
            err_read_en_empty_read_pointer_not_update, 
            err_not_read_en_read_pointer_not_update, 
            err_valid_in_not_full_write_en, 
            err_valid_in_full_not_write_en, 
            err_not_valid_in_not_write_en, 
            err_read_pointer_write_pointer_equal_empty, 
            err_read_pointer_write_pointer_not_equal_not_empty, 
            err_write_pointer_after_read_pointer_full, 
            err_write_pointer_not_after_read_pointer_not_full: out std_logic
    );
end FIFO_credit_based_checkers;

architecture behavior of FIFO_credit_based_checkers is

begin
  
  -- Functional Checkers
  -- Empty and full cannot be high at the same time!
  process(full, empty) begin
    if (full = '1' and empty = '1') then
      err_full_empty <= '1';
    else 
      err_full_empty <= '0';
    end if;
  end process;    

  -- Reading from an empty FIFO is not possible!
  process (empty, read_en)
  begin
    if (empty = '1' and read_en = '1') then
      err_empty_read_en <= '1';
    else
      err_empty_read_en <= '0';
    end if;
  end process;

  -- Writing to a full FIFO is not possible!
  process (full, write_en)
  begin
    if (full = '1' and write_en = '1') then
      err_full_write_en <= '1';
    else
      err_full_write_en <= '0';
    end if;
  end process;

  -- Read pointer must always be one-hot! 
  process (read_pointer_in)
  begin
    if (read_pointer_in /= "0001" and read_pointer_in /= "0010" and read_pointer_in /= "0100" and read_pointer_in /= "1000") then
      err_read_pointer_in_onehot <= '1';
    else
      err_read_pointer_in_onehot <= '0';
    end if;
  end process;

  -- Write pointer must always be one-hot!
  process (write_pointer_in)
  begin
    if (write_pointer_in /= "0001" and write_pointer_in /= "0010" and write_pointer_in /= "0100" and write_pointer_in /= "1000") then
      err_write_pointer_in_onehot <= '1';
    else
      err_write_pointer_in_onehot <= '0';
    end if;
  end process;


  -- Structural Checkers
  process(read_en_N, read_en_E, read_en_W, read_en_S, read_en_L, empty, read_en) begin
    if (read_en_N = '1' or read_en_E = '1' or read_en_W = '1' or read_en_S = '1' or read_en_L = '1') and empty = '0' and read_en = '0' then
      err_read_en_ORed_not_empty_read_en <= '1';
    else 
      err_read_en_ORed_not_empty_read_en <= '0';
    end if;
  end process;  

  process(read_en_N, read_en_E, read_en_W, read_en_S, read_en_L, empty, read_en) begin
    if (empty = '1' and read_en = '1') then
      err_empty_not_read_en <= '1';
    else 
      err_empty_not_read_en <= '0';
    end if;
  end process;  

  process(read_en_N, read_en_E, read_en_W, read_en_S, read_en_L, empty, read_en) begin
    if (read_en_N = '0' and read_en_E = '0' and read_en_W = '0' and read_en_S = '0' and read_en_L = '0') and read_en = '1' then
      err_all_read_en_zero_not_read_en <= '1';
    else 
      err_all_read_en_zero_not_read_en <= '0';
    end if;
  end process;  


  -- Checkers
  process(write_en, write_pointer_in, write_pointer) begin
    if (write_en = '1' and write_pointer_in /= write_pointer(2 downto 0)&write_pointer(3)) then
      err_write_en_write_pointer_update <= '1';
    else 
      err_write_en_write_pointer_update <= '0';
    end if;
  end process;

  process(write_en, write_pointer_in, write_pointer) begin
    if (write_en = '0' and write_pointer_in /= write_pointer) then
      err_write_en_write_pointer_not_update <= '1';
    else 
      err_write_en_write_pointer_not_update <= '0';
    end if;
  end process;
  -- Checkers


  -- Checkers
  process(read_en, empty, read_pointer_in, read_pointer) begin
       if (read_en = '1' and empty = '0' and read_pointer_in /= read_pointer(2 downto 0)&read_pointer(3)) then
           err_read_en_not_empty_read_pointer_update <= '1';
       else 
           err_read_en_not_empty_read_pointer_update <= '0';
       end if;
  end process;

  process(read_en, empty, read_pointer_in, read_pointer) begin
       if (read_en = '1' and empty = '1' and read_pointer_in /= read_pointer) then
           err_read_en_empty_read_pointer_not_update <= '1';
       else 
           err_read_en_empty_read_pointer_not_update <= '0';
       end if;
  end process;

  process(read_en, empty, read_pointer_in, read_pointer) begin
       if (read_en = '0' and read_pointer_in /= read_pointer) then
           err_not_read_en_read_pointer_not_update <= '1';
       else 
           err_not_read_en_read_pointer_not_update <= '0';
       end if;
  end process;
  -- Checkers



  -- Checkers
  process(valid_in, full, write_en) begin
     if valid_in = '1' and full ='0' and write_en = '0' then
         err_valid_in_not_full_write_en <= '1';
     else
         err_valid_in_not_full_write_en <= '0';
     end if;        
  end process;

  process(valid_in, full, write_en) begin
     if valid_in = '1' and full ='1' and write_en = '1' then
         err_valid_in_full_not_write_en <= '1';
     else
         err_valid_in_full_not_write_en <= '0';
     end if;        
  end process;

  process(valid_in, full, write_en) begin
     if valid_in = '0' and write_en = '1' then
         err_not_valid_in_not_write_en <= '1';
     else
         err_not_valid_in_not_write_en <= '0';
     end if;        
  end process;
  -- Checkers

                    

  -- Checkers
  process(write_pointer, read_pointer, empty) begin
      if read_pointer = write_pointer and empty = '0' then
        err_read_pointer_write_pointer_equal_empty <= '1';
      else
        err_read_pointer_write_pointer_equal_empty <= '0';
      end if;
  end process;

  process(write_pointer, read_pointer, empty) begin
      if read_pointer /= write_pointer and empty = '1' then
        err_read_pointer_write_pointer_not_equal_not_empty <= '1';
      else
        err_read_pointer_write_pointer_not_equal_not_empty <= '0';
      end if;
  end process;

  process(write_pointer, read_pointer, empty) begin
      if write_pointer = read_pointer(0)&read_pointer(3 downto 1) and full = '0' then
        err_write_pointer_after_read_pointer_full <= '1';
      else
        err_write_pointer_after_read_pointer_full <= '0';
      end if;
  end process;

  process(write_pointer, read_pointer, empty) begin
      if write_pointer /= read_pointer(0)&read_pointer(3 downto 1) and full = '1' then
        err_write_pointer_not_after_read_pointer_not_full <= '1';
      else
        err_write_pointer_not_after_read_pointer_not_full <= '0';
      end if;
  end process;
  -- Checkers

end;
