library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity signed_to_bcd is
  GENERIC ( N : INTEGER := 12);
  PORT (i_clk    : in std_logic;
        i_data_signed : in std_logic_vector(N-1 downto 0);
        --
        -- BCD signals
        o_one : out  STD_LOGIC_VECTOR (3 downto 0);
        o_ten : out  STD_LOGIC_VECTOR (3 downto 0);
        o_hundred : out  STD_LOGIC_VECTOR (3 downto 0);
        o_thousand : out  STD_LOGIC_VECTOR (3 downto 0);        
        --
        o_negative_sign   : out std_logic
        ); -- Bypasses the sign from the signed input for later use in the 7-segment decoder.       
end signed_to_bcd;

architecture Behavioral of signed_to_bcd is

-- signal to store the unsiged value i_signed
signal r_unsigned : std_logic_vector(N-1 downto 0);

begin

signed_to_unsigned : process(i_clk)
    begin
    if rising_edge(i_clk) then
        if (i_data_signed(N-1) = '0') then
           r_unsigned <= std_logic_vector(i_data_signed);
        else
            r_unsigned <= std_logic_vector(not i_data_signed + 1);
        end if;
        o_negative_sign <= i_data_signed(N-1);
    end if;
end process;

bcd1: process(r_unsigned)

  -- temp variables
  variable temp : STD_LOGIC_VECTOR (11 downto 0);
  variable bcd : UNSIGNED (15 downto 0) := (others => '0');

  
  begin
    bcd := (others => '0'); --Reset the variable
    
    temp(11 downto 0) := r_unsigned; -- Reads the input into the temp variable
    
    for i in 0 to 11 loop --For loop cycles 12 times.
    
      if bcd(3 downto 0) > 4 then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
      
      if bcd(7 downto 4) > 4 then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
    
      if bcd(11 downto 8) > 4 then  
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
    
      
      bcd := bcd(14 downto 0) & temp(11); -- Left shift the bcd value by one bit and copy our MSB of temp into LSB of the bcd variable.
    
      temp := temp(10 downto 0) & '0'; -- Left shift the temp value by one bit.
    
    end loop;
 
    o_one <= STD_LOGIC_VECTOR(bcd(3 downto 0));
    o_ten <= STD_LOGIC_VECTOR(bcd(7 downto 4));
    o_hundred <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    o_thousand <= STD_LOGIC_VECTOR(bcd(15 downto 12));
  
  end process bcd1;

end Behavioral;

