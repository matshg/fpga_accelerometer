----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2018 03:23:01 PM
-- Design Name: 
-- Module Name: delay_logic - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity delay_logic is
    GENERIC (N : INTEGER := 3); 
    Port ( i_clk : in STD_LOGIC;
           i_mode : in STD_LOGIC_VECTOR (1 downto 0);
           o_led : out STD_LOGIC);
end delay_logic;

architecture Behavioral of delay_logic is

    -- Constants to create the frequencies needed:
    -- Formula is: (100 MHz / 1) = 1 sec
    --constant c_CNT_1SEC  : natural := 100000000; -- 1 sec
    constant c_CNT_1SEC  : natural := 1000; -- 1 sec
    constant c_CNT_2SEC  : natural := 2000;
    constant c_CNT_4SEC  : natural := 4000;
    constant c_CNT_8SEC  : natural := 8000;
    
    -- 1 sec counter
    signal r_CNT_1SEC    : natural range 0 to c_CNT_1sec;
    signal r_CNT_2SEC    : natural range 0 to c_CNT_2sec;
    signal r_CNT_4SEC    : natural range 0 to c_CNT_4sec;
    signal r_CNT_8SEC    : natural range 0 to c_CNT_8sec;
    
    -- Toggle signals
    signal r_TOGGLE_1SEC : std_logic := '0';
    signal r_TOGGLE_2SEC : std_logic := '0';
    signal r_TOGGLE_4SEC : std_logic := '0';
    signal r_TOGGLE_8SEC : std_logic := '0';
    
    -- one bit select wire
    signal w_LED : std_logic;
    
begin
    
-- count to 100,000,000 and add 1 to counter when reached this value
p_1SEC : process (i_clk) is
begin
    if rising_edge(i_clk) then
        if r_CNT_1SEC   = c_CNT_1SEC - 1 then
           r_TOGGLE_1SEC <= not r_TOGGLE_1SEC;
           r_CNT_1SEC  <= 0;
        else
            r_CNT_1SEC <= r_CNT_1SEC + 1;
        end if;
      end if;
 end process p_1SEC;
 
 p_2SEC : process (i_clk) is
 begin
     if rising_edge(i_clk) then
         if r_CNT_2SEC   = c_CNT_2SEC - 1 then
            r_TOGGLE_2SEC <= not r_TOGGLE_2SEC;
            r_CNT_2SEC  <= 0;
         else
             r_CNT_2SEC <= r_CNT_2SEC + 1;
         end if;
       end if;
  end process p_2SEC;
  
  p_4SEC : process (i_clk) is
  begin
      if rising_edge(i_clk) then
          if r_CNT_4SEC   = c_CNT_4SEC - 1 then
             r_TOGGLE_4SEC <= not r_TOGGLE_4SEC;
             r_CNT_4SEC  <= 0;
          else
              r_CNT_4SEC <= r_CNT_4SEC + 1;
          end if;
        end if;
   end process p_4SEC;
   
   p_8SEC : process (i_clk) is
   begin
       if rising_edge(i_clk) then
           if r_CNT_8SEC   = c_CNT_8SEC - 1 then
              r_TOGGLE_8SEC <= not r_TOGGLE_8SEC;
              r_CNT_8SEC  <= 0;
           else
               r_CNT_8SEC <= r_CNT_8SEC + 1;
           end if;
         end if;
    end process p_8SEC;



w_LED <= r_TOGGLE_1SEC when (i_mode = "00") else
         r_TOGGLE_2SEC when (i_mode = "01") else
         r_TOGGLE_4SEC when (i_mode = "10") else
         r_TOGGLE_8SEC;
         
o_led <= w_LED;

end Behavioral;
