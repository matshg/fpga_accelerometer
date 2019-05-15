library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity prescaler is
  Port ( i_clk   : in std_logic;
         --
         o_sclk   : out std_logic
       );
end prescaler;

architecture Behavioral of prescaler is

signal w_counter   : std_logic_vector (4 downto 0) := (others => '0');

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
    if w_counter(4) = '1' then
    o_sclk <= '1';
    else
    o_sclk <= '0';
    end if;
end process;
            
end Behavioral;
