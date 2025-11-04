library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync is
    port (
        i_clk_50mhz : in  std_logic;
        i_rst_n     : in  std_logic;
        o_hsync     : out std_logic;
        o_vsync     : out std_logic;
        o_enable    : out std_logic;
        o_pos_x     : out std_logic_vector(9 downto 0);
        o_pos_y     : out std_logic_vector(8 downto 0)
    );
end entity vga_sync;

architecture rtl of vga_sync is

    constant H_VISIBLE_AREA : integer := 640;
    constant H_FRONT_PORCH  : integer := 16;
    constant H_SYNC_PULSE   : integer := 96;
    constant H_BACK_PORCH   : integer := 48;
    constant H_TOTAL : integer := H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH;

    constant V_VISIBLE_AREA : integer := 480;
    constant V_FRONT_PORCH  : integer := 10;
    constant V_SYNC_PULSE   : integer := 2;
    constant V_BACK_PORCH   : integer := 33;
    constant V_TOTAL : integer := V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH;

    signal s_clk_25mhz : std_logic := '0';
    signal s_h_count : unsigned(9 downto 0) := (others => '0'); 
    signal s_v_count : unsigned(9 downto 0) := (others => '0'); 
    signal s_enable : std_logic := '0';

begin

    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_clk_25mhz <= '0';
        elsif rising_edge(i_clk_50mhz) then
            s_clk_25mhz <= not s_clk_25mhz;
        end if;
    end process;

    process(s_clk_25mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_h_count <= (others => '0');
            s_v_count <= (others => '0');
        elsif rising_edge(s_clk_25mhz) then
            if (s_h_count = H_TOTAL - 1) then
                s_h_count <= (others => '0');
                if (s_v_count = V_TOTAL - 1) then
                    s_v_count <= (others => '0');
                else
                    s_v_count <= s_v_count + 1;
                end if;
            else
                s_h_count <= s_h_count + 1;
            end if;
        end if;
    end process;

    o_hsync <= '0' when (s_h_count >= H_VISIBLE_AREA + H_FRONT_PORCH) and 
                         (s_h_count < H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_PULSE) 
                 else '1';
                 
    o_vsync <= '0' when (s_v_count >= V_VISIBLE_AREA + V_FRONT_PORCH) and 
                         (s_v_count < V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_PULSE) 
                 else '1';

    s_enable <= '1' when (s_h_count < H_VISIBLE_AREA) and (s_v_count < V_VISIBLE_AREA)
                else '0';
    
    o_enable <= s_enable;
    
    o_pos_x  <= std_logic_vector(s_h_count);
    o_pos_y  <= std_logic_vector(resize(s_v_count, o_pos_y'length));

end architecture rtl;
