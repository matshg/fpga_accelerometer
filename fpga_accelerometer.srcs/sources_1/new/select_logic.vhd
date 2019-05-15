library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.components.all;

entity select_logic is
  Port ( i_clk          : in    STD_LOGIC;
         i_mode         : in    STD_LOGIC_VECTOR(3 downto 0);
         i_change_data  : in    std_logic;
         --
         o_out          : out   STD_LOGIC_VECTOR(1 downto 0)
          );
end select_logic;

architecture Behavioral of select_logic is
TYPE State_type IS (S0, S1, S2, S3, S4);
SIGNAL state : State_type;

SIGNAL switch : std_logic := '0';


begin

FSM_transition: PROCESS(i_change_data)
   BEGIN
       state <= s0;
    if rising_edge(i_change_data) THEN
        CASE state IS
           WHEN S0 =>
               if    i_mode(0) = '1' then state <= S1;
               elsif i_mode(1) = '1' then state <= S2;
               elsif i_mode(2) = '1' then state <= S3;
               elsif i_mode(3) = '1' then state <= S4;
               else state <= S0;
               end if;            
           WHEN S1 =>
               if    i_mode(1) = '1' then state <= S2;
               elsif i_mode(2) = '1' then state <= S3;
               elsif i_mode(3) = '1' then state <= S4;
               elsif i_mode(0) = '1' then state <= S1;
               else state <= S0;
               end if;
           WHEN S2 =>
              if    i_mode(2) = '1' then state <= S3;
              elsif i_mode(3) = '1' then state <= S4;
              elsif i_mode(0) = '1' then state <= S1;
              elsif i_mode(1) = '1' then state <= S2;
              else state <= S0;
              end if;
           WHEN S3 =>
              if    i_mode(3) = '1' then state <= S4;
              elsif i_mode(0) = '1' then state <= S1;
              elsif i_mode(1) = '1' then state <= S2;
              elsif i_mode(2) = '1' then state <= S3;
              else state <= S0;
              end if;
           WHEN S4 =>
              if    i_mode(0) = '1' then state <= S1;
              elsif i_mode(1) = '1' then state <= S2;
              elsif i_mode(2) = '1' then state <= S3;
              elsif i_mode(3) = '1' then state <= S4;
              else state <= S0;
              end if;  
           WHEN others =>
                state <= S0;   
        END CASE;
     END IF;
   END PROCESS;

FSM_outPuts: PROCESS(state, i_clk)
   BEGIN
     CASE state IS
        WHEN S0 =>
        WHEN S1 =>
        o_out <= "00";
        WHEN S2 =>
        o_out <= "01";
        WHEN S3 =>
        o_out <= "10";
        WHEN S4 => 
        o_out <= "11";
        when others =>
        o_out <= "00"; 
     END CASE;
   END PROCESS; 
                 
end Behavioral;
