library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync is
    port (
        i_clk_25mhz   : in  std_logic;
        i_rst_n       : in  std_logic;
        o_hsync       : out std_logic;
        o_vsync       : out std_logic;
        o_video_on    : out std_logic;
        o_pixel_x     : out std_logic_vector(9 downto 0);
        o_pixel_y     : out std_logic_vector(9 downto 0);
        o_vsync_start : out std_logic
    );
end entity vga_sync;

architecture rtl of vga_sync is
    constant H_DISP : integer := 640;
    constant H_FP   : integer := 16;
    constant H_PW   : integer := 96;
    constant H_BP   : integer := 48;
    constant H_TOTAL: integer := 800;

    constant V_DISP : integer := 480;
    constant V_FP   : integer := 10;
    constant V_PW   : integer := 2;
    constant V_BP   : integer := 33;
    constant V_TOTAL: integer := 525;

    signal r_h_count : integer range 0 to H_TOTAL - 1 := 0;
    signal r_v_count : integer range 0 to V_TOTAL - 1 := 0;

    signal s_vsync_int : std_logic;
    signal s_vsync_prev: std_logic;

begin
    process(i_clk_25mhz, i_rst_n)
    begin
        if i_rst_n = '0' then
            r_h_count <= 0;
            r_v_count <= 0;
            s_vsync_prev <= '0';
            o_vsync_start <= '0';
        elsif rising_edge(i_clk_25mhz) then
            if r_h_count = H_TOTAL - 1 then
                r_h_count <= 0;
                if r_v_count = V_TOTAL - 1 then
                    r_v_count <= 0;
                else
                    r_v_count <= r_v_count + 1;
                end if;
            else
                r_h_count <= r_h_count + 1;
            end if;

            s_vsync_prev <= s_vsync_int;
            if s_vsync_int = '0' and s_vsync_prev = '1' then
                o_vsync_start <= '1';
            else
                o_vsync_start <= '0';
            end if;
        end if;
    end process;

    o_hsync <= '0' when (r_h_count >= H_DISP + H_FP) and (r_h_count < H_DISP + H_FP + H_PW) else '1';

    s_vsync_int <= '0' when (r_v_count >= V_DISP + V_FP) and (r_v_count < V_DISP + V_FP + V_PW) else '1';
    o_vsync <= s_vsync_int;

    o_video_on <= '1' when (r_h_count < H_DISP) and (r_v_count < V_DISP) else '0';

    o_pixel_x <= std_logic_vector(to_unsigned(r_h_count, 10));
    o_pixel_y <= std_logic_vector(to_unsigned(r_v_count, 10));

end architecture rtl;
