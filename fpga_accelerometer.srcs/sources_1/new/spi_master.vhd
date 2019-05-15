library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components.all;

entity spi_master is
generic ( N : integer := 8; TS : integer := 64);
   Port ( i_clk             :   in      std_logic;
          i_start           :   in      std_logic;
          --i_reset           :   in      std_logic;
          i_miso            :   in      std_logic;
          --
          o_sclk            :   out     std_logic; -- slave clock
          o_slave_select    :  inout    std_logic; -- slave select
          o_mosi            :   out     std_logic;
          --
          o_data            :   out     std_logic_vector (TS-1 downto 0)
         );
end spi_master;

architecture Behavioral of spi_master is

-- constants
constant c_read  : std_logic_vector (7 downto 0) := "00001011"; -- ADXL362 read command
constant c_x_adr : std_logic_vector (7 downto 0) := "00001110"; -- ADXL362 x address
constant c_id_adr : std_logic_vector (7 downto 0) := "00000000"; --ADXL362 Device ID adress

-- internal signals
signal w_done       :   std_logic   :=  '0'; -- signal used when data register is loaded.

signal r_tx_register      :   std_logic_vector (TS-1 downto 0);
signal r_s_register       :   std_logic_vector (TS-1 downto 0); -- shift left register
signal r_data_register    :   std_logic_vector (TS-1 downto 0); -- crossed data register

signal w_start          :   std_logic :=  '0'; -- w_start <= i_start

signal w_finish_counting :   std_logic :=  '0';
signal w_reset_counter   :   std_logic :=  '0';
signal w_load_shift      :   std_logic :=  '0';
signal w_enable_shift    :   std_logic :=  '0';

signal w_miso_data       :   std_logic :=  '0';

-- COMPONENT signals
-- prescaler
signal sclk : std_logic;

signal w_gated_sclk : std_logic;
-- counter
signal co_counter       :   std_logic_vector (N-1 downto 0);

-- FSM
type state_type is (S0, S1, S2, S3, S4, S5, S6, S7);
signal state :   state_type;

begin

fsm_transition : process (i_clk)
begin
    state <= S0;
    if (i_clk'event and i_clk = '1') then
        case state is
            when S0 =>
                state <= S1;
            when S1 =>
                if w_start = '1' then
                state <= S2;
                else
                state <= S1;
                end if;
            when S2 =>
                state <= S3;
            when S3 =>
                state <= S4;
            when S4 =>
                if w_finish_counting = '1' then
                state <= S5;
                else
                state <= S4;
                end if;
            when S5 =>
                state <= S6;
            when S6 =>
                state <= S7;
            when S7 =>
                state <= S1;    
            when others =>
                state <= S1;        
end case;
end if;
end process;

fsm_output : process(state, sclk)
begin
    o_slave_select <= '1';
    w_enable_shift <= '0';
    w_done <= '0';
    w_reset_counter <= '0';
    w_load_shift <= '0';
    --w_reset_prescaler <= '1';
    case state is
        when S0 =>
        when S1 =>
        when S2 =>
            w_load_shift    <= '1'; --shift signal - shift_register <= tx_register
            w_reset_counter <= '1'; -- 
        when S3 =>
            o_slave_select  <= '0';
        when S4 =>
            --w_reset_prescaler <= '0';
            o_slave_select  <= '0';
            w_enable_shift  <= '1'; -- shift signal - shift_register(0) <= miso_data
        when S5 =>
            o_slave_select  <= '0';
            w_enable_shift  <= '1';
        when S6 =>
            o_slave_select  <= '1';
            w_enable_shift  <= '0';
        when S7 =>
            w_done          <= '1';     
        when others =>
   end case;
end process;

counter_compare : process (co_counter)
begin
if co_counter = x"50" then -- when counter is x"17" (23) -- when counter is x"4f"(79) then w_finish_counting is 1
w_finish_counting <= '1';
else
w_finish_counting <= '0';
end if;
end process;

MISO_sample : process (sclk)
    begin
    if sclk'event and sclk = '1' then
    w_miso_data <= i_miso;
    end if;
end process;

gated_sclk : process (i_clk)
begin
    if i_clk'event and i_clk = '1' then
     if o_slave_select = '0' then
     w_gated_sclk <= sclk;
     end if;
     end if;
end process;
        
prescaler_component : prescaler 
                      port map     (i_clk    => i_clk,             -- check
                                    --
                                    o_sclk   => sclk            -- check
                                    );
                                    
counter_component :   counter
                      port map  (i_clk           => w_gated_sclk,          -- check
                                 i_reset_counter  => w_reset_counter,   -- reset counter when load counter is high, state 2 -- check
                                 --
                                 o_counter      => co_counter        -- check
                                );

shiftlne_component :  shiftlne generic map(N => TS)
                      port map  (i_clk             => w_gated_sclk,          -- check
                                 i_tx_register     => r_tx_register,    -- check
                                 i_load_shift      => w_load_shift,     -- check
                                 i_enable_shift    => w_enable_shift ,  -- check
                                 i_miso_data       => w_miso_data,      -- check
                                 --
                                 io_shift_register => r_s_register      -- check
                                );
                                            

-- set the 1st byte of tx to read instruction
r_tx_register (TS-1 downto TS-8) <= c_read;

-- set the 2nd byte of tx to x address
--r_tx_register (TS-9 downto TS-16) <= c_x_adr;
r_tx_register (TS-9 downto TS-16) <= c_x_adr;

-- set the remaining bytes to 0
r_tx_register (TS-17 downto 0) <= (others => '0');

-- set our MOSI to MSB on r_s_register -> send signal to slave
-- does o_mosi load with 100MHz?? Do we need a seperate process for this with sclk sensitivity??
o_mosi <= r_s_register(TS-1);

-- DATA STORAGE

-- flip X_L and X_H data
r_data_register(TS-9 downto TS-16) <= r_s_register(TS-1 downto TS-8);
r_data_register(TS-1 downto TS-8) <= r_s_register(TS-9 downto TS-16);

-- flip Y_L and Y_H data
r_data_register(TS-25 downto TS-32) <= r_s_register(TS-17 downto TS-24);
r_data_register(TS-17 downto TS-24) <= r_s_register(TS-25 downto TS-32);

-- flip Z_L and Z_H data
r_data_register(TS-41 downto TS-48) <= r_s_register(TS-33 downto TS-40);
r_data_register(TS-33 downto TS-40) <= r_s_register(TS-41 downto TS-48);

-- flip T_L and T_H data
r_data_register(TS-57 downto TS-64) <= r_s_register(TS-49 downto TS-56);
r_data_register(TS-49 downto TS-56) <= r_s_register(TS-57 downto TS-64);

process_data : process (w_done)
begin
if w_done = '1' then
--o_data <= r_data_register;
o_data <= r_data_register(TS-1 downto TS-64);
--o_datax <= r_s_register(TS-1 downto TS-16);
end if;
end process;

-- set the input reset signal in entity to the wire reset
--w_reset <= i_reset;
w_start <= i_start;
--sclk from prescaler is set to the output sclk in entity
o_sclk <= sclk;

end Behavioral;
