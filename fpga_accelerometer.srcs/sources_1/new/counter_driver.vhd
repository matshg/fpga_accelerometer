library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_driver is
generic( N : integer := 18);
  Port ( i_clk            : in std_logic;
         i_reset_counter   : in std_logic;
         --
         o_counter       : out std_logic_vector (N-1 downto 0)
        );
end counter_driver;

architecture Behavioral of counter_driver is

signal w_counter : std_logic_vector(N-1 downto 0);

begin
process (i_clk, i_reset_counter)
begin
    if i_reset_counter = '1' then
        w_counter <= (others => '0');
    elsif (i_clk'event and i_clk = '1') then
        w_counter <= w_counter + 1;
    end if;
end process;

o_counter <= w_counter;

end Behavioral;
