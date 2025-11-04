library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
    port (
        i_clk_50mhz : in  std_logic;
        i_rst_n     : in  std_logic;
        i_btn       : in  std_logic; -- Pulsador (KEY0)
        
        o_mode      : out std_logic_vector(1 downto 0) -- Modos 0, 1, 2, 3
    );
end entity control;

architecture rtl of control is

    -- Constante para el antirrebote (ej: 20ms)
    -- 50,000,000 ciclos/s * 0.020 s = 1,000,000 ciclos
    constant C_DEBOUNCE_LIMIT : integer := 1_000_000;

    -- Señales del antirrebote
    signal s_debounce_cnt : integer range 0 to C_DEBOUNCE_LIMIT := 0;
    signal s_btn_delayed  : std_logic := '1'; -- Estado estable del boton
    signal s_btn_edge     : std_logic := '0'; -- Pulso de un ciclo al presionar
	 
	 signal s_mode : std_logic_vector(1 downto 0) := "00";
	 
begin

    -- 1. Proceso de Antirrebote (Debouncer)
    -- Filtra el ruido del pulsador
    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_debounce_cnt <= 0;
            s_btn_delayed  <= '1';
            s_btn_edge     <= '0';
        elsif rising_edge(i_clk_50mhz) then
            
            s_btn_edge <= '0'; -- El pulso solo dura un ciclo
            
            if (i_btn = s_btn_delayed) then
                -- No hay cambio, reiniciar contador
                s_debounce_cnt <= 0;
            else
                -- El estado es diferente, contar
                if (s_debounce_cnt = C_DEBOUNCE_LIMIT) then
                    -- Limite alcanzado, el cambio es estable
                    s_btn_delayed <= not s_btn_delayed;
                    s_debounce_cnt <= 0;
                    
                    -- Generar pulso solo si fue un 'presionar' (1 -> 0)
                    if (s_btn_delayed = '0') then
                        s_btn_edge <= '1';
                    end if;
                else
                    s_debounce_cnt <= s_debounce_cnt + 1;
                end if;
            end if;
        end if;
    end process;

    -- 2. Máquina de Estados Finitos (FSM)
    -- Cambia el modo con cada pulso del boton
    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_mode <= "00"; -- Modo 0 al resetear
        elsif rising_edge(i_clk_50mhz) then
            if (s_btn_edge = '1') then
                -- s_btn_edge es el pulso limpio del debouncer
                -- Ciclamos: 00 -> 01 -> 10 -> 11 -> 00
                s_mode <= std_logic_vector(unsigned(s_mode) + 1);
            end if;
        end if;
    end process;
	 
	 o_mode <= s_mode;

end architecture rtl;