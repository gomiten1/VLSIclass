library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clkDivider is
    Port ( 
        clkIn       : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        enable100hz : out STD_LOGIC
    );
end clkDivider;

architecture Behavioral of clkDivider is
    constant maxCount : integer := 500000 - 1;
    signal counter : integer range 0 to maxCount := 0;
begin

    process(clkIn, reset)
    begin
        if reset = '1' then
            counter <= 0;
            enable100hz <= '0';
        elsif rising_edge(clkIn) then
            if counter = maxCount then
                counter <= 0;
                enable100hz <= '1';
            else
                counter <= counter + 1;
                enable100hz <= '0';
            end if;
        end if;
    end process;

end Behavioral;