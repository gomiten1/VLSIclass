library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity displayMux is
    Port ( 
        
        mDecenas  : in  STD_LOGIC_VECTOR (3 downto 0);
        mUnidades : in  STD_LOGIC_VECTOR (3 downto 0);
        sDecenas  : in  STD_LOGIC_VECTOR (3 downto 0);
        sUnidades : in  STD_LOGIC_VECTOR (3 downto 0);
        cDecenas  : in  STD_LOGIC_VECTOR (3 downto 0);
        cUnidades : in  STD_LOGIC_VECTOR (3 downto 0);
        segmentsMDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsMUnidades : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsSDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsSUnidades : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsCDecenas  : out STD_LOGIC_VECTOR (6 downto 0);
        segmentsCUnidades : out STD_LOGIC_VECTOR (6 downto 0)
    );
end displayMux;

architecture Structural of displayMux is
begin
    
    decMDec: entity work.decoder7seg
        port map (
            bcdIn       => mDecenas,
            segmentsOut => segmentsMDecenas
        );

    decMUni: entity work.decoder7seg
        port map (
            bcdIn       => mUnidades,
            segmentsOut => segmentsMUnidades
        );
        
    decSDec: entity work.decoder7seg
        port map (
            bcdIn       => sDecenas,
            segmentsOut => segmentsSDecenas
        );

    decSUni: entity work.decoder7seg
        port map (
            bcdIn       => sUnidades,
            segmentsOut => segmentsSUnidades
        );
        
    decCDec: entity work.decoder7seg
        port map (
            bcdIn       => cDecenas,
            segmentsOut => segmentsCDecenas
        );
        
    decCUni: entity work.decoder7seg
        port map (
            bcdIn       => cUnidades,
            segmentsOut => segmentsCUnidades
        );
        
end Structural;
