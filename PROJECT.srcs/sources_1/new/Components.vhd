----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2018 04:46:56 PM
-- Design Name: 
-- Module Name: Components - Behavioral
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

PACKAGE components IS

COMPONENT UPDOWN_COUNTER
    GENERIC (N : INTEGER := 8);
    Port ( clk :   in      STD_LOGIC;
           reset :  in      STD_LOGIC;
           up_down :   in      STD_LOGIC;
           counter :       inout   STD_LOGIC_VECTOR(N-1 downto 0));
END COMPONENT;

component PRESCALER
    Port ( i_clk    : in std_logic;
           i_reset  : in std_logic;
           i_scaler : in std_logic_vector(3 downto 0);
           o_sclk   : out std_logic
           );
end component;

END components;