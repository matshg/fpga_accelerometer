----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2018 04:16:07 PM
-- Design Name: 
-- Module Name: DISPLAY_LOGIC - Behavioral
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

entity DISPLAY_LOGIC is
    Port ( MODE_sel : in STD_LOGIC;
           DATA_sel : in STD_LOGIC;
           DATA : out STD_LOGIC);
end DISPLAY_LOGIC;

architecture Behavioral of DISPLAY_LOGIC is

begin


end Behavioral;
