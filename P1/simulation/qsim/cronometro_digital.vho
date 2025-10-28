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

-- DATE "10/16/2025 20:10:23"

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

ENTITY 	cronometro_digital IS
    PORT (
	CLK_50MHZ : IN std_logic;
	BTN1_START_PAUSE : IN std_logic;
	BTN2_RESET : IN std_logic;
	ANODES_OUT : BUFFER std_logic_vector(5 DOWNTO 0);
	SEGMENTS_OUT : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END cronometro_digital;

-- Design Ports Information
-- ANODES_OUT[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANODES_OUT[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANODES_OUT[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANODES_OUT[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANODES_OUT[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANODES_OUT[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTS_OUT[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN2_RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN1_START_PAUSE	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro_digital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHZ : std_logic;
SIGNAL ww_BTN1_START_PAUSE : std_logic;
SIGNAL ww_BTN2_RESET : std_logic;
SIGNAL ww_ANODES_OUT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SEGMENTS_OUT : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \display_mux_inst|mux_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ANODES_OUT[0]~output_o\ : std_logic;
SIGNAL \ANODES_OUT[1]~output_o\ : std_logic;
SIGNAL \ANODES_OUT[2]~output_o\ : std_logic;
SIGNAL \ANODES_OUT[3]~output_o\ : std_logic;
SIGNAL \ANODES_OUT[4]~output_o\ : std_logic;
SIGNAL \ANODES_OUT[5]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[0]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[1]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[2]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[3]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[4]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[5]~output_o\ : std_logic;
SIGNAL \SEGMENTS_OUT[6]~output_o\ : std_logic;
SIGNAL \CLK_50MHZ~input_o\ : std_logic;
SIGNAL \CLK_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \display_mux_inst|Add0~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~1\ : std_logic;
SIGNAL \display_mux_inst|Add0~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~3\ : std_logic;
SIGNAL \display_mux_inst|Add0~4_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~5\ : std_logic;
SIGNAL \display_mux_inst|Add0~6_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~7\ : std_logic;
SIGNAL \display_mux_inst|Add0~8_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~9\ : std_logic;
SIGNAL \display_mux_inst|Add0~10_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~11\ : std_logic;
SIGNAL \display_mux_inst|Add0~12_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~13\ : std_logic;
SIGNAL \display_mux_inst|Add0~14_combout\ : std_logic;
SIGNAL \display_mux_inst|Equal0~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~15\ : std_logic;
SIGNAL \display_mux_inst|Add0~16_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~17\ : std_logic;
SIGNAL \display_mux_inst|Add0~18_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~19\ : std_logic;
SIGNAL \display_mux_inst|Add0~20_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~21\ : std_logic;
SIGNAL \display_mux_inst|Add0~22_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~23\ : std_logic;
SIGNAL \display_mux_inst|Add0~24_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~25\ : std_logic;
SIGNAL \display_mux_inst|Add0~26_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~4_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~27\ : std_logic;
SIGNAL \display_mux_inst|Add0~28_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~5_combout\ : std_logic;
SIGNAL \display_mux_inst|Add0~29\ : std_logic;
SIGNAL \display_mux_inst|Add0~30_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_counter~6_combout\ : std_logic;
SIGNAL \display_mux_inst|Equal0~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Equal0~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Equal0~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Equal0~4_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_clk~0_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_clk~feeder_combout\ : std_logic;
SIGNAL \display_mux_inst|mux_clk~q\ : std_logic;
SIGNAL \display_mux_inst|mux_clk~clkctrl_outclk\ : std_logic;
SIGNAL \display_mux_inst|digit_sel[0]~2_combout\ : std_logic;
SIGNAL \display_mux_inst|digit_sel~0_combout\ : std_logic;
SIGNAL \display_mux_inst|digit_sel~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~4_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux5~5_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m0[0]~4_combout\ : std_logic;
SIGNAL \BTN2_RESET~input_o\ : std_logic;
SIGNAL \counter_bcd_inst|s0[0]~4_combout\ : std_logic;
SIGNAL \BTN1_START_PAUSE~input_o\ : std_logic;
SIGNAL \fsm_control_inst|btn1_ff1~q\ : std_logic;
SIGNAL \fsm_control_inst|btn1_ff2~q\ : std_logic;
SIGNAL \fsm_control_inst|current_state~0_combout\ : std_logic;
SIGNAL \fsm_control_inst|current_state~q\ : std_logic;
SIGNAL \counter_bcd_inst|c0[0]~3_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~0_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~1\ : std_logic;
SIGNAL \clk_divider_inst|Add0~2_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~3\ : std_logic;
SIGNAL \clk_divider_inst|Add0~4_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~5\ : std_logic;
SIGNAL \clk_divider_inst|Add0~6_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~7\ : std_logic;
SIGNAL \clk_divider_inst|Add0~8_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~9\ : std_logic;
SIGNAL \clk_divider_inst|Add0~10_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~6_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~11\ : std_logic;
SIGNAL \clk_divider_inst|Add0~12_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~13\ : std_logic;
SIGNAL \clk_divider_inst|Add0~14_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~15\ : std_logic;
SIGNAL \clk_divider_inst|Add0~16_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~5_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~17\ : std_logic;
SIGNAL \clk_divider_inst|Add0~18_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~19\ : std_logic;
SIGNAL \clk_divider_inst|Add0~20_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~3_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~21\ : std_logic;
SIGNAL \clk_divider_inst|Add0~22_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~23\ : std_logic;
SIGNAL \clk_divider_inst|Add0~24_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~25\ : std_logic;
SIGNAL \clk_divider_inst|Add0~26_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~4_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~27\ : std_logic;
SIGNAL \clk_divider_inst|Add0~28_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~1_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~29\ : std_logic;
SIGNAL \clk_divider_inst|Add0~30_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~3_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~31\ : std_logic;
SIGNAL \clk_divider_inst|Add0~32_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~2_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~33\ : std_logic;
SIGNAL \clk_divider_inst|Add0~34_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~1_combout\ : std_logic;
SIGNAL \clk_divider_inst|Add0~35\ : std_logic;
SIGNAL \clk_divider_inst|Add0~36_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter~0_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~4_combout\ : std_logic;
SIGNAL \clk_divider_inst|Equal0~5_combout\ : std_logic;
SIGNAL \clk_divider_inst|enable_100hz~q\ : std_logic;
SIGNAL \fsm_control_inst|count_enable~combout\ : std_logic;
SIGNAL \counter_bcd_inst|c0~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c0~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c0[2]~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Equal1~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c1[0]~4_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c1[3]~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c1~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c1[2]~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|c1~3_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Equal2~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s0[3]~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s0[2]~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s0~3_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s0~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Equal3~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1[3]~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s1[0]~4_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s1~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s1[3]~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s1[3]~3_combout\ : std_logic;
SIGNAL \counter_bcd_inst|s1~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Equal4~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m0[3]~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m0[2]~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m0~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m0~3_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1[0]~7_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Equal5~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1[3]~3_combout\ : std_logic;
SIGNAL \counter_bcd_inst|process_0~1_combout\ : std_logic;
SIGNAL \counter_bcd_inst|process_0~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|process_0~2_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1~4_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1~6_combout\ : std_logic;
SIGNAL \counter_bcd_inst|Add0~0_combout\ : std_logic;
SIGNAL \counter_bcd_inst|m1[3]~5_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux6~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux6~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux6~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux6~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux8~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux8~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux8~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux8~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux9~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux9~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux9~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux9~3_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux7~0_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux7~1_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux7~2_combout\ : std_logic;
SIGNAL \display_mux_inst|Mux7~3_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_7seg_inst|Mux0~0_combout\ : std_logic;
SIGNAL \clk_divider_inst|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \display_mux_inst|mux_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \counter_bcd_inst|c0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bcd_inst|c1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bcd_inst|s0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_mux_inst|bcd_to_dec\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bcd_inst|s1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_mux_inst|digit_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display_mux_inst|anode_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \counter_bcd_inst|m1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bcd_inst|m0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_BTN2_RESET~input_o\ : std_logic;
SIGNAL \decoder_7seg_inst|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50MHZ <= CLK_50MHZ;
ww_BTN1_START_PAUSE <= BTN1_START_PAUSE;
ww_BTN2_RESET <= BTN2_RESET;
ANODES_OUT <= ww_ANODES_OUT;
SEGMENTS_OUT <= ww_SEGMENTS_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\display_mux_inst|mux_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \display_mux_inst|mux_clk~q\);

\CLK_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHZ~input_o\);
\ALT_INV_BTN2_RESET~input_o\ <= NOT \BTN2_RESET~input_o\;
\decoder_7seg_inst|ALT_INV_Mux6~0_combout\ <= NOT \decoder_7seg_inst|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X78_Y43_N23
\ANODES_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(0),
	devoe => ww_devoe,
	o => \ANODES_OUT[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\ANODES_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(1),
	devoe => ww_devoe,
	o => \ANODES_OUT[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\ANODES_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(2),
	devoe => ww_devoe,
	o => \ANODES_OUT[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\ANODES_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(3),
	devoe => ww_devoe,
	o => \ANODES_OUT[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\ANODES_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(4),
	devoe => ww_devoe,
	o => \ANODES_OUT[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\ANODES_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_mux_inst|anode_sel\(5),
	devoe => ww_devoe,
	o => \ANODES_OUT[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\SEGMENTS_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SEGMENTS_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SEGMENTS_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SEGMENTS_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SEGMENTS_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SEGMENTS_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SEGMENTS_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_7seg_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEGMENTS_OUT[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK_50MHZ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHZ,
	o => \CLK_50MHZ~input_o\);

-- Location: CLKCTRL_G19
\CLK_50MHZ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHZ~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y53_N0
\display_mux_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~0_combout\ = \display_mux_inst|mux_counter\(0) $ (VCC)
-- \display_mux_inst|Add0~1\ = CARRY(\display_mux_inst|mux_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(0),
	datad => VCC,
	combout => \display_mux_inst|Add0~0_combout\,
	cout => \display_mux_inst|Add0~1\);

-- Location: FF_X46_Y53_N1
\display_mux_inst|mux_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(0));

-- Location: LCCOMB_X46_Y53_N2
\display_mux_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~2_combout\ = (\display_mux_inst|mux_counter\(1) & (!\display_mux_inst|Add0~1\)) # (!\display_mux_inst|mux_counter\(1) & ((\display_mux_inst|Add0~1\) # (GND)))
-- \display_mux_inst|Add0~3\ = CARRY((!\display_mux_inst|Add0~1\) # (!\display_mux_inst|mux_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(1),
	datad => VCC,
	cin => \display_mux_inst|Add0~1\,
	combout => \display_mux_inst|Add0~2_combout\,
	cout => \display_mux_inst|Add0~3\);

-- Location: FF_X46_Y53_N3
\display_mux_inst|mux_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(1));

-- Location: LCCOMB_X46_Y53_N4
\display_mux_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~4_combout\ = (\display_mux_inst|mux_counter\(2) & (\display_mux_inst|Add0~3\ $ (GND))) # (!\display_mux_inst|mux_counter\(2) & (!\display_mux_inst|Add0~3\ & VCC))
-- \display_mux_inst|Add0~5\ = CARRY((\display_mux_inst|mux_counter\(2) & !\display_mux_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(2),
	datad => VCC,
	cin => \display_mux_inst|Add0~3\,
	combout => \display_mux_inst|Add0~4_combout\,
	cout => \display_mux_inst|Add0~5\);

-- Location: LCCOMB_X45_Y53_N6
\display_mux_inst|mux_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~0_combout\ = (!\display_mux_inst|Equal0~4_combout\ & \display_mux_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|Equal0~4_combout\,
	datad => \display_mux_inst|Add0~4_combout\,
	combout => \display_mux_inst|mux_counter~0_combout\);

-- Location: FF_X45_Y53_N7
\display_mux_inst|mux_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(2));

-- Location: LCCOMB_X46_Y53_N6
\display_mux_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~6_combout\ = (\display_mux_inst|mux_counter\(3) & (!\display_mux_inst|Add0~5\)) # (!\display_mux_inst|mux_counter\(3) & ((\display_mux_inst|Add0~5\) # (GND)))
-- \display_mux_inst|Add0~7\ = CARRY((!\display_mux_inst|Add0~5\) # (!\display_mux_inst|mux_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(3),
	datad => VCC,
	cin => \display_mux_inst|Add0~5\,
	combout => \display_mux_inst|Add0~6_combout\,
	cout => \display_mux_inst|Add0~7\);

-- Location: FF_X46_Y53_N7
\display_mux_inst|mux_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(3));

-- Location: LCCOMB_X46_Y53_N8
\display_mux_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~8_combout\ = (\display_mux_inst|mux_counter\(4) & (\display_mux_inst|Add0~7\ $ (GND))) # (!\display_mux_inst|mux_counter\(4) & (!\display_mux_inst|Add0~7\ & VCC))
-- \display_mux_inst|Add0~9\ = CARRY((\display_mux_inst|mux_counter\(4) & !\display_mux_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(4),
	datad => VCC,
	cin => \display_mux_inst|Add0~7\,
	combout => \display_mux_inst|Add0~8_combout\,
	cout => \display_mux_inst|Add0~9\);

-- Location: FF_X46_Y53_N9
\display_mux_inst|mux_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(4));

-- Location: LCCOMB_X46_Y53_N10
\display_mux_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~10_combout\ = (\display_mux_inst|mux_counter\(5) & (!\display_mux_inst|Add0~9\)) # (!\display_mux_inst|mux_counter\(5) & ((\display_mux_inst|Add0~9\) # (GND)))
-- \display_mux_inst|Add0~11\ = CARRY((!\display_mux_inst|Add0~9\) # (!\display_mux_inst|mux_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(5),
	datad => VCC,
	cin => \display_mux_inst|Add0~9\,
	combout => \display_mux_inst|Add0~10_combout\,
	cout => \display_mux_inst|Add0~11\);

-- Location: LCCOMB_X45_Y53_N10
\display_mux_inst|mux_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~1_combout\ = (\display_mux_inst|Add0~10_combout\ & !\display_mux_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_mux_inst|Add0~10_combout\,
	datad => \display_mux_inst|Equal0~4_combout\,
	combout => \display_mux_inst|mux_counter~1_combout\);

-- Location: FF_X45_Y53_N11
\display_mux_inst|mux_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(5));

-- Location: LCCOMB_X46_Y53_N12
\display_mux_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~12_combout\ = (\display_mux_inst|mux_counter\(6) & (\display_mux_inst|Add0~11\ $ (GND))) # (!\display_mux_inst|mux_counter\(6) & (!\display_mux_inst|Add0~11\ & VCC))
-- \display_mux_inst|Add0~13\ = CARRY((\display_mux_inst|mux_counter\(6) & !\display_mux_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(6),
	datad => VCC,
	cin => \display_mux_inst|Add0~11\,
	combout => \display_mux_inst|Add0~12_combout\,
	cout => \display_mux_inst|Add0~13\);

-- Location: FF_X46_Y53_N13
\display_mux_inst|mux_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(6));

-- Location: LCCOMB_X46_Y53_N14
\display_mux_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~14_combout\ = (\display_mux_inst|mux_counter\(7) & (!\display_mux_inst|Add0~13\)) # (!\display_mux_inst|mux_counter\(7) & ((\display_mux_inst|Add0~13\) # (GND)))
-- \display_mux_inst|Add0~15\ = CARRY((!\display_mux_inst|Add0~13\) # (!\display_mux_inst|mux_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(7),
	datad => VCC,
	cin => \display_mux_inst|Add0~13\,
	combout => \display_mux_inst|Add0~14_combout\,
	cout => \display_mux_inst|Add0~15\);

-- Location: FF_X46_Y53_N15
\display_mux_inst|mux_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(7));

-- Location: LCCOMB_X45_Y53_N22
\display_mux_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Equal0~1_combout\ = (\display_mux_inst|mux_counter\(5) & (!\display_mux_inst|mux_counter\(6) & (!\display_mux_inst|mux_counter\(7) & !\display_mux_inst|mux_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(5),
	datab => \display_mux_inst|mux_counter\(6),
	datac => \display_mux_inst|mux_counter\(7),
	datad => \display_mux_inst|mux_counter\(4),
	combout => \display_mux_inst|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y53_N16
\display_mux_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~16_combout\ = (\display_mux_inst|mux_counter\(8) & (\display_mux_inst|Add0~15\ $ (GND))) # (!\display_mux_inst|mux_counter\(8) & (!\display_mux_inst|Add0~15\ & VCC))
-- \display_mux_inst|Add0~17\ = CARRY((\display_mux_inst|mux_counter\(8) & !\display_mux_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(8),
	datad => VCC,
	cin => \display_mux_inst|Add0~15\,
	combout => \display_mux_inst|Add0~16_combout\,
	cout => \display_mux_inst|Add0~17\);

-- Location: FF_X46_Y53_N17
\display_mux_inst|mux_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(8));

-- Location: LCCOMB_X46_Y53_N18
\display_mux_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~18_combout\ = (\display_mux_inst|mux_counter\(9) & (!\display_mux_inst|Add0~17\)) # (!\display_mux_inst|mux_counter\(9) & ((\display_mux_inst|Add0~17\) # (GND)))
-- \display_mux_inst|Add0~19\ = CARRY((!\display_mux_inst|Add0~17\) # (!\display_mux_inst|mux_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(9),
	datad => VCC,
	cin => \display_mux_inst|Add0~17\,
	combout => \display_mux_inst|Add0~18_combout\,
	cout => \display_mux_inst|Add0~19\);

-- Location: FF_X46_Y53_N19
\display_mux_inst|mux_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(9));

-- Location: LCCOMB_X46_Y53_N20
\display_mux_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~20_combout\ = (\display_mux_inst|mux_counter\(10) & (\display_mux_inst|Add0~19\ $ (GND))) # (!\display_mux_inst|mux_counter\(10) & (!\display_mux_inst|Add0~19\ & VCC))
-- \display_mux_inst|Add0~21\ = CARRY((\display_mux_inst|mux_counter\(10) & !\display_mux_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(10),
	datad => VCC,
	cin => \display_mux_inst|Add0~19\,
	combout => \display_mux_inst|Add0~20_combout\,
	cout => \display_mux_inst|Add0~21\);

-- Location: LCCOMB_X45_Y53_N8
\display_mux_inst|mux_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~2_combout\ = (\display_mux_inst|Add0~20_combout\ & !\display_mux_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_mux_inst|Add0~20_combout\,
	datad => \display_mux_inst|Equal0~4_combout\,
	combout => \display_mux_inst|mux_counter~2_combout\);

-- Location: FF_X45_Y53_N9
\display_mux_inst|mux_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(10));

-- Location: LCCOMB_X46_Y53_N22
\display_mux_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~22_combout\ = (\display_mux_inst|mux_counter\(11) & (!\display_mux_inst|Add0~21\)) # (!\display_mux_inst|mux_counter\(11) & ((\display_mux_inst|Add0~21\) # (GND)))
-- \display_mux_inst|Add0~23\ = CARRY((!\display_mux_inst|Add0~21\) # (!\display_mux_inst|mux_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(11),
	datad => VCC,
	cin => \display_mux_inst|Add0~21\,
	combout => \display_mux_inst|Add0~22_combout\,
	cout => \display_mux_inst|Add0~23\);

-- Location: FF_X46_Y53_N23
\display_mux_inst|mux_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(11));

-- Location: LCCOMB_X46_Y53_N24
\display_mux_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~24_combout\ = (\display_mux_inst|mux_counter\(12) & (\display_mux_inst|Add0~23\ $ (GND))) # (!\display_mux_inst|mux_counter\(12) & (!\display_mux_inst|Add0~23\ & VCC))
-- \display_mux_inst|Add0~25\ = CARRY((\display_mux_inst|mux_counter\(12) & !\display_mux_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(12),
	datad => VCC,
	cin => \display_mux_inst|Add0~23\,
	combout => \display_mux_inst|Add0~24_combout\,
	cout => \display_mux_inst|Add0~25\);

-- Location: LCCOMB_X45_Y53_N24
\display_mux_inst|mux_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~3_combout\ = (!\display_mux_inst|Equal0~4_combout\ & \display_mux_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|Equal0~4_combout\,
	datad => \display_mux_inst|Add0~24_combout\,
	combout => \display_mux_inst|mux_counter~3_combout\);

-- Location: FF_X45_Y53_N25
\display_mux_inst|mux_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(12));

-- Location: LCCOMB_X46_Y53_N26
\display_mux_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~26_combout\ = (\display_mux_inst|mux_counter\(13) & (!\display_mux_inst|Add0~25\)) # (!\display_mux_inst|mux_counter\(13) & ((\display_mux_inst|Add0~25\) # (GND)))
-- \display_mux_inst|Add0~27\ = CARRY((!\display_mux_inst|Add0~25\) # (!\display_mux_inst|mux_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|mux_counter\(13),
	datad => VCC,
	cin => \display_mux_inst|Add0~25\,
	combout => \display_mux_inst|Add0~26_combout\,
	cout => \display_mux_inst|Add0~27\);

-- Location: LCCOMB_X45_Y53_N30
\display_mux_inst|mux_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~4_combout\ = (!\display_mux_inst|Equal0~4_combout\ & \display_mux_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|Equal0~4_combout\,
	datad => \display_mux_inst|Add0~26_combout\,
	combout => \display_mux_inst|mux_counter~4_combout\);

-- Location: FF_X45_Y53_N31
\display_mux_inst|mux_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(13));

-- Location: LCCOMB_X46_Y53_N28
\display_mux_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~28_combout\ = (\display_mux_inst|mux_counter\(14) & (\display_mux_inst|Add0~27\ $ (GND))) # (!\display_mux_inst|mux_counter\(14) & (!\display_mux_inst|Add0~27\ & VCC))
-- \display_mux_inst|Add0~29\ = CARRY((\display_mux_inst|mux_counter\(14) & !\display_mux_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(14),
	datad => VCC,
	cin => \display_mux_inst|Add0~27\,
	combout => \display_mux_inst|Add0~28_combout\,
	cout => \display_mux_inst|Add0~29\);

-- Location: LCCOMB_X45_Y53_N14
\display_mux_inst|mux_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~5_combout\ = (!\display_mux_inst|Equal0~4_combout\ & \display_mux_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|Equal0~4_combout\,
	datad => \display_mux_inst|Add0~28_combout\,
	combout => \display_mux_inst|mux_counter~5_combout\);

-- Location: FF_X45_Y53_N15
\display_mux_inst|mux_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(14));

-- Location: LCCOMB_X46_Y53_N30
\display_mux_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Add0~30_combout\ = \display_mux_inst|mux_counter\(15) $ (\display_mux_inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(15),
	cin => \display_mux_inst|Add0~29\,
	combout => \display_mux_inst|Add0~30_combout\);

-- Location: LCCOMB_X45_Y53_N16
\display_mux_inst|mux_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_counter~6_combout\ = (\display_mux_inst|Add0~30_combout\ & !\display_mux_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_mux_inst|Add0~30_combout\,
	datad => \display_mux_inst|Equal0~4_combout\,
	combout => \display_mux_inst|mux_counter~6_combout\);

-- Location: FF_X45_Y53_N17
\display_mux_inst|mux_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_counter\(15));

-- Location: LCCOMB_X45_Y53_N28
\display_mux_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Equal0~3_combout\ = (\display_mux_inst|mux_counter\(13) & (\display_mux_inst|mux_counter\(15) & (\display_mux_inst|mux_counter\(14) & \display_mux_inst|mux_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(13),
	datab => \display_mux_inst|mux_counter\(15),
	datac => \display_mux_inst|mux_counter\(14),
	datad => \display_mux_inst|mux_counter\(12),
	combout => \display_mux_inst|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y53_N26
\display_mux_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Equal0~0_combout\ = (\display_mux_inst|mux_counter\(1) & (!\display_mux_inst|mux_counter\(2) & (\display_mux_inst|mux_counter\(0) & !\display_mux_inst|mux_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(1),
	datab => \display_mux_inst|mux_counter\(2),
	datac => \display_mux_inst|mux_counter\(0),
	datad => \display_mux_inst|mux_counter\(3),
	combout => \display_mux_inst|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y53_N18
\display_mux_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Equal0~2_combout\ = (\display_mux_inst|mux_counter\(10) & (!\display_mux_inst|mux_counter\(11) & (!\display_mux_inst|mux_counter\(9) & !\display_mux_inst|mux_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_counter\(10),
	datab => \display_mux_inst|mux_counter\(11),
	datac => \display_mux_inst|mux_counter\(9),
	datad => \display_mux_inst|mux_counter\(8),
	combout => \display_mux_inst|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y53_N20
\display_mux_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Equal0~4_combout\ = (\display_mux_inst|Equal0~1_combout\ & (\display_mux_inst|Equal0~3_combout\ & (\display_mux_inst|Equal0~0_combout\ & \display_mux_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|Equal0~1_combout\,
	datab => \display_mux_inst|Equal0~3_combout\,
	datac => \display_mux_inst|Equal0~0_combout\,
	datad => \display_mux_inst|Equal0~2_combout\,
	combout => \display_mux_inst|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y53_N4
\display_mux_inst|mux_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_clk~0_combout\ = \display_mux_inst|mux_clk~q\ $ (\display_mux_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_mux_inst|mux_clk~q\,
	datad => \display_mux_inst|Equal0~4_combout\,
	combout => \display_mux_inst|mux_clk~0_combout\);

-- Location: LCCOMB_X45_Y53_N12
\display_mux_inst|mux_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|mux_clk~feeder_combout\ = \display_mux_inst|mux_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|mux_clk~0_combout\,
	combout => \display_mux_inst|mux_clk~feeder_combout\);

-- Location: FF_X45_Y53_N13
\display_mux_inst|mux_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \display_mux_inst|mux_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|mux_clk~q\);

-- Location: CLKCTRL_G12
\display_mux_inst|mux_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \display_mux_inst|mux_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \display_mux_inst|mux_clk~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y50_N28
\display_mux_inst|digit_sel[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|digit_sel[0]~2_combout\ = !\display_mux_inst|digit_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|digit_sel[0]~2_combout\);

-- Location: FF_X52_Y50_N29
\display_mux_inst|digit_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|digit_sel[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|digit_sel\(0));

-- Location: LCCOMB_X52_Y50_N10
\display_mux_inst|digit_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|digit_sel~0_combout\ = (\display_mux_inst|digit_sel\(2) & ((!\display_mux_inst|digit_sel\(0)))) # (!\display_mux_inst|digit_sel\(2) & (\display_mux_inst|digit_sel\(1) & \display_mux_inst|digit_sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datac => \display_mux_inst|digit_sel\(2),
	datad => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|digit_sel~0_combout\);

-- Location: FF_X52_Y50_N11
\display_mux_inst|digit_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|digit_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|digit_sel\(2));

-- Location: LCCOMB_X52_Y50_N14
\display_mux_inst|digit_sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|digit_sel~1_combout\ = (\display_mux_inst|digit_sel\(0) & (!\display_mux_inst|digit_sel\(1) & !\display_mux_inst|digit_sel\(2))) # (!\display_mux_inst|digit_sel\(0) & (\display_mux_inst|digit_sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|digit_sel\(0),
	datac => \display_mux_inst|digit_sel\(1),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|digit_sel~1_combout\);

-- Location: FF_X52_Y50_N15
\display_mux_inst|digit_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|digit_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|digit_sel\(1));

-- Location: LCCOMB_X52_Y50_N12
\display_mux_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~0_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0)) # (\display_mux_inst|digit_sel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~0_combout\);

-- Location: FF_X52_Y50_N13
\display_mux_inst|anode_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(0));

-- Location: LCCOMB_X52_Y50_N22
\display_mux_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~1_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(2)) # (!\display_mux_inst|digit_sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~1_combout\);

-- Location: FF_X52_Y50_N23
\display_mux_inst|anode_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(1));

-- Location: LCCOMB_X52_Y50_N20
\display_mux_inst|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~2_combout\ = ((\display_mux_inst|digit_sel\(0)) # (\display_mux_inst|digit_sel\(2))) # (!\display_mux_inst|digit_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~2_combout\);

-- Location: FF_X52_Y50_N21
\display_mux_inst|anode_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(2));

-- Location: LCCOMB_X52_Y50_N18
\display_mux_inst|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~3_combout\ = ((\display_mux_inst|digit_sel\(2)) # (!\display_mux_inst|digit_sel\(0))) # (!\display_mux_inst|digit_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~3_combout\);

-- Location: FF_X52_Y50_N19
\display_mux_inst|anode_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(3));

-- Location: LCCOMB_X52_Y50_N16
\display_mux_inst|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~4_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0)) # (!\display_mux_inst|digit_sel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~4_combout\);

-- Location: FF_X52_Y50_N17
\display_mux_inst|anode_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(4));

-- Location: LCCOMB_X52_Y50_N30
\display_mux_inst|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux5~5_combout\ = (\display_mux_inst|digit_sel\(1)) # ((!\display_mux_inst|digit_sel\(2)) # (!\display_mux_inst|digit_sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datad => \display_mux_inst|digit_sel\(2),
	combout => \display_mux_inst|Mux5~5_combout\);

-- Location: FF_X52_Y50_N31
\display_mux_inst|anode_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|anode_sel\(5));

-- Location: LCCOMB_X52_Y51_N20
\counter_bcd_inst|m0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m0[0]~4_combout\ = !\counter_bcd_inst|m0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|m0\(0),
	combout => \counter_bcd_inst|m0[0]~4_combout\);

-- Location: IOIBUF_X46_Y54_N29
\BTN2_RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN2_RESET,
	o => \BTN2_RESET~input_o\);

-- Location: LCCOMB_X50_Y50_N4
\counter_bcd_inst|s0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s0[0]~4_combout\ = !\counter_bcd_inst|s0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|s0\(0),
	combout => \counter_bcd_inst|s0[0]~4_combout\);

-- Location: IOIBUF_X49_Y54_N29
\BTN1_START_PAUSE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN1_START_PAUSE,
	o => \BTN1_START_PAUSE~input_o\);

-- Location: FF_X51_Y51_N21
\fsm_control_inst|btn1_ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	asdata => \BTN1_START_PAUSE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_control_inst|btn1_ff1~q\);

-- Location: FF_X51_Y51_N27
\fsm_control_inst|btn1_ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	asdata => \fsm_control_inst|btn1_ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_control_inst|btn1_ff2~q\);

-- Location: LCCOMB_X51_Y51_N22
\fsm_control_inst|current_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_control_inst|current_state~0_combout\ = \fsm_control_inst|current_state~q\ $ (((!\fsm_control_inst|btn1_ff2~q\ & \fsm_control_inst|btn1_ff1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_control_inst|btn1_ff2~q\,
	datac => \fsm_control_inst|current_state~q\,
	datad => \fsm_control_inst|btn1_ff1~q\,
	combout => \fsm_control_inst|current_state~0_combout\);

-- Location: FF_X51_Y51_N23
\fsm_control_inst|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \fsm_control_inst|current_state~0_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_control_inst|current_state~q\);

-- Location: LCCOMB_X51_Y50_N12
\counter_bcd_inst|c0[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c0[0]~3_combout\ = !\counter_bcd_inst|c0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|c0\(0),
	combout => \counter_bcd_inst|c0[0]~3_combout\);

-- Location: LCCOMB_X49_Y51_N14
\clk_divider_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~0_combout\ = \clk_divider_inst|counter\(0) $ (VCC)
-- \clk_divider_inst|Add0~1\ = CARRY(\clk_divider_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(0),
	datad => VCC,
	combout => \clk_divider_inst|Add0~0_combout\,
	cout => \clk_divider_inst|Add0~1\);

-- Location: FF_X49_Y51_N15
\clk_divider_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~0_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(0));

-- Location: LCCOMB_X49_Y51_N16
\clk_divider_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~2_combout\ = (\clk_divider_inst|counter\(1) & (!\clk_divider_inst|Add0~1\)) # (!\clk_divider_inst|counter\(1) & ((\clk_divider_inst|Add0~1\) # (GND)))
-- \clk_divider_inst|Add0~3\ = CARRY((!\clk_divider_inst|Add0~1\) # (!\clk_divider_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(1),
	datad => VCC,
	cin => \clk_divider_inst|Add0~1\,
	combout => \clk_divider_inst|Add0~2_combout\,
	cout => \clk_divider_inst|Add0~3\);

-- Location: FF_X49_Y51_N17
\clk_divider_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(1));

-- Location: LCCOMB_X49_Y51_N18
\clk_divider_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~4_combout\ = (\clk_divider_inst|counter\(2) & (\clk_divider_inst|Add0~3\ $ (GND))) # (!\clk_divider_inst|counter\(2) & (!\clk_divider_inst|Add0~3\ & VCC))
-- \clk_divider_inst|Add0~5\ = CARRY((\clk_divider_inst|counter\(2) & !\clk_divider_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(2),
	datad => VCC,
	cin => \clk_divider_inst|Add0~3\,
	combout => \clk_divider_inst|Add0~4_combout\,
	cout => \clk_divider_inst|Add0~5\);

-- Location: FF_X49_Y51_N19
\clk_divider_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(2));

-- Location: LCCOMB_X49_Y51_N20
\clk_divider_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~6_combout\ = (\clk_divider_inst|counter\(3) & (!\clk_divider_inst|Add0~5\)) # (!\clk_divider_inst|counter\(3) & ((\clk_divider_inst|Add0~5\) # (GND)))
-- \clk_divider_inst|Add0~7\ = CARRY((!\clk_divider_inst|Add0~5\) # (!\clk_divider_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(3),
	datad => VCC,
	cin => \clk_divider_inst|Add0~5\,
	combout => \clk_divider_inst|Add0~6_combout\,
	cout => \clk_divider_inst|Add0~7\);

-- Location: FF_X49_Y51_N21
\clk_divider_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~6_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(3));

-- Location: LCCOMB_X49_Y51_N22
\clk_divider_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~8_combout\ = (\clk_divider_inst|counter\(4) & (\clk_divider_inst|Add0~7\ $ (GND))) # (!\clk_divider_inst|counter\(4) & (!\clk_divider_inst|Add0~7\ & VCC))
-- \clk_divider_inst|Add0~9\ = CARRY((\clk_divider_inst|counter\(4) & !\clk_divider_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(4),
	datad => VCC,
	cin => \clk_divider_inst|Add0~7\,
	combout => \clk_divider_inst|Add0~8_combout\,
	cout => \clk_divider_inst|Add0~9\);

-- Location: FF_X49_Y51_N23
\clk_divider_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~8_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(4));

-- Location: LCCOMB_X49_Y51_N24
\clk_divider_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~10_combout\ = (\clk_divider_inst|counter\(5) & (!\clk_divider_inst|Add0~9\)) # (!\clk_divider_inst|counter\(5) & ((\clk_divider_inst|Add0~9\) # (GND)))
-- \clk_divider_inst|Add0~11\ = CARRY((!\clk_divider_inst|Add0~9\) # (!\clk_divider_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(5),
	datad => VCC,
	cin => \clk_divider_inst|Add0~9\,
	combout => \clk_divider_inst|Add0~10_combout\,
	cout => \clk_divider_inst|Add0~11\);

-- Location: LCCOMB_X49_Y51_N8
\clk_divider_inst|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~6_combout\ = (!\clk_divider_inst|Equal0~5_combout\ & \clk_divider_inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|Equal0~5_combout\,
	datad => \clk_divider_inst|Add0~10_combout\,
	combout => \clk_divider_inst|counter~6_combout\);

-- Location: FF_X49_Y51_N9
\clk_divider_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~6_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(5));

-- Location: LCCOMB_X49_Y51_N26
\clk_divider_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~12_combout\ = (\clk_divider_inst|counter\(6) & (\clk_divider_inst|Add0~11\ $ (GND))) # (!\clk_divider_inst|counter\(6) & (!\clk_divider_inst|Add0~11\ & VCC))
-- \clk_divider_inst|Add0~13\ = CARRY((\clk_divider_inst|counter\(6) & !\clk_divider_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(6),
	datad => VCC,
	cin => \clk_divider_inst|Add0~11\,
	combout => \clk_divider_inst|Add0~12_combout\,
	cout => \clk_divider_inst|Add0~13\);

-- Location: FF_X49_Y51_N27
\clk_divider_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~12_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(6));

-- Location: LCCOMB_X49_Y51_N28
\clk_divider_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~14_combout\ = (\clk_divider_inst|counter\(7) & (!\clk_divider_inst|Add0~13\)) # (!\clk_divider_inst|counter\(7) & ((\clk_divider_inst|Add0~13\) # (GND)))
-- \clk_divider_inst|Add0~15\ = CARRY((!\clk_divider_inst|Add0~13\) # (!\clk_divider_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(7),
	datad => VCC,
	cin => \clk_divider_inst|Add0~13\,
	combout => \clk_divider_inst|Add0~14_combout\,
	cout => \clk_divider_inst|Add0~15\);

-- Location: FF_X49_Y51_N29
\clk_divider_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~14_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(7));

-- Location: LCCOMB_X49_Y51_N30
\clk_divider_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~16_combout\ = (\clk_divider_inst|counter\(8) & (\clk_divider_inst|Add0~15\ $ (GND))) # (!\clk_divider_inst|counter\(8) & (!\clk_divider_inst|Add0~15\ & VCC))
-- \clk_divider_inst|Add0~17\ = CARRY((\clk_divider_inst|counter\(8) & !\clk_divider_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(8),
	datad => VCC,
	cin => \clk_divider_inst|Add0~15\,
	combout => \clk_divider_inst|Add0~16_combout\,
	cout => \clk_divider_inst|Add0~17\);

-- Location: LCCOMB_X49_Y51_N4
\clk_divider_inst|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~5_combout\ = (\clk_divider_inst|Add0~16_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider_inst|Add0~16_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~5_combout\);

-- Location: FF_X49_Y51_N5
\clk_divider_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~5_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(8));

-- Location: LCCOMB_X49_Y50_N0
\clk_divider_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~18_combout\ = (\clk_divider_inst|counter\(9) & (!\clk_divider_inst|Add0~17\)) # (!\clk_divider_inst|counter\(9) & ((\clk_divider_inst|Add0~17\) # (GND)))
-- \clk_divider_inst|Add0~19\ = CARRY((!\clk_divider_inst|Add0~17\) # (!\clk_divider_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(9),
	datad => VCC,
	cin => \clk_divider_inst|Add0~17\,
	combout => \clk_divider_inst|Add0~18_combout\,
	cout => \clk_divider_inst|Add0~19\);

-- Location: FF_X49_Y50_N1
\clk_divider_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~18_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(9));

-- Location: LCCOMB_X49_Y50_N2
\clk_divider_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~20_combout\ = (\clk_divider_inst|counter\(10) & (\clk_divider_inst|Add0~19\ $ (GND))) # (!\clk_divider_inst|counter\(10) & (!\clk_divider_inst|Add0~19\ & VCC))
-- \clk_divider_inst|Add0~21\ = CARRY((\clk_divider_inst|counter\(10) & !\clk_divider_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(10),
	datad => VCC,
	cin => \clk_divider_inst|Add0~19\,
	combout => \clk_divider_inst|Add0~20_combout\,
	cout => \clk_divider_inst|Add0~21\);

-- Location: FF_X49_Y50_N3
\clk_divider_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~20_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(10));

-- Location: LCCOMB_X49_Y51_N10
\clk_divider_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~2_combout\ = (!\clk_divider_inst|counter\(7) & (!\clk_divider_inst|counter\(9) & (\clk_divider_inst|counter\(8) & !\clk_divider_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(7),
	datab => \clk_divider_inst|counter\(9),
	datac => \clk_divider_inst|counter\(8),
	datad => \clk_divider_inst|counter\(10),
	combout => \clk_divider_inst|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y51_N2
\clk_divider_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~3_combout\ = (\clk_divider_inst|counter\(4) & (!\clk_divider_inst|counter\(5) & (!\clk_divider_inst|counter\(6) & \clk_divider_inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(4),
	datab => \clk_divider_inst|counter\(5),
	datac => \clk_divider_inst|counter\(6),
	datad => \clk_divider_inst|counter\(3),
	combout => \clk_divider_inst|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y50_N4
\clk_divider_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~22_combout\ = (\clk_divider_inst|counter\(11) & (!\clk_divider_inst|Add0~21\)) # (!\clk_divider_inst|counter\(11) & ((\clk_divider_inst|Add0~21\) # (GND)))
-- \clk_divider_inst|Add0~23\ = CARRY((!\clk_divider_inst|Add0~21\) # (!\clk_divider_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(11),
	datad => VCC,
	cin => \clk_divider_inst|Add0~21\,
	combout => \clk_divider_inst|Add0~22_combout\,
	cout => \clk_divider_inst|Add0~23\);

-- Location: FF_X49_Y50_N5
\clk_divider_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~22_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(11));

-- Location: LCCOMB_X49_Y50_N6
\clk_divider_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~24_combout\ = (\clk_divider_inst|counter\(12) & (\clk_divider_inst|Add0~23\ $ (GND))) # (!\clk_divider_inst|counter\(12) & (!\clk_divider_inst|Add0~23\ & VCC))
-- \clk_divider_inst|Add0~25\ = CARRY((\clk_divider_inst|counter\(12) & !\clk_divider_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(12),
	datad => VCC,
	cin => \clk_divider_inst|Add0~23\,
	combout => \clk_divider_inst|Add0~24_combout\,
	cout => \clk_divider_inst|Add0~25\);

-- Location: FF_X49_Y50_N7
\clk_divider_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~24_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(12));

-- Location: LCCOMB_X49_Y50_N8
\clk_divider_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~26_combout\ = (\clk_divider_inst|counter\(13) & (!\clk_divider_inst|Add0~25\)) # (!\clk_divider_inst|counter\(13) & ((\clk_divider_inst|Add0~25\) # (GND)))
-- \clk_divider_inst|Add0~27\ = CARRY((!\clk_divider_inst|Add0~25\) # (!\clk_divider_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(13),
	datad => VCC,
	cin => \clk_divider_inst|Add0~25\,
	combout => \clk_divider_inst|Add0~26_combout\,
	cout => \clk_divider_inst|Add0~27\);

-- Location: LCCOMB_X49_Y50_N28
\clk_divider_inst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~4_combout\ = (\clk_divider_inst|Add0~26_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider_inst|Add0~26_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~4_combout\);

-- Location: FF_X49_Y50_N29
\clk_divider_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(13));

-- Location: LCCOMB_X49_Y50_N10
\clk_divider_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~28_combout\ = (\clk_divider_inst|counter\(14) & (\clk_divider_inst|Add0~27\ $ (GND))) # (!\clk_divider_inst|counter\(14) & (!\clk_divider_inst|Add0~27\ & VCC))
-- \clk_divider_inst|Add0~29\ = CARRY((\clk_divider_inst|counter\(14) & !\clk_divider_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(14),
	datad => VCC,
	cin => \clk_divider_inst|Add0~27\,
	combout => \clk_divider_inst|Add0~28_combout\,
	cout => \clk_divider_inst|Add0~29\);

-- Location: FF_X49_Y50_N11
\clk_divider_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Add0~28_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(14));

-- Location: LCCOMB_X49_Y50_N22
\clk_divider_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~1_combout\ = (!\clk_divider_inst|counter\(12) & (\clk_divider_inst|counter\(13) & (!\clk_divider_inst|counter\(11) & !\clk_divider_inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(12),
	datab => \clk_divider_inst|counter\(13),
	datac => \clk_divider_inst|counter\(11),
	datad => \clk_divider_inst|counter\(14),
	combout => \clk_divider_inst|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y50_N12
\clk_divider_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~30_combout\ = (\clk_divider_inst|counter\(15) & (!\clk_divider_inst|Add0~29\)) # (!\clk_divider_inst|counter\(15) & ((\clk_divider_inst|Add0~29\) # (GND)))
-- \clk_divider_inst|Add0~31\ = CARRY((!\clk_divider_inst|Add0~29\) # (!\clk_divider_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(15),
	datad => VCC,
	cin => \clk_divider_inst|Add0~29\,
	combout => \clk_divider_inst|Add0~30_combout\,
	cout => \clk_divider_inst|Add0~31\);

-- Location: LCCOMB_X49_Y50_N26
\clk_divider_inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~3_combout\ = (\clk_divider_inst|Add0~30_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|Add0~30_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~3_combout\);

-- Location: FF_X49_Y50_N27
\clk_divider_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(15));

-- Location: LCCOMB_X49_Y50_N14
\clk_divider_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~32_combout\ = (\clk_divider_inst|counter\(16) & (\clk_divider_inst|Add0~31\ $ (GND))) # (!\clk_divider_inst|counter\(16) & (!\clk_divider_inst|Add0~31\ & VCC))
-- \clk_divider_inst|Add0~33\ = CARRY((\clk_divider_inst|counter\(16) & !\clk_divider_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|counter\(16),
	datad => VCC,
	cin => \clk_divider_inst|Add0~31\,
	combout => \clk_divider_inst|Add0~32_combout\,
	cout => \clk_divider_inst|Add0~33\);

-- Location: LCCOMB_X49_Y50_N20
\clk_divider_inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~2_combout\ = (\clk_divider_inst|Add0~32_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider_inst|Add0~32_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~2_combout\);

-- Location: FF_X49_Y50_N21
\clk_divider_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(16));

-- Location: LCCOMB_X49_Y50_N16
\clk_divider_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~34_combout\ = (\clk_divider_inst|counter\(17) & (!\clk_divider_inst|Add0~33\)) # (!\clk_divider_inst|counter\(17) & ((\clk_divider_inst|Add0~33\) # (GND)))
-- \clk_divider_inst|Add0~35\ = CARRY((!\clk_divider_inst|Add0~33\) # (!\clk_divider_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(17),
	datad => VCC,
	cin => \clk_divider_inst|Add0~33\,
	combout => \clk_divider_inst|Add0~34_combout\,
	cout => \clk_divider_inst|Add0~35\);

-- Location: LCCOMB_X49_Y50_N30
\clk_divider_inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~1_combout\ = (\clk_divider_inst|Add0~34_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|Add0~34_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~1_combout\);

-- Location: FF_X49_Y50_N31
\clk_divider_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(17));

-- Location: LCCOMB_X49_Y50_N18
\clk_divider_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Add0~36_combout\ = \clk_divider_inst|Add0~35\ $ (!\clk_divider_inst|counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider_inst|counter\(18),
	cin => \clk_divider_inst|Add0~35\,
	combout => \clk_divider_inst|Add0~36_combout\);

-- Location: LCCOMB_X49_Y50_N24
\clk_divider_inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|counter~0_combout\ = (\clk_divider_inst|Add0~36_combout\ & !\clk_divider_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_inst|Add0~36_combout\,
	datad => \clk_divider_inst|Equal0~5_combout\,
	combout => \clk_divider_inst|counter~0_combout\);

-- Location: FF_X49_Y50_N25
\clk_divider_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|counter~0_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|counter\(18));

-- Location: LCCOMB_X49_Y51_N6
\clk_divider_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~0_combout\ = (\clk_divider_inst|counter\(17) & (\clk_divider_inst|counter\(15) & (\clk_divider_inst|counter\(16) & \clk_divider_inst|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(17),
	datab => \clk_divider_inst|counter\(15),
	datac => \clk_divider_inst|counter\(16),
	datad => \clk_divider_inst|counter\(18),
	combout => \clk_divider_inst|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y51_N0
\clk_divider_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~4_combout\ = (\clk_divider_inst|Equal0~2_combout\ & (\clk_divider_inst|Equal0~3_combout\ & (\clk_divider_inst|Equal0~1_combout\ & \clk_divider_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|Equal0~2_combout\,
	datab => \clk_divider_inst|Equal0~3_combout\,
	datac => \clk_divider_inst|Equal0~1_combout\,
	datad => \clk_divider_inst|Equal0~0_combout\,
	combout => \clk_divider_inst|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y51_N12
\clk_divider_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider_inst|Equal0~5_combout\ = (\clk_divider_inst|counter\(0) & (\clk_divider_inst|counter\(1) & (\clk_divider_inst|counter\(2) & \clk_divider_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_inst|counter\(0),
	datab => \clk_divider_inst|counter\(1),
	datac => \clk_divider_inst|counter\(2),
	datad => \clk_divider_inst|Equal0~4_combout\,
	combout => \clk_divider_inst|Equal0~5_combout\);

-- Location: FF_X49_Y51_N13
\clk_divider_inst|enable_100hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \clk_divider_inst|Equal0~5_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_inst|enable_100hz~q\);

-- Location: LCCOMB_X51_Y51_N20
\fsm_control_inst|count_enable\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm_control_inst|count_enable~combout\ = (\fsm_control_inst|current_state~q\ & \clk_divider_inst|enable_100hz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_control_inst|current_state~q\,
	datad => \clk_divider_inst|enable_100hz~q\,
	combout => \fsm_control_inst|count_enable~combout\);

-- Location: FF_X51_Y50_N13
\counter_bcd_inst|c0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c0[0]~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \fsm_control_inst|count_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c0\(0));

-- Location: LCCOMB_X51_Y50_N0
\counter_bcd_inst|c0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c0~2_combout\ = (\counter_bcd_inst|c0\(2) & (\counter_bcd_inst|c0\(3) $ (((\counter_bcd_inst|c0\(1) & \counter_bcd_inst|c0\(0)))))) # (!\counter_bcd_inst|c0\(2) & (\counter_bcd_inst|c0\(3) & ((\counter_bcd_inst|c0\(1)) # 
-- (!\counter_bcd_inst|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c0\(2),
	datab => \counter_bcd_inst|c0\(1),
	datac => \counter_bcd_inst|c0\(3),
	datad => \counter_bcd_inst|c0\(0),
	combout => \counter_bcd_inst|c0~2_combout\);

-- Location: FF_X51_Y50_N1
\counter_bcd_inst|c0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c0~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \fsm_control_inst|count_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c0\(3));

-- Location: LCCOMB_X51_Y50_N4
\counter_bcd_inst|c0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c0~0_combout\ = (\counter_bcd_inst|c0\(0) & (!\counter_bcd_inst|c0\(1) & ((\counter_bcd_inst|c0\(2)) # (!\counter_bcd_inst|c0\(3))))) # (!\counter_bcd_inst|c0\(0) & (((\counter_bcd_inst|c0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c0\(2),
	datab => \counter_bcd_inst|c0\(0),
	datac => \counter_bcd_inst|c0\(1),
	datad => \counter_bcd_inst|c0\(3),
	combout => \counter_bcd_inst|c0~0_combout\);

-- Location: FF_X51_Y50_N5
\counter_bcd_inst|c0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c0~0_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \fsm_control_inst|count_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c0\(1));

-- Location: LCCOMB_X50_Y50_N26
\counter_bcd_inst|c0[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c0[2]~1_combout\ = \counter_bcd_inst|c0\(2) $ (((\counter_bcd_inst|c0\(1) & (\counter_bcd_inst|c0\(0) & \fsm_control_inst|count_enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c0\(1),
	datab => \counter_bcd_inst|c0\(0),
	datac => \counter_bcd_inst|c0\(2),
	datad => \fsm_control_inst|count_enable~combout\,
	combout => \counter_bcd_inst|c0[2]~1_combout\);

-- Location: FF_X50_Y50_N27
\counter_bcd_inst|c0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c0[2]~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c0\(2));

-- Location: LCCOMB_X50_Y50_N22
\counter_bcd_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Equal1~0_combout\ = (!\counter_bcd_inst|c0\(2) & (\counter_bcd_inst|c0\(0) & (\counter_bcd_inst|c0\(3) & !\counter_bcd_inst|c0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c0\(2),
	datab => \counter_bcd_inst|c0\(0),
	datac => \counter_bcd_inst|c0\(3),
	datad => \counter_bcd_inst|c0\(1),
	combout => \counter_bcd_inst|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y51_N16
\counter_bcd_inst|c1[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c1[0]~4_combout\ = !\counter_bcd_inst|c1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|c1\(0),
	combout => \counter_bcd_inst|c1[0]~4_combout\);

-- Location: LCCOMB_X50_Y51_N24
\counter_bcd_inst|c1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c1[3]~0_combout\ = (\fsm_control_inst|current_state~q\ & (\counter_bcd_inst|Equal1~0_combout\ & \clk_divider_inst|enable_100hz~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm_control_inst|current_state~q\,
	datac => \counter_bcd_inst|Equal1~0_combout\,
	datad => \clk_divider_inst|enable_100hz~q\,
	combout => \counter_bcd_inst|c1[3]~0_combout\);

-- Location: FF_X50_Y51_N17
\counter_bcd_inst|c1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c1[0]~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|c1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c1\(0));

-- Location: LCCOMB_X50_Y51_N8
\counter_bcd_inst|c1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c1~1_combout\ = (\counter_bcd_inst|c1\(0) & (!\counter_bcd_inst|c1\(1) & ((\counter_bcd_inst|c1\(2)) # (!\counter_bcd_inst|c1\(3))))) # (!\counter_bcd_inst|c1\(0) & (((\counter_bcd_inst|c1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(0),
	datab => \counter_bcd_inst|c1\(3),
	datac => \counter_bcd_inst|c1\(1),
	datad => \counter_bcd_inst|c1\(2),
	combout => \counter_bcd_inst|c1~1_combout\);

-- Location: FF_X50_Y51_N9
\counter_bcd_inst|c1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c1~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|c1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c1\(1));

-- Location: LCCOMB_X51_Y51_N12
\counter_bcd_inst|c1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c1[2]~2_combout\ = \counter_bcd_inst|c1\(2) $ (((\counter_bcd_inst|c1\(1) & (\counter_bcd_inst|c1\(0) & \counter_bcd_inst|c1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(1),
	datab => \counter_bcd_inst|c1\(0),
	datac => \counter_bcd_inst|c1\(2),
	datad => \counter_bcd_inst|c1[3]~0_combout\,
	combout => \counter_bcd_inst|c1[2]~2_combout\);

-- Location: FF_X51_Y51_N13
\counter_bcd_inst|c1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c1[2]~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c1\(2));

-- Location: LCCOMB_X50_Y51_N30
\counter_bcd_inst|c1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|c1~3_combout\ = (\counter_bcd_inst|c1\(2) & (\counter_bcd_inst|c1\(3) $ (((\counter_bcd_inst|c1\(1) & \counter_bcd_inst|c1\(0)))))) # (!\counter_bcd_inst|c1\(2) & (\counter_bcd_inst|c1\(3) & ((\counter_bcd_inst|c1\(1)) # 
-- (!\counter_bcd_inst|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(2),
	datab => \counter_bcd_inst|c1\(1),
	datac => \counter_bcd_inst|c1\(3),
	datad => \counter_bcd_inst|c1\(0),
	combout => \counter_bcd_inst|c1~3_combout\);

-- Location: FF_X50_Y51_N31
\counter_bcd_inst|c1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|c1~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|c1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|c1\(3));

-- Location: LCCOMB_X51_Y51_N4
\counter_bcd_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Equal2~0_combout\ = (\counter_bcd_inst|c1\(0) & (\counter_bcd_inst|c1\(3) & (!\counter_bcd_inst|c1\(2) & !\counter_bcd_inst|c1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(0),
	datab => \counter_bcd_inst|c1\(3),
	datac => \counter_bcd_inst|c1\(2),
	datad => \counter_bcd_inst|c1\(1),
	combout => \counter_bcd_inst|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y50_N18
\counter_bcd_inst|s0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s0[3]~0_combout\ = (\fsm_control_inst|current_state~q\ & (\counter_bcd_inst|Equal1~0_combout\ & (\clk_divider_inst|enable_100hz~q\ & \counter_bcd_inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_control_inst|current_state~q\,
	datab => \counter_bcd_inst|Equal1~0_combout\,
	datac => \clk_divider_inst|enable_100hz~q\,
	datad => \counter_bcd_inst|Equal2~0_combout\,
	combout => \counter_bcd_inst|s0[3]~0_combout\);

-- Location: FF_X50_Y50_N5
\counter_bcd_inst|s0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s0[0]~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|s0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s0\(0));

-- Location: LCCOMB_X50_Y50_N28
\counter_bcd_inst|s0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s0[2]~2_combout\ = \counter_bcd_inst|s0\(2) $ (((\counter_bcd_inst|s0\(0) & (\counter_bcd_inst|s0\(1) & \counter_bcd_inst|s0[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s0\(0),
	datab => \counter_bcd_inst|s0\(1),
	datac => \counter_bcd_inst|s0\(2),
	datad => \counter_bcd_inst|s0[3]~0_combout\,
	combout => \counter_bcd_inst|s0[2]~2_combout\);

-- Location: FF_X50_Y50_N29
\counter_bcd_inst|s0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s0[2]~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s0\(2));

-- Location: LCCOMB_X50_Y50_N16
\counter_bcd_inst|s0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s0~3_combout\ = (\counter_bcd_inst|s0\(2) & (\counter_bcd_inst|s0\(3) $ (((\counter_bcd_inst|s0\(1) & \counter_bcd_inst|s0\(0)))))) # (!\counter_bcd_inst|s0\(2) & (\counter_bcd_inst|s0\(3) & ((\counter_bcd_inst|s0\(1)) # 
-- (!\counter_bcd_inst|s0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s0\(2),
	datab => \counter_bcd_inst|s0\(1),
	datac => \counter_bcd_inst|s0\(3),
	datad => \counter_bcd_inst|s0\(0),
	combout => \counter_bcd_inst|s0~3_combout\);

-- Location: FF_X50_Y50_N17
\counter_bcd_inst|s0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s0~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|s0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s0\(3));

-- Location: LCCOMB_X50_Y50_N6
\counter_bcd_inst|s0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s0~1_combout\ = (\counter_bcd_inst|s0\(0) & (!\counter_bcd_inst|s0\(1) & ((\counter_bcd_inst|s0\(2)) # (!\counter_bcd_inst|s0\(3))))) # (!\counter_bcd_inst|s0\(0) & (((\counter_bcd_inst|s0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s0\(2),
	datab => \counter_bcd_inst|s0\(0),
	datac => \counter_bcd_inst|s0\(1),
	datad => \counter_bcd_inst|s0\(3),
	combout => \counter_bcd_inst|s0~1_combout\);

-- Location: FF_X50_Y50_N7
\counter_bcd_inst|s0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s0~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|s0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s0\(1));

-- Location: LCCOMB_X50_Y50_N0
\counter_bcd_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Equal3~0_combout\ = (!\counter_bcd_inst|s0\(1) & (!\counter_bcd_inst|s0\(2) & (\counter_bcd_inst|s0\(0) & \counter_bcd_inst|s0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s0\(1),
	datab => \counter_bcd_inst|s0\(2),
	datac => \counter_bcd_inst|s0\(0),
	datad => \counter_bcd_inst|s0\(3),
	combout => \counter_bcd_inst|Equal3~0_combout\);

-- Location: LCCOMB_X51_Y51_N14
\counter_bcd_inst|m1[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1[3]~2_combout\ = (\counter_bcd_inst|Equal3~0_combout\ & (\counter_bcd_inst|Equal2~0_combout\ & (\counter_bcd_inst|Equal1~0_combout\ & \fsm_control_inst|count_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|Equal3~0_combout\,
	datab => \counter_bcd_inst|Equal2~0_combout\,
	datac => \counter_bcd_inst|Equal1~0_combout\,
	datad => \fsm_control_inst|count_enable~combout\,
	combout => \counter_bcd_inst|m1[3]~2_combout\);

-- Location: LCCOMB_X50_Y51_N18
\counter_bcd_inst|s1[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s1[0]~4_combout\ = !\counter_bcd_inst|s1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|s1\(0),
	combout => \counter_bcd_inst|s1[0]~4_combout\);

-- Location: FF_X50_Y51_N19
\counter_bcd_inst|s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s1[0]~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s1\(0));

-- Location: LCCOMB_X50_Y51_N28
\counter_bcd_inst|s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s1~1_combout\ = (\counter_bcd_inst|s1\(0) & ((\counter_bcd_inst|s1\(2) & (\counter_bcd_inst|s1\(3) & !\counter_bcd_inst|s1\(1))) # (!\counter_bcd_inst|s1\(2) & ((\counter_bcd_inst|s1\(1)))))) # (!\counter_bcd_inst|s1\(0) & 
-- (((\counter_bcd_inst|s1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s1\(3),
	datab => \counter_bcd_inst|s1\(0),
	datac => \counter_bcd_inst|s1\(2),
	datad => \counter_bcd_inst|s1\(1),
	combout => \counter_bcd_inst|s1~1_combout\);

-- Location: FF_X50_Y51_N29
\counter_bcd_inst|s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s1~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s1\(2));

-- Location: LCCOMB_X51_Y51_N26
\counter_bcd_inst|s1[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s1[3]~2_combout\ = (\counter_bcd_inst|s1\(0) & (\counter_bcd_inst|s1\(1) & \counter_bcd_inst|s1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s1\(0),
	datab => \counter_bcd_inst|s1\(1),
	datad => \counter_bcd_inst|s1\(2),
	combout => \counter_bcd_inst|s1[3]~2_combout\);

-- Location: LCCOMB_X51_Y51_N0
\counter_bcd_inst|s1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s1[3]~3_combout\ = \counter_bcd_inst|s1\(3) $ (((\counter_bcd_inst|m1[3]~2_combout\ & \counter_bcd_inst|s1[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_bcd_inst|m1[3]~2_combout\,
	datac => \counter_bcd_inst|s1\(3),
	datad => \counter_bcd_inst|s1[3]~2_combout\,
	combout => \counter_bcd_inst|s1[3]~3_combout\);

-- Location: FF_X51_Y51_N1
\counter_bcd_inst|s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s1[3]~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s1\(3));

-- Location: LCCOMB_X50_Y51_N14
\counter_bcd_inst|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|s1~0_combout\ = (\counter_bcd_inst|s1\(0) & (!\counter_bcd_inst|s1\(1) & ((\counter_bcd_inst|s1\(3)) # (!\counter_bcd_inst|s1\(2))))) # (!\counter_bcd_inst|s1\(0) & (((\counter_bcd_inst|s1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s1\(3),
	datab => \counter_bcd_inst|s1\(0),
	datac => \counter_bcd_inst|s1\(1),
	datad => \counter_bcd_inst|s1\(2),
	combout => \counter_bcd_inst|s1~0_combout\);

-- Location: FF_X50_Y51_N15
\counter_bcd_inst|s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|s1~0_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|s1\(1));

-- Location: LCCOMB_X51_Y51_N16
\counter_bcd_inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Equal4~0_combout\ = (!\counter_bcd_inst|s1\(1) & (\counter_bcd_inst|s1\(0) & (!\counter_bcd_inst|s1\(3) & \counter_bcd_inst|s1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s1\(1),
	datab => \counter_bcd_inst|s1\(0),
	datac => \counter_bcd_inst|s1\(3),
	datad => \counter_bcd_inst|s1\(2),
	combout => \counter_bcd_inst|Equal4~0_combout\);

-- Location: LCCOMB_X52_Y51_N18
\counter_bcd_inst|m0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m0[3]~0_combout\ = (\counter_bcd_inst|Equal4~0_combout\ & \counter_bcd_inst|m1[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|Equal4~0_combout\,
	datad => \counter_bcd_inst|m1[3]~2_combout\,
	combout => \counter_bcd_inst|m0[3]~0_combout\);

-- Location: FF_X52_Y51_N21
\counter_bcd_inst|m0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m0[0]~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m0\(0));

-- Location: LCCOMB_X52_Y51_N28
\counter_bcd_inst|m0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m0[2]~2_combout\ = \counter_bcd_inst|m0\(2) $ (((\counter_bcd_inst|m0\(1) & (\counter_bcd_inst|m0\(0) & \counter_bcd_inst|m0[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m0\(1),
	datab => \counter_bcd_inst|m0\(0),
	datac => \counter_bcd_inst|m0\(2),
	datad => \counter_bcd_inst|m0[3]~0_combout\,
	combout => \counter_bcd_inst|m0[2]~2_combout\);

-- Location: FF_X52_Y51_N29
\counter_bcd_inst|m0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m0[2]~2_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m0\(2));

-- Location: LCCOMB_X52_Y51_N26
\counter_bcd_inst|m0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m0~1_combout\ = (\counter_bcd_inst|m0\(1) & (((!\counter_bcd_inst|m0\(0))))) # (!\counter_bcd_inst|m0\(1) & (\counter_bcd_inst|m0\(0) & ((\counter_bcd_inst|m0\(2)) # (!\counter_bcd_inst|m0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m0\(3),
	datab => \counter_bcd_inst|m0\(2),
	datac => \counter_bcd_inst|m0\(1),
	datad => \counter_bcd_inst|m0\(0),
	combout => \counter_bcd_inst|m0~1_combout\);

-- Location: FF_X52_Y51_N27
\counter_bcd_inst|m0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m0~1_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m0\(1));

-- Location: LCCOMB_X52_Y51_N30
\counter_bcd_inst|m0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m0~3_combout\ = (\counter_bcd_inst|m0\(1) & (\counter_bcd_inst|m0\(3) $ (((\counter_bcd_inst|m0\(0) & \counter_bcd_inst|m0\(2)))))) # (!\counter_bcd_inst|m0\(1) & (\counter_bcd_inst|m0\(3) & ((\counter_bcd_inst|m0\(2)) # 
-- (!\counter_bcd_inst|m0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m0\(1),
	datab => \counter_bcd_inst|m0\(0),
	datac => \counter_bcd_inst|m0\(3),
	datad => \counter_bcd_inst|m0\(2),
	combout => \counter_bcd_inst|m0~3_combout\);

-- Location: FF_X52_Y51_N31
\counter_bcd_inst|m0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m0~3_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m0\(3));

-- Location: LCCOMB_X51_Y51_N28
\counter_bcd_inst|m1[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1[0]~7_combout\ = !\counter_bcd_inst|m1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|m1\(0),
	combout => \counter_bcd_inst|m1[0]~7_combout\);

-- Location: LCCOMB_X52_Y51_N4
\counter_bcd_inst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Equal5~0_combout\ = (!\counter_bcd_inst|m0\(1) & (\counter_bcd_inst|m0\(0) & (\counter_bcd_inst|m0\(3) & !\counter_bcd_inst|m0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m0\(1),
	datab => \counter_bcd_inst|m0\(0),
	datac => \counter_bcd_inst|m0\(3),
	datad => \counter_bcd_inst|m0\(2),
	combout => \counter_bcd_inst|Equal5~0_combout\);

-- Location: LCCOMB_X51_Y51_N2
\counter_bcd_inst|m1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1[3]~3_combout\ = (\counter_bcd_inst|Equal4~0_combout\ & (\counter_bcd_inst|m1[3]~2_combout\ & \counter_bcd_inst|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_bcd_inst|Equal4~0_combout\,
	datac => \counter_bcd_inst|m1[3]~2_combout\,
	datad => \counter_bcd_inst|Equal5~0_combout\,
	combout => \counter_bcd_inst|m1[3]~3_combout\);

-- Location: FF_X51_Y51_N29
\counter_bcd_inst|m1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m1[0]~7_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m1\(0));

-- Location: LCCOMB_X51_Y51_N10
\counter_bcd_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|process_0~1_combout\ = (!\counter_bcd_inst|m1\(3) & (\counter_bcd_inst|m1\(0) & (!\counter_bcd_inst|m1\(1) & \counter_bcd_inst|m1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m1\(3),
	datab => \counter_bcd_inst|m1\(0),
	datac => \counter_bcd_inst|m1\(1),
	datad => \counter_bcd_inst|m1\(2),
	combout => \counter_bcd_inst|process_0~1_combout\);

-- Location: LCCOMB_X51_Y51_N18
\counter_bcd_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|process_0~0_combout\ = (\counter_bcd_inst|Equal5~0_combout\ & (\counter_bcd_inst|Equal2~0_combout\ & (\counter_bcd_inst|Equal1~0_combout\ & \counter_bcd_inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|Equal5~0_combout\,
	datab => \counter_bcd_inst|Equal2~0_combout\,
	datac => \counter_bcd_inst|Equal1~0_combout\,
	datad => \counter_bcd_inst|Equal4~0_combout\,
	combout => \counter_bcd_inst|process_0~0_combout\);

-- Location: LCCOMB_X51_Y51_N24
\counter_bcd_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|process_0~2_combout\ = (\counter_bcd_inst|process_0~1_combout\ & (\counter_bcd_inst|Equal3~0_combout\ & \counter_bcd_inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|process_0~1_combout\,
	datac => \counter_bcd_inst|Equal3~0_combout\,
	datad => \counter_bcd_inst|process_0~0_combout\,
	combout => \counter_bcd_inst|process_0~2_combout\);

-- Location: LCCOMB_X51_Y51_N30
\counter_bcd_inst|m1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1~4_combout\ = (!\counter_bcd_inst|process_0~2_combout\ & (\counter_bcd_inst|m1\(0) $ (\counter_bcd_inst|m1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_bcd_inst|m1\(0),
	datac => \counter_bcd_inst|m1\(1),
	datad => \counter_bcd_inst|process_0~2_combout\,
	combout => \counter_bcd_inst|m1~4_combout\);

-- Location: FF_X51_Y51_N31
\counter_bcd_inst|m1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m1~4_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m1\(1));

-- Location: LCCOMB_X51_Y51_N8
\counter_bcd_inst|m1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1~6_combout\ = (!\counter_bcd_inst|process_0~2_combout\ & (\counter_bcd_inst|m1\(2) $ (((\counter_bcd_inst|m1\(1) & \counter_bcd_inst|m1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m1\(1),
	datab => \counter_bcd_inst|m1\(0),
	datac => \counter_bcd_inst|m1\(2),
	datad => \counter_bcd_inst|process_0~2_combout\,
	combout => \counter_bcd_inst|m1~6_combout\);

-- Location: FF_X51_Y51_N9
\counter_bcd_inst|m1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m1~6_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	ena => \counter_bcd_inst|m1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m1\(2));

-- Location: LCCOMB_X51_Y50_N6
\counter_bcd_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|Add0~0_combout\ = (\counter_bcd_inst|m1\(1) & \counter_bcd_inst|m1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bcd_inst|m1\(1),
	datad => \counter_bcd_inst|m1\(0),
	combout => \counter_bcd_inst|Add0~0_combout\);

-- Location: LCCOMB_X51_Y51_N6
\counter_bcd_inst|m1[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_bcd_inst|m1[3]~5_combout\ = \counter_bcd_inst|m1\(3) $ (((\counter_bcd_inst|m1\(2) & (\counter_bcd_inst|Add0~0_combout\ & \counter_bcd_inst|m1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m1\(2),
	datab => \counter_bcd_inst|Add0~0_combout\,
	datac => \counter_bcd_inst|m1\(3),
	datad => \counter_bcd_inst|m1[3]~3_combout\,
	combout => \counter_bcd_inst|m1[3]~5_combout\);

-- Location: FF_X51_Y51_N7
\counter_bcd_inst|m1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \counter_bcd_inst|m1[3]~5_combout\,
	clrn => \ALT_INV_BTN2_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_bcd_inst|m1\(3));

-- Location: LCCOMB_X51_Y50_N30
\display_mux_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux6~0_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0) & ((\counter_bcd_inst|m1\(3)))) # (!\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|m0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|m0\(3),
	datab => \display_mux_inst|digit_sel\(0),
	datac => \counter_bcd_inst|m1\(3),
	datad => \display_mux_inst|digit_sel\(1),
	combout => \display_mux_inst|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y50_N10
\display_mux_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux6~1_combout\ = (\display_mux_inst|digit_sel\(1) & (((\display_mux_inst|digit_sel\(0))))) # (!\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|c1\(3))) # (!\display_mux_inst|digit_sel\(0) & 
-- ((\counter_bcd_inst|c0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(3),
	datab => \counter_bcd_inst|c0\(3),
	datac => \display_mux_inst|digit_sel\(1),
	datad => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|Mux6~1_combout\);

-- Location: LCCOMB_X51_Y50_N20
\display_mux_inst|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux6~2_combout\ = (\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|Mux6~1_combout\ & ((\counter_bcd_inst|s1\(3)))) # (!\display_mux_inst|Mux6~1_combout\ & (\counter_bcd_inst|s0\(3))))) # (!\display_mux_inst|digit_sel\(1) & 
-- (((\display_mux_inst|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s0\(3),
	datab => \display_mux_inst|digit_sel\(1),
	datac => \counter_bcd_inst|s1\(3),
	datad => \display_mux_inst|Mux6~1_combout\,
	combout => \display_mux_inst|Mux6~2_combout\);

-- Location: LCCOMB_X51_Y50_N28
\display_mux_inst|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux6~3_combout\ = (\display_mux_inst|digit_sel\(2) & (\display_mux_inst|Mux6~0_combout\)) # (!\display_mux_inst|digit_sel\(2) & ((\display_mux_inst|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|digit_sel\(2),
	datac => \display_mux_inst|Mux6~0_combout\,
	datad => \display_mux_inst|Mux6~2_combout\,
	combout => \display_mux_inst|Mux6~3_combout\);

-- Location: FF_X51_Y50_N29
\display_mux_inst|bcd_to_dec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|bcd_to_dec\(3));

-- Location: LCCOMB_X51_Y50_N26
\display_mux_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux8~0_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|m1\(1))) # (!\display_mux_inst|digit_sel\(0) & ((\counter_bcd_inst|m0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datac => \counter_bcd_inst|m1\(1),
	datad => \counter_bcd_inst|m0\(1),
	combout => \display_mux_inst|Mux8~0_combout\);

-- Location: LCCOMB_X51_Y50_N18
\display_mux_inst|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux8~1_combout\ = (\display_mux_inst|digit_sel\(0) & (((\display_mux_inst|digit_sel\(1))))) # (!\display_mux_inst|digit_sel\(0) & ((\display_mux_inst|digit_sel\(1) & ((\counter_bcd_inst|s0\(1)))) # (!\display_mux_inst|digit_sel\(1) & 
-- (\counter_bcd_inst|c0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c0\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datac => \counter_bcd_inst|s0\(1),
	datad => \display_mux_inst|digit_sel\(1),
	combout => \display_mux_inst|Mux8~1_combout\);

-- Location: LCCOMB_X51_Y50_N24
\display_mux_inst|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux8~2_combout\ = (\display_mux_inst|digit_sel\(0) & ((\display_mux_inst|Mux8~1_combout\ & ((\counter_bcd_inst|s1\(1)))) # (!\display_mux_inst|Mux8~1_combout\ & (\counter_bcd_inst|c1\(1))))) # (!\display_mux_inst|digit_sel\(0) & 
-- (((\display_mux_inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datac => \counter_bcd_inst|s1\(1),
	datad => \display_mux_inst|Mux8~1_combout\,
	combout => \display_mux_inst|Mux8~2_combout\);

-- Location: LCCOMB_X51_Y50_N14
\display_mux_inst|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux8~3_combout\ = (\display_mux_inst|digit_sel\(2) & (\display_mux_inst|Mux8~0_combout\)) # (!\display_mux_inst|digit_sel\(2) & ((\display_mux_inst|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|digit_sel\(2),
	datac => \display_mux_inst|Mux8~0_combout\,
	datad => \display_mux_inst|Mux8~2_combout\,
	combout => \display_mux_inst|Mux8~3_combout\);

-- Location: FF_X51_Y50_N15
\display_mux_inst|bcd_to_dec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|bcd_to_dec\(1));

-- Location: LCCOMB_X51_Y50_N22
\display_mux_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux9~0_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|m1\(0))) # (!\display_mux_inst|digit_sel\(0) & ((\counter_bcd_inst|m0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \counter_bcd_inst|m1\(0),
	datac => \counter_bcd_inst|m0\(0),
	datad => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|Mux9~0_combout\);

-- Location: LCCOMB_X51_Y50_N2
\display_mux_inst|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux9~1_combout\ = (\display_mux_inst|digit_sel\(1) & (((\display_mux_inst|digit_sel\(0))))) # (!\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|c1\(0))) # (!\display_mux_inst|digit_sel\(0) & 
-- ((\counter_bcd_inst|c0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(0),
	datab => \counter_bcd_inst|c0\(0),
	datac => \display_mux_inst|digit_sel\(1),
	datad => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|Mux9~1_combout\);

-- Location: LCCOMB_X51_Y50_N16
\display_mux_inst|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux9~2_combout\ = (\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|Mux9~1_combout\ & (\counter_bcd_inst|s1\(0))) # (!\display_mux_inst|Mux9~1_combout\ & ((\counter_bcd_inst|s0\(0)))))) # (!\display_mux_inst|digit_sel\(1) & 
-- (((\display_mux_inst|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|s1\(0),
	datab => \counter_bcd_inst|s0\(0),
	datac => \display_mux_inst|digit_sel\(1),
	datad => \display_mux_inst|Mux9~1_combout\,
	combout => \display_mux_inst|Mux9~2_combout\);

-- Location: LCCOMB_X51_Y50_N8
\display_mux_inst|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux9~3_combout\ = (\display_mux_inst|digit_sel\(2) & (\display_mux_inst|Mux9~0_combout\)) # (!\display_mux_inst|digit_sel\(2) & ((\display_mux_inst|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_mux_inst|digit_sel\(2),
	datac => \display_mux_inst|Mux9~0_combout\,
	datad => \display_mux_inst|Mux9~2_combout\,
	combout => \display_mux_inst|Mux9~3_combout\);

-- Location: FF_X51_Y50_N9
\display_mux_inst|bcd_to_dec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|bcd_to_dec\(0));

-- Location: LCCOMB_X52_Y50_N8
\display_mux_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux7~0_combout\ = (\display_mux_inst|digit_sel\(1)) # ((\display_mux_inst|digit_sel\(0) & ((\counter_bcd_inst|m1\(2)))) # (!\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|m0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \display_mux_inst|digit_sel\(0),
	datac => \counter_bcd_inst|m0\(2),
	datad => \counter_bcd_inst|m1\(2),
	combout => \display_mux_inst|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y50_N26
\display_mux_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux7~1_combout\ = (\display_mux_inst|digit_sel\(1) & (((\display_mux_inst|digit_sel\(0))))) # (!\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|digit_sel\(0) & (\counter_bcd_inst|c1\(2))) # (!\display_mux_inst|digit_sel\(0) & 
-- ((\counter_bcd_inst|c0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bcd_inst|c1\(2),
	datab => \display_mux_inst|digit_sel\(1),
	datac => \counter_bcd_inst|c0\(2),
	datad => \display_mux_inst|digit_sel\(0),
	combout => \display_mux_inst|Mux7~1_combout\);

-- Location: LCCOMB_X52_Y50_N24
\display_mux_inst|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux7~2_combout\ = (\display_mux_inst|digit_sel\(1) & ((\display_mux_inst|Mux7~1_combout\ & ((\counter_bcd_inst|s1\(2)))) # (!\display_mux_inst|Mux7~1_combout\ & (\counter_bcd_inst|s0\(2))))) # (!\display_mux_inst|digit_sel\(1) & 
-- (((\display_mux_inst|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(1),
	datab => \counter_bcd_inst|s0\(2),
	datac => \display_mux_inst|Mux7~1_combout\,
	datad => \counter_bcd_inst|s1\(2),
	combout => \display_mux_inst|Mux7~2_combout\);

-- Location: LCCOMB_X52_Y50_N0
\display_mux_inst|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_mux_inst|Mux7~3_combout\ = (\display_mux_inst|digit_sel\(2) & (\display_mux_inst|Mux7~0_combout\)) # (!\display_mux_inst|digit_sel\(2) & ((\display_mux_inst|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|digit_sel\(2),
	datac => \display_mux_inst|Mux7~0_combout\,
	datad => \display_mux_inst|Mux7~2_combout\,
	combout => \display_mux_inst|Mux7~3_combout\);

-- Location: FF_X52_Y50_N1
\display_mux_inst|bcd_to_dec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_mux_inst|mux_clk~clkctrl_outclk\,
	d => \display_mux_inst|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_inst|bcd_to_dec\(2));

-- Location: LCCOMB_X59_Y53_N28
\decoder_7seg_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux6~0_combout\ = (\display_mux_inst|bcd_to_dec\(1) & (!\display_mux_inst|bcd_to_dec\(3) & ((!\display_mux_inst|bcd_to_dec\(2)) # (!\display_mux_inst|bcd_to_dec\(0))))) # (!\display_mux_inst|bcd_to_dec\(1) & 
-- (\display_mux_inst|bcd_to_dec\(3) $ (((\display_mux_inst|bcd_to_dec\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y53_N22
\decoder_7seg_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux5~0_combout\ = (\display_mux_inst|bcd_to_dec\(0) & ((\display_mux_inst|bcd_to_dec\(1)) # (\display_mux_inst|bcd_to_dec\(3) $ (!\display_mux_inst|bcd_to_dec\(2))))) # (!\display_mux_inst|bcd_to_dec\(0) & 
-- ((\display_mux_inst|bcd_to_dec\(2) & (\display_mux_inst|bcd_to_dec\(3))) # (!\display_mux_inst|bcd_to_dec\(2) & ((\display_mux_inst|bcd_to_dec\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y53_N4
\decoder_7seg_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux4~0_combout\ = (\display_mux_inst|bcd_to_dec\(0)) # ((\display_mux_inst|bcd_to_dec\(1) & (\display_mux_inst|bcd_to_dec\(3))) # (!\display_mux_inst|bcd_to_dec\(1) & ((\display_mux_inst|bcd_to_dec\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y53_N6
\decoder_7seg_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux3~0_combout\ = (\display_mux_inst|bcd_to_dec\(1) & ((\display_mux_inst|bcd_to_dec\(3)) # ((\display_mux_inst|bcd_to_dec\(0) & \display_mux_inst|bcd_to_dec\(2))))) # (!\display_mux_inst|bcd_to_dec\(1) & 
-- (\display_mux_inst|bcd_to_dec\(2) $ (((!\display_mux_inst|bcd_to_dec\(3) & \display_mux_inst|bcd_to_dec\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y53_N12
\decoder_7seg_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux2~0_combout\ = (\display_mux_inst|bcd_to_dec\(2) & (\display_mux_inst|bcd_to_dec\(3))) # (!\display_mux_inst|bcd_to_dec\(2) & (\display_mux_inst|bcd_to_dec\(1) & ((\display_mux_inst|bcd_to_dec\(3)) # 
-- (!\display_mux_inst|bcd_to_dec\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y53_N10
\decoder_7seg_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux1~0_combout\ = (\display_mux_inst|bcd_to_dec\(3) & ((\display_mux_inst|bcd_to_dec\(1)) # ((\display_mux_inst|bcd_to_dec\(2))))) # (!\display_mux_inst|bcd_to_dec\(3) & (\display_mux_inst|bcd_to_dec\(2) & 
-- (\display_mux_inst|bcd_to_dec\(1) $ (\display_mux_inst|bcd_to_dec\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\decoder_7seg_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_7seg_inst|Mux0~0_combout\ = (\display_mux_inst|bcd_to_dec\(1) & (\display_mux_inst|bcd_to_dec\(3))) # (!\display_mux_inst|bcd_to_dec\(1) & (\display_mux_inst|bcd_to_dec\(2) $ (((!\display_mux_inst|bcd_to_dec\(3) & 
-- \display_mux_inst|bcd_to_dec\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_mux_inst|bcd_to_dec\(3),
	datab => \display_mux_inst|bcd_to_dec\(1),
	datac => \display_mux_inst|bcd_to_dec\(0),
	datad => \display_mux_inst|bcd_to_dec\(2),
	combout => \decoder_7seg_inst|Mux0~0_combout\);

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

ww_ANODES_OUT(0) <= \ANODES_OUT[0]~output_o\;

ww_ANODES_OUT(1) <= \ANODES_OUT[1]~output_o\;

ww_ANODES_OUT(2) <= \ANODES_OUT[2]~output_o\;

ww_ANODES_OUT(3) <= \ANODES_OUT[3]~output_o\;

ww_ANODES_OUT(4) <= \ANODES_OUT[4]~output_o\;

ww_ANODES_OUT(5) <= \ANODES_OUT[5]~output_o\;

ww_SEGMENTS_OUT(0) <= \SEGMENTS_OUT[0]~output_o\;

ww_SEGMENTS_OUT(1) <= \SEGMENTS_OUT[1]~output_o\;

ww_SEGMENTS_OUT(2) <= \SEGMENTS_OUT[2]~output_o\;

ww_SEGMENTS_OUT(3) <= \SEGMENTS_OUT[3]~output_o\;

ww_SEGMENTS_OUT(4) <= \SEGMENTS_OUT[4]~output_o\;

ww_SEGMENTS_OUT(5) <= \SEGMENTS_OUT[5]~output_o\;

ww_SEGMENTS_OUT(6) <= \SEGMENTS_OUT[6]~output_o\;
END structure;


