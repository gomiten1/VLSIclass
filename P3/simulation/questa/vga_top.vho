-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "11/05/2025 12:10:06"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0)
	);
END vga_top;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SYNC|s_clk_25mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \U_SYNC|s_clk_25mhz~0_combout\ : std_logic;
SIGNAL \U_SYNC|s_clk_25mhz~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_SYNC|s_clk_25mhz~q\ : std_logic;
SIGNAL \U_SYNC|s_clk_25mhz~clkctrl_outclk\ : std_logic;
SIGNAL \U_SYNC|Add1~0_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~1\ : std_logic;
SIGNAL \U_SYNC|Add1~2_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~3\ : std_logic;
SIGNAL \U_SYNC|Add1~4_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~5\ : std_logic;
SIGNAL \U_SYNC|Add1~6_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~7\ : std_logic;
SIGNAL \U_SYNC|Add1~8_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~13\ : std_logic;
SIGNAL \U_SYNC|Add1~14_combout\ : std_logic;
SIGNAL \U_SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~15\ : std_logic;
SIGNAL \U_SYNC|Add1~16_combout\ : std_logic;
SIGNAL \U_SYNC|s_h_count~2_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~17\ : std_logic;
SIGNAL \U_SYNC|Add1~18_combout\ : std_logic;
SIGNAL \U_SYNC|s_h_count~1_combout\ : std_logic;
SIGNAL \U_SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \U_SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~9\ : std_logic;
SIGNAL \U_SYNC|Add1~10_combout\ : std_logic;
SIGNAL \U_SYNC|s_h_count~0_combout\ : std_logic;
SIGNAL \U_SYNC|Add1~11\ : std_logic;
SIGNAL \U_SYNC|Add1~12_combout\ : std_logic;
SIGNAL \U_SYNC|o_hsync~0_combout\ : std_logic;
SIGNAL \U_SYNC|o_hsync~1_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~0_combout\ : std_logic;
SIGNAL \U_SYNC|s_v_count~1_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~1\ : std_logic;
SIGNAL \U_SYNC|Add0~2_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~3\ : std_logic;
SIGNAL \U_SYNC|Add0~4_combout\ : std_logic;
SIGNAL \U_SYNC|s_v_count~0_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~5\ : std_logic;
SIGNAL \U_SYNC|Add0~7\ : std_logic;
SIGNAL \U_SYNC|Add0~8_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~9\ : std_logic;
SIGNAL \U_SYNC|Add0~10_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~11\ : std_logic;
SIGNAL \U_SYNC|Add0~12_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~13\ : std_logic;
SIGNAL \U_SYNC|Add0~14_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~15\ : std_logic;
SIGNAL \U_SYNC|Add0~16_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~17\ : std_logic;
SIGNAL \U_SYNC|Add0~18_combout\ : std_logic;
SIGNAL \U_SYNC|s_v_count~3_combout\ : std_logic;
SIGNAL \U_SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \U_SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \U_SYNC|Equal1~2_combout\ : std_logic;
SIGNAL \U_SYNC|Add0~6_combout\ : std_logic;
SIGNAL \U_SYNC|s_v_count~2_combout\ : std_logic;
SIGNAL \U_SYNC|o_vsync~2_combout\ : std_logic;
SIGNAL \U_SYNC|o_vsync~1_combout\ : std_logic;
SIGNAL \U_SYNC|o_vsync~0_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~1\ : std_logic;
SIGNAL \U_PIXEL|Add2~3\ : std_logic;
SIGNAL \U_PIXEL|Add2~5\ : std_logic;
SIGNAL \U_PIXEL|Add2~7\ : std_logic;
SIGNAL \U_PIXEL|Add2~9\ : std_logic;
SIGNAL \U_PIXEL|Add2~11\ : std_logic;
SIGNAL \U_PIXEL|Add2~13\ : std_logic;
SIGNAL \U_PIXEL|Add2~15\ : std_logic;
SIGNAL \U_PIXEL|Add2~16_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~14_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~12_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~10_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~8_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~6_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~4_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~2_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~0_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~1\ : std_logic;
SIGNAL \U_PIXEL|Add3~3\ : std_logic;
SIGNAL \U_PIXEL|Add3~5\ : std_logic;
SIGNAL \U_PIXEL|Add3~7\ : std_logic;
SIGNAL \U_PIXEL|Add3~9\ : std_logic;
SIGNAL \U_PIXEL|Add3~11\ : std_logic;
SIGNAL \U_PIXEL|Add3~13\ : std_logic;
SIGNAL \U_PIXEL|Add3~15\ : std_logic;
SIGNAL \U_PIXEL|Add3~17\ : std_logic;
SIGNAL \U_PIXEL|Add3~18_combout\ : std_logic;
SIGNAL \U_PIXEL|Add2~17\ : std_logic;
SIGNAL \U_PIXEL|Add2~18_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~19\ : std_logic;
SIGNAL \U_PIXEL|Add3~21\ : std_logic;
SIGNAL \U_PIXEL|Add3~22_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~16_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~14_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~12_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~10_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~8_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~6_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~4_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~2_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~0_combout\ : std_logic;
SIGNAL \U_PIXEL|process_1~0_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~1\ : std_logic;
SIGNAL \U_PIXEL|Add4~3\ : std_logic;
SIGNAL \U_PIXEL|Add4~5\ : std_logic;
SIGNAL \U_PIXEL|Add4~7\ : std_logic;
SIGNAL \U_PIXEL|Add4~9\ : std_logic;
SIGNAL \U_PIXEL|Add4~11\ : std_logic;
SIGNAL \U_PIXEL|Add4~13\ : std_logic;
SIGNAL \U_PIXEL|Add4~15\ : std_logic;
SIGNAL \U_PIXEL|Add4~17\ : std_logic;
SIGNAL \U_PIXEL|Add4~18_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~16_combout\ : std_logic;
SIGNAL \U_PIXEL|Add3~20_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~19\ : std_logic;
SIGNAL \U_PIXEL|Add4~20_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~21\ : std_logic;
SIGNAL \U_PIXEL|Add4~22_combout\ : std_logic;
SIGNAL \U_PIXEL|LessThan0~2_combout\ : std_logic;
SIGNAL \U_SYNC|o_enable~0_combout\ : std_logic;
SIGNAL \U_SYNC|o_enable~1_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~4_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~6_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~2_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~0_combout\ : std_logic;
SIGNAL \U_PIXEL|LessThan0~0_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~10_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~14_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~12_combout\ : std_logic;
SIGNAL \U_PIXEL|Add4~8_combout\ : std_logic;
SIGNAL \U_PIXEL|LessThan0~1_combout\ : std_logic;
SIGNAL \U_PIXEL|o_vga_r[0]~0_combout\ : std_logic;
SIGNAL \U_PIXEL|o_vga_b[0]~0_combout\ : std_logic;
SIGNAL \U_SYNC|s_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_SYNC|s_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_SYNC|ALT_INV_o_vsync~0_combout\ : std_logic;
SIGNAL \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);

\U_SYNC|s_clk_25mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_SYNC|s_clk_25mhz~q\);
\U_SYNC|ALT_INV_o_vsync~0_combout\ <= NOT \U_SYNC|o_vsync~0_combout\;
\U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\ <= NOT \U_PIXEL|o_vga_r[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X20_Y39_N16
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SYNC|o_hsync~1_combout\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SYNC|ALT_INV_o_vsync~0_combout\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|ALT_INV_o_vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_PIXEL|o_vga_b[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOIBUF_X0_Y37_N8
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X1_Y37_N18
\U_SYNC|s_clk_25mhz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_clk_25mhz~0_combout\ = !\U_SYNC|s_clk_25mhz~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_clk_25mhz~q\,
	combout => \U_SYNC|s_clk_25mhz~0_combout\);

-- Location: LCCOMB_X1_Y37_N0
\U_SYNC|s_clk_25mhz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_clk_25mhz~feeder_combout\ = \U_SYNC|s_clk_25mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC|s_clk_25mhz~0_combout\,
	combout => \U_SYNC|s_clk_25mhz~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N15
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G0
\KEY[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: FF_X1_Y37_N1
\U_SYNC|s_clk_25mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \U_SYNC|s_clk_25mhz~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_clk_25mhz~q\);

-- Location: CLKCTRL_G3
\U_SYNC|s_clk_25mhz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_SYNC|s_clk_25mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y36_N6
\U_SYNC|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~0_combout\ = \U_SYNC|s_h_count\(0) $ (VCC)
-- \U_SYNC|Add1~1\ = CARRY(\U_SYNC|s_h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(0),
	datad => VCC,
	combout => \U_SYNC|Add1~0_combout\,
	cout => \U_SYNC|Add1~1\);

-- Location: FF_X19_Y36_N7
\U_SYNC|s_h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(0));

-- Location: LCCOMB_X19_Y36_N8
\U_SYNC|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~2_combout\ = (\U_SYNC|s_h_count\(1) & (!\U_SYNC|Add1~1\)) # (!\U_SYNC|s_h_count\(1) & ((\U_SYNC|Add1~1\) # (GND)))
-- \U_SYNC|Add1~3\ = CARRY((!\U_SYNC|Add1~1\) # (!\U_SYNC|s_h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(1),
	datad => VCC,
	cin => \U_SYNC|Add1~1\,
	combout => \U_SYNC|Add1~2_combout\,
	cout => \U_SYNC|Add1~3\);

-- Location: FF_X19_Y36_N9
\U_SYNC|s_h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(1));

-- Location: LCCOMB_X19_Y36_N10
\U_SYNC|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~4_combout\ = (\U_SYNC|s_h_count\(2) & (\U_SYNC|Add1~3\ $ (GND))) # (!\U_SYNC|s_h_count\(2) & (!\U_SYNC|Add1~3\ & VCC))
-- \U_SYNC|Add1~5\ = CARRY((\U_SYNC|s_h_count\(2) & !\U_SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(2),
	datad => VCC,
	cin => \U_SYNC|Add1~3\,
	combout => \U_SYNC|Add1~4_combout\,
	cout => \U_SYNC|Add1~5\);

-- Location: FF_X19_Y36_N11
\U_SYNC|s_h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(2));

-- Location: LCCOMB_X19_Y36_N12
\U_SYNC|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~6_combout\ = (\U_SYNC|s_h_count\(3) & (!\U_SYNC|Add1~5\)) # (!\U_SYNC|s_h_count\(3) & ((\U_SYNC|Add1~5\) # (GND)))
-- \U_SYNC|Add1~7\ = CARRY((!\U_SYNC|Add1~5\) # (!\U_SYNC|s_h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(3),
	datad => VCC,
	cin => \U_SYNC|Add1~5\,
	combout => \U_SYNC|Add1~6_combout\,
	cout => \U_SYNC|Add1~7\);

-- Location: FF_X19_Y36_N13
\U_SYNC|s_h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~6_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(3));

-- Location: LCCOMB_X19_Y36_N14
\U_SYNC|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~8_combout\ = (\U_SYNC|s_h_count\(4) & (\U_SYNC|Add1~7\ $ (GND))) # (!\U_SYNC|s_h_count\(4) & (!\U_SYNC|Add1~7\ & VCC))
-- \U_SYNC|Add1~9\ = CARRY((\U_SYNC|s_h_count\(4) & !\U_SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(4),
	datad => VCC,
	cin => \U_SYNC|Add1~7\,
	combout => \U_SYNC|Add1~8_combout\,
	cout => \U_SYNC|Add1~9\);

-- Location: FF_X19_Y36_N15
\U_SYNC|s_h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(4));

-- Location: LCCOMB_X19_Y36_N18
\U_SYNC|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~12_combout\ = (\U_SYNC|s_h_count\(6) & (\U_SYNC|Add1~11\ $ (GND))) # (!\U_SYNC|s_h_count\(6) & (!\U_SYNC|Add1~11\ & VCC))
-- \U_SYNC|Add1~13\ = CARRY((\U_SYNC|s_h_count\(6) & !\U_SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(6),
	datad => VCC,
	cin => \U_SYNC|Add1~11\,
	combout => \U_SYNC|Add1~12_combout\,
	cout => \U_SYNC|Add1~13\);

-- Location: LCCOMB_X19_Y36_N20
\U_SYNC|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~14_combout\ = (\U_SYNC|s_h_count\(7) & (!\U_SYNC|Add1~13\)) # (!\U_SYNC|s_h_count\(7) & ((\U_SYNC|Add1~13\) # (GND)))
-- \U_SYNC|Add1~15\ = CARRY((!\U_SYNC|Add1~13\) # (!\U_SYNC|s_h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(7),
	datad => VCC,
	cin => \U_SYNC|Add1~13\,
	combout => \U_SYNC|Add1~14_combout\,
	cout => \U_SYNC|Add1~15\);

-- Location: FF_X19_Y36_N21
\U_SYNC|s_h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(7));

-- Location: LCCOMB_X19_Y36_N4
\U_SYNC|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal0~1_combout\ = (\U_SYNC|s_h_count\(3) & (!\U_SYNC|s_h_count\(7) & (\U_SYNC|s_h_count\(4) & \U_SYNC|s_h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(3),
	datab => \U_SYNC|s_h_count\(7),
	datac => \U_SYNC|s_h_count\(4),
	datad => \U_SYNC|s_h_count\(2),
	combout => \U_SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y36_N22
\U_SYNC|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~16_combout\ = (\U_SYNC|s_h_count\(8) & (\U_SYNC|Add1~15\ $ (GND))) # (!\U_SYNC|s_h_count\(8) & (!\U_SYNC|Add1~15\ & VCC))
-- \U_SYNC|Add1~17\ = CARRY((\U_SYNC|s_h_count\(8) & !\U_SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(8),
	datad => VCC,
	cin => \U_SYNC|Add1~15\,
	combout => \U_SYNC|Add1~16_combout\,
	cout => \U_SYNC|Add1~17\);

-- Location: LCCOMB_X19_Y36_N28
\U_SYNC|s_h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_h_count~2_combout\ = (!\U_SYNC|Equal0~2_combout\ & \U_SYNC|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|Equal0~2_combout\,
	datac => \U_SYNC|Add1~16_combout\,
	combout => \U_SYNC|s_h_count~2_combout\);

-- Location: FF_X19_Y36_N29
\U_SYNC|s_h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_h_count~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(8));

-- Location: LCCOMB_X19_Y36_N24
\U_SYNC|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~18_combout\ = \U_SYNC|s_h_count\(9) $ (\U_SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(9),
	cin => \U_SYNC|Add1~17\,
	combout => \U_SYNC|Add1~18_combout\);

-- Location: LCCOMB_X19_Y36_N30
\U_SYNC|s_h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_h_count~1_combout\ = (!\U_SYNC|Equal0~2_combout\ & \U_SYNC|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC|Equal0~2_combout\,
	datad => \U_SYNC|Add1~18_combout\,
	combout => \U_SYNC|s_h_count~1_combout\);

-- Location: FF_X19_Y36_N31
\U_SYNC|s_h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_h_count~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(9));

-- Location: LCCOMB_X19_Y36_N2
\U_SYNC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal0~0_combout\ = (\U_SYNC|s_h_count\(9) & (!\U_SYNC|s_h_count\(5) & (!\U_SYNC|s_h_count\(6) & \U_SYNC|s_h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(9),
	datab => \U_SYNC|s_h_count\(5),
	datac => \U_SYNC|s_h_count\(6),
	datad => \U_SYNC|s_h_count\(8),
	combout => \U_SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y36_N26
\U_SYNC|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal0~2_combout\ = (\U_SYNC|s_h_count\(1) & (\U_SYNC|s_h_count\(0) & (\U_SYNC|Equal0~1_combout\ & \U_SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(1),
	datab => \U_SYNC|s_h_count\(0),
	datac => \U_SYNC|Equal0~1_combout\,
	datad => \U_SYNC|Equal0~0_combout\,
	combout => \U_SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y36_N16
\U_SYNC|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add1~10_combout\ = (\U_SYNC|s_h_count\(5) & (!\U_SYNC|Add1~9\)) # (!\U_SYNC|s_h_count\(5) & ((\U_SYNC|Add1~9\) # (GND)))
-- \U_SYNC|Add1~11\ = CARRY((!\U_SYNC|Add1~9\) # (!\U_SYNC|s_h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(5),
	datad => VCC,
	cin => \U_SYNC|Add1~9\,
	combout => \U_SYNC|Add1~10_combout\,
	cout => \U_SYNC|Add1~11\);

-- Location: LCCOMB_X19_Y36_N0
\U_SYNC|s_h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_h_count~0_combout\ = (!\U_SYNC|Equal0~2_combout\ & \U_SYNC|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC|Equal0~2_combout\,
	datad => \U_SYNC|Add1~10_combout\,
	combout => \U_SYNC|s_h_count~0_combout\);

-- Location: FF_X19_Y36_N1
\U_SYNC|s_h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_h_count~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(5));

-- Location: FF_X19_Y36_N19
\U_SYNC|s_h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add1~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_h_count\(6));

-- Location: LCCOMB_X20_Y36_N28
\U_SYNC|o_hsync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_hsync~0_combout\ = (!\U_SYNC|s_h_count\(8) & (\U_SYNC|s_h_count\(7) & \U_SYNC|s_h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(8),
	datac => \U_SYNC|s_h_count\(7),
	datad => \U_SYNC|s_h_count\(9),
	combout => \U_SYNC|o_hsync~0_combout\);

-- Location: LCCOMB_X20_Y36_N26
\U_SYNC|o_hsync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_hsync~1_combout\ = ((\U_SYNC|s_h_count\(4) & (\U_SYNC|s_h_count\(6) & \U_SYNC|s_h_count\(5))) # (!\U_SYNC|s_h_count\(4) & (!\U_SYNC|s_h_count\(6) & !\U_SYNC|s_h_count\(5)))) # (!\U_SYNC|o_hsync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(4),
	datab => \U_SYNC|s_h_count\(6),
	datac => \U_SYNC|s_h_count\(5),
	datad => \U_SYNC|o_hsync~0_combout\,
	combout => \U_SYNC|o_hsync~1_combout\);

-- Location: LCCOMB_X18_Y36_N12
\U_SYNC|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~0_combout\ = \U_SYNC|s_v_count\(0) $ (VCC)
-- \U_SYNC|Add0~1\ = CARRY(\U_SYNC|s_v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(0),
	datad => VCC,
	combout => \U_SYNC|Add0~0_combout\,
	cout => \U_SYNC|Add0~1\);

-- Location: LCCOMB_X18_Y36_N6
\U_SYNC|s_v_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_v_count~1_combout\ = (\U_SYNC|Add0~0_combout\ & !\U_SYNC|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|Add0~0_combout\,
	datad => \U_SYNC|Equal1~2_combout\,
	combout => \U_SYNC|s_v_count~1_combout\);

-- Location: FF_X18_Y36_N7
\U_SYNC|s_v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_v_count~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(0));

-- Location: LCCOMB_X18_Y36_N14
\U_SYNC|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~2_combout\ = (\U_SYNC|s_v_count\(1) & (!\U_SYNC|Add0~1\)) # (!\U_SYNC|s_v_count\(1) & ((\U_SYNC|Add0~1\) # (GND)))
-- \U_SYNC|Add0~3\ = CARRY((!\U_SYNC|Add0~1\) # (!\U_SYNC|s_v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(1),
	datad => VCC,
	cin => \U_SYNC|Add0~1\,
	combout => \U_SYNC|Add0~2_combout\,
	cout => \U_SYNC|Add0~3\);

-- Location: FF_X18_Y36_N15
\U_SYNC|s_v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(1));

-- Location: LCCOMB_X18_Y36_N16
\U_SYNC|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~4_combout\ = (\U_SYNC|s_v_count\(2) & (\U_SYNC|Add0~3\ $ (GND))) # (!\U_SYNC|s_v_count\(2) & (!\U_SYNC|Add0~3\ & VCC))
-- \U_SYNC|Add0~5\ = CARRY((\U_SYNC|s_v_count\(2) & !\U_SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(2),
	datad => VCC,
	cin => \U_SYNC|Add0~3\,
	combout => \U_SYNC|Add0~4_combout\,
	cout => \U_SYNC|Add0~5\);

-- Location: LCCOMB_X18_Y36_N4
\U_SYNC|s_v_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_v_count~0_combout\ = (!\U_SYNC|Equal1~2_combout\ & \U_SYNC|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|Equal1~2_combout\,
	datad => \U_SYNC|Add0~4_combout\,
	combout => \U_SYNC|s_v_count~0_combout\);

-- Location: FF_X18_Y36_N5
\U_SYNC|s_v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_v_count~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(2));

-- Location: LCCOMB_X18_Y36_N18
\U_SYNC|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~6_combout\ = (\U_SYNC|s_v_count\(3) & (!\U_SYNC|Add0~5\)) # (!\U_SYNC|s_v_count\(3) & ((\U_SYNC|Add0~5\) # (GND)))
-- \U_SYNC|Add0~7\ = CARRY((!\U_SYNC|Add0~5\) # (!\U_SYNC|s_v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(3),
	datad => VCC,
	cin => \U_SYNC|Add0~5\,
	combout => \U_SYNC|Add0~6_combout\,
	cout => \U_SYNC|Add0~7\);

-- Location: LCCOMB_X18_Y36_N20
\U_SYNC|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~8_combout\ = (\U_SYNC|s_v_count\(4) & (\U_SYNC|Add0~7\ $ (GND))) # (!\U_SYNC|s_v_count\(4) & (!\U_SYNC|Add0~7\ & VCC))
-- \U_SYNC|Add0~9\ = CARRY((\U_SYNC|s_v_count\(4) & !\U_SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(4),
	datad => VCC,
	cin => \U_SYNC|Add0~7\,
	combout => \U_SYNC|Add0~8_combout\,
	cout => \U_SYNC|Add0~9\);

-- Location: FF_X18_Y36_N21
\U_SYNC|s_v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(4));

-- Location: LCCOMB_X18_Y36_N22
\U_SYNC|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~10_combout\ = (\U_SYNC|s_v_count\(5) & (!\U_SYNC|Add0~9\)) # (!\U_SYNC|s_v_count\(5) & ((\U_SYNC|Add0~9\) # (GND)))
-- \U_SYNC|Add0~11\ = CARRY((!\U_SYNC|Add0~9\) # (!\U_SYNC|s_v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(5),
	datad => VCC,
	cin => \U_SYNC|Add0~9\,
	combout => \U_SYNC|Add0~10_combout\,
	cout => \U_SYNC|Add0~11\);

-- Location: FF_X18_Y36_N23
\U_SYNC|s_v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(5));

-- Location: LCCOMB_X18_Y36_N24
\U_SYNC|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~12_combout\ = (\U_SYNC|s_v_count\(6) & (\U_SYNC|Add0~11\ $ (GND))) # (!\U_SYNC|s_v_count\(6) & (!\U_SYNC|Add0~11\ & VCC))
-- \U_SYNC|Add0~13\ = CARRY((\U_SYNC|s_v_count\(6) & !\U_SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(6),
	datad => VCC,
	cin => \U_SYNC|Add0~11\,
	combout => \U_SYNC|Add0~12_combout\,
	cout => \U_SYNC|Add0~13\);

-- Location: FF_X18_Y36_N25
\U_SYNC|s_v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(6));

-- Location: LCCOMB_X18_Y36_N26
\U_SYNC|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~14_combout\ = (\U_SYNC|s_v_count\(7) & (!\U_SYNC|Add0~13\)) # (!\U_SYNC|s_v_count\(7) & ((\U_SYNC|Add0~13\) # (GND)))
-- \U_SYNC|Add0~15\ = CARRY((!\U_SYNC|Add0~13\) # (!\U_SYNC|s_v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(7),
	datad => VCC,
	cin => \U_SYNC|Add0~13\,
	combout => \U_SYNC|Add0~14_combout\,
	cout => \U_SYNC|Add0~15\);

-- Location: FF_X18_Y36_N27
\U_SYNC|s_v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(7));

-- Location: LCCOMB_X18_Y36_N28
\U_SYNC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~16_combout\ = (\U_SYNC|s_v_count\(8) & (\U_SYNC|Add0~15\ $ (GND))) # (!\U_SYNC|s_v_count\(8) & (!\U_SYNC|Add0~15\ & VCC))
-- \U_SYNC|Add0~17\ = CARRY((\U_SYNC|s_v_count\(8) & !\U_SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_v_count\(8),
	datad => VCC,
	cin => \U_SYNC|Add0~15\,
	combout => \U_SYNC|Add0~16_combout\,
	cout => \U_SYNC|Add0~17\);

-- Location: FF_X18_Y36_N29
\U_SYNC|s_v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|Add0~16_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(8));

-- Location: LCCOMB_X18_Y36_N30
\U_SYNC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Add0~18_combout\ = \U_SYNC|Add0~17\ $ (\U_SYNC|s_v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_SYNC|s_v_count\(9),
	cin => \U_SYNC|Add0~17\,
	combout => \U_SYNC|Add0~18_combout\);

-- Location: LCCOMB_X18_Y36_N2
\U_SYNC|s_v_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_v_count~3_combout\ = (\U_SYNC|Add0~18_combout\ & !\U_SYNC|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC|Add0~18_combout\,
	datad => \U_SYNC|Equal1~2_combout\,
	combout => \U_SYNC|s_v_count~3_combout\);

-- Location: FF_X18_Y36_N3
\U_SYNC|s_v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_v_count~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(9));

-- Location: LCCOMB_X18_Y36_N8
\U_SYNC|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal1~0_combout\ = (\U_SYNC|s_v_count\(3) & (!\U_SYNC|s_v_count\(4) & (!\U_SYNC|s_v_count\(0) & \U_SYNC|s_v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(3),
	datab => \U_SYNC|s_v_count\(4),
	datac => \U_SYNC|s_v_count\(0),
	datad => \U_SYNC|s_v_count\(9),
	combout => \U_SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y36_N24
\U_SYNC|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal1~1_combout\ = (!\U_SYNC|s_v_count\(5) & (!\U_SYNC|s_v_count\(6) & (!\U_SYNC|s_v_count\(7) & !\U_SYNC|s_v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(5),
	datab => \U_SYNC|s_v_count\(6),
	datac => \U_SYNC|s_v_count\(7),
	datad => \U_SYNC|s_v_count\(8),
	combout => \U_SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y36_N10
\U_SYNC|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|Equal1~2_combout\ = (!\U_SYNC|s_v_count\(1) & (\U_SYNC|s_v_count\(2) & (\U_SYNC|Equal1~0_combout\ & \U_SYNC|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(1),
	datab => \U_SYNC|s_v_count\(2),
	datac => \U_SYNC|Equal1~0_combout\,
	datad => \U_SYNC|Equal1~1_combout\,
	combout => \U_SYNC|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y36_N0
\U_SYNC|s_v_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|s_v_count~2_combout\ = (!\U_SYNC|Equal1~2_combout\ & \U_SYNC|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|Equal1~2_combout\,
	datad => \U_SYNC|Add0~6_combout\,
	combout => \U_SYNC|s_v_count~2_combout\);

-- Location: FF_X18_Y36_N1
\U_SYNC|s_v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_SYNC|s_clk_25mhz~clkctrl_outclk\,
	d => \U_SYNC|s_v_count~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \U_SYNC|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SYNC|s_v_count\(3));

-- Location: LCCOMB_X21_Y36_N24
\U_SYNC|o_vsync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_vsync~2_combout\ = ((\U_SYNC|s_v_count\(4)) # ((\U_SYNC|s_v_count\(2)) # (\U_SYNC|s_v_count\(9)))) # (!\U_SYNC|s_v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(3),
	datab => \U_SYNC|s_v_count\(4),
	datac => \U_SYNC|s_v_count\(2),
	datad => \U_SYNC|s_v_count\(9),
	combout => \U_SYNC|o_vsync~2_combout\);

-- Location: LCCOMB_X21_Y36_N28
\U_SYNC|o_vsync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_vsync~1_combout\ = (\U_SYNC|s_v_count\(6) & (\U_SYNC|s_v_count\(5) & (\U_SYNC|s_v_count\(8) & \U_SYNC|s_v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(6),
	datab => \U_SYNC|s_v_count\(5),
	datac => \U_SYNC|s_v_count\(8),
	datad => \U_SYNC|s_v_count\(7),
	combout => \U_SYNC|o_vsync~1_combout\);

-- Location: LCCOMB_X21_Y36_N26
\U_SYNC|o_vsync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_vsync~0_combout\ = LCELL((!\U_SYNC|o_vsync~2_combout\ & (\U_SYNC|s_v_count\(1) & \U_SYNC|o_vsync~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|o_vsync~2_combout\,
	datac => \U_SYNC|s_v_count\(1),
	datad => \U_SYNC|o_vsync~1_combout\,
	combout => \U_SYNC|o_vsync~0_combout\);

-- Location: LCCOMB_X20_Y36_N6
\U_PIXEL|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~0_combout\ = \U_SYNC|s_h_count\(1) $ (VCC)
-- \U_PIXEL|Add2~1\ = CARRY(\U_SYNC|s_h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(1),
	datad => VCC,
	combout => \U_PIXEL|Add2~0_combout\,
	cout => \U_PIXEL|Add2~1\);

-- Location: LCCOMB_X20_Y36_N8
\U_PIXEL|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~2_combout\ = (\U_SYNC|s_h_count\(2) & (\U_PIXEL|Add2~1\ & VCC)) # (!\U_SYNC|s_h_count\(2) & (!\U_PIXEL|Add2~1\))
-- \U_PIXEL|Add2~3\ = CARRY((!\U_SYNC|s_h_count\(2) & !\U_PIXEL|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(2),
	datad => VCC,
	cin => \U_PIXEL|Add2~1\,
	combout => \U_PIXEL|Add2~2_combout\,
	cout => \U_PIXEL|Add2~3\);

-- Location: LCCOMB_X20_Y36_N10
\U_PIXEL|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~4_combout\ = (\U_SYNC|s_h_count\(3) & (\U_PIXEL|Add2~3\ $ (GND))) # (!\U_SYNC|s_h_count\(3) & (!\U_PIXEL|Add2~3\ & VCC))
-- \U_PIXEL|Add2~5\ = CARRY((\U_SYNC|s_h_count\(3) & !\U_PIXEL|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(3),
	datad => VCC,
	cin => \U_PIXEL|Add2~3\,
	combout => \U_PIXEL|Add2~4_combout\,
	cout => \U_PIXEL|Add2~5\);

-- Location: LCCOMB_X20_Y36_N12
\U_PIXEL|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~6_combout\ = (\U_SYNC|s_h_count\(4) & (!\U_PIXEL|Add2~5\)) # (!\U_SYNC|s_h_count\(4) & ((\U_PIXEL|Add2~5\) # (GND)))
-- \U_PIXEL|Add2~7\ = CARRY((!\U_PIXEL|Add2~5\) # (!\U_SYNC|s_h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(4),
	datad => VCC,
	cin => \U_PIXEL|Add2~5\,
	combout => \U_PIXEL|Add2~6_combout\,
	cout => \U_PIXEL|Add2~7\);

-- Location: LCCOMB_X20_Y36_N14
\U_PIXEL|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~8_combout\ = (\U_SYNC|s_h_count\(5) & (\U_PIXEL|Add2~7\ $ (GND))) # (!\U_SYNC|s_h_count\(5) & (!\U_PIXEL|Add2~7\ & VCC))
-- \U_PIXEL|Add2~9\ = CARRY((\U_SYNC|s_h_count\(5) & !\U_PIXEL|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(5),
	datad => VCC,
	cin => \U_PIXEL|Add2~7\,
	combout => \U_PIXEL|Add2~8_combout\,
	cout => \U_PIXEL|Add2~9\);

-- Location: LCCOMB_X20_Y36_N16
\U_PIXEL|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~10_combout\ = (\U_SYNC|s_h_count\(6) & (!\U_PIXEL|Add2~9\)) # (!\U_SYNC|s_h_count\(6) & ((\U_PIXEL|Add2~9\) # (GND)))
-- \U_PIXEL|Add2~11\ = CARRY((!\U_PIXEL|Add2~9\) # (!\U_SYNC|s_h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(6),
	datad => VCC,
	cin => \U_PIXEL|Add2~9\,
	combout => \U_PIXEL|Add2~10_combout\,
	cout => \U_PIXEL|Add2~11\);

-- Location: LCCOMB_X20_Y36_N18
\U_PIXEL|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~12_combout\ = (\U_SYNC|s_h_count\(7) & (\U_PIXEL|Add2~11\ $ (GND))) # (!\U_SYNC|s_h_count\(7) & (!\U_PIXEL|Add2~11\ & VCC))
-- \U_PIXEL|Add2~13\ = CARRY((\U_SYNC|s_h_count\(7) & !\U_PIXEL|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(7),
	datad => VCC,
	cin => \U_PIXEL|Add2~11\,
	combout => \U_PIXEL|Add2~12_combout\,
	cout => \U_PIXEL|Add2~13\);

-- Location: LCCOMB_X20_Y36_N20
\U_PIXEL|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~14_combout\ = (\U_SYNC|s_h_count\(8) & (!\U_PIXEL|Add2~13\)) # (!\U_SYNC|s_h_count\(8) & ((\U_PIXEL|Add2~13\) # (GND)))
-- \U_PIXEL|Add2~15\ = CARRY((!\U_PIXEL|Add2~13\) # (!\U_SYNC|s_h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(8),
	datad => VCC,
	cin => \U_PIXEL|Add2~13\,
	combout => \U_PIXEL|Add2~14_combout\,
	cout => \U_PIXEL|Add2~15\);

-- Location: LCCOMB_X20_Y36_N22
\U_PIXEL|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~16_combout\ = (\U_SYNC|s_h_count\(9) & (\U_PIXEL|Add2~15\ $ (GND))) # (!\U_SYNC|s_h_count\(9) & (!\U_PIXEL|Add2~15\ & VCC))
-- \U_PIXEL|Add2~17\ = CARRY((\U_SYNC|s_h_count\(9) & !\U_PIXEL|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC|s_h_count\(9),
	datad => VCC,
	cin => \U_PIXEL|Add2~15\,
	combout => \U_PIXEL|Add2~16_combout\,
	cout => \U_PIXEL|Add2~17\);

-- Location: LCCOMB_X21_Y36_N0
\U_PIXEL|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~0_combout\ = (\U_SYNC|s_h_count\(0) & (\U_SYNC|s_v_count\(0) $ (VCC))) # (!\U_SYNC|s_h_count\(0) & ((\U_SYNC|s_v_count\(0)) # (GND)))
-- \U_PIXEL|Add3~1\ = CARRY((\U_SYNC|s_v_count\(0)) # (!\U_SYNC|s_h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_h_count\(0),
	datab => \U_SYNC|s_v_count\(0),
	datad => VCC,
	combout => \U_PIXEL|Add3~0_combout\,
	cout => \U_PIXEL|Add3~1\);

-- Location: LCCOMB_X21_Y36_N2
\U_PIXEL|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~2_combout\ = (\U_SYNC|s_v_count\(1) & ((\U_PIXEL|Add2~0_combout\ & (!\U_PIXEL|Add3~1\)) # (!\U_PIXEL|Add2~0_combout\ & (\U_PIXEL|Add3~1\ & VCC)))) # (!\U_SYNC|s_v_count\(1) & ((\U_PIXEL|Add2~0_combout\ & ((\U_PIXEL|Add3~1\) # (GND))) # 
-- (!\U_PIXEL|Add2~0_combout\ & (!\U_PIXEL|Add3~1\))))
-- \U_PIXEL|Add3~3\ = CARRY((\U_SYNC|s_v_count\(1) & (\U_PIXEL|Add2~0_combout\ & !\U_PIXEL|Add3~1\)) # (!\U_SYNC|s_v_count\(1) & ((\U_PIXEL|Add2~0_combout\) # (!\U_PIXEL|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(1),
	datab => \U_PIXEL|Add2~0_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~1\,
	combout => \U_PIXEL|Add3~2_combout\,
	cout => \U_PIXEL|Add3~3\);

-- Location: LCCOMB_X21_Y36_N4
\U_PIXEL|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~4_combout\ = ((\U_PIXEL|Add2~2_combout\ $ (\U_SYNC|s_v_count\(2) $ (\U_PIXEL|Add3~3\)))) # (GND)
-- \U_PIXEL|Add3~5\ = CARRY((\U_PIXEL|Add2~2_combout\ & (\U_SYNC|s_v_count\(2) & !\U_PIXEL|Add3~3\)) # (!\U_PIXEL|Add2~2_combout\ & ((\U_SYNC|s_v_count\(2)) # (!\U_PIXEL|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add2~2_combout\,
	datab => \U_SYNC|s_v_count\(2),
	datad => VCC,
	cin => \U_PIXEL|Add3~3\,
	combout => \U_PIXEL|Add3~4_combout\,
	cout => \U_PIXEL|Add3~5\);

-- Location: LCCOMB_X21_Y36_N6
\U_PIXEL|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~6_combout\ = (\U_SYNC|s_v_count\(3) & ((\U_PIXEL|Add2~4_combout\ & (!\U_PIXEL|Add3~5\)) # (!\U_PIXEL|Add2~4_combout\ & (\U_PIXEL|Add3~5\ & VCC)))) # (!\U_SYNC|s_v_count\(3) & ((\U_PIXEL|Add2~4_combout\ & ((\U_PIXEL|Add3~5\) # (GND))) # 
-- (!\U_PIXEL|Add2~4_combout\ & (!\U_PIXEL|Add3~5\))))
-- \U_PIXEL|Add3~7\ = CARRY((\U_SYNC|s_v_count\(3) & (\U_PIXEL|Add2~4_combout\ & !\U_PIXEL|Add3~5\)) # (!\U_SYNC|s_v_count\(3) & ((\U_PIXEL|Add2~4_combout\) # (!\U_PIXEL|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(3),
	datab => \U_PIXEL|Add2~4_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~5\,
	combout => \U_PIXEL|Add3~6_combout\,
	cout => \U_PIXEL|Add3~7\);

-- Location: LCCOMB_X21_Y36_N8
\U_PIXEL|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~8_combout\ = ((\U_PIXEL|Add2~6_combout\ $ (\U_SYNC|s_v_count\(4) $ (\U_PIXEL|Add3~7\)))) # (GND)
-- \U_PIXEL|Add3~9\ = CARRY((\U_PIXEL|Add2~6_combout\ & (\U_SYNC|s_v_count\(4) & !\U_PIXEL|Add3~7\)) # (!\U_PIXEL|Add2~6_combout\ & ((\U_SYNC|s_v_count\(4)) # (!\U_PIXEL|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add2~6_combout\,
	datab => \U_SYNC|s_v_count\(4),
	datad => VCC,
	cin => \U_PIXEL|Add3~7\,
	combout => \U_PIXEL|Add3~8_combout\,
	cout => \U_PIXEL|Add3~9\);

-- Location: LCCOMB_X21_Y36_N10
\U_PIXEL|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~10_combout\ = (\U_PIXEL|Add2~8_combout\ & ((\U_SYNC|s_v_count\(5) & (!\U_PIXEL|Add3~9\)) # (!\U_SYNC|s_v_count\(5) & ((\U_PIXEL|Add3~9\) # (GND))))) # (!\U_PIXEL|Add2~8_combout\ & ((\U_SYNC|s_v_count\(5) & (\U_PIXEL|Add3~9\ & VCC)) # 
-- (!\U_SYNC|s_v_count\(5) & (!\U_PIXEL|Add3~9\))))
-- \U_PIXEL|Add3~11\ = CARRY((\U_PIXEL|Add2~8_combout\ & ((!\U_PIXEL|Add3~9\) # (!\U_SYNC|s_v_count\(5)))) # (!\U_PIXEL|Add2~8_combout\ & (!\U_SYNC|s_v_count\(5) & !\U_PIXEL|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add2~8_combout\,
	datab => \U_SYNC|s_v_count\(5),
	datad => VCC,
	cin => \U_PIXEL|Add3~9\,
	combout => \U_PIXEL|Add3~10_combout\,
	cout => \U_PIXEL|Add3~11\);

-- Location: LCCOMB_X21_Y36_N12
\U_PIXEL|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~12_combout\ = ((\U_SYNC|s_v_count\(6) $ (\U_PIXEL|Add2~10_combout\ $ (\U_PIXEL|Add3~11\)))) # (GND)
-- \U_PIXEL|Add3~13\ = CARRY((\U_SYNC|s_v_count\(6) & ((!\U_PIXEL|Add3~11\) # (!\U_PIXEL|Add2~10_combout\))) # (!\U_SYNC|s_v_count\(6) & (!\U_PIXEL|Add2~10_combout\ & !\U_PIXEL|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(6),
	datab => \U_PIXEL|Add2~10_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~11\,
	combout => \U_PIXEL|Add3~12_combout\,
	cout => \U_PIXEL|Add3~13\);

-- Location: LCCOMB_X21_Y36_N14
\U_PIXEL|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~14_combout\ = (\U_SYNC|s_v_count\(7) & ((\U_PIXEL|Add2~12_combout\ & (!\U_PIXEL|Add3~13\)) # (!\U_PIXEL|Add2~12_combout\ & (\U_PIXEL|Add3~13\ & VCC)))) # (!\U_SYNC|s_v_count\(7) & ((\U_PIXEL|Add2~12_combout\ & ((\U_PIXEL|Add3~13\) # (GND))) 
-- # (!\U_PIXEL|Add2~12_combout\ & (!\U_PIXEL|Add3~13\))))
-- \U_PIXEL|Add3~15\ = CARRY((\U_SYNC|s_v_count\(7) & (\U_PIXEL|Add2~12_combout\ & !\U_PIXEL|Add3~13\)) # (!\U_SYNC|s_v_count\(7) & ((\U_PIXEL|Add2~12_combout\) # (!\U_PIXEL|Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(7),
	datab => \U_PIXEL|Add2~12_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~13\,
	combout => \U_PIXEL|Add3~14_combout\,
	cout => \U_PIXEL|Add3~15\);

-- Location: LCCOMB_X21_Y36_N16
\U_PIXEL|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~16_combout\ = ((\U_SYNC|s_v_count\(8) $ (\U_PIXEL|Add2~14_combout\ $ (\U_PIXEL|Add3~15\)))) # (GND)
-- \U_PIXEL|Add3~17\ = CARRY((\U_SYNC|s_v_count\(8) & ((!\U_PIXEL|Add3~15\) # (!\U_PIXEL|Add2~14_combout\))) # (!\U_SYNC|s_v_count\(8) & (!\U_PIXEL|Add2~14_combout\ & !\U_PIXEL|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(8),
	datab => \U_PIXEL|Add2~14_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~15\,
	combout => \U_PIXEL|Add3~16_combout\,
	cout => \U_PIXEL|Add3~17\);

-- Location: LCCOMB_X21_Y36_N18
\U_PIXEL|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~18_combout\ = (\U_PIXEL|Add2~16_combout\ & ((\U_PIXEL|Add3~17\) # (GND))) # (!\U_PIXEL|Add2~16_combout\ & (!\U_PIXEL|Add3~17\))
-- \U_PIXEL|Add3~19\ = CARRY((\U_PIXEL|Add2~16_combout\) # (!\U_PIXEL|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PIXEL|Add2~16_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~17\,
	combout => \U_PIXEL|Add3~18_combout\,
	cout => \U_PIXEL|Add3~19\);

-- Location: LCCOMB_X20_Y36_N24
\U_PIXEL|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add2~18_combout\ = \U_PIXEL|Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_PIXEL|Add2~17\,
	combout => \U_PIXEL|Add2~18_combout\);

-- Location: LCCOMB_X21_Y36_N20
\U_PIXEL|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~20_combout\ = (\U_PIXEL|Add2~18_combout\ & (!\U_PIXEL|Add3~19\ & VCC)) # (!\U_PIXEL|Add2~18_combout\ & (\U_PIXEL|Add3~19\ $ (GND)))
-- \U_PIXEL|Add3~21\ = CARRY((!\U_PIXEL|Add2~18_combout\ & !\U_PIXEL|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PIXEL|Add2~18_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add3~19\,
	combout => \U_PIXEL|Add3~20_combout\,
	cout => \U_PIXEL|Add3~21\);

-- Location: LCCOMB_X21_Y36_N22
\U_PIXEL|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add3~22_combout\ = !\U_PIXEL|Add3~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_PIXEL|Add3~21\,
	combout => \U_PIXEL|Add3~22_combout\);

-- Location: LCCOMB_X22_Y36_N28
\U_PIXEL|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|process_1~0_combout\ = \U_PIXEL|Add3~0_combout\ $ (\U_PIXEL|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_PIXEL|Add3~0_combout\,
	datad => \U_PIXEL|Add3~22_combout\,
	combout => \U_PIXEL|process_1~0_combout\);

-- Location: LCCOMB_X22_Y36_N2
\U_PIXEL|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~0_combout\ = (\U_PIXEL|process_1~0_combout\ & (\U_PIXEL|Add3~22_combout\ $ (VCC))) # (!\U_PIXEL|process_1~0_combout\ & (\U_PIXEL|Add3~22_combout\ & VCC))
-- \U_PIXEL|Add4~1\ = CARRY((\U_PIXEL|process_1~0_combout\ & \U_PIXEL|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|process_1~0_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	combout => \U_PIXEL|Add4~0_combout\,
	cout => \U_PIXEL|Add4~1\);

-- Location: LCCOMB_X22_Y36_N4
\U_PIXEL|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~2_combout\ = (\U_PIXEL|Add4~1\ & (\U_PIXEL|Add3~2_combout\ $ ((!\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~1\ & ((\U_PIXEL|Add3~2_combout\ $ (\U_PIXEL|Add3~22_combout\)) # (GND)))
-- \U_PIXEL|Add4~3\ = CARRY((\U_PIXEL|Add3~2_combout\ $ (!\U_PIXEL|Add3~22_combout\)) # (!\U_PIXEL|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~2_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~1\,
	combout => \U_PIXEL|Add4~2_combout\,
	cout => \U_PIXEL|Add4~3\);

-- Location: LCCOMB_X22_Y36_N6
\U_PIXEL|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~4_combout\ = (\U_PIXEL|Add4~3\ & ((\U_PIXEL|Add3~4_combout\ $ (\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~3\ & (\U_PIXEL|Add3~4_combout\ $ (\U_PIXEL|Add3~22_combout\ $ (VCC))))
-- \U_PIXEL|Add4~5\ = CARRY((!\U_PIXEL|Add4~3\ & (\U_PIXEL|Add3~4_combout\ $ (\U_PIXEL|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~4_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~3\,
	combout => \U_PIXEL|Add4~4_combout\,
	cout => \U_PIXEL|Add4~5\);

-- Location: LCCOMB_X22_Y36_N8
\U_PIXEL|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~6_combout\ = (\U_PIXEL|Add4~5\ & (\U_PIXEL|Add3~6_combout\ $ ((!\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~5\ & ((\U_PIXEL|Add3~6_combout\ $ (\U_PIXEL|Add3~22_combout\)) # (GND)))
-- \U_PIXEL|Add4~7\ = CARRY((\U_PIXEL|Add3~6_combout\ $ (!\U_PIXEL|Add3~22_combout\)) # (!\U_PIXEL|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~6_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~5\,
	combout => \U_PIXEL|Add4~6_combout\,
	cout => \U_PIXEL|Add4~7\);

-- Location: LCCOMB_X22_Y36_N10
\U_PIXEL|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~8_combout\ = (\U_PIXEL|Add4~7\ & ((\U_PIXEL|Add3~8_combout\ $ (\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~7\ & (\U_PIXEL|Add3~8_combout\ $ (\U_PIXEL|Add3~22_combout\ $ (VCC))))
-- \U_PIXEL|Add4~9\ = CARRY((!\U_PIXEL|Add4~7\ & (\U_PIXEL|Add3~8_combout\ $ (\U_PIXEL|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~8_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~7\,
	combout => \U_PIXEL|Add4~8_combout\,
	cout => \U_PIXEL|Add4~9\);

-- Location: LCCOMB_X22_Y36_N12
\U_PIXEL|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~10_combout\ = (\U_PIXEL|Add4~9\ & (\U_PIXEL|Add3~10_combout\ $ ((!\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~9\ & ((\U_PIXEL|Add3~10_combout\ $ (\U_PIXEL|Add3~22_combout\)) # (GND)))
-- \U_PIXEL|Add4~11\ = CARRY((\U_PIXEL|Add3~10_combout\ $ (!\U_PIXEL|Add3~22_combout\)) # (!\U_PIXEL|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~10_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~9\,
	combout => \U_PIXEL|Add4~10_combout\,
	cout => \U_PIXEL|Add4~11\);

-- Location: LCCOMB_X22_Y36_N14
\U_PIXEL|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~12_combout\ = (\U_PIXEL|Add4~11\ & ((\U_PIXEL|Add3~12_combout\ $ (\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~11\ & (\U_PIXEL|Add3~12_combout\ $ (\U_PIXEL|Add3~22_combout\ $ (VCC))))
-- \U_PIXEL|Add4~13\ = CARRY((!\U_PIXEL|Add4~11\ & (\U_PIXEL|Add3~12_combout\ $ (\U_PIXEL|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~12_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~11\,
	combout => \U_PIXEL|Add4~12_combout\,
	cout => \U_PIXEL|Add4~13\);

-- Location: LCCOMB_X22_Y36_N16
\U_PIXEL|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~14_combout\ = (\U_PIXEL|Add4~13\ & (\U_PIXEL|Add3~14_combout\ $ ((!\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~13\ & ((\U_PIXEL|Add3~14_combout\ $ (\U_PIXEL|Add3~22_combout\)) # (GND)))
-- \U_PIXEL|Add4~15\ = CARRY((\U_PIXEL|Add3~14_combout\ $ (!\U_PIXEL|Add3~22_combout\)) # (!\U_PIXEL|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~14_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~13\,
	combout => \U_PIXEL|Add4~14_combout\,
	cout => \U_PIXEL|Add4~15\);

-- Location: LCCOMB_X22_Y36_N18
\U_PIXEL|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~16_combout\ = (\U_PIXEL|Add4~15\ & ((\U_PIXEL|Add3~16_combout\ $ (\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~15\ & (\U_PIXEL|Add3~16_combout\ $ (\U_PIXEL|Add3~22_combout\ $ (VCC))))
-- \U_PIXEL|Add4~17\ = CARRY((!\U_PIXEL|Add4~15\ & (\U_PIXEL|Add3~16_combout\ $ (\U_PIXEL|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~16_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~15\,
	combout => \U_PIXEL|Add4~16_combout\,
	cout => \U_PIXEL|Add4~17\);

-- Location: LCCOMB_X22_Y36_N20
\U_PIXEL|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~18_combout\ = (\U_PIXEL|Add4~17\ & (\U_PIXEL|Add3~18_combout\ $ ((!\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~17\ & ((\U_PIXEL|Add3~18_combout\ $ (\U_PIXEL|Add3~22_combout\)) # (GND)))
-- \U_PIXEL|Add4~19\ = CARRY((\U_PIXEL|Add3~18_combout\ $ (!\U_PIXEL|Add3~22_combout\)) # (!\U_PIXEL|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~18_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~17\,
	combout => \U_PIXEL|Add4~18_combout\,
	cout => \U_PIXEL|Add4~19\);

-- Location: LCCOMB_X22_Y36_N22
\U_PIXEL|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~20_combout\ = (\U_PIXEL|Add4~19\ & ((\U_PIXEL|Add3~20_combout\ $ (\U_PIXEL|Add3~22_combout\)))) # (!\U_PIXEL|Add4~19\ & (\U_PIXEL|Add3~20_combout\ $ (\U_PIXEL|Add3~22_combout\ $ (VCC))))
-- \U_PIXEL|Add4~21\ = CARRY((!\U_PIXEL|Add4~19\ & (\U_PIXEL|Add3~20_combout\ $ (\U_PIXEL|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add3~20_combout\,
	datab => \U_PIXEL|Add3~22_combout\,
	datad => VCC,
	cin => \U_PIXEL|Add4~19\,
	combout => \U_PIXEL|Add4~20_combout\,
	cout => \U_PIXEL|Add4~21\);

-- Location: LCCOMB_X22_Y36_N24
\U_PIXEL|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|Add4~22_combout\ = \U_PIXEL|Add4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_PIXEL|Add4~21\,
	combout => \U_PIXEL|Add4~22_combout\);

-- Location: LCCOMB_X22_Y36_N30
\U_PIXEL|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|LessThan0~2_combout\ = (\U_PIXEL|Add4~18_combout\) # ((\U_PIXEL|Add4~16_combout\) # ((\U_PIXEL|Add4~20_combout\) # (\U_PIXEL|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add4~18_combout\,
	datab => \U_PIXEL|Add4~16_combout\,
	datac => \U_PIXEL|Add4~20_combout\,
	datad => \U_PIXEL|Add4~22_combout\,
	combout => \U_PIXEL|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y36_N4
\U_SYNC|o_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_enable~0_combout\ = (!\U_SYNC|s_v_count\(9) & (((!\U_SYNC|s_h_count\(8) & !\U_SYNC|s_h_count\(7))) # (!\U_SYNC|s_h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC|s_v_count\(9),
	datab => \U_SYNC|s_h_count\(8),
	datac => \U_SYNC|s_h_count\(7),
	datad => \U_SYNC|s_h_count\(9),
	combout => \U_SYNC|o_enable~0_combout\);

-- Location: LCCOMB_X21_Y36_N30
\U_SYNC|o_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC|o_enable~1_combout\ = (\U_SYNC|o_enable~0_combout\ & !\U_SYNC|o_vsync~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC|o_enable~0_combout\,
	datad => \U_SYNC|o_vsync~1_combout\,
	combout => \U_SYNC|o_enable~1_combout\);

-- Location: LCCOMB_X22_Y36_N26
\U_PIXEL|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|LessThan0~0_combout\ = (\U_PIXEL|Add4~4_combout\) # ((\U_PIXEL|Add4~6_combout\) # ((\U_PIXEL|Add4~2_combout\ & \U_PIXEL|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add4~4_combout\,
	datab => \U_PIXEL|Add4~6_combout\,
	datac => \U_PIXEL|Add4~2_combout\,
	datad => \U_PIXEL|Add4~0_combout\,
	combout => \U_PIXEL|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y36_N0
\U_PIXEL|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|LessThan0~1_combout\ = (\U_PIXEL|Add4~10_combout\) # ((\U_PIXEL|Add4~14_combout\) # ((\U_PIXEL|Add4~12_combout\) # (\U_PIXEL|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|Add4~10_combout\,
	datab => \U_PIXEL|Add4~14_combout\,
	datac => \U_PIXEL|Add4~12_combout\,
	datad => \U_PIXEL|Add4~8_combout\,
	combout => \U_PIXEL|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y37_N4
\U_PIXEL|o_vga_r[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|o_vga_r[0]~0_combout\ = (\U_PIXEL|LessThan0~2_combout\) # (((\U_PIXEL|LessThan0~0_combout\) # (\U_PIXEL|LessThan0~1_combout\)) # (!\U_SYNC|o_enable~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|LessThan0~2_combout\,
	datab => \U_SYNC|o_enable~1_combout\,
	datac => \U_PIXEL|LessThan0~0_combout\,
	datad => \U_PIXEL|LessThan0~1_combout\,
	combout => \U_PIXEL|o_vga_r[0]~0_combout\);

-- Location: LCCOMB_X22_Y37_N2
\U_PIXEL|o_vga_b[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_PIXEL|o_vga_b[0]~0_combout\ = (\U_SYNC|o_enable~1_combout\ & ((\U_PIXEL|LessThan0~2_combout\) # ((\U_PIXEL|LessThan0~0_combout\) # (\U_PIXEL|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PIXEL|LessThan0~2_combout\,
	datab => \U_SYNC|o_enable~1_combout\,
	datac => \U_PIXEL|LessThan0~0_combout\,
	datad => \U_PIXEL|LessThan0~1_combout\,
	combout => \U_PIXEL|o_vga_b[0]~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;
END structure;


