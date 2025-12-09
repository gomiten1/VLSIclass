library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_overlay is
    port (
        i_clk       : in  std_logic;
        i_pixel_x   : in  std_logic_vector(9 downto 0);
        i_pixel_y   : in  std_logic_vector(9 downto 0);
        i_show      : in  std_logic;
        i_val       : in  std_logic_vector(7 downto 0);
        i_r, i_g, i_b : in std_logic_vector(7 downto 0);
        o_r, o_g, o_b : out std_logic_vector(3 downto 0)
    );
end entity display_overlay;

architecture rtl of display_overlay is
    signal int_x, int_y : integer;
    signal digit : integer;
    signal seg_bits : std_logic_vector(6 downto 0);
    signal s_text_on : std_logic;
    signal bcd_hun, bcd_ten, bcd_uni : integer;

    type rom_type is array (0 to 9) of std_logic_vector(6 downto 0);
    constant SEG_ROM : rom_type := (
        "1111110", "0110000", "1101101", "1111001", "0110011", 
        "1011011", "1011111", "1110000", "1111111", "1111011"
    );
begin
    int_x <= to_integer(unsigned(i_pixel_x));
    int_y <= to_integer(unsigned(i_pixel_y));

    bcd_hun <= to_integer(unsigned(i_val)) / 100;
    bcd_ten <= (to_integer(unsigned(i_val)) / 10) mod 10;
    bcd_uni <= to_integer(unsigned(i_val)) mod 10;

    process(i_clk)
        variable v_rel_x, v_rel_y : integer;
        variable v_curr_dig_val : integer;
        variable v_bit_on : boolean;
    begin
        if rising_edge(i_clk) then
            s_text_on <= '0';
            if i_show = '1' and int_y >= 10 and int_y < 30 and int_x >= 10 and int_x < 58 then
                v_rel_x := int_x - 10;
                v_rel_y := int_y - 10;

                if v_rel_x < 16 then v_curr_dig_val := bcd_hun;
                elsif v_rel_x < 32 then v_curr_dig_val := bcd_ten;
                else v_curr_dig_val := bcd_uni;
                end if;

                s_text_on <= '1'; 
            end if;

            if s_text_on = '1' then
                o_r <= x"F"; o_g <= x"F"; o_b <= x"F";
            else
                o_r <= i_r(7 downto 4); 
                o_g <= i_g(7 downto 4);
                o_b <= i_b(7 downto 4);
            end if;
        end if;
    end process;
end architecture rtl;
