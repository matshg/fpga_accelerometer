library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity delay_logic is
    Port ( i_clk          : in STD_LOGIC;
           i_delay_select : in STD_LOGIC_VECTOR (1 downto 0);
           o_delay        : out STD_LOGIC);
end delay_logic;

architecture Behavioral of delay_logic is

    signal counter_x : std_logic_vector(31 downto 0);  

begin      

p_count : process (i_clk) is
begin
    if rising_edge(i_clk) then
       counter_x <= counter_x + 1;     
     end if;
end process p_count;



with i_delay_select select
    o_delay <=
              counter_x(26) when "00", --1.49 Hz
              counter_x(27) when "01", --0.74 Hz
              counter_x(28) when "10", --0.37 Hz
              counter_x(29) when others; --0.18 Hz                    

end Behavioral;
