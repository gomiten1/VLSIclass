library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Para 'unsigned', 'signed' y 'to_integer'

entity pixel_gen is
    generic (
        -- Generics de Color (4-bits por canal)
        G_COLOR_BG_R : std_logic_vector(3 downto 0) := x"0"; -- Negro
        G_COLOR_BG_G : std_logic_vector(3 downto 0) := x"0";
        G_COLOR_BG_B : std_logic_vector(3 downto 0) := x"0";
        G_COLOR_FG_R : std_logic_vector(3 downto 0) := x"F"; -- Blanco
        G_COLOR_FG_G : std_logic_vector(3 downto 0) := x"F";
        G_COLOR_FG_B : std_logic_vector(3 downto 0) := x"F"
    );
    port (
        -- Reloj y Sincronizacion
        i_clk_pixel : in  std_logic; -- Reloj de 25 MHz
        i_vsync     : in  std_logic; -- Para animar la rotacion
        i_enable    : in  std_logic; -- '1' en zona visible
        
        -- Posicion
        i_pos_x     : in  std_logic_vector(9 downto 0); -- 0 a 639
        i_pos_y     : in  std_logic_vector(8 downto 0); -- 0 a 479
        
        -- Modo
        i_mode      : in  std_logic_vector(1 downto 0); -- 00, 01, 10, 11
        
        -- Salidas de color
        o_vga_r     : out std_logic_vector(3 downto 0);
        o_vga_g     : out std_logic_vector(3 downto 0);
        o_vga_b     : out std_logic_vector(3 downto 0)
    );
end entity pixel_gen;

architecture rtl of pixel_gen is

    -- == NOTA: COMPONENTES LUT (Generados con Quartus IP Catalog) ==
    -- Necesitarás generar estos dos componentes de ROM
    
    -- 1. ROM para el Seno (Modo 3)
    -- 640 direcciones (10 bits), 9 bits de salida (0-479)
    -- Archivo .mif: y = 240 + 100 * sin(x * 2*pi / 639) para x=0..639
    component sine_rom_640x9 is
        port (
            address : in  std_logic_vector(9 downto 0);
            clock   : in  std_logic;
            q       : out std_logic_vector(8 downto 0)
        );
    end component sine_rom_640x9;

    -- 2. ROM para Sin/Cos (Modo 2)
    -- 256 direcciones (8 bits), 9 bits de salida (signed, -255 a +255)
    -- Archivo .mif: y = 255 * sin(x * 2*pi / 255) para x=0..255
    component sincos_rom_256x9 is
        port (
            address : in  std_logic_vector(7 downto 0);
            clock   : in  std_logic;
            q       : out std_logic_vector(8 downto 0) -- Salida signed
        );
    end component sincos_rom_256x9;

    -- == CONSTANTES GEOMÉTRICAS ==
    -- Grosor
    constant C_THICKNESS_LINE : integer := 2;
    constant C_THICKNESS_SINE : integer := 2;
    constant C_CIRCLE_BAND    : integer := 400; -- Banda E, r=100, T=2 -> 2*r*T ~ 400

    -- Círculo (Modo 1)
    constant C_CX     : integer := 300;
    constant C_CY     : integer := 300;
    constant C_R      : integer := 100;
    constant C_R_SQ   : integer := C_R * C_R; -- 10000

    -- Recta Rotante (Modo 2)
    constant C_ROT_CX : integer := 320; -- Centro de la pantalla
    constant C_ROT_CY : integer := 240;
    constant C_ROT_L  : integer := 150; -- Longitud de la linea
    constant C_THICKNESS_ROT : integer := 3000; -- (Este 'T' es escalado)

    -- == SEÑALES INTERNAS ==
    signal s_pos_x_int : integer range 0 to 639;
    signal s_pos_y_int : integer range 0 to 479;
    
    signal s_on_trace : std_logic; -- '1' si el pixel debe dibujarse

    -- Señales para Modo 2 (Rotacion)
    signal s_theta       : unsigned(7 downto 0) := (others => '0'); -- angulo 0-255
    signal s_sin_theta_q : std_logic_vector(8 downto 0);
    signal s_cos_theta_q : std_logic_vector(8 downto 0);
    signal s_sin_theta   : signed(8 downto 0);
    signal s_cos_theta   : signed(8 downto 0);
    
    -- Señales para Modo 3 (Seno)
    signal s_sine_y_q  : std_logic_vector(8 downto 0);
    signal s_sine_y_int: integer range 0 to 479;

begin

    -- == CONVERSIÓN DE TIPO ==
    -- Convertir std_logic_vector a integer para facilitar las matematicas
    -- Nota: usamos 'unsigned' primero porque i_pos_x/y no son negativos
    s_pos_x_int <= to_integer(unsigned(i_pos_x));
    s_pos_y_int <= to_integer(unsigned(i_pos_y));


    -- == INSTANCIAS DE LAS LUTs (ROMs) ==
    
    -- ROM 1: Seno para Modo 3
    -- Se direcciona directamente con pos_x
    U_SINE_ROM : component sine_rom_640x9
        port map (
            address => i_pos_x,
            clock   => i_clk_pixel,
            q       => s_sine_y_q
        );
    s_sine_y_int <= to_integer(unsigned(s_sine_y_q));


    -- ROM 2: Sin/Cos para Modo 2
    -- s_theta es el angulo (actualizado por vsync)
    -- cos(theta) = sin(theta + 90_grados) = sin(theta + 64) [para 256 pasos]
    
    U_SIN_ROM : component sincos_rom_256x9
        port map (
            address => std_logic_vector(s_theta),
            clock   => i_clk_pixel,
            q       => s_sin_theta_q
        );
    s_sin_theta <= signed(s_sin_theta_q); -- Convertir a signed
    
    U_COS_ROM : component sincos_rom_256x9
        port map (
            address => std_logic_vector(s_theta + 64), -- 90 grados offset
            clock   => i_clk_pixel,
            q       => s_cos_theta_q
        );
    s_cos_theta <= signed(s_cos_theta_q); -- Convertir a signed


    -- == PROCESO DE ANIMACIÓN (ROTACIÓN) ==
    -- Actualiza el angulo 'theta' una vez por cuadro (en vsync)
    process(i_vsync)
    begin
        if rising_edge(i_vsync) then
            s_theta <= s_theta + 1; -- Gira un paso por cuadro
        end if;
    end process;


    -- == LÓGICA DE DIBUJO (Combinacional) ==
    -- Decide si el píxel actual (x, y) está "en el trazo"
    process(i_mode, s_pos_x_int, s_pos_y_int, i_pos_x, i_pos_y, s_sin_theta, s_cos_theta, s_sine_y_int)
        -- Variables para cálculos (¡requiere tipos signed!)
        variable v_dx, v_dy   : signed(10 downto 0); -- 10 bits para 640, 11 con signo
        variable v_dx_sq, v_dy_sq : signed(21 downto 0); -- (11*2)
        variable v_dist_sq    : signed(22 downto 0); -- (21+1)
        variable v_dist_check : signed(22 downto 0);
        variable v_rot_check  : signed(20 downto 0); -- (11+9)
    begin
    
        -- Convertir pos (unsigned) a signed para restas
        v_dx := resize(signed(i_pos_x), v_dx'length);
        v_dy := resize(signed(i_pos_y), v_dy'length);

        -- Por defecto, no estamos en el trazo
        s_on_trace <= '0'; 

        case i_mode is
            
            -- Modo 0: Recta y = x + 6
            -- abs(posy - (posx + 6)) <= T
            when "00" =>
                if (abs(s_pos_y_int - (s_pos_x_int + 6)) <= C_THICKNESS_LINE) then
                    s_on_trace <= '1';
                end if;

            -- Modo 1: Círculo (cx,cy)=(300,300), r=100
            -- abs((x-cx)^2 + (y-cy)^2 - r^2) <= E
            when "01" =>
                v_dx := v_dx - C_CX; -- (x - 300)
                v_dy := v_dy - C_CY; -- (y - 300)
                v_dx_sq := v_dx * v_dx;
                v_dy_sq := v_dy * v_dy;
                --v_dist_sq := v_dx_sq + v_dy_sq;
					 v_dist_sq := resize(v_dx_sq, v_dist_sq'length) + v_dy_sq;
                --v_dist_check := v_dist_sq - C_R_SQ;
					 -- DESPUÉS
					 v_dist_check := v_dist_sq - to_signed(C_R_SQ, v_dist_check'length);
                
                if (abs(v_dist_check) <= C_CIRCLE_BAND) then
                    s_on_trace <= '1';
                end if;
            
            -- Modo 2: Recta Rotante
            -- abs( (y-cy)*cos(t) - (x-cx)*sin(t) ) <= T_scaled
            when "10" =>
                v_dx := v_dx - C_ROT_CX; -- (x - 320)
                v_dy := v_dy - C_ROT_CY; -- (y - 240)
                
                -- Usamos valores 'signed' de los ROMs
                -- Nota: El grosor T se escala por 255 (el max de sin/cos)
                -- (y-cy)*cos - (x-cx)*sin
                --v_rot_check := (v_dy * s_cos_theta) - (v_dx * s_sin_theta);
					 -- DESPUÉS (Envolvemos toda la operación en resize)
v_rot_check := resize( (v_dy * s_cos_theta) - (v_dx * s_sin_theta) , v_rot_check'length);
                
                if (abs(v_rot_check) <= C_THICKNESS_ROT) then
                    s_on_trace <= '1';
                end if;
                
            -- Modo 3: Onda Seno (usando LUT)
            -- abs(posy - y_sin(posx)) <= T
            when "11" =>
                if (abs(s_pos_y_int - s_sine_y_int) <= C_THICKNESS_SINE) then
                    s_on_trace <= '1';
                end if;
                
            when others =>
                s_on_trace <= '0';
                
        end case;
    end process;
    

    -- == ASIGNACIÓN FINAL DE COLOR ==
    -- Proceso final que asigna el color basado en 's_on_trace' y 'i_enable'
    process(i_enable, s_on_trace)
    begin
        if (i_enable = '0') then
            -- Fuera de la zona visible, siempre negro
            o_vga_r <= (others => '0');
            o_vga_g <= (others => '0');
            o_vga_b <= (others => '0');
        elsif (s_on_trace = '1') then
            -- En el trazo (Foreground)
            o_vga_r <= G_COLOR_FG_R;
            o_vga_g <= G_COLOR_FG_G;
            o_vga_b <= G_COLOR_FG_B;
        else
            -- En el fondo (Background)
            o_vga_r <= G_COLOR_BG_R;
            o_vga_g <= G_COLOR_BG_G;
            o_vga_b <= G_COLOR_BG_B;
        end if;
    end process;

end architecture rtl;