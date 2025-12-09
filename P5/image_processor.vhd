library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity image_processor is
    port (
        i_clk         : in  std_logic;
        i_rst_n       : in  std_logic;
        i_noise_en    : in  std_logic;
        i_histo_ch    : in  std_logic_vector(1 downto 0);
        i_vsync_start : in  std_logic;
        i_img_valid   : in  std_logic;
        i_r, i_g, i_b : in  std_logic_vector(7 downto 0);
        o_r, o_g, o_b : out std_logic_vector(7 downto 0);
        o_valid       : out std_logic;
        o_max_val     : out std_logic_vector(7 downto 0)
    );
end entity image_processor;

architecture rtl of image_processor is
    signal s_noise : signed(7 downto 0);
    signal s_r_noisy, s_g_noisy, s_b_noisy : std_logic_vector(7 downto 0);

    function saturate(val: signed) return std_logic_vector is
    begin
        if val < 0 then return x"00";
        elsif val > 255 then return x"FF";
        else return std_logic_vector(val(7 downto 0));
        end if;
    end function;

    type t_state is (IDLE, CLEAR, ACCUM, FIND);
    signal state : t_state := IDLE;
    signal r_addr_cnt : unsigned(7 downto 0);
    signal r_max_count: unsigned(15 downto 0);
    signal r_max_idx  : std_logic_vector(7 downto 0);
    
    signal ram_addr_a, ram_addr_b : std_logic_vector(7 downto 0);
    signal ram_we_a, ram_we_b     : std_logic;
    signal ram_din_a, ram_din_b   : std_logic_vector(15 downto 0);
    signal ram_dout_a, ram_dout_b : std_logic_vector(15 downto 0);
    
    signal s_pixel_for_histo : std_logic_vector(7 downto 0);

begin
    U_NOISE : entity work.gaussian_noise_gen
        port map (i_clk => i_clk, i_rst_n => i_rst_n, o_noise => s_noise);

    U_RAM : entity work.histogram_ram
        port map (
            i_clk => i_clk,
            i_addr_a => ram_addr_a, i_data_a => ram_din_a, i_we_a => ram_we_a, o_q_a => ram_dout_a,
            i_addr_b => ram_addr_b, i_data_b => ram_din_b, i_we_b => ram_we_b, o_q_b => ram_dout_b
        );

    process(i_clk)
        variable v_r, v_g, v_b : signed(9 downto 0);
    begin
        if rising_edge(i_clk) then
            o_valid <= i_img_valid;
            
            if i_noise_en = '1' then
                v_r := signed("00" & i_r) + resize(s_noise, 10);
                v_g := signed("00" & i_g) + resize(s_noise, 10);
                v_b := signed("00" & i_b) + resize(s_noise, 10);
                
                s_r_noisy <= saturate(v_r);
                s_g_noisy <= saturate(v_g);
                s_b_noisy <= saturate(v_b);
            else
                s_r_noisy <= i_r; s_g_noisy <= i_g; s_b_noisy <= i_b;
            end if;
        end if;
    end process;
    o_r <= s_r_noisy; o_g <= s_g_noisy; o_b <= s_b_noisy;

    with i_histo_ch select
        s_pixel_for_histo <= s_r_noisy when "01",
                             s_g_noisy when "10",
                             s_b_noisy when "11",
                             x"00"     when others;

    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            state <= IDLE;
            r_max_idx <= (others => '0');
            ram_we_b <= '0';
            ram_we_a <= '0';
        elsif rising_edge(i_clk) then
            ram_we_b <= '0';
            ram_we_a <= '0';
            
            case state is
                when IDLE =>
                    if i_histo_ch /= "00" then
                        if i_vsync_start = '1' then
                            state <= CLEAR;
                            r_addr_cnt <= (others => '0');
                        else
                            state <= ACCUM;
                        end if;
                    end if;
                    
                when CLEAR =>
                    ram_addr_b <= std_logic_vector(r_addr_cnt);
                    ram_din_b  <= (others => '0');
                    ram_we_b   <= '1';
                    if r_addr_cnt = 255 then
                        state <= FIND;
                        r_addr_cnt <= (others => '0');
                        r_max_count <= (others => '0');
                    else
                        r_addr_cnt <= r_addr_cnt + 1;
                    end if;

                when ACCUM =>
                    if i_vsync_start = '1' then
                        state <= CLEAR;
                        r_addr_cnt <= (others => '0');
                    elsif i_img_valid = '1' then
                        ram_addr_a <= s_pixel_for_histo;
                        ram_din_a  <= std_logic_vector(unsigned(ram_dout_a) + 1);
                        ram_we_a   <= '1'; 
                    end if;
                    
                when FIND =>
                    ram_addr_b <= std_logic_vector(r_addr_cnt);
                    if unsigned(ram_dout_b) > r_max_count then
                        r_max_count <= unsigned(ram_dout_b);
                        r_max_idx   <= std_logic_vector(r_addr_cnt);
                    end if;
                    
                    if r_addr_cnt = 255 then
                        state <= IDLE;
                    else
                        r_addr_cnt <= r_addr_cnt + 1;
                    end if;
            end case;
        end if;
    end process;
    
    o_max_val <= r_max_idx;

end architecture rtl;
