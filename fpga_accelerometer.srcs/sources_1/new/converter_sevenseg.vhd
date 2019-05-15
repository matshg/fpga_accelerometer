library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity converter_sevenseg is
Port (i_bcd : in STD_LOGIC_VECTOR(3 downto 0);
      o_seven_segment : out STD_LOGIC_VECTOR(7 downto 0)
      );

end converter_sevenseg;

architecture Behavioral of converter_sevenseg is

begin

convert_process : process(i_bcd)
begin
case i_bcd is
when "0000" => o_Seven_segment <= "00000011"; --0
when "0001" => o_Seven_segment <= "10011111"; --1
when "0010" => o_Seven_segment <= "00100101"; --2
when "0011" => o_Seven_segment <= "00001101"; --3
when "0100" => o_Seven_segment <= "10011001"; --4
when "0101" => o_Seven_segment <= "01001001"; --5
when "0110" => o_Seven_segment <= "01000001"; --6
when "0111" => o_Seven_segment <= "00011111"; --7
when "1000" => o_Seven_segment <= "00000001"; --8
when "1001" => o_Seven_segment <= "00001001"; --9
when others => o_Seven_segment <= "11111111"; --null
end case;
end process;


end Behavioral;
