library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cronometro_digital is
    Port ( 
        clk50mhz       : in  STD_LOGIC;
        btn1StartPause : in  STD_LOGIC;
        btn2Reset      : in  STD_LOGIC;
        segmentsMDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsMUnidades : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsSDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsSUnidades : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsCDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsCUnidades : out STD_LOGIC_VECTOR (6 downto 0)
    );
end cronometro_digital;

architecture Structural of cronometro_digital is

    signal enable100hzSig : STD_LOGIC;
    signal countEnableSig : STD_LOGIC;
    signal resetCountersSig : STD_LOGIC;
    signal mDecSig, mUniSig, sDecSig, sUniSig, cDecSig, cUniSig : STD_LOGIC_VECTOR(3 downto 0);
    
begin

    clkDividerInst : entity work.clkDivider
        port map (
            clkIn       => clk50mhz,
            reset       => btn2Reset,
            enable100hz => enable100hzSig
        );
        
    fsmControlInst : entity work.fsmControl
        port map (
            clk           => clk50mhz,
            resetBtn      => btn2Reset,
            startPauseBtn => btn1StartPause,
            tick100hz     => enable100hzSig,
            countEnable   => countEnableSig,
            resetCounters => resetCountersSig
        );
        
    counterBcdInst : entity work.counterBcd
        port map (
            clk     => clk50mhz,
            reset   => resetCountersSig,
            countEn => countEnableSig,
            m1Out   => mDecSig,
            m0Out   => mUniSig,
            s1Out   => sDecSig,
            s0Out   => sUniSig,
            c1Out   => cDecSig,
            c0Out   => cUniSig
        );
        
    displayDriverInst : entity work.displayMux
        port map (
            mDecenas  => mDecSig,
            mUnidades => mUniSig,
            sDecenas  => sDecSig,
            sUnidades => sUniSig,
            cDecenas  => cDecSig,
            cUnidades => cUniSig,
            
            segmentsMDecenas  => segmentsMDecenas,
            segmentsMUnidades => segmentsMUnidades,
            segmentsSDecenas  => segmentsSDecenas,
            segmentsSUnidades => segmentsSUnidades,
            segmentsCDecenas  => segmentsCDecenas,
            segmentsCUnidades => segmentsCUnidades
        );

end Structural;