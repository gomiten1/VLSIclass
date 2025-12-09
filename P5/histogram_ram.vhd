library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity histogram_ram is
    port (
        i_clk       : in  std_logic;
        i_addr_a    : in  std_logic_vector(7 downto 0);
        i_data_a    : in  std_logic_vector(15 downto 0);
        i_we_a      : in  std_logic;
        o_q_a       : out std_logic_vector(15 downto 0);
        i_addr_b    : in  std_logic_vector(7 downto 0);
        i_data_b    : in  std_logic_vector(15 downto 0);
        i_we_b      : in  std_logic;
        o_q_b       : out std_logic_vector(15 downto 0)
    );
end entity histogram_ram;

architecture rtl of histogram_ram is
    type ram_type is array (0 to 255) of std_logic_vector(15 downto 0);
    shared variable ram : ram_type := (others => (others => '0'));
begin
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_we_a = '1' then
                ram(to_integer(unsigned(i_addr_a))) := i_data_a;
            end if;
            o_q_a <= ram(to_integer(unsigned(i_addr_a)));

            if i_we_b = '1' then
                ram(to_integer(unsigned(i_addr_b))) := i_data_b;
            end if;
            o_q_b <= ram(to_integer(unsigned(i_addr_b)));
        end if;
    end process;
end architecture rtl;