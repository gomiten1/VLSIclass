library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Para comparar los vectores de posicion

entity video_gen is
    port (
        -- Entradas desde el Sincronizador
        i_enable    : in std_logic;
        i_pos_x     : in std_logic_vector(9 downto 0);
        i_pos_y     : in std_logic_vector(8 downto 0);
        
        -- Entradas de modo (desde los switches)
        i_sr        : in std_logic; -- Rojo
        i_sg        : in std_logic; -- Verde
        i_sb        : in std_logic; -- Azul
        i_sc        : in std_logic; -- Color elegido
        i_srec      : in std_logic; -- Rectangulo
        
        -- Salidas de color (4 bits por canal para la DE10-Lite)
        o_vga_r     : out std_logic_vector(3 downto 0);
        o_vga_g     : out std_logic_vector(3 downto 0);
        o_vga_b     : out std_logic_vector(3 downto 0)
    );
end entity video_gen;

architecture rtl of video_gen is

    -- Constantes de color (4 bits)
    constant C_BLACK  : std_logic_vector(3 downto 0) := "0000";
    constant C_WHITE  : std_logic_vector(3 downto 0) := "1111";
    constant C_RED    : std_logic_vector(3 downto 0) := "1111";
    constant C_GREEN  : std_logic_vector(3 downto 0) := "1111";
    constant C_BLUE   : std_logic_vector(3 downto 0) := "1111";
    
    -- Color elegido (sc y srec): Purpura (R=F, G=0, B=F)
    constant C_CHOICE_R : std_logic_vector(3 downto 0) := "1111";
    constant C_CHOICE_G : std_logic_vector(3 downto 0) := "0000";
    constant C_CHOICE_B : std_logic_vector(3 downto 0) := "1111";

    -- Constantes para el rectangulo centrado (srec)
    -- Pantalla: 640x480. Centro en (320, 240)
    -- Definamos un rectangulo de 200x100
    constant REC_X_MIN : integer := 320 - 100; -- 220
    constant REC_X_MAX : integer := 320 + 100 - 1; -- 419
    constant REC_Y_MIN : integer := 240 - 50;  -- 190
    constant REC_Y_MAX : integer := 240 + 50 - 1;  -- 289
    
    -- Señales para convertir posicion a integer para comparacion
    signal s_pos_x_int : unsigned(9 downto 0);
    signal s_pos_y_int : unsigned(8 downto 0);

begin

    -- Proceso combinacional para generar el color
    process(all)
    begin
        -- Convertir entradas a 'unsigned' para comparacion
        s_pos_x_int <= unsigned(i_pos_x);
        s_pos_y_int <= unsigned(i_pos_y);

        -- Regla #1: Fuera de la region visible, siempre negro.
        if (i_enable = '0') then
            o_vga_r <= C_BLACK;
            o_vga_g <= C_BLACK;
            o_vga_b <= C_BLACK;
            
        else
            -- Regla #2: Logica de prioridad (el primero que se activa, gana)
            if (i_srec = '1') then
                -- Modo Rectangulo: Fondo blanco, rectangulo de color
                if (s_pos_x_int >= REC_X_MIN and s_pos_x_int <= REC_X_MAX) and
                   (s_pos_y_int >= REC_Y_MIN and s_pos_y_int <= REC_Y_MAX) then
                    -- Dentro del rectangulo
                    o_vga_r <= C_CHOICE_R;
                    o_vga_g <= C_CHOICE_G;
                    o_vga_b <= C_CHOICE_B;
                else
                    -- Fuera del rectangulo (fondo)
                    o_vga_r <= C_WHITE;
                    o_vga_g <= C_WHITE;
                    o_vga_b <= C_WHITE;
                end if;
            
            elsif (i_sc = '1') then
                -- Modo Color Elegido
                o_vga_r <= C_CHOICE_R;
                o_vga_g <= C_CHOICE_G;
                o_vga_b <= C_CHOICE_B;

            elsif (i_sr = '1') then
                -- Modo Rojo
                o_vga_r <= C_RED;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLACK;

            elsif (i_sg = '1') then
                -- Modo Verde
                o_vga_r <= C_BLACK;
                o_vga_g <= C_GREEN;
                o_vga_b <= C_BLACK;
                
            elsif (i_sb = '1') then
                -- Modo Azul
                o_vga_r <= C_BLACK;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLUE;
                
            else
                -- Modo por defecto (ningun switch activo)
                o_vga_r <= C_BLACK;
                o_vga_g <= C_BLACK;
                o_vga_b <= C_BLACK;
            end if;
        end if;
    end process;

end architecture rtl;