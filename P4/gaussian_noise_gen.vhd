library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity lfsr_8bit is
    port (
        i_clk   : in  std_logic;
        i_rst_n : in  std_logic;
        i_seed  : in  std_logic_vector(7 downto 0);
        o_rand  : out std_logic_vector(7 downto 0)
    );
end entity lfsr_8bit;

architecture rtl of lfsr_8bit is
    signal s_lfsr : std_logic_vector(7 downto 0);
begin
    process(i_clk, i_rst_n)
        variable v_new_bit : std_logic;
    begin
        if i_rst_n = '0' then
            s_lfsr <= i_seed;
        elsif rising_edge(i_clk) then
            v_new_bit := s_lfsr(7) xor s_lfsr(3) xor s_lfsr(2) xor s_lfsr(1);
            s_lfsr <= s_lfsr(6 downto 0) & v_new_bit;
        end if;
    end process;
    o_rand <= s_lfsr;
end architecture rtl;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gaussian_noise_gen is
    port (
        i_clk   : in  std_logic;
        i_rst_n : in  std_logic;
        o_noise : out signed(7 downto 0)
    );
end entity gaussian_noise_gen;

architecture rtl of gaussian_noise_gen is
    signal s_rand1 : std_logic_vector(7 downto 0);
    signal s_rand2 : std_logic_vector(7 downto 0);
    signal s_rand3 : std_logic_vector(7 downto 0);
    signal s_rand4 : std_logic_vector(7 downto 0);
    
    signal s_sum     : unsigned(9 downto 0); 
    signal s_avg_u8  : unsigned(7 downto 0);
    
begin
    U_LFSR1 : entity work.lfsr_8bit
        port map ( i_clk => i_clk, i_rst_n => i_rst_n, i_seed => x"A1", o_rand => s_rand1 );
    U_LFSR2 : entity work.lfsr_8bit
        port map ( i_clk => i_clk, i_rst_n => i_rst_n, i_seed => x"B2", o_rand => s_rand2 );
    U_LFSR3 : entity work.lfsr_8bit
        port map ( i_clk => i_clk, i_rst_n => i_rst_n, i_seed => x"C3", o_rand => s_rand3 );
    U_LFSR4 : entity work.lfsr_8bit
        port map ( i_clk => i_clk, i_rst_n => i_rst_n, i_seed => x"D4", o_rand => s_rand4 );

    process(i_clk)
    begin
        if rising_edge(i_clk) then
            s_sum <= unsigned(s_rand1) + unsigned(s_rand2) + unsigned(s_rand3) + unsigned(s_rand4);
            s_avg_u8 <= s_sum(9 downto 2);
            o_noise <= signed(s_avg_u8) - 128;
        end if;
    end process;
    
end architecture rtl;
