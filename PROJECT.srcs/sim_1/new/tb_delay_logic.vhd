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

entity tb_delay_logic is
end tb_delay_logic;

architecture Behavioral of tb_delay_logic is

component delay_logic
    Port ( i_clk : in STD_LOGIC;
           i_mode : in STD_LOGIC_VECTOR (1 downto 0);
           o_led : out STD_LOGIC);
end component;

signal i_clk, o_led: std_logic;
signal i_mode: std_logic_vector(1 downto 0);

begin
dut: delay_logic port map (i_clk => i_clk, o_led => o_led, i_mode => i_mode);

clock_process : process
begin
    i_clk <= not i_clk;
    wait for 5 ns;
end process;

stim_process : process
begin
    i_mode <= "00";
    wait for 10 us;
    i_mode <= "01";
    wait for 10 us;
end process;

end Behavioral;
