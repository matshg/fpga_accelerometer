library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity data_update is
  Port ( i_clk   : in std_logic;
         --
         o_update   : out std_logic
       );
end data_update;

architecture Behavioral of data_update is

signal w_counter   : std_logic_vector (15 downto 0) := (others => '0');

begin
    
counter_process : process (i_clk)
begin
    if (i_clk'event and i_clk = '1') then
        w_counter <= w_counter + 1;
    end if;
end process;

--3.125 MHz clock
counter_compare : process (w_counter)
begin
    if w_counter(15) = '1' then
    o_update <= '1';
    else
    o_update <= '0';
    end if;
end process;
end Behavioral;
