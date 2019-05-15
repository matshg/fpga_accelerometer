----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2018 01:23:30 AM
-- Design Name: 
-- Module Name: tb_spi_master - Behavioral
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

entity tb_spi_master is
end tb_spi_master;

architecture Behavioral of tb_spi_master is

component spi_master
--generic (TS : integer := 64);
   Port ( i_clk           :   in      std_logic;
          i_start         :   in      std_logic;
          i_miso          :   in      std_logic;
          i_reset         :   in      std_logic;
          --
          o_slave_select  :   inout     std_logic; -- slave select
          o_mosi          :   out     std_logic;
          o_data         :   out     std_logic_vector (64 downto 0)
      );
end component;

signal i_clk_tb, i_start_tb, i_miso_tb, i_reset_tb : std_logic;
signal o_ss_tb, o_mosi_tb : std_logic;
signal o_data_tb : std_logic_vector (7 downto 0);

begin
uut: spi_master port map (i_clk => i_clk_tb, i_start => i_start_tb, i_miso => i_miso_tb, i_reset => i_reset_tb, o_slave_select => o_ss_tb, o_mosi => o_mosi_tb, o_data => o_data_tb);

i_miso_tb <= o_mosi_tb and (not o_ss_tb);

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

end Behavioral;
