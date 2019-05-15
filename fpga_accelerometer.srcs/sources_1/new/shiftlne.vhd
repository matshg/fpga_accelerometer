library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shiftlne is
generic ( N : integer := 4);
  Port  ( i_clk             : in std_logic;
          i_tx_register     : in std_logic_vector (N-1 downto 0);
          i_load_shift      : in std_logic;
          i_enable_shift    : in std_logic;
          i_miso_data       : in std_logic;
          --
          io_shift_register  : inout std_logic_vector (N-1 downto 0)
   );
end shiftlne;

architecture Behavioral of shiftlne is

begin
    process (i_clk, i_load_shift)
    begin
        if i_load_shift = '1' then
            io_shift_register <= i_tx_register;
        elsif (i_clk'event and i_clk = '1') then
        if i_enable_shift = '1' then
            io_shift_register(0) <= i_miso_data;
            genbits: for i in 1 to N-1 loop
                io_shift_register(i) <= io_shift_register(i-1);
            end loop;
         end if;
         end if;
end process;


end Behavioral;
