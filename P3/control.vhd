library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
    port (
        i_clk_50mhz : in  std_logic;
        i_rst_n     : in  std_logic;
        i_btn       : in  std_logic;
        o_mode      : out std_logic_vector(1 downto 0)
    );
end entity control;

architecture rtl of control is

    constant C_DEBOUNCE_LIMIT : integer := 1_000_000;
    signal s_debounce_cnt : integer range 0 to C_DEBOUNCE_LIMIT := 0;
    signal s_btn_delayed  : std_logic := '1';
    signal s_btn_edge     : std_logic := '0';
    signal s_mode : std_logic_vector(1 downto 0) := "00";
	 
begin

    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_debounce_cnt <= 0;
            s_btn_delayed  <= '1';
            s_btn_edge     <= '0';
        elsif rising_edge(i_clk_50mhz) then
            s_btn_edge <= '0';
            if (i_btn = s_btn_delayed) then
                s_debounce_cnt <= 0;
            else
                if (s_debounce_cnt = C_DEBOUNCE_LIMIT) then
                    s_btn_delayed <= not s_btn_delayed;
                    s_debounce_cnt <= 0;
                    if (s_btn_delayed = '0') then
                        s_btn_edge <= '1';
                    end if;
                else
                    s_debounce_cnt <= s_debounce_cnt + 1;
                end if;
            end if;
        end if;
    end process;

    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_mode <= "00";
        elsif rising_edge(i_clk_50mhz) then
            if (s_btn_edge = '1') then
                s_mode <= std_logic_vector(unsigned(s_mode) + 1);
            end if;
        end if;
    end process;
	 
	 o_mode <= s_mode;

end architecture rtl;
