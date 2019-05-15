----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2018 03:19:20 PM
-- Design Name: 
-- Module Name: tb_delay_logic - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_select_logic is
end tb_select_logic;

architecture Behavioral of tb_select_logic is

component select_logic
    Port ( i_clk  : in STD_LOGIC;
           i_mode : in STD_LOGIC_VECTOR (3 downto 0);
           i_reset  : in std_logic;
           --
           o_out : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal i_clk_tb : std_logic;

signal i_mode_tb: std_logic_vector(3 downto 0);

signal i_reset_tb : std_logic;

signal o_out_tb : std_logic_vector(1 downto 0);


begin
uut: select_logic port map (i_clk => i_clk_tb, i_mode => i_mode_tb, i_reset => i_reset_tb, o_out => o_out_tb);

clock_process : process
begin
    i_clk_tb <= '0';
    wait for 5 ns;
    i_clk_tb <= '1';
    wait for 5 ns;
end process;

stim_process : process
begin
    wait for 10 ns;
    i_reset_tb <= '1';
    wait for 10 ns;
    i_reset_tb <= '0';
    wait for 10 ns;
    i_mode_tb <= "0111";
    wait for 3 us;
    i_mode_tb <= "1100";
    wait for 4 us;  
end process;

end Behavioral;
