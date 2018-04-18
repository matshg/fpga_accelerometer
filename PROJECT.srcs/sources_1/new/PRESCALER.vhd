----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2018 03:58:00 PM
-- Design Name: 
-- Module Name: PRESCALER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prescaler is
    Port ( i_clk : in STD_LOGIC;
           i_reset : in STD_LOGIC;
           i_scaler : in STD_LOGIC_VECTOR (3 downto 0);
           o_sclk : out STD_LOGIC);
end prescaler;

architecture Behavioral of prescaler is
signal w_counter : std_logic_vector (9 downto 0);

begin
process(i_clk)
begin
 if rising_edge(i_clk) then
    if (i_reset = '1') then
        w_counter <= x"0";
    else
       w_counter <= w_counter + 1;
    end if;
 end if;
end process;

with i_scaler select
    o_sclk <= i_clk         when x"0",   -- when i_scaler is 0, set o_sclk to i_clk -- 100MHz
             w_counter(0)   when x"1",   -- when i_scaler is 1, set w_counter: "0000000000" -- 50 MHz
             w_counter(1)   when x"2",   -- "0000000001" -- 25 MHz
             w_counter(2)   when x"3",   -- "0000000010" -- 12.5 MHz
             w_counter(3)   when x"4",   -- "0000000100" -- 6.25 MHz
             w_counter(4)   when x"5",   -- "0000001000" -- 3.125 MHz
             w_counter(5)   when x"6",   -- "0000010000" -- 1.5625 MHz
             w_counter(6)   when x"7",   -- "0000100000" -- 781.25 KHz
             w_counter(7)   when x"8",   -- "0001000000" -- 390.625 KHz
             w_counter(8)   when others; -- "0010000000"

end Behavioral;
