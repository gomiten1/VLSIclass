library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Para usar 'unsigned' y 'resize'

entity vga_sync is
    port (
        i_clk_50mhz : in  std_logic;
        i_rst_n     : in  std_logic; -- Reset activo en bajo (como los KEY de la DE10)
        
        -- Salidas de sincronizacion
        o_hsync     : out std_logic;
        o_vsync     : out std_logic;
        o_enable    : out std_logic; -- '1' solo en la zona visible
        
        -- Salidas de posicion (solo validas cuando o_enable = '1')
        o_pos_x     : out std_logic_vector(9 downto 0); -- 0 a 639 (necesita 10 bits)
        o_pos_y     : out std_logic_vector(8 downto 0)  -- 0 a 479 (necesita 9 bits)
    );
end entity vga_sync;

architecture rtl of vga_sync is

    -- Constantes de Temporizado VGA 640x480 @ 60Hz (Total 800x525)

    -- Horizontal (linea) - Total 800
    constant H_VISIBLE_AREA : integer := 640; -- A: Visible
    constant H_FRONT_PORCH  : integer := 16;  -- B: Porche frontal
    constant H_SYNC_PULSE   : integer := 96;  -- C: Pulso HSYNC (bajo)
    constant H_BACK_PORCH   : integer := 48;  -- D: Porche trasero
    -- Total H: 640 + 16 + 96 + 48 = 800
    constant H_TOTAL : integer := H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH;

    -- Vertical (cuadro) - Total 525
    constant V_VISIBLE_AREA : integer := 480; -- E: Visible
    constant V_FRONT_PORCH  : integer := 10;  -- F: Porche frontal
    constant V_SYNC_PULSE   : integer := 2;   -- G: Pulso VSYNC (bajo)
    constant V_BACK_PORCH   : integer := 33;  -- H: Porche trasero
    -- Total V: 480 + 10 + 2 + 33 = 525
    constant V_TOTAL : integer := V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH;

    -- Señales internas
    signal s_clk_25mhz : std_logic := '0';
    
    -- Contadores (usamos 'unsigned' para facilitar las sumas y comparaciones)
    -- Necesitan 10 bits para contar hasta 800 (H) y 525 (V)
    signal s_h_count : unsigned(9 downto 0) := (others => '0'); 
    signal s_v_count : unsigned(9 downto 0) := (others => '0'); 

    signal s_enable : std_logic := '0';

begin

    -- 1. Divisor de Reloj: 50 MHz -> 25 MHz
    -- Genera un reloj de 25 MHz (s_clk_25mhz) que usaremos como nuestro "pixel tick"
    process(i_clk_50mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_clk_25mhz <= '0';
        elsif rising_edge(i_clk_50mhz) then
            s_clk_25mhz <= not s_clk_25mhz;
        end if;
    end process;


    -- 2. Contadores Horizontal y Vertical
    -- Este proceso se ejecuta con cada "tick" de 25 MHz
    process(s_clk_25mhz, i_rst_n)
    begin
        if (i_rst_n = '0') then
            s_h_count <= (others => '0');
            s_v_count <= (others => '0');
        elsif rising_edge(s_clk_25mhz) then
            
            if (s_h_count = H_TOTAL - 1) then  -- Fin de la linea (cuenta 799)
                s_h_count <= (others => '0');
                
                if (s_v_count = V_TOTAL - 1) then -- Fin del cuadro (cuenta 524)
                    s_v_count <= (others => '0');
                else
                    s_v_count <= s_v_count + 1; -- Siguiente linea
                end if;
            else
                s_h_count <= s_h_count + 1; -- Siguiente pixel
            end if;
            
        end if;
    end process;


    -- 3. Generacion de Señales de Salida (Logica Combinacional)
    -- Estas salidas dependen directamente del estado actual de los contadores

    -- HSYNC: Activo en BAJO ('0') durante el periodo C (pulso HSYNC)
    o_hsync <= '0' when (s_h_count >= H_VISIBLE_AREA + H_FRONT_PORCH) and 
                         (s_h_count < H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_PULSE) 
                 else '1';
                 
    -- VSYNC: Activo en BAJO ('0') durante el periodo G (pulso VSYNC)
    o_vsync <= '0' when (s_v_count >= V_VISIBLE_AREA + V_FRONT_PORCH) and 
                         (s_v_count < V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_PULSE) 
                 else '1';

    -- ENABLE: Activo en ALTO ('1') solo durante la region visible (A y E)
    s_enable <= '1' when (s_h_count < H_VISIBLE_AREA) and (s_v_count < V_VISIBLE_AREA)
                else '0';
    
    o_enable <= s_enable;
    
    -- Salidas de posicion: Pasan el valor del contador
    -- Se convierten a std_logic_vector y se ajusta el tamaño para 'y'
    o_pos_x  <= std_logic_vector(s_h_count);
    o_pos_y  <= std_logic_vector(resize(s_v_count, o_pos_y'length));

end architecture rtl;