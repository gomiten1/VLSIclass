library ieee;
use ieee.std_logic_1164.all;

entity vga_top is
    port (
        -- Reloj y Reset
        CLOCK_50 : in  std_logic; -- Pin N14 (Reloj 50 MHz)
        KEY      : in  std_logic_vector(0 downto 0); -- Pin U7 (KEY0 como reset)
        
        -- Switches (usaremos 5 de los 10)
        SW       : in  std_logic_vector(9 downto 0);
        
        -- Salidas VGA
        VGA_HS   : out std_logic; -- Pin L7 (HSYNC)
        VGA_VS   : out std_logic; -- Pin K7 (VSYNC)
        VGA_R    : out std_logic_vector(3 downto 0); -- Pines M8, M7, L8, K8
        VGA_G    : out std_logic_vector(3 downto 0); -- Pines J8, H8, J7, H7
        VGA_B    : out std_logic_vector(3 downto 0)  -- Pines G8, G7, F8, F7
    );
end entity vga_top;

architecture structural of vga_top is

    -- Declaracion del Componente 1 (Sincronizador)
    component vga_sync is
        port (
            i_clk_50mhz : in  std_logic;
            i_rst_n     : in  std_logic;
            o_hsync     : out std_logic;
            o_vsync     : out std_logic;
            o_enable    : out std_logic;
            o_pos_x     : out std_logic_vector(9 downto 0);
            o_pos_y     : out std_logic_vector(8 downto 0)
        );
    end component vga_sync;

    -- Declaracion del Componente 2 (Generador de Video)
    component video_gen is
        port (
            i_enable    : in std_logic;
            i_pos_x     : in std_logic_vector(9 downto 0);
            i_pos_y     : in std_logic_vector(8 downto 0);
            i_sr        : in std_logic;
            i_sg        : in std_logic;
            i_sb        : in std_logic;
            i_sc        : in std_logic;
            i_srec      : in std_logic;
            o_vga_r     : out std_logic_vector(3 downto 0);
            o_vga_g     : out std_logic_vector(3 downto 0);
            o_vga_b     : out std_logic_vector(3 downto 0)
        );
    end component video_gen;

    -- Señales internas ("cables") para conectar los modulos
    signal s_rst_n     : std_logic;
    signal s_enable    : std_logic;
    signal s_pos_x     : std_logic_vector(9 downto 0);
    signal s_pos_y     : std_logic_vector(8 downto 0);

begin

    -- El KEY0 es activo en bajo, perfecto para nuestro reset
    s_rst_n <= KEY(0);

    -- Instancia del Sincronizador
    U1_VGA_SYNC : component vga_sync
        port map (
            i_clk_50mhz => CLOCK_50,
            i_rst_n     => s_rst_n,
            o_hsync     => VGA_HS,
            o_vsync     => VGA_VS,
            o_enable    => s_enable,
            o_pos_x     => s_pos_x,
            o_pos_y     => s_pos_y
        );
        
    -- Instancia del Generador de Video
    U2_VIDEO_GEN : component video_gen
        port map (
            i_enable    => s_enable,
            i_pos_x     => s_pos_x,
            i_pos_y     => s_pos_y,
            
            -- Asignamos los primeros 5 switches a los modos
            i_srec      => SW(4), -- Le damos la prioridad mas alta a srec
            i_sc        => SW(3),
            i_sr        => SW(2),
            i_sg        => SW(1),
            i_sb        => SW(0),
            
            o_vga_r     => VGA_R,
            o_vga_g     => VGA_G,
            o_vga_b     => VGA_B
        );

end architecture structural;