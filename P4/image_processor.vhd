library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity image_processor is
    port (
        i_clk         : in  std_logic;
        i_rst_n       : in  std_logic;
        

        i_noise_en    : in  std_logic;
        
   
        i_rgb_r_8bit  : in  std_logic_vector(7 downto 0);
        i_rgb_g_8bit  : in  std_logic_vector(7 downto 0);
        i_rgb_b_8bit  : in  std_logic_vector(7 downto 0);
        i_video_en    : in  std_logic;
        

        o_vga_r_4bit  : out std_logic_vector(3 downto 0);
        o_vga_g_4bit  : out std_logic_vector(3 downto 0);
        o_vga_b_4bit  : out std_logic_vector(3 downto 0);
        o_vga_blank_n : out std_logic 
    );
end entity image_processor;

architecture rtl of image_processor is
    
    component gaussian_noise_gen is
        port (
            i_clk   : in  std_logic;
            i_rst_n : in  std_logic;
            o_noise : out signed(7 downto 0)
        );
    end component;
    
    signal s_noise_s8 : signed(7 downto 0);
    

    signal s_r_sum : signed(8 downto 0);
    signal s_g_sum : signed(8 downto 0);
    signal s_b_sum : signed(8 downto 0);
    

    signal s_r_8bit_noisy : std_logic_vector(7 downto 0);
    signal s_g_8bit_noisy : std_logic_vector(7 downto 0);
    signal s_b_8bit_noisy : std_logic_vector(7 downto 0);

begin
  
    U_NOISE_GEN : gaussian_noise_gen
        port map ( i_clk => i_clk, i_rst_n => i_rst_n, o_noise => s_noise_s8 );

 
    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            o_vga_blank_n <= '0';
            s_r_8bit_noisy <= (others => '0');
            s_g_8bit_noisy <= (others => '0');
            s_b_8bit_noisy <= (others => '0');
            
        elsif rising_edge(i_clk) then
            
            o_vga_blank_n <= i_video_en;

            if i_video_en = '0' then
                s_r_8bit_noisy <= (others => '0');
                s_g_8bit_noisy <= (others => '0');
                s_b_8bit_noisy <= (others => '0');

            elsif i_noise_en = '1' then
            
                s_r_sum <= signed('0' & i_rgb_r_8bit) + s_noise_s8;
                s_g_sum <= signed('0' & i_rgb_g_8bit) + s_noise_s8;
                s_b_sum <= signed('0' & i_rgb_b_8bit) + s_noise_s8;
                
              
                if s_r_sum < 0 then         s_r_8bit_noisy <= (others => '0');
                elsif s_r_sum > 255 then  s_r_8bit_noisy <= (others => '1');
                else                      s_r_8bit_noisy <= std_logic_vector(s_r_sum(7 downto 0));
                end if;
                
                if s_g_sum < 0 then         s_g_8bit_noisy <= (others => '0');
                elsif s_g_sum > 255 then  s_g_8bit_noisy <= (others => '1');
                else                      s_g_8bit_noisy <= std_logic_vector(s_g_sum(7 downto 0));
                end if;
                
                if s_b_sum < 0 then         s_b_8bit_noisy <= (others => '0');
                elsif s_b_sum > 255 then  s_b_8bit_noisy <= (others => '1');
                else                      s_b_8bit_noisy <= std_logic_vector(s_b_sum(7 downto 0));
                end if;
            else
             
                s_r_8bit_noisy <= i_rgb_r_8bit;
                s_g_8bit_noisy <= i_rgb_g_8bit;
                s_b_8bit_noisy <= i_rgb_b_8bit;
            end if;
            
        
            o_vga_r_4bit <= s_r_8bit_noisy(7 downto 4);
            o_vga_g_4bit <= s_g_8bit_noisy(7 downto 4);
            o_vga_b_4bit <= s_b_8bit_noisy(7 downto 4);
            
        end if;
    end process;

end architecture rtl;
