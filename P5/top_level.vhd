library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        MAX10_CLK1_50 : in std_logic;
        KEY           : in std_logic_vector(1 downto 0);
        
        DRAM_ADDR     : out std_logic_vector(12 downto 0);
        DRAM_BA       : out std_logic_vector(1 downto 0);
        DRAM_CAS_N    : out std_logic;
        DRAM_CKE      : out std_logic;
        DRAM_CLK      : out std_logic;
        DRAM_CS_N     : out std_logic;
        DRAM_DQ       : inout std_logic_vector(15 downto 0);
        DRAM_LDQM     : out std_logic;
        DRAM_UDQM     : out std_logic;
        DRAM_RAS_N    : out std_logic;
        DRAM_WE_N     : out std_logic;

        VGA_HS        : out std_logic;
        VGA_VS        : out std_logic;
        VGA_R         : out std_logic_vector(3 downto 0);
        VGA_G         : out std_logic_vector(3 downto 0);
        VGA_B         : out std_logic_vector(3 downto 0)
    );
end entity top_level;

architecture rtl of top_level is
    
    signal w_clk_25, w_clk_sdram : std_logic;
    signal w_rst_n : std_logic;
    
    signal w_px_x, w_px_y : std_logic_vector(9 downto 0);
    signal w_video_on : std_logic;
    signal w_vsync_start : std_logic;
    
    signal w_sdram_addr : std_logic_vector(24 downto 0);
    signal w_sdram_read : std_logic;
    signal w_sdram_data : std_logic_vector(15 downto 0);
    signal w_sdram_valid: std_logic;
    
    signal w_img_r, w_img_g, w_img_b : std_logic_vector(7 downto 0);
    signal w_img_valid : std_logic;
    
    signal w_proc_r, w_proc_g, w_proc_b : std_logic_vector(7 downto 0);
    signal w_proc_valid : std_logic;
    signal w_max_val : std_logic_vector(7 downto 0);
    
    signal w_noise_en : std_logic;
    signal w_histo_ch : std_logic_vector(1 downto 0);

begin
    w_rst_n <= KEY(0);

    u_qsys : entity work.sistema_sdram
        port map (
            clk_clk       => MAX10_CLK1_50,
            reset_reset_n => w_rst_n,
            clk_vga_clk   => w_clk_25,
            sdram_wire_addr  => DRAM_ADDR,
            sdram_wire_ba    => DRAM_BA,
            sdram_wire_cas_n => DRAM_CAS_N,
            sdram_wire_cke   => DRAM_CKE,
            sdram_wire_cs_n  => DRAM_CS_N,
            sdram_wire_dq    => DRAM_DQ,
            sdram_wire_dqm(0)=> DRAM_LDQM,
            sdram_wire_dqm(1)=> DRAM_UDQM,
            sdram_wire_ras_n => DRAM_RAS_N,
            sdram_wire_we_n  => DRAM_WE_N,
            sdram_clk_clk    => DRAM_CLK,
            mem_s1_address   => w_sdram_addr,
            mem_s1_read      => w_sdram_read,
            mem_s1_readdata  => w_sdram_data,
            mem_s1_readdatavalid => w_sdram_valid
        );

    u_fsm : entity work.fsm_control
        port map (
            i_clk => w_clk_25, i_rst_n => w_rst_n, i_btn => KEY(1),
            o_noise_en => w_noise_en, o_histo_ch => w_histo_ch
        );

    u_sync : entity work.vga_sync
        port map (
            i_clk_25mhz => w_clk_25, i_rst_n => w_rst_n,
            o_hsync => VGA_HS, o_vsync => VGA_VS, o_video_on => w_video_on,
            o_pixel_x => w_px_x, o_pixel_y => w_px_y, o_vsync_start => w_vsync_start
        );

    u_reader : entity work.image_reader
        port map (
            i_clk => w_clk_25, i_rst_n => w_rst_n,
            i_pixel_x => w_px_x, i_pixel_y => w_px_y, i_video_on => w_video_on,
            i_sdram_data => w_sdram_data, i_sdram_valid => w_sdram_valid,
            o_sdram_addr => w_sdram_addr, o_sdram_read => w_sdram_read,
            o_img_r => w_img_r, o_img_g => w_img_g, o_img_b => w_img_b, o_img_valid => w_img_valid
        );

    u_proc : entity work.image_processor
        port map (
            i_clk => w_clk_25, i_rst_n => w_rst_n,
            i_noise_en => w_noise_en, i_histo_ch => w_histo_ch, i_vsync_start => w_vsync_start,
            i_img_valid => w_img_valid,
            i_r => w_img_r, i_g => w_img_g, i_b => w_img_b,
            o_r => w_proc_r, o_g => w_proc_g, o_b => w_proc_b, o_valid => w_proc_valid,
            o_max_val => w_max_val
        );

    u_overlay : entity work.display_overlay
        port map (
            i_clk => w_clk_25,
            i_pixel_x => w_px_x, i_pixel_y => w_px_y,
            i_show => '1' when w_histo_ch /= "00" else '0',
            i_val => w_max_val,
            i_r => w_proc_r, i_g => w_proc_g, i_b => w_proc_b,
            o_r => VGA_R, o_g => VGA_G, o_b => VGA_B
        );

end architecture rtl;
