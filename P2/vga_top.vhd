library ieee;
use ieee.std_logic_1164.all;

entity vga_top is
    port (
        CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(0 downto 0);
        SW       : in  std_logic_vector(9 downto 0);
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

    component video_gen is
        port (
            i_enable    : in std_logic;
            i_pos_x     : in std_logic_vector(9 downto 0);
            i_pos_y     : in std_logic_vector(8 downto 0);
            i_sr        : in std_logic;
            i_sg        : in std_logic;
            i_sb        : in std_logic;
            i_sc        : in std_logic;
            i_srec      : in std_logic;
            o_vga_r     : out std_logic_vector(3 downto 0);
            o_vga_g     : out std_logic_vector(3 downto 0);
            o_vga_b     : out std_logic_vector(3 downto 0)
        );
    end component video_gen;

    signal s_rst_n     : std_logic;
    signal s_enable    : std_logic;
    signal s_pos_x     : std_logic_vector(9 downto 0);
    signal s_pos_y     : std_logic_vector(8 downto 0);

begin

    s_rst_n <= KEY(0);

    U1_VGA_SYNC : component vga_sync
        port map (
            i_clk_50mhz => CLOCK_50,
            i_rst_n     => s_rst_n,
            o_hsync     => VGA_HS,
            o_vsync     => VGA_VS,
            o_enable    => s_enable,
            o_pos_x     => s_pos_x,
            o_pos_y     => s_pos_y
        );
        
    U2_VIDEO_GEN : component video_gen
        port map (
            i_enable    => s_enable,
            i_pos_x     => s_pos_x,
            i_pos_y     => s_pos_y,
            i_srec      => SW(4), 
            i_sc        => SW(3),
            i_sr        => SW(2),
            i_sg        => SW(1),
            i_sb        => SW(0),
            o_vga_r     => VGA_R,
            o_vga_g     => VGA_G,
            o_vga_b     => VGA_B
        );

end architecture structural;
