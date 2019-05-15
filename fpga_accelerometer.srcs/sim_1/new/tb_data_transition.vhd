----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2018 18:11:27
-- Design Name: 
-- Module Name: tb_data_transition - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tb_data_transition is
--  Port ( );
end tb_data_transition;

architecture Behavioral of tb_data_transition is

component data_transition
  Port ( i_clk          :   in      std_logic;
         -- user input
         i_mode         :   in      std_logic_vector(3 downto 0);
         i_delay        :   in      std_logic_vector(1 downto 0);
         
         -- start and reset signals
         i_start        :   in      std_logic;  
         i_reset        :   in      std_logic; 
         
         -- NEXYS Constraint
         i_miso         :   in      std_logic;
         --
         o_sclk         :   out     std_logic;
         o_slave_select :  inout     std_logic;
         o_mosi         :   out     std_logic;
         
         -- output to 7 segment decoder
         --o_data         :   out     std_logic_vector(15 downto 0);
         o_data_t         :   out     std_logic_vector(10 downto 0);
         o_data_sign    :   out     std_logic_vector(1 downto 0)
          );
end component;

signal i_clk_tb, i_start_tb, i_reset_tb, i_miso_tb : std_logic;
signal i_mode_tb : std_logic_vector(3 downto 0);
signal i_delay_tb : std_logic_vector(1 downto 0);

signal o_sclk_tb, o_slave_select_tb, o_mosi_tb : std_logic;

signal o_data_tb : std_logic_vector(10 downto 0);
signal o_data_sign_tb : std_logic_vector(1 downto 0);

begin

uut: data_transition
     port map (i_clk            => i_clk_tb,
               i_start          => i_start_tb,
               i_reset          => i_reset_tb,
               i_miso           => i_miso_tb,
               
               --
               
               i_mode           => i_mode_tb,
               i_delay          => i_delay_tb,
               
               --
               
               o_sclk           => o_sclk_tb,
               o_slave_select   => o_slave_select_tb,
               o_mosi           => o_mosi_tb,
               
               --
               
               o_data_t           => o_data_tb,
               o_data_sign      => o_data_sign_tb
              );
              
i_miso_tb <= o_mosi_tb and (not o_slave_select_tb);  

clock_process : process
begin
    i_clk_tb <= '1';
    wait for 5 ns;
    i_clk_tb <= '0';
    wait for 5 ns;
end process;

stim_process : process
begin
    i_reset_tb <= '1';
    wait for 10 ns;
    i_reset_tb <= '0';
    wait for 10 ns;
    i_start_tb <= '1';
    wait;
end process;

select_process : process
begin
    wait for 20 ns;
    i_mode_tb <= "0011";
    i_delay_tb <= "11";
    wait for 20 us;
end process;

end Behavioral;
