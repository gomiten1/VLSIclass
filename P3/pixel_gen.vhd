library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pixel_gen is
    generic (
        G_COLOR_BG_R : std_logic_vector(3 downto 0) := x"0";
        G_COLOR_BG_G : std_logic_vector(3 downto 0) := x"0";
        G_COLOR_BG_B : std_logic_vector(3 downto 0) := x"0";
        G_COLOR_FG_R : std_logic_vector(3 downto 0) := x"F";
        G_COLOR_FG_G : std_logic_vector(3 downto 0) := x"F";
        G_COLOR_FG_B : std_logic_vector(3 downto 0) := x"F"
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
end entity pixel_gen;

architecture rtl of pixel_gen is

    component sine_rom_640x9 is
        port (
            address : in  std_logic_vector(9 downto 0);
            clock   : in  std_logic;
            q       : out std_logic_vector(8 downto 0)
        );
    end component sine_rom_640x9;

    component sincos_rom_256x9 is
        port (
            address : in  std_logic_vector(7 downto 0);
            clock   : in  std_logic;
            q       : out std_logic_vector(8 downto 0)
        );
    end component sincos_rom_256x9;

    constant C_THICKNESS_LINE : integer := 2;
    constant C_THICKNESS_SINE : integer := 2;
    constant C_CIRCLE_BAND    : integer := 400;
    constant C_CX     : integer := 300;
    constant C_CY     : integer := 300;
    constant C_R      : integer := 100;
    constant C_R_SQ   : integer := C_R * C_R;
    constant C_ROT_CX : integer := 320;
    constant C_ROT_CY : integer := 240;
    constant C_ROT_L  : integer := 150;
    constant C_THICKNESS_ROT : integer := 3000;

    signal s_pos_x_int : integer range 0 to 639;
    signal s_pos_y_int : integer range 0 to 479;
    signal s_on_trace : std_logic;
    signal s_theta       : unsigned(7 downto 0) := (others => '0');
    signal s_sin_theta_q : std_logic_vector(8 downto 0);
    signal s_cos_theta_q : std_logic_vector(8 downto 0);
    signal s_sin_theta   : signed(8 downto 0);
    signal s_cos_theta   : signed(8 downto 0);
    signal s_sine_y_q  : std_logic_vector(8 downto 0);
    signal s_sine_y_int: integer range 0 to 479;

begin

    s_pos_x_int <= to_integer(unsigned(i_pos_x));
    s_pos_y_int <= to_integer(unsigned(i_pos_y));

    U_SINE_ROM : component sine_rom_640x9
        port map (
            address => i_pos_x,
            clock   => i_clk_pixel,
            q       => s_sine_y_q
        );
    s_sine_y_int <= to_integer(unsigned(s_sine_y_q));

    U_SIN_ROM : component sincos_rom_256x9
        port map (
            address => std_logic_vector(s_theta),
            clock   => i_clk_pixel,
            q       => s_sin_theta_q
        );
    s_sin_theta <= signed(s_sin_theta_q);
    
    U_COS_ROM : component sincos_rom_256x9
        port map (
            address => std_logic_vector(s_theta + 64),
            clock   => i_clk_pixel,
            q       => s_cos_theta_q
        );
    s_cos_theta <= signed(s_cos_theta_q);

    process(i_vsync)
    begin
        if rising_edge(i_vsync) then
            s_theta <= s_theta + 1;
        end if;
    end process;

    process(i_mode, s_pos_x_int, s_pos_y_int, i_pos_x, i_pos_y, s_sin_theta, s_cos_theta, s_sine_y_int)
        variable v_dx, v_dy   : signed(10 downto 0);
        variable v_dx_sq, v_dy_sq : signed(21 downto 0);
        variable v_dist_sq    : signed(22 downto 0);
        variable v_dist_check : signed(22 downto 0);
        variable v_rot_check  : signed(20 downto 0);
    begin
        v_dx := resize(signed(i_pos_x), v_dx'length);
        v_dy := resize(signed(i_pos_y), v_dy'length);
        s_on_trace <= '0'; 

        case i_mode is
            when "00" =>
                if (abs(s_pos_y_int - (s_pos_x_int + 6)) <= C_THICKNESS_LINE) then
                    s_on_trace <= '1';
                end if;
            when "01" =>
                v_dx := v_dx - C_CX;
                v_dy := v_dy - C_CY;
                v_dx_sq := v_dx * v_dx;
                v_dy_sq := v_dy * v_dy;
                v_dist_sq := resize(v_dx_sq, v_dist_sq'length) + v_dy_sq;
                v_dist_check := v_dist_sq - to_signed(C_R_SQ, v_dist_check'length);
                if (abs(v_dist_check) <= C_CIRCLE_BAND) then
                    s_on_trace <= '1';
                end if;
            when "10" =>
                v_dx := v_dx - C_ROT_CX;
                v_dy := v_dy - C_ROT_CY;
                v_rot_check := resize((v_dy * s_cos_theta) - (v_dx * s_sin_theta), v_rot_check'length);
                if (abs(v_rot_check) <= C_THICKNESS_ROT) then
                    s_on_trace <= '1';
                end if;
            when "11" =>
                if (abs(s_pos_y_int - s_sine_y_int) <= C_THICKNESS_SINE) then
                    s_on_trace <= '1';
                end if;
            when others =>
                s_on_trace <= '0';
        end case;
    end process;
    
    process(i_enable, s_on_trace)
    begin
        if (i_enable = '0') then
            o_vga_r <= (others => '0');
            o_vga_g <= (others => '0');
            o_vga_b <= (others => '0');
        elsif (s_on_trace = '1') then
            o_vga_r <= G_COLOR_FG_R;
            o_vga_g <= G_COLOR_FG_G;
            o_vga_b <= G_COLOR_FG_B;
        else
            o_vga_r <= G_COLOR_BG_R;
            o_vga_g <= G_COLOR_BG_G;
            o_vga_b <= G_COLOR_BG_B;
        end if;
    end process;

end architecture rtl;
