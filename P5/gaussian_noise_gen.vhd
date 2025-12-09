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
    function next_lfsr(val: std_logic_vector(7 downto 0)) return std_logic_vector is
        variable bit_new : std_logic;
    begin
        bit_new := val(7) xor val(3) xor val(2) xor val(1);
        return val(6 downto 0) & bit_new;
    end function;

    signal r_lfsr1 : std_logic_vector(7 downto 0) := x"1A";
    signal r_lfsr2 : std_logic_vector(7 downto 0) := x"2B";
    signal r_lfsr3 : std_logic_vector(7 downto 0) := x"3C";
    signal r_lfsr4 : std_logic_vector(7 downto 0) := x"4D";
    signal r_sum   : unsigned(9 downto 0);

begin
    process(i_clk, i_rst_n)
    begin
        if i_rst_n = '0' then
            r_lfsr1 <= x"1A"; r_lfsr2 <= x"2B";
            r_lfsr3 <= x"3C"; r_lfsr4 <= x"4D";
            o_noise <= (others => '0');
        elsif rising_edge(i_clk) then
            r_lfsr1 <= next_lfsr(r_lfsr1);
            r_lfsr2 <= next_lfsr(r_lfsr2);
            r_lfsr3 <= next_lfsr(r_lfsr3);
            r_lfsr4 <= next_lfsr(r_lfsr4);

            r_sum <= unsigned("00" & r_lfsr1) + unsigned("00" & r_lfsr2) + 
                     unsigned("00" & r_lfsr3) + unsigned("00" & r_lfsr4);

            o_noise <= signed(std_logic_vector(r_sum(9 downto 2))) - 128;
        end if;
    end process;
end architecture rtl;
