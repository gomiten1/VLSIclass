library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsmControl is
    Port ( 
        clk           : in  STD_LOGIC;
        resetBtn      : in  STD_LOGIC;
        startPauseBtn : in  STD_LOGIC;
        tick100hz     : in  STD_LOGIC;
        countEnable   : out STD_LOGIC;
        resetCounters : out STD_LOGIC
    );
end fsmControl;

architecture Behavioral of fsmControl is
 
    signal isRunningFf : std_logic := '0';
    signal nextStateD  : std_logic;
    signal btn1Ff1, btn1Ff2, btn1Edge : std_logic := '0';

begin

    debounceProc: process(clk)
    begin
        if rising_edge(clk) then
            btn1Ff1 <= startPauseBtn;
            btn1Ff2 <= btn1Ff1;
        end if;
    end process;
    
    btn1Edge <= btn1Ff1 and not btn1Ff2;

    nextStateD <= isRunningFf XOR btn1Edge;

    fsmProc: process(clk, resetBtn)
    begin
        if resetBtn = '1' then
            isRunningFf <= '0';
        elsif rising_edge(clk) then
            isRunningFf <= nextStateD;
        end if;
    end process;

    countEnable <= isRunningFf and tick100hz;
    resetCounters <= resetBtn;

end Behavioral;
