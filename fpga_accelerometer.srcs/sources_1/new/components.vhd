library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package components is

-- START
--- DATA TRANSITION COMPONENTS
component spi_master
generic ( N : integer := 8; TS : integer := 64);
   Port ( i_clk             :   in      std_logic;
          i_start           :   in      std_logic;
          --i_reset           :   in      std_logic;
          i_miso            :   in      std_logic;
          --
          o_sclk            :   out     std_logic; -- slave clock
          o_slave_select    :  inout     std_logic; -- slave select
          o_mosi            :   out     std_logic;
          --
          o_data            :   out     std_logic_vector (TS-1 downto 0)
         );
end component;

component select_logic is
  Port ( i_clk         : in    STD_LOGIC;
         i_mode        : in    STD_LOGIC_VECTOR(3 downto 0);
         --i_reset       : in    std_logic;
         i_change_data : in    std_logic;
         --
         o_out         : out   STD_LOGIC_VECTOR(1 downto 0)
        );
end component; 

component bcd_to_sevenseg is
  Port (  i_clk               :   in    std_logic;
          -- BCD signals
          i_one      :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_ten      :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_hundred  :   in  STD_LOGIC_VECTOR (3 downto 0);
          i_thousand :   in  STD_LOGIC_VECTOR (3 downto 0);
          --
          i_sign         :   in    std_logic;
          i_ID           :   in    std_logic_vector(1 downto 0);
          --
          o_seg0, o_seg1, o_seg2, o_seg3, o_seg4, o_seg5 : out std_logic_vector(7 downto 0) --seg for segment.        
          );
end component;

COMPONENT signed_to_bcd IS
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
      );
END COMPONENT;



--- DATA TRANSITION COMPONENTS
-- END   

-- START
-- SELECT LOGIC COMPONENTS
-- delay logic is used in select logic
component delay_logic
    Port ( i_clk            : in STD_LOGIC;
           i_delay_select   : in STD_LOGIC_VECTOR (1 downto 0);
           --
           o_delay          : out STD_LOGIC
           );
end component;
-- SELECT LOGIC COMPONENTS
-- END



-- START
-- SPI MASTER COMPONENTS

-- prescaler
component prescaler
    Port ( i_clk    : in STD_LOGIC;
           --
           o_sclk   : out STD_LOGIC
           );
end component;

-- slave shift
component shiftlne
generic ( N : integer := 4);
  Port ( i_clk             : in std_logic;
        i_tx_register      : in std_logic_vector (N-1 downto 0);
        i_load_shift       : in std_logic;
        i_enable_shift     : in std_logic;
        i_miso_data        : in std_logic;
        --
        io_shift_register  : inout std_logic_vector (N-1 downto 0)
       );
end component;

-- counter
component counter
generic( N : integer := 8);
  Port ( i_clk             : in std_logic;
         i_reset_counter   : in std_logic;
         --
         o_counter         : out std_logic_vector (N-1 downto 0)
        );
end component;

-- SPI MASTER COMPONENTS
-- END

-- BCD TO SEVEN SEGMENT COMPONENTS
component converter_sevenseg
Port (i_bcd : in STD_LOGIC_VECTOR(3 downto 0);
      o_seven_segment : out STD_LOGIC_VECTOR(7 downto 0)
      );
end component;

-- driver_sevenseg COMPONENT
component driver_sevenseg
Port ( clk : in  STD_LOGIC;
        one : in STD_LOGIC_VECTOR (7 downto 0):="00000011";--0
        ten : in STD_LOGIC_VECTOR (7 downto 0):="10011111";--1
        hundred : in STD_LOGIC_VECTOR (7 downto 0):="00100101";--2
        thousand : in STD_LOGIC_VECTOR (7 downto 0):="00001101";--3
        sign : in STD_LOGIC_VECTOR (7 downto 0):="10011001";--4
        xyzt : in STD_LOGIC_VECTOR (7 downto 0):="01001001";--5
        --
        shape_form :      out STD_LOGIC_VECTOR (7 downto 0);
        segment_off_0   : out STD_LOGIC;--anode siffer 0
        segment_off_1   : out STD_LOGIC;--anode siffer 1                       
        segment_off_2   : out STD_LOGIC;--anode siffer 2
        segment_off_3   : out STD_LOGIC;--anode siffer 3
        segment_off_4   : out STD_LOGIC;--anode siffer 4
        segment_off_5   : out STD_LOGIC;--anode siffer 5
        segment_off_6   : out STD_LOGIC;--anode siffer 6
        segment_off_7   : out STD_LOGIC);--anode siffer 7
end component;

--DATA UPDATE
component data_update
  Port ( i_clk   : in std_logic;
       --
       o_update   : out std_logic
     );
end component;

-- COUNTER DRIVER
component counter_driver
generic( N : integer := 18);
  Port ( i_clk            : in std_logic;
       i_reset_counter   : in std_logic;
       --
       o_counter       : out std_logic_vector (N-1 downto 0)
      );
end component;



end components;

