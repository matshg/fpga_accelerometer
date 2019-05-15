library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;
use work.components.all;

entity driver_sevenseg is
Port ( clk : in  STD_LOGIC;
       one : in STD_LOGIC_VECTOR (7 downto 0):="00000011";--0
       ten : in STD_LOGIC_VECTOR (7 downto 0):="10011111";--1
       hundred : in STD_LOGIC_VECTOR (7 downto 0):="00100101";--2
       thousand : in STD_LOGIC_VECTOR (7 downto 0):="00001101";--3
       sign : in STD_LOGIC_VECTOR (7 downto 0):="10011001";--4
       xyzt : in STD_LOGIC_VECTOR (7 downto 0):="01001001";--5
        --
          shape_form      : out STD_LOGIC_VECTOR (7 downto 0);
          segment_off_0   : out STD_LOGIC;--anode siffer 0
          segment_off_1   : out STD_LOGIC;--anode siffer 1                       
          segment_off_2   : out STD_LOGIC;--anode siffer 2
          segment_off_3   : out STD_LOGIC;--anode siffer 3
          segment_off_4   : out STD_LOGIC;--anode siffer 4
          segment_off_5   : out STD_LOGIC;--anode siffer 5
          segment_off_6   : out STD_LOGIC;--anode siffer 6
          segment_off_7   : out STD_LOGIC);--anode siffer 7
end driver_sevenseg;

architecture Behavioral of driver_sevenseg is

signal counter   : STD_LOGIC_VECTOR(17 downto 0);
signal output    : std_logic_vector(3 downto 0);
signal reset_counter : std_logic := '0';


begin

counter_process : process(clk)
begin
if rising_edge(clk) then
if counter = x"0" then
if output = x"6" then
   output <= x"0";
else
   output <= output + 1;
end if;
end if;
end if;
end process;     

DATA_OUT_PROCESS: process(clk)
begin
segment_off_0        <= '1';
segment_off_1        <= '1';
segment_off_2        <= '1';
segment_off_3        <= '1';
segment_off_4        <= '1';
segment_off_5        <= '1';

--use with select
if      output = 1 then 
shape_form <= one;
segment_off_0 <= '0';
elsif   output = 2 then 
shape_form <= hundred;
segment_off_2 <= '0';
elsif   output = 3 then 
shape_form <= sign;
segment_off_4 <= '0';
elsif   output = 4 then 
shape_form <= ten;
segment_off_1 <= '0';
elsif   output = 5 then 
shape_form <= thousand;
segment_off_3 <= '0';
elsif   output = 6 then 
shape_form <= xyzt;
segment_off_5 <= '0';
end if;
end process;

segment_off_6 <= '1';
segment_off_7 <= '1';

output_component :   counter_driver
                     port map  (i_clk           => clk,          
                                i_reset_counter  => reset_counter, 
                                --
                                o_counter      => counter       
                                );

end Behavioral;
