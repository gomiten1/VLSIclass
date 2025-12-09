library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_control is
    port (
        i_clk       : in  std_logic;
        i_rst_n     : in  std_logic;
        i_btn       : in  std_logic;
        o_noise_en  : out std_logic;
        o_histo_ch  : out std_logic_vector(1 downto 0)
    );
end entity fsm_control;

architecture rtl of fsm_control is
    type t_state is (NORMAL, NOISE, HIST_R, HIST_G, HIST_B);
    signal state : t_state := NORMAL;
    signal cnt_debounce : integer range 0 to 500000 := 0;
    signal btn_stable   : std_logic := '1';
    signal btn_prev     : std_logic := '1';
begin
    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            cnt_debounce <= 0;
            btn_stable <= '1';
        elsif rising_edge(i_clk) then
            if i_btn /= btn_stable then
                if cnt_debounce = 500000 then
                    btn_stable <= i_btn;
                    cnt_debounce <= 0;
                else
                    cnt_debounce <= cnt_debounce + 1;
                end if;
            else
                cnt_debounce <= 0;
            end if;
        end if;
    end process;

    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            state <= NORMAL;
            btn_prev <= '1';
        elsif rising_edge(i_clk) then
            if btn_stable = '0' and btn_prev = '1' then
                case state is
                    when NORMAL => state <= NOISE;
                    when NOISE  => state <= HIST_R;
                    when HIST_R => state <= HIST_G;
                    when HIST_G => state <= HIST_B;
                    when HIST_B => state <= NORMAL;
                end case;
            end if;
            btn_prev <= btn_stable;
        end if;
    end process;

    process(state)
    begin
        o_noise_en <= '0';
        o_histo_ch <= "00";
        case state is
            when NORMAL => null;
            when NOISE  => o_noise_en <= '1';
            when HIST_R => o_noise_en <= '1'; o_histo_ch <= "01";
            when HIST_G => o_noise_en <= '1'; o_histo_ch <= "10";
            when HIST_B => o_noise_en <= '1'; o_histo_ch <= "11";
        end case;
    end process;
end architecture rtl;
