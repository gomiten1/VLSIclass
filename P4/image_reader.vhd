library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity image_reader is
    generic (
        SCREEN_WIDTH  : integer := 640;
        SCREEN_HEIGHT : integer := 480;
        H_TOTAL       : integer := 800;
        IMG_WIDTH     : integer := 320;
        IMG_HEIGHT    : integer := 240
    );
    port (
        i_clk         : in  std_logic;
        i_rst_n       : in  std_logic;
        i_pos_x       : in  std_logic_vector(9 downto 0);
        i_pos_y       : in  std_logic_vector(9 downto 0);
        i_video_en    : in  std_logic; 
        i_sdram_readdata : in  std_logic_vector(15 downto 0);
        i_sdram_readdata_valid : in std_logic;
        o_sdram_address  : out std_logic_vector(24 downto 0);
        o_sdram_read     : out std_logic;
        
     
        o_video_en    : out std_logic; 
        o_rgb_r_8bit  : out std_logic_vector(7 downto 0);
        o_rgb_g_8bit  : out std_logic_vector(7 downto 0);
        o_rgb_b_8bit  : out std_logic_vector(7 downto 0)
    );
end entity image_reader;

architecture rtl of image_reader is
    constant OFFSET_X : integer := (SCREEN_WIDTH - IMG_WIDTH) / 2;
    constant OFFSET_Y : integer := (SCREEN_HEIGHT - IMG_HEIGHT) / 2;
    constant BYTES_PER_PIXEL : integer := 2;

    signal s_pos_x           : unsigned(9 downto 0);
    signal s_pos_y           : unsigned(9 downto 0);
    signal s_is_image_active : std_logic;
    signal s_addr_base : unsigned(24 downto 0);
    signal s_pixel_addr: unsigned(24 downto 0);
    
    signal s_video_en : std_logic;
    signal s_r_8bit   : std_logic_vector(7 downto 0);
    signal s_g_8bit   : std_logic_vector(7 downto 0);
    signal s_b_8bit   : std_logic_vector(7 downto 0);

begin

    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            s_pos_x <= (others => '0');
            s_pos_y <= (others => '0');
            s_is_image_active <= '0';
            s_addr_base <= (others => '0');
            s_pixel_addr <= (others => '0');
            o_sdram_read <= '0';
        elsif rising_edge(i_clk) then
            s_pos_x <= unsigned(i_pos_x);
            s_pos_y <= unsigned(i_pos_y);

            if (s_pos_x = H_TOTAL - 1) then
                if (s_pos_y >= (OFFSET_Y - 1)) and (s_pos_y < (OFFSET_Y + IMG_HEIGHT - 1)) then
                    s_addr_base <= s_addr_base + (IMG_WIDTH * BYTES_PER_PIXEL);
                end if;
            elsif (s_pos_y = SCREEN_HEIGHT + 33 - 1) then 
                 s_addr_base <= (others => '0');
            end if;

            if i_video_en = '1' and
               s_pos_x >= OFFSET_X and s_pos_x < (OFFSET_X + IMG_WIDTH) and
               s_pos_y >= OFFSET_Y and s_pos_y < (OFFSET_Y + IMG_HEIGHT)
            then
                s_is_image_active <= '1';
                if s_pos_x = OFFSET_X then
                    s_pixel_addr <= s_addr_base;
                else
                    s_pixel_addr <= s_pixel_addr + BYTES_PER_PIXEL;
                end if;
            else
                s_is_image_active <= '0';
            end if;
            
            o_sdram_read <= s_is_image_active;
        end if;
    end process;
    o_sdram_address <= std_logic_vector(s_pixel_addr);


    process(i_clk, i_rst_n)
        variable v_rgb565 : std_logic_vector(15 downto 0);
        variable v_r_5bit : std_logic_vector(4 downto 0);
        variable v_g_6bit : std_logic_vector(5 downto 0);
        variable v_b_5bit : std_logic_vector(4 downto 0);
    begin
        if i_rst_n = '0' then
            s_r_8bit   <= (others => '0');
            s_g_8bit   <= (others => '0');
            s_b_8bit   <= (others => '0');
            s_video_en <= '0';
        elsif rising_edge(i_clk) then
            s_video_en <= s_is_image_active;

            if i_sdram_readdata_valid = '1' then
                v_rgb565 := i_sdram_readdata;
                v_r_5bit := v_rgb565(15 downto 11);
                v_g_6bit := v_rgb565(10 downto 5);
                v_b_5bit := v_rgb565(4 downto 0);
                s_r_8bit <= v_r_5bit & v_r_5bit(4 downto 2); 
                s_g_8bit <= v_g_6bit & v_g_6bit(5 downto 4);
                s_b_8bit <= v_b_5bit & v_b_5bit(4 downto 2);
            else
                s_r_8bit <= (others => '0');
                s_g_8bit <= (others => '0');
                s_b_8bit <= (others => '0');
            end if;
        end if;
    end process;

    o_rgb_r_8bit  <= s_r_8bit;
    o_rgb_g_8bit  <= s_g_8bit;
    o_rgb_b_8bit  <= s_b_8bit;
    o_video_en    <= s_video_en;

end architecture rtl;