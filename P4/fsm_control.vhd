library ieee;
use ieee.std_logic_1164.all;

entity fsm_control is
    port (
        i_clk         : in  std_logic; 
        i_rst_n       : in  std_logic;
        i_btn_press   : in  std_logic; 
        

        o_noise_en    : out std_logic 
    );
end entity fsm_control;

architecture rtl of fsm_control is
    type t_state is (S_NORMAL, S_RUIDO);
    signal s_state      : t_state := S_NORMAL;
    signal s_btn_prev   : std_logic := '0';
    
begin

 
    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            s_state <= S_NORMAL;
            s_btn_prev <= '0';
        elsif rising_edge(i_clk) then
            
            if i_btn_press = '1' and s_btn_prev = '0' then
                case s_state is
                    when S_NORMAL  => s_state <= S_RUIDO;
                    when S_RUIDO   => s_state <= S_NORMAL;
                end case;
            end if;
            
            s_btn_prev <= i_btn_press; 
        end if;
    end process;

   
    o_noise_en <= '1' when s_state = S_RUIDO else '0';

end architecture rtl;