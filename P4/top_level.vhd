library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        i_clk_50mhz   : in  std_logic;
        i_rst_n       : in  std_logic;
        i_btn_1       : in  std_logic;

        o_vga_hsync   : out std_logic;
        o_vga_vsync   : out std_logic;
        o_vga_blank_n : out std_logic;
        o_vga_clk     : out std_logic;
        o_vga_r       : out std_logic_vector(3 downto 0);
        o_vga_g       : out std_logic_vector(3 downto 0);
        o_vga_b       : out std_logic_vector(3 downto 0);

        o_sdram_addr  : out std_logic_vector(12 downto 0);
        o_sdram_ba    : out std_logic_vector(1 downto 0);
        o_sdram_cas_n : out std_logic;
        o_sdram_cke   : out std_logic;
        o_sdram_cs_n  : out std_logic;
        o_sdram_ras_n : out std_logic;
        o_sdram_we_n  : out std_logic;
        o_sdram_clk   : out std_logic;
        io_sdram_dq   : inout std_logic_vector(15 downto 0)
    );
end entity top_level;

architecture rtl of top_level is

    signal s_clk_vga : std_logic;
    signal s_sdram_address  : std_logic_vector(24 downto 0);
    signal s_sdram_read     : std_logic;
    signal s_sdram_readdata : std_logic_vector(15 downto 0);
    signal s_sdram_readdata_valid : std_logic;

    signal s_sync_video_en : std_logic;
    signal s_sync_pos_x    : std_logic_vector(9 downto 0);
    signal s_sync_pos_y    : std_logic_vector(9 downto 0);
    
    signal s_btn_1_debounced : std_logic;

    signal s_fsm_noise_en : std_logic;

    signal s_reader_r_8b : std_logic_vector(7 downto 0);
    signal s_reader_g_8b : std_logic_vector(7 downto 0);
    signal s_reader_b_8b : std_logic_vector(7 downto 0);
    signal s_reader_video_en : std_logic;

begin

    s_btn_1_debounced <= not i_btn_1;

    U_VGA_SYNC : entity work.vga_sync
        port map (
            i_clk_25mhz => s_clk_vga,
            i_rst_n     => i_rst_n,
            o_hsync     => o_vga_hsync,
            o_vsync     => o_vga_vsync,
            o_enable    => s_sync_video_en,
            o_pos_x     => s_sync_pos_x,
            o_pos_y     => s_sync_pos_y
        );

    U_FSM_CTRL : entity work.fsm_control
        port map (
            i_clk       => s_clk_vga,
            i_rst_n     => i_rst_n,
            i_btn_press => s_btn_1_debounced,
            o_noise_en  => s_fsm_noise_en
        );

    U_IMAGE_READER : entity work.image_reader
        port map (
            i_clk         => s_clk_vga,
            i_rst_n       => i_rst_n,
            i_pos_x       => s_sync_pos_x,
            i_pos_y       => s_sync_pos_y,
            i_video_en    => s_sync_video_en,
            i_sdram_readdata       => s_sdram_readdata,
            i_sdram_readdata_valid => s_sdram_readdata_valid,
            o_sdram_address        => s_sdram_address,
            o_sdram_read           => s_sdram_read,
            o_video_en    => s_reader_video_en,
            o_rgb_r_8bit  => s_reader_r_8b,
            o_rgb_g_8bit  => s_reader_g_8b,
            o_rgb_b_8bit  => s_reader_b_8b
        );

    U_IMG_PROCESSOR : entity work.image_processor
        port map (
            i_clk         => s_clk_vga,
            i_rst_n       => i_rst_n,
            i_noise_en    => s_fsm_noise_en,
            i_rgb_r_8bit  => s_reader_r_8b,
            i_rgb_g_8bit  => s_reader_g_8b,
            i_rgb_b_8bit  => s_reader_b_8b,
            i_video_en    => s_reader_video_en,
            o_vga_r_4bit  => o_vga_r,
            o_vga_g_4bit  => o_vga_g,
            o_vga_b_4bit  => o_vga_b,
            o_vga_blank_n => o_vga_blank_n
        );
		  
    U_QSYS : entity work.sistema_sdram 
        port map (
            clk_in_clk            => i_clk_50mhz,
            reset_in_reset_n      => i_rst_n,
            clk_vga_clk           => s_clk_vga,
            memoria_slave_address => s_sdram_address,
            memoria_slave_read    => s_sdram_read,
            memoria_slave_readdata => s_sdram_readdata,
            memoria_slave_readdata_valid => s_sdram_readdata_valid,
            sdram_pins_addr     => o_sdram_addr,
            sdram_pins_ba       => o_sdram_ba,
            sdram_pins_cas_n    => o_sdram_cas_n,
            sdram_pins_cke      => o_sdram_cke,
            sdram_pins_cs_n     => o_sdram_cs_n,
            sdram_pins_ras_n    => o_sdram_ras_n,
            sdram_pins_we_n     => o_sdram_we_n,
            sdram_pins_clk      => o_sdram_clk,
            sdram_pins_dq       => io_sdram_dq
        );

    o_vga_clk <= s_clk_vga;
    
end architecture rtl;
