library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
use work.components.all;

entity bcd_to_sevenseg is
  Port (  i_clk               :   in    std_logic;
          -- BCD signals
          i_one      :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_ten      :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_hundred  :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_thousand :   in  STD_LOGIC_VECTOR (3 downto 0);   
          --
          i_sign     :   in    std_logic;
          i_ID       :   in    std_logic_vector(1 downto 0);
          o_seg0, o_seg1, o_seg2, o_seg3, o_seg4, o_seg5 : out std_logic_vector(7 downto 0) --seg for segment.     
          );
end bcd_to_sevenseg;

architecture Behavioral of bcd_to_sevenseg is
begin

seg0 : converter_sevenseg port map(i_bcd => i_one, o_seven_segment => o_seg0);
seg1 : converter_sevenseg port map(i_bcd => i_ten, o_seven_segment => o_seg1);
seg2 : converter_sevenseg port map(i_bcd => i_hundred, o_seven_segment => o_seg2);
seg3 : converter_sevenseg port map(i_bcd => i_thousand, o_seven_segment => o_seg3);

sign_process : process(i_sign)
begin
if (i_sign = '1') then
    o_seg4 <= "11111101";
else
    o_seg4 <= "11111111";
end if;
end process;

process(i_id)
begin
case i_id is
when "00" => o_seg5 <= "00000011"; --X
when "01" => o_seg5 <= "10011111"; --Y
when "10" => o_seg5 <= "00100101"; --Z
when "11" => o_seg5 <= "00001101"; --T
when others => o_seg5 <= "11111111";
end case;
end process;

end Behavioral;
