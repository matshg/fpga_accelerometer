----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2018 03:57:15 PM
-- Design Name: 
-- Module Name: SPI_MASTER - Behavioral
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

entity SPI_MASTER is
    Port ( START : in STD_LOGIC;
           STARTED : in STD_LOGIC;
           DONE : in STD_LOGIC;
           MOSI : out STD_LOGIC;
           MISO : in STD_LOGIC;
           SS : in STD_LOGIC;
           SCLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           SPI_SCLK_sel : in STD_LOGIC);
end SPI_MASTER;

architecture Behavioral of SPI_MASTER is

begin

Counter_n: upDownCounter
           PORT MAP();


end Behavioral;
