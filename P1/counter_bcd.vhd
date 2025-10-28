library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counterBcd is
    Port ( 
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        countEn : in  STD_LOGIC;
        m1Out   : out STD_LOGIC_VECTOR (3 downto 0);
        m0Out   : out STD_LOGIC_VECTOR (3 downto 0);
        s1Out   : out STD_LOGIC_VECTOR (3 downto 0);
        s0Out   : out STD_LOGIC_VECTOR (3 downto 0);
        c1Out   : out STD_LOGIC_VECTOR (3 downto 0);
        c0Out   : out STD_LOGIC_VECTOR (3 downto 0)
    );
end counterBcd;

architecture Behavioral of counterBcd is
    signal m1, m0, s1, s0, c1, c0 : unsigned(3 downto 0) := (others => '0');
begin
    
    process(clk, reset)
    begin
        if reset = '1' then
            c0 <= (others => '0'); c1 <= (others => '0');
            s0 <= (others => '0'); s1 <= (others => '0');
            m0 <= (others => '0'); m1 <= (others => '0');
        elsif rising_edge(clk) then
            if countEn = '1' then
                if m1 = 5 and m0 = 9 and s1 = 5 and s0 = 9 and c1 = 9 and c0 = 9 then
                    c0 <= (others => '0'); c1 <= (others => '0');
                    s0 <= (others => '0'); s1 <= (others => '0');
                    m0 <= (others => '0'); m1 <= (others => '0');
                else
                    if c0 = 9 then
                        c0 <= (others => '0');
                        if c1 = 9 then
                            c1 <= (others => '0');
                            if s0 = 9 then
                                s0 <= (others => '0');
                                if s1 = 5 then
                                    s1 <= (others => '0');
                                    if m0 = 9 then
                                        m0 <= (others => '0');
                                        m1 <= m1 + 1;
                                    else
                                        m0 <= m0 + 1;
                                    end if;
                                else
                                    s1 <= s1 + 1;
                                end if;
                            else
                                s0 <= s0 + 1;
                            end if;
                        else
                            c1 <= c1 + 1;
                        end if;
                    else
                        c0 <= c0 + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    c0Out <= std_logic_vector(c0);
    c1Out <= std_logic_vector(c1);
    s0Out <= std_logic_vector(s0);
    s1Out <= std_logic_vector(s1);
    m0Out <= std_logic_vector(m0);
    m1Out <= std_logic_vector(m1);

end Behavioral;