library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.components.all;

entity data_transition is
generic( N : integer := 8; TS : integer := 64);
  Port ( i_clk          :   in      std_logic;
         -- user input
         i_mode         :   in      std_logic_vector(3 downto 0);
         i_delay        :   in      std_logic_vector(1 downto 0);
         
         -- start and reset signals
         i_start        :   in      std_logic;  
         i_reset        :   in      std_logic;
         i_reset_x      :   in      std_logic; 
         
         -- NEXYS Constraint
         i_miso         :   in      std_logic;
         --
         o_sclk         :   out     std_logic;
         o_slave_select :  inout     std_logic;
         o_mosi         :   out     std_logic;
         
         -- output to 7 segment decoder
         o_number       :   out std_logic_vector(7 downto 0);
         --
         o_seg_0        :   out std_logic;
         o_seg_1        :   out std_logic;
         o_seg_2        :   out std_logic;
         o_seg_3        :   out std_logic;
         o_seg_4        :   out std_logic;
         o_seg_5        :   out std_logic;
         o_seg_6        :   out std_logic;
         o_seg_7        :   out std_logic
          );
end data_transition;

architecture Behavioral of data_transition is

--64 bit signed data from spi component
signal r_data : std_logic_vector(TS-1 downto 0); 

-- temporary signal i_data_signed <= r_data_x
signal r_data_x          : std_logic_vector(11 downto 0);

-- signal from delay logic -- this signal is sent to select logic
signal w_change_data : std_logic;

--signal from select logic, change data to x, y, z, t
signal r_data_select : std_logic_vector(1 downto 0);

--store temporary data here
signal r_data_t : std_logic_vector(10 downto 0);

--TEMPORARY BCD TO 7 SEGMENT SIGNALS
signal w_negative_sign : std_logic;
signal r_one, r_ten, r_hundred, r_thousand : std_logic_vector(3 downto 0);

-- TEMPORARY DRIVER SEVEN SEGMENTS SIGNALS
signal reg0, reg1, reg2, reg3, reg4, reg5 : std_logic_vector(7 downto 0); 

-- TEMPORARY ANODE SIGNALS
signal w_segment_off_0, w_segment_off_1, w_segment_off_2, w_segment_off_3, w_segment_off_4, w_segment_off_5, w_segment_off_6, w_segment_off_7 : std_logic;
signal r_shape_form : std_logic_vector(7 downto 0);

signal w_update : std_logic;


begin

mode_process : process (w_update, i_mode) -- set sensitivity to prescaler that runs 5 Hz
begin
if (i_mode = "0000") then
    -- show nothing on 7 segment display
    o_number <= "11111111";
    o_seg_0 <= '1';
    o_seg_1 <= '1';
    o_seg_2 <= '1';
    o_seg_3 <= '1';
    o_seg_4 <= '1';
    o_seg_5 <= '1';
    o_seg_6 <= '1';
    o_seg_7 <= '1';
else
    o_number <= r_shape_form;
    o_seg_0 <= w_segment_off_0;
    o_seg_1 <= w_segment_off_1;
    o_seg_2 <= w_segment_off_2;
    o_seg_3 <= w_segment_off_3;
    o_seg_4 <= w_segment_off_4;
    o_seg_5 <= w_segment_off_5;
    o_seg_6 <= w_segment_off_6;
    o_seg_7 <= w_segment_off_7;  
end if;
end process;

data_select_process : process (r_data_select)
begin
 case r_data_select is
    when "00" =>
    -- show x data
    r_data_x <= r_data(TS-5 downto TS-16); -- show 59 downto 48
    
    when "01" =>
    -- show y data
    r_data_x <= r_data(TS-21 downto TS-32); -- show 43 downto 32
    
    when "10" =>
    -- show z data
    r_data_x <= r_data(TS-37 downto TS-48); -- show 27 downto 16
    
    when others =>
    r_data_x <= r_data(TS-53 downto TS-64); -- show 11 downto 0
    
  end case;
end process;
                                        --component    -- wire
spi_component          : spi_master
                         port map       (i_clk          => i_clk,
                                         i_start        => i_start,
                                         i_miso         => i_miso,
                                         --
                                         o_sclk         => o_sclk,
                                         o_slave_select => o_slave_select,
                                         o_mosi         => o_mosi,
                                         o_data         => r_data
                                         );                                                                                                                                    
                                         

delay_logic_component  : delay_logic
                         port map       (i_clk          => i_clk,
                                         i_delay_select => i_delay,
                                         o_delay        => w_change_data
                                         );

select_logic_component : select_logic
                         port map       (i_clk          => i_clk,
                                         i_mode         => i_mode,
                                         i_change_data  => w_change_data,
                                         --
                                         o_out          => r_data_select
                                         );

signed_to_bcd_component :   signed_to_bcd
                            port map  (
                                       i_clk         => i_clk,
                                       i_data_signed => r_data_x,
                                       --
                                       o_one         => r_one,
                                       o_ten         => r_ten,
                                       o_hundred     => r_hundred,
                                       o_thousand    => r_thousand,
                                       o_negative_sign => w_negative_sign        
                                       ); 
                                       
bcd_to_sevenseg_component :           bcd_to_sevenseg
                            port map (i_clk           => i_clk,
                                      i_one           => r_one,
                                      i_ten           => r_ten,
                                      i_hundred       => r_hundred,
                                      i_thousand      => r_thousand,
                                      i_sign          => w_negative_sign,
                                      i_ID            => r_data_select,
                                      --
                                      o_seg0 => reg0,
                                      o_seg1 => reg1,
                                      o_seg2 => reg2,
                                      o_seg3 => reg3,
                                      o_seg4 => reg4,
                                      o_seg5 => reg5                                    
                                      );                                                                               

driver_sevenseg_component : driver_sevenseg
                        port map (clk => i_clk,
                                  one => reg0,
                                  ten => reg1,
                                  hundred => reg2,
                                  thousand => reg3,
                                  sign => reg4,
                                  xyzt => reg5,
                                  --
                                  shape_form    => r_shape_form,
                                  segment_off_0 => w_segment_off_0,
                                  segment_off_1 => w_segment_off_1,
                                  segment_off_2 => w_segment_off_2,
                                  segment_off_3 => w_segment_off_3,
                                  segment_off_4 => w_segment_off_4,
                                  segment_off_5 => w_segment_off_5,
                                  segment_off_6 => w_segment_off_6,
                                  segment_off_7 => w_segment_off_7
                                  );
                                  
data_update_component : data_update
                        port map (i_clk => i_clk,
                                  o_update => w_update
                                  );

end Behavioral;
