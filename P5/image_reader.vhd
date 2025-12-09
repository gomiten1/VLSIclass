library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity image_reader is
    generic (
        IMG_W : integer := 320;
        IMG_H : integer := 240;
        SCR_W : integer := 640;
        SCR_H : integer := 480
    );
    port (
        i_clk           : in  std_logic;
        i_rst_n         : in  std_logic;
        i_pixel_x       : in  std_logic_vector(9 downto 0);
        i_pixel_y       : in  std_logic_vector(9 downto 0);
        i_video_on      : in  std_logic;
        i_sdram_data    : in  std_logic_vector(15 downto 0);
        i_sdram_valid   : in  std_logic;
        o_sdram_addr    : out std_logic_vector(24 downto 0);
        o_sdram_read    : out std_logic;
        o_img_r         : out std_logic_vector(7 downto 0);
        o_img_g         : out std_logic_vector(7 downto 0);
        o_img_b         : out std_logic_vector(7 downto 0);
        o_img_valid     : out std_logic
    );
end entity image_reader;

architecture rtl of image_reader is
    constant OFF_X : integer := (SCR_W - IMG_W)/2;
    constant OFF_Y : integer := (SCR_H - IMG_H)/2;
    
    signal r_addr : unsigned(24 downto 0);
    signal int_x  : integer range 0 to 1023;
    signal int_y  : integer range 0 to 1023;
    signal s_in_region : std_logic;

begin
    int_x <= to_integer(unsigned(i_pixel_x));
    int_y <= to_integer(unsigned(i_pixel_y));

    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            o_sdram_read <= '0';
            r_addr <= (others => '0');
            s_in_region <= '0';
        elsif rising_edge(i_clk) then
            if (int_x >= OFF_X and int_x < OFF_X + IMG_W) and
               (int_y >= OFF_Y and int_y < OFF_Y + IMG_H) then
                s_in_region <= '1';
                r_addr <= to_unsigned(((int_y - OFF_Y) * IMG_W) + (int_x - OFF_X), 25);
                o_sdram_read <= '1';
            else
                s_in_region <= '0';
                o_sdram_read <= '0';
            end if;
        end if;
    end process;

    o_sdram_addr <= std_logic_vector(r_addr);

    process(i_clk)
    begin
        if rising_edge(i_clk) then
            o_img_valid <= s_in_region;
            if s_in_region = '1' and i_sdram_valid = '1' then
                o_img_r <= i_sdram_data(15 downto 11) & i_sdram_data(15 downto 13);
                o_img_g <= i_sdram_data(10 downto 5)  & i_sdram_data(10 downto 9);
                o_img_b <= i_sdram_data(4 downto 0)   & i_sdram_data(4 downto 2);
            else
                o_img_r <= (others => '0');
                o_img_g <= (others => '0');
                o_img_b <= (others => '0');
            end if;
        end if;
    end process;

end architecture rtl;
