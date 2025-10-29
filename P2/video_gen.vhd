library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity video_gen is
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
end entity video_gen;

architecture rtl of video_gen is

    constant C_BLACK  : std_logic_vector(3 downto 0) := "0000";
    constant C_WHITE  : std_logic_vector(3 downto 0) := "1111";
    constant C_RED    : std_logic_vector(3 downto 0) := "1111";
    constant C_GREEN  : std_logic_vector(3 downto 0) := "1111";
    constant C_BLUE   : std_logic_vector(3 downto 0) := "1111";

    constant C_CHOICE_R : std_logic_vector(3 downto 0) := "1111";
    constant C_CHOICE_G : std_logic_vector(3 downto 0) := "0000";
    constant C_CHOICE_B : std_logic_vector(3 downto 0) := "1111";

    constant REC_X_MIN : integer := 320 - 100;
    constant REC_X_MAX : integer := 320 + 100 - 1;
    constant REC_Y_MIN : integer := 240 - 50;
    constant REC_Y_MAX : integer := 240 + 50 - 1;
    
    signal s_pos_x_int : unsigned(9 downto 0);
    signal s_pos_y_int : unsigned(8 downto 0);

begin

	 process(i_enable, i_pos_x, i_pos_y, i_sr, i_sg, i_sb, i_sc, i_srec)
    begin
        s_pos_x_int <= unsigned(i_pos_x);
        s_pos_y_int <= unsigned(i_pos_y);

        if (i_enable = '0') then
            o_vga_r <= C_BLACK;
            o_vga_g <= C_BLACK;
            o_vga_b <= C_BLACK;
            
        else
            if (i_srec = '1') then
                if (s_pos_x_int >= REC_X_MIN and s_pos_x_int <= REC_X_MAX) and
                   (s_pos_y_int >= REC_Y_MIN and s_pos_y_int <= REC_Y_MAX) then
                    o_vga_r <= C_CHOICE_R;
                    o_vga_g <= C_CHOICE_G;
                    o_vga_b <= C_CHOICE_B;
                else
                    o_vga_r <= C_WHITE;
                    o_vga_g <= C_WHITE;
                    o_vga_b <= C_WHITE;
                end if;
            
            elsif (i_sc = '1') then
                o_vga_r <= C_CHOICE_R;
                o_vga_g <= C_CHOICE_G;
                o_vga_b <= C_CHOICE_B;

            elsif (i_sr = '1') then
                o_vga_r <= C_RED;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLACK;

            elsif (i_sg = '1') then
                o_vga_r <= C_BLACK;
                o_vga_g <= C_GREEN;
                o_vga_b <= C_BLACK;
                
            elsif (i_sb = '1') then
                o_vga_r <= C_BLACK;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLUE;
                
            else
                o_vga_r <= C_BLACK;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLACK;
            end if;
        end if;
    end process;

end architecture rtl;
