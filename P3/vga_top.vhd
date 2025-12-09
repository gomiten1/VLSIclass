library ieee;
use ieee.std_logic_1164.all;

entity vga_top is
    generic (
        G_BG_R : std_logic_vector(3 downto 0) := x"0";
        G_BG_G : std_logic_vector(3 downto 0) := x"0";
        G_BG_B : std_logic_vector(3 downto 0) := x"1";
        G_FG_R : std_logic_vector(3 downto 0) := x"F";
        G_FG_G : std_logic_vector(3 downto 0) := x"F";
        G_FG_B : std_logic_vector(3 downto 0) := x"0"
    );
    port (
        CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(0 downto 0);
        VGA_HS   : out std_logic;
        VGA_VS   : out std_logic;
        VGA_R    : out std_logic_vector(3 downto 0);
        VGA_G    : out std_logic_vector(3 downto 0);
        VGA_B    : out std_logic_vector(3 downto 0)
    );
end entity vga_top;

architecture structural of vga_top is

    component vga_sync is
        port (
            i_clk_50mhz : in  std_logic;
            i_rst_n     : in  std_logic;
            o_hsync     : out std_logic;
            o_vsync     : out std_logic;
            o_enable    : out std_logic;
            o_pos_x     : out std_logic_vector(9 downto 0);
            o_pos_y     : out std_logic_vector(8 downto 0)
        );
    end component vga_sync;

    component control is
        port (
            i_clk_50mhz : in  std_logic;
            i_rst_n     : in  std_logic;
            i_btn       : in  std_logic;
            o_mode      : out std_logic_vector(1 downto 0)
        );
    end component control;
    
    component pixel_gen is
        generic (
            G_COLOR_BG_R : std_logic_vector(3 downto 0);
            G_COLOR_BG_G : std_logic_vector(3 downto 0);
            G_COLOR_BG_B : std_logic_vector(3 downto 0);
            G_COLOR_FG_R : std_logic_vector(3 downto 0);
            G_COLOR_FG_G : std_logic_vector(3 downto 0);
            G_COLOR_FG_B : std_logic_vector(3 downto 0)
        );
        port (
            i_clk_pixel : in  std_logic;
            i_vsync     : in  std_logic;
            i_enable    : in  std_logic;
            i_pos_x     : in  std_logic_vector(9 downto 0);
            i_pos_y     : in  std_logic_vector(8 downto 0);
            i_mode      : in  std_logic_vector(1 downto 0);
            o_vga_r     : out std_logic_vector(3 downto 0);
            o_vga_g     : out std_logic_vector(3 downto 0);
            o_vga_b     : out std_logic_vector(3 downto 0)
        );
    end component pixel_gen;

    signal s_rst_n       : std_logic;
    signal s_clk_pixel   : std_logic;
    signal s_vsync       : std_logic;
    signal s_enable      : std_logic;
    signal s_pos_x       : std_logic_vector(9 downto 0);
    signal s_pos_y       : std_logic_vector(8 downto 0);
    signal s_mode        : std_logic_vector(1 downto 0);
    signal s_clk_divider : std_logic := '0';

begin

    s_rst_n <= KEY(0);
    
    process(CLOCK_50, s_rst_n)
    begin
        if (s_rst_n = '0') then
            s_clk_divider <= '0';
        elsif rising_edge(CLOCK_50) then
            s_clk_divider <= not s_clk_divider;
        end if;
    end process;
    s_clk_pixel <= s_clk_divider;

    U_SYNC : component vga_sync
        port map (
            i_clk_50mhz => CLOCK_50,
            i_rst_n     => s_rst_n,
            o_hsync     => VGA_HS,
            o_vsync     => s_vsync,
            o_enable    => s_enable,
            o_pos_x     => s_pos_x,
            o_pos_y     => s_pos_y
        );
    VGA_VS <= s_vsync;
        
    U_CTRL : component control
        port map (
            i_clk_50mhz => CLOCK_50,
            i_rst_n     => s_rst_n,
            i_btn       => KEY(0),
            o_mode      => s_mode
        );
        
    U_PIXEL : component pixel_gen
        generic map (
            G_COLOR_BG_R => G_BG_R,
            G_COLOR_BG_G => G_BG_G,
            G_COLOR_BG_B => G_BG_B,
            G_COLOR_FG_R => G_FG_R,
            G_COLOR_FG_G => G_FG_G,
            G_COLOR_FG_B => G_FG_B
        )
        port map (
            i_clk_pixel => s_clk_pixel,
            i_vsync     => s_vsync,
            i_enable    => s_enable,
            i_pos_x     => s_pos_x,
            i_pos_y     => s_pos_y,
            i_mode      => s_mode,
            o_vga_r     => VGA_R,
            o_vga_g     => VGA_G,
            o_vga_b     => VGA_B
        );

end architecture structural;
