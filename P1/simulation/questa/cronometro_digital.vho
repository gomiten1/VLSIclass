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

-- DATE "10/23/2025 10:33:16"

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
	clk50mhz : IN std_logic;
	btn1StartPause : IN std_logic;
	btn2Reset : IN std_logic;
	segmentsMDecenas : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentsMUnidades : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentsSDecenas : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentsSUnidades : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentsCDecenas : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentsCUnidades : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END cronometro_digital;

-- Design Ports Information
-- segmentsMDecenas[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMDecenas[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsMUnidades[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSDecenas[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsSUnidades[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCDecenas[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsCUnidades[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50mhz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn2Reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn1StartPause	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk50mhz : std_logic;
SIGNAL ww_btn1StartPause : std_logic;
SIGNAL ww_btn2Reset : std_logic;
SIGNAL ww_segmentsMDecenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsMUnidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsSDecenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsSUnidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsCDecenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsCUnidades : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \segmentsMDecenas[0]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[1]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[2]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[3]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[4]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[5]~output_o\ : std_logic;
SIGNAL \segmentsMDecenas[6]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[0]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[1]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[2]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[3]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[4]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[5]~output_o\ : std_logic;
SIGNAL \segmentsMUnidades[6]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[0]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[1]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[2]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[3]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[4]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[5]~output_o\ : std_logic;
SIGNAL \segmentsSDecenas[6]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[0]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[1]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[2]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[3]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[4]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[5]~output_o\ : std_logic;
SIGNAL \segmentsSUnidades[6]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[0]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[1]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[2]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[3]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[4]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[5]~output_o\ : std_logic;
SIGNAL \segmentsCDecenas[6]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[0]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[1]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[2]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[3]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[4]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[5]~output_o\ : std_logic;
SIGNAL \segmentsCUnidades[6]~output_o\ : std_logic;
SIGNAL \clk50mhz~input_o\ : std_logic;
SIGNAL \clk50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \counterBcdInst|m1[0]~6_combout\ : std_logic;
SIGNAL \btn2Reset~input_o\ : std_logic;
SIGNAL \counterBcdInst|s1[0]~5_combout\ : std_logic;
SIGNAL \counterBcdInst|s0[0]~6_combout\ : std_logic;
SIGNAL \btn1StartPause~input_o\ : std_logic;
SIGNAL \fsmControlInst|btn1Ff1~q\ : std_logic;
SIGNAL \fsmControlInst|btn1Ff2~q\ : std_logic;
SIGNAL \fsmControlInst|isRunningFf~0_combout\ : std_logic;
SIGNAL \fsmControlInst|isRunningFf~q\ : std_logic;
SIGNAL \counterBcdInst|c1[0]~6_combout\ : std_logic;
SIGNAL \counterBcdInst|c0[0]~3_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~0_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~1\ : std_logic;
SIGNAL \clkDividerInst|Add0~2_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~3\ : std_logic;
SIGNAL \clkDividerInst|Add0~4_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~5\ : std_logic;
SIGNAL \clkDividerInst|Add0~6_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~7\ : std_logic;
SIGNAL \clkDividerInst|Add0~8_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~9\ : std_logic;
SIGNAL \clkDividerInst|Add0~10_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~6_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~11\ : std_logic;
SIGNAL \clkDividerInst|Add0~12_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~3_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~13\ : std_logic;
SIGNAL \clkDividerInst|Add0~14_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~15\ : std_logic;
SIGNAL \clkDividerInst|Add0~16_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~5_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~17\ : std_logic;
SIGNAL \clkDividerInst|Add0~18_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~19\ : std_logic;
SIGNAL \clkDividerInst|Add0~20_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~2_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~21\ : std_logic;
SIGNAL \clkDividerInst|Add0~22_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~23\ : std_logic;
SIGNAL \clkDividerInst|Add0~24_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~25\ : std_logic;
SIGNAL \clkDividerInst|Add0~26_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~4_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~27\ : std_logic;
SIGNAL \clkDividerInst|Add0~28_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~1_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~29\ : std_logic;
SIGNAL \clkDividerInst|Add0~30_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~3_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~31\ : std_logic;
SIGNAL \clkDividerInst|Add0~32_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~2_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~33\ : std_logic;
SIGNAL \clkDividerInst|Add0~34_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~1_combout\ : std_logic;
SIGNAL \clkDividerInst|Add0~35\ : std_logic;
SIGNAL \clkDividerInst|Add0~36_combout\ : std_logic;
SIGNAL \clkDividerInst|counter~0_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~0_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~4_combout\ : std_logic;
SIGNAL \clkDividerInst|Equal0~5_combout\ : std_logic;
SIGNAL \clkDividerInst|enable100hz~feeder_combout\ : std_logic;
SIGNAL \clkDividerInst|enable100hz~q\ : std_logic;
SIGNAL \fsmControlInst|countEnable~combout\ : std_logic;
SIGNAL \counterBcdInst|c0[2]~1_combout\ : std_logic;
SIGNAL \counterBcdInst|c0~0_combout\ : std_logic;
SIGNAL \counterBcdInst|c0~2_combout\ : std_logic;
SIGNAL \counterBcdInst|Equal1~0_combout\ : std_logic;
SIGNAL \counterBcdInst|c1[3]~5_combout\ : std_logic;
SIGNAL \counterBcdInst|c1[2]~3_combout\ : std_logic;
SIGNAL \counterBcdInst|c1~4_combout\ : std_logic;
SIGNAL \counterBcdInst|c1~2_combout\ : std_logic;
SIGNAL \counterBcdInst|Equal2~0_combout\ : std_logic;
SIGNAL \counterBcdInst|s0[3]~5_combout\ : std_logic;
SIGNAL \counterBcdInst|s0[2]~3_combout\ : std_logic;
SIGNAL \counterBcdInst|s0~2_combout\ : std_logic;
SIGNAL \counterBcdInst|s0~4_combout\ : std_logic;
SIGNAL \counterBcdInst|Equal3~0_combout\ : std_logic;
SIGNAL \counterBcdInst|s1[3]~0_combout\ : std_logic;
SIGNAL \counterBcdInst|s1~2_combout\ : std_logic;
SIGNAL \counterBcdInst|s1[3]~3_combout\ : std_logic;
SIGNAL \counterBcdInst|s1[3]~4_combout\ : std_logic;
SIGNAL \counterBcdInst|s1~1_combout\ : std_logic;
SIGNAL \counterBcdInst|Equal4~0_combout\ : std_logic;
SIGNAL \counterBcdInst|m0[0]~4_combout\ : std_logic;
SIGNAL \counterBcdInst|m0[3]~0_combout\ : std_logic;
SIGNAL \counterBcdInst|m0[2]~2_combout\ : std_logic;
SIGNAL \counterBcdInst|m0~1_combout\ : std_logic;
SIGNAL \counterBcdInst|m0~3_combout\ : std_logic;
SIGNAL \counterBcdInst|Equal5~0_combout\ : std_logic;
SIGNAL \counterBcdInst|m1[3]~2_combout\ : std_logic;
SIGNAL \counterBcdInst|Add0~0_combout\ : std_logic;
SIGNAL \counterBcdInst|m1~5_combout\ : std_logic;
SIGNAL \counterBcdInst|m1[3]~4_combout\ : std_logic;
SIGNAL \counterBcdInst|process_0~0_combout\ : std_logic;
SIGNAL \counterBcdInst|process_0~1_combout\ : std_logic;
SIGNAL \counterBcdInst|process_0~2_combout\ : std_logic;
SIGNAL \counterBcdInst|m1~3_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|Mux0~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|Mux0~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|Mux0~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|Mux0~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|Mux0~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux5~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux4~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux3~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux2~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux1~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCUni|Mux0~0_combout\ : std_logic;
SIGNAL \clkDividerInst|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \counterBcdInst|c0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counterBcdInst|m0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counterBcdInst|m1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counterBcdInst|s1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counterBcdInst|s0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counterBcdInst|c1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_btn2Reset~input_o\ : std_logic;
SIGNAL \displayDriverInst|decCUni|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decCDec|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSUni|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decSDec|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMUni|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \displayDriverInst|decMDec|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50mhz <= clk50mhz;
ww_btn1StartPause <= btn1StartPause;
ww_btn2Reset <= btn2Reset;
segmentsMDecenas <= ww_segmentsMDecenas;
segmentsMUnidades <= ww_segmentsMUnidades;
segmentsSDecenas <= ww_segmentsSDecenas;
segmentsSUnidades <= ww_segmentsSUnidades;
segmentsCDecenas <= ww_segmentsCDecenas;
segmentsCUnidades <= ww_segmentsCUnidades;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50mhz~input_o\);
\ALT_INV_btn2Reset~input_o\ <= NOT \btn2Reset~input_o\;
\displayDriverInst|decCUni|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decCUni|Mux6~0_combout\;
\displayDriverInst|decCDec|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decCDec|Mux6~0_combout\;
\displayDriverInst|decSUni|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decSUni|Mux6~0_combout\;
\displayDriverInst|decSDec|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decSDec|Mux6~0_combout\;
\displayDriverInst|decMUni|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decMUni|Mux6~0_combout\;
\displayDriverInst|decMDec|ALT_INV_Mux6~0_combout\ <= NOT \displayDriverInst|decMDec|Mux6~0_combout\;
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

-- Location: IOOBUF_X78_Y45_N9
\segmentsMDecenas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\segmentsMDecenas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\segmentsMDecenas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\segmentsMDecenas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\segmentsMDecenas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\segmentsMDecenas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\segmentsMDecenas[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMDec|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMDecenas[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\segmentsMUnidades[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\segmentsMUnidades[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\segmentsMUnidades[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\segmentsMUnidades[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\segmentsMUnidades[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\segmentsMUnidades[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\segmentsMUnidades[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decMUni|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsMUnidades[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\segmentsSDecenas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\segmentsSDecenas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\segmentsSDecenas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\segmentsSDecenas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\segmentsSDecenas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\segmentsSDecenas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\segmentsSDecenas[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSDec|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSDecenas[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\segmentsSUnidades[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\segmentsSUnidades[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\segmentsSUnidades[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\segmentsSUnidades[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\segmentsSUnidades[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\segmentsSUnidades[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\segmentsSUnidades[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decSUni|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsSUnidades[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\segmentsCDecenas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\segmentsCDecenas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\segmentsCDecenas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\segmentsCDecenas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\segmentsCDecenas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\segmentsCDecenas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\segmentsCDecenas[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCDec|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCDecenas[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\segmentsCUnidades[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\segmentsCUnidades[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\segmentsCUnidades[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\segmentsCUnidades[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\segmentsCUnidades[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\segmentsCUnidades[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\segmentsCUnidades[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayDriverInst|decCUni|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentsCUnidades[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50mhz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50mhz,
	o => \clk50mhz~input_o\);

-- Location: CLKCTRL_G19
\clk50mhz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X71_Y46_N4
\counterBcdInst|m1[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m1[0]~6_combout\ = !\counterBcdInst|m1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|m1\(0),
	combout => \counterBcdInst|m1[0]~6_combout\);

-- Location: IOIBUF_X46_Y54_N29
\btn2Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn2Reset,
	o => \btn2Reset~input_o\);

-- Location: LCCOMB_X69_Y46_N24
\counterBcdInst|s1[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1[0]~5_combout\ = !\counterBcdInst|s1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|s1\(0),
	combout => \counterBcdInst|s1[0]~5_combout\);

-- Location: LCCOMB_X74_Y46_N12
\counterBcdInst|s0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s0[0]~6_combout\ = !\counterBcdInst|s0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|s0\(0),
	combout => \counterBcdInst|s0[0]~6_combout\);

-- Location: IOIBUF_X49_Y54_N29
\btn1StartPause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn1StartPause,
	o => \btn1StartPause~input_o\);

-- Location: FF_X70_Y46_N13
\fsmControlInst|btn1Ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	asdata => \btn1StartPause~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmControlInst|btn1Ff1~q\);

-- Location: FF_X70_Y46_N29
\fsmControlInst|btn1Ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	asdata => \fsmControlInst|btn1Ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmControlInst|btn1Ff2~q\);

-- Location: LCCOMB_X70_Y46_N2
\fsmControlInst|isRunningFf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsmControlInst|isRunningFf~0_combout\ = \fsmControlInst|isRunningFf~q\ $ (((\fsmControlInst|btn1Ff1~q\ & !\fsmControlInst|btn1Ff2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsmControlInst|btn1Ff1~q\,
	datac => \fsmControlInst|isRunningFf~q\,
	datad => \fsmControlInst|btn1Ff2~q\,
	combout => \fsmControlInst|isRunningFf~0_combout\);

-- Location: FF_X70_Y46_N3
\fsmControlInst|isRunningFf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \fsmControlInst|isRunningFf~0_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmControlInst|isRunningFf~q\);

-- Location: LCCOMB_X70_Y50_N20
\counterBcdInst|c1[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c1[0]~6_combout\ = !\counterBcdInst|c1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|c1\(0),
	combout => \counterBcdInst|c1[0]~6_combout\);

-- Location: LCCOMB_X71_Y50_N12
\counterBcdInst|c0[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c0[0]~3_combout\ = !\counterBcdInst|c0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|c0\(0),
	combout => \counterBcdInst|c0[0]~3_combout\);

-- Location: LCCOMB_X72_Y46_N14
\clkDividerInst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~0_combout\ = \clkDividerInst|counter\(0) $ (VCC)
-- \clkDividerInst|Add0~1\ = CARRY(\clkDividerInst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(0),
	datad => VCC,
	combout => \clkDividerInst|Add0~0_combout\,
	cout => \clkDividerInst|Add0~1\);

-- Location: FF_X72_Y46_N15
\clkDividerInst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~0_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(0));

-- Location: LCCOMB_X72_Y46_N16
\clkDividerInst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~2_combout\ = (\clkDividerInst|counter\(1) & (!\clkDividerInst|Add0~1\)) # (!\clkDividerInst|counter\(1) & ((\clkDividerInst|Add0~1\) # (GND)))
-- \clkDividerInst|Add0~3\ = CARRY((!\clkDividerInst|Add0~1\) # (!\clkDividerInst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(1),
	datad => VCC,
	cin => \clkDividerInst|Add0~1\,
	combout => \clkDividerInst|Add0~2_combout\,
	cout => \clkDividerInst|Add0~3\);

-- Location: FF_X72_Y46_N17
\clkDividerInst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(1));

-- Location: LCCOMB_X72_Y46_N18
\clkDividerInst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~4_combout\ = (\clkDividerInst|counter\(2) & (\clkDividerInst|Add0~3\ $ (GND))) # (!\clkDividerInst|counter\(2) & (!\clkDividerInst|Add0~3\ & VCC))
-- \clkDividerInst|Add0~5\ = CARRY((\clkDividerInst|counter\(2) & !\clkDividerInst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(2),
	datad => VCC,
	cin => \clkDividerInst|Add0~3\,
	combout => \clkDividerInst|Add0~4_combout\,
	cout => \clkDividerInst|Add0~5\);

-- Location: FF_X72_Y46_N19
\clkDividerInst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(2));

-- Location: LCCOMB_X72_Y46_N20
\clkDividerInst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~6_combout\ = (\clkDividerInst|counter\(3) & (!\clkDividerInst|Add0~5\)) # (!\clkDividerInst|counter\(3) & ((\clkDividerInst|Add0~5\) # (GND)))
-- \clkDividerInst|Add0~7\ = CARRY((!\clkDividerInst|Add0~5\) # (!\clkDividerInst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(3),
	datad => VCC,
	cin => \clkDividerInst|Add0~5\,
	combout => \clkDividerInst|Add0~6_combout\,
	cout => \clkDividerInst|Add0~7\);

-- Location: FF_X72_Y46_N21
\clkDividerInst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~6_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(3));

-- Location: LCCOMB_X72_Y46_N22
\clkDividerInst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~8_combout\ = (\clkDividerInst|counter\(4) & (\clkDividerInst|Add0~7\ $ (GND))) # (!\clkDividerInst|counter\(4) & (!\clkDividerInst|Add0~7\ & VCC))
-- \clkDividerInst|Add0~9\ = CARRY((\clkDividerInst|counter\(4) & !\clkDividerInst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(4),
	datad => VCC,
	cin => \clkDividerInst|Add0~7\,
	combout => \clkDividerInst|Add0~8_combout\,
	cout => \clkDividerInst|Add0~9\);

-- Location: FF_X72_Y46_N23
\clkDividerInst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~8_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(4));

-- Location: LCCOMB_X72_Y46_N24
\clkDividerInst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~10_combout\ = (\clkDividerInst|counter\(5) & (!\clkDividerInst|Add0~9\)) # (!\clkDividerInst|counter\(5) & ((\clkDividerInst|Add0~9\) # (GND)))
-- \clkDividerInst|Add0~11\ = CARRY((!\clkDividerInst|Add0~9\) # (!\clkDividerInst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(5),
	datad => VCC,
	cin => \clkDividerInst|Add0~9\,
	combout => \clkDividerInst|Add0~10_combout\,
	cout => \clkDividerInst|Add0~11\);

-- Location: LCCOMB_X72_Y46_N10
\clkDividerInst|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~6_combout\ = (!\clkDividerInst|Equal0~5_combout\ & \clkDividerInst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|Equal0~5_combout\,
	datad => \clkDividerInst|Add0~10_combout\,
	combout => \clkDividerInst|counter~6_combout\);

-- Location: FF_X72_Y46_N11
\clkDividerInst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~6_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(5));

-- Location: LCCOMB_X72_Y46_N26
\clkDividerInst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~12_combout\ = (\clkDividerInst|counter\(6) & (\clkDividerInst|Add0~11\ $ (GND))) # (!\clkDividerInst|counter\(6) & (!\clkDividerInst|Add0~11\ & VCC))
-- \clkDividerInst|Add0~13\ = CARRY((\clkDividerInst|counter\(6) & !\clkDividerInst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(6),
	datad => VCC,
	cin => \clkDividerInst|Add0~11\,
	combout => \clkDividerInst|Add0~12_combout\,
	cout => \clkDividerInst|Add0~13\);

-- Location: FF_X72_Y46_N27
\clkDividerInst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~12_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(6));

-- Location: LCCOMB_X72_Y46_N8
\clkDividerInst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~3_combout\ = (\clkDividerInst|counter\(4) & (\clkDividerInst|counter\(3) & (!\clkDividerInst|counter\(6) & !\clkDividerInst|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(4),
	datab => \clkDividerInst|counter\(3),
	datac => \clkDividerInst|counter\(6),
	datad => \clkDividerInst|counter\(5),
	combout => \clkDividerInst|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y46_N28
\clkDividerInst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~14_combout\ = (\clkDividerInst|counter\(7) & (!\clkDividerInst|Add0~13\)) # (!\clkDividerInst|counter\(7) & ((\clkDividerInst|Add0~13\) # (GND)))
-- \clkDividerInst|Add0~15\ = CARRY((!\clkDividerInst|Add0~13\) # (!\clkDividerInst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(7),
	datad => VCC,
	cin => \clkDividerInst|Add0~13\,
	combout => \clkDividerInst|Add0~14_combout\,
	cout => \clkDividerInst|Add0~15\);

-- Location: FF_X72_Y46_N29
\clkDividerInst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~14_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(7));

-- Location: LCCOMB_X72_Y46_N30
\clkDividerInst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~16_combout\ = (\clkDividerInst|counter\(8) & (\clkDividerInst|Add0~15\ $ (GND))) # (!\clkDividerInst|counter\(8) & (!\clkDividerInst|Add0~15\ & VCC))
-- \clkDividerInst|Add0~17\ = CARRY((\clkDividerInst|counter\(8) & !\clkDividerInst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(8),
	datad => VCC,
	cin => \clkDividerInst|Add0~15\,
	combout => \clkDividerInst|Add0~16_combout\,
	cout => \clkDividerInst|Add0~17\);

-- Location: LCCOMB_X72_Y46_N6
\clkDividerInst|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~5_combout\ = (\clkDividerInst|Add0~16_combout\ & !\clkDividerInst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividerInst|Add0~16_combout\,
	datad => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|counter~5_combout\);

-- Location: FF_X72_Y46_N7
\clkDividerInst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~5_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(8));

-- Location: LCCOMB_X72_Y45_N0
\clkDividerInst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~18_combout\ = (\clkDividerInst|counter\(9) & (!\clkDividerInst|Add0~17\)) # (!\clkDividerInst|counter\(9) & ((\clkDividerInst|Add0~17\) # (GND)))
-- \clkDividerInst|Add0~19\ = CARRY((!\clkDividerInst|Add0~17\) # (!\clkDividerInst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(9),
	datad => VCC,
	cin => \clkDividerInst|Add0~17\,
	combout => \clkDividerInst|Add0~18_combout\,
	cout => \clkDividerInst|Add0~19\);

-- Location: FF_X72_Y45_N1
\clkDividerInst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~18_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(9));

-- Location: LCCOMB_X72_Y45_N2
\clkDividerInst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~20_combout\ = (\clkDividerInst|counter\(10) & (\clkDividerInst|Add0~19\ $ (GND))) # (!\clkDividerInst|counter\(10) & (!\clkDividerInst|Add0~19\ & VCC))
-- \clkDividerInst|Add0~21\ = CARRY((\clkDividerInst|counter\(10) & !\clkDividerInst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(10),
	datad => VCC,
	cin => \clkDividerInst|Add0~19\,
	combout => \clkDividerInst|Add0~20_combout\,
	cout => \clkDividerInst|Add0~21\);

-- Location: FF_X72_Y45_N3
\clkDividerInst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~20_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(10));

-- Location: LCCOMB_X72_Y46_N4
\clkDividerInst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~2_combout\ = (\clkDividerInst|counter\(8) & (!\clkDividerInst|counter\(7) & (!\clkDividerInst|counter\(10) & !\clkDividerInst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(8),
	datab => \clkDividerInst|counter\(7),
	datac => \clkDividerInst|counter\(10),
	datad => \clkDividerInst|counter\(9),
	combout => \clkDividerInst|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y45_N4
\clkDividerInst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~22_combout\ = (\clkDividerInst|counter\(11) & (!\clkDividerInst|Add0~21\)) # (!\clkDividerInst|counter\(11) & ((\clkDividerInst|Add0~21\) # (GND)))
-- \clkDividerInst|Add0~23\ = CARRY((!\clkDividerInst|Add0~21\) # (!\clkDividerInst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(11),
	datad => VCC,
	cin => \clkDividerInst|Add0~21\,
	combout => \clkDividerInst|Add0~22_combout\,
	cout => \clkDividerInst|Add0~23\);

-- Location: FF_X72_Y45_N5
\clkDividerInst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~22_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(11));

-- Location: LCCOMB_X72_Y45_N6
\clkDividerInst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~24_combout\ = (\clkDividerInst|counter\(12) & (\clkDividerInst|Add0~23\ $ (GND))) # (!\clkDividerInst|counter\(12) & (!\clkDividerInst|Add0~23\ & VCC))
-- \clkDividerInst|Add0~25\ = CARRY((\clkDividerInst|counter\(12) & !\clkDividerInst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(12),
	datad => VCC,
	cin => \clkDividerInst|Add0~23\,
	combout => \clkDividerInst|Add0~24_combout\,
	cout => \clkDividerInst|Add0~25\);

-- Location: FF_X72_Y45_N7
\clkDividerInst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~24_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(12));

-- Location: LCCOMB_X72_Y45_N8
\clkDividerInst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~26_combout\ = (\clkDividerInst|counter\(13) & (!\clkDividerInst|Add0~25\)) # (!\clkDividerInst|counter\(13) & ((\clkDividerInst|Add0~25\) # (GND)))
-- \clkDividerInst|Add0~27\ = CARRY((!\clkDividerInst|Add0~25\) # (!\clkDividerInst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(13),
	datad => VCC,
	cin => \clkDividerInst|Add0~25\,
	combout => \clkDividerInst|Add0~26_combout\,
	cout => \clkDividerInst|Add0~27\);

-- Location: LCCOMB_X72_Y45_N28
\clkDividerInst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~4_combout\ = (\clkDividerInst|Add0~26_combout\ & !\clkDividerInst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividerInst|Add0~26_combout\,
	datad => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|counter~4_combout\);

-- Location: FF_X72_Y45_N29
\clkDividerInst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(13));

-- Location: LCCOMB_X72_Y45_N10
\clkDividerInst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~28_combout\ = (\clkDividerInst|counter\(14) & (\clkDividerInst|Add0~27\ $ (GND))) # (!\clkDividerInst|counter\(14) & (!\clkDividerInst|Add0~27\ & VCC))
-- \clkDividerInst|Add0~29\ = CARRY((\clkDividerInst|counter\(14) & !\clkDividerInst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(14),
	datad => VCC,
	cin => \clkDividerInst|Add0~27\,
	combout => \clkDividerInst|Add0~28_combout\,
	cout => \clkDividerInst|Add0~29\);

-- Location: FF_X72_Y45_N11
\clkDividerInst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|Add0~28_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(14));

-- Location: LCCOMB_X72_Y45_N30
\clkDividerInst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~1_combout\ = (!\clkDividerInst|counter\(12) & (\clkDividerInst|counter\(13) & (!\clkDividerInst|counter\(11) & !\clkDividerInst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(12),
	datab => \clkDividerInst|counter\(13),
	datac => \clkDividerInst|counter\(11),
	datad => \clkDividerInst|counter\(14),
	combout => \clkDividerInst|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y45_N12
\clkDividerInst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~30_combout\ = (\clkDividerInst|counter\(15) & (!\clkDividerInst|Add0~29\)) # (!\clkDividerInst|counter\(15) & ((\clkDividerInst|Add0~29\) # (GND)))
-- \clkDividerInst|Add0~31\ = CARRY((!\clkDividerInst|Add0~29\) # (!\clkDividerInst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(15),
	datad => VCC,
	cin => \clkDividerInst|Add0~29\,
	combout => \clkDividerInst|Add0~30_combout\,
	cout => \clkDividerInst|Add0~31\);

-- Location: LCCOMB_X72_Y45_N26
\clkDividerInst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~3_combout\ = (\clkDividerInst|Add0~30_combout\ & !\clkDividerInst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|Add0~30_combout\,
	datad => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|counter~3_combout\);

-- Location: FF_X72_Y45_N27
\clkDividerInst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(15));

-- Location: LCCOMB_X72_Y45_N14
\clkDividerInst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~32_combout\ = (\clkDividerInst|counter\(16) & (\clkDividerInst|Add0~31\ $ (GND))) # (!\clkDividerInst|counter\(16) & (!\clkDividerInst|Add0~31\ & VCC))
-- \clkDividerInst|Add0~33\ = CARRY((\clkDividerInst|counter\(16) & !\clkDividerInst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|counter\(16),
	datad => VCC,
	cin => \clkDividerInst|Add0~31\,
	combout => \clkDividerInst|Add0~32_combout\,
	cout => \clkDividerInst|Add0~33\);

-- Location: LCCOMB_X72_Y45_N20
\clkDividerInst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~2_combout\ = (\clkDividerInst|Add0~32_combout\ & !\clkDividerInst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividerInst|Add0~32_combout\,
	datad => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|counter~2_combout\);

-- Location: FF_X72_Y45_N21
\clkDividerInst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(16));

-- Location: LCCOMB_X72_Y45_N16
\clkDividerInst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~34_combout\ = (\clkDividerInst|counter\(17) & (!\clkDividerInst|Add0~33\)) # (!\clkDividerInst|counter\(17) & ((\clkDividerInst|Add0~33\) # (GND)))
-- \clkDividerInst|Add0~35\ = CARRY((!\clkDividerInst|Add0~33\) # (!\clkDividerInst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(17),
	datad => VCC,
	cin => \clkDividerInst|Add0~33\,
	combout => \clkDividerInst|Add0~34_combout\,
	cout => \clkDividerInst|Add0~35\);

-- Location: LCCOMB_X72_Y45_N22
\clkDividerInst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~1_combout\ = (\clkDividerInst|Add0~34_combout\ & !\clkDividerInst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividerInst|Add0~34_combout\,
	datad => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|counter~1_combout\);

-- Location: FF_X72_Y45_N23
\clkDividerInst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~1_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(17));

-- Location: LCCOMB_X72_Y45_N18
\clkDividerInst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Add0~36_combout\ = \clkDividerInst|Add0~35\ $ (!\clkDividerInst|counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDividerInst|counter\(18),
	cin => \clkDividerInst|Add0~35\,
	combout => \clkDividerInst|Add0~36_combout\);

-- Location: LCCOMB_X72_Y45_N24
\clkDividerInst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|counter~0_combout\ = (!\clkDividerInst|Equal0~5_combout\ & \clkDividerInst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividerInst|Equal0~5_combout\,
	datad => \clkDividerInst|Add0~36_combout\,
	combout => \clkDividerInst|counter~0_combout\);

-- Location: FF_X72_Y45_N25
\clkDividerInst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|counter~0_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|counter\(18));

-- Location: LCCOMB_X72_Y46_N12
\clkDividerInst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~0_combout\ = (\clkDividerInst|counter\(16) & (\clkDividerInst|counter\(15) & (\clkDividerInst|counter\(17) & \clkDividerInst|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(16),
	datab => \clkDividerInst|counter\(15),
	datac => \clkDividerInst|counter\(17),
	datad => \clkDividerInst|counter\(18),
	combout => \clkDividerInst|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y46_N2
\clkDividerInst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~4_combout\ = (\clkDividerInst|Equal0~3_combout\ & (\clkDividerInst|Equal0~2_combout\ & (\clkDividerInst|Equal0~1_combout\ & \clkDividerInst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|Equal0~3_combout\,
	datab => \clkDividerInst|Equal0~2_combout\,
	datac => \clkDividerInst|Equal0~1_combout\,
	datad => \clkDividerInst|Equal0~0_combout\,
	combout => \clkDividerInst|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y46_N0
\clkDividerInst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|Equal0~5_combout\ = (\clkDividerInst|counter\(2) & (\clkDividerInst|counter\(1) & (\clkDividerInst|counter\(0) & \clkDividerInst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividerInst|counter\(2),
	datab => \clkDividerInst|counter\(1),
	datac => \clkDividerInst|counter\(0),
	datad => \clkDividerInst|Equal0~4_combout\,
	combout => \clkDividerInst|Equal0~5_combout\);

-- Location: LCCOMB_X71_Y46_N10
\clkDividerInst|enable100hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDividerInst|enable100hz~feeder_combout\ = \clkDividerInst|Equal0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividerInst|Equal0~5_combout\,
	combout => \clkDividerInst|enable100hz~feeder_combout\);

-- Location: FF_X71_Y46_N11
\clkDividerInst|enable100hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clkDividerInst|enable100hz~feeder_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividerInst|enable100hz~q\);

-- Location: LCCOMB_X70_Y46_N28
\fsmControlInst|countEnable\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsmControlInst|countEnable~combout\ = (\fsmControlInst|isRunningFf~q\ & \clkDividerInst|enable100hz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsmControlInst|isRunningFf~q\,
	datad => \clkDividerInst|enable100hz~q\,
	combout => \fsmControlInst|countEnable~combout\);

-- Location: FF_X71_Y50_N13
\counterBcdInst|c0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c0[0]~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \fsmControlInst|countEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c0\(0));

-- Location: LCCOMB_X71_Y50_N28
\counterBcdInst|c0[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c0[2]~1_combout\ = \counterBcdInst|c0\(2) $ (((\counterBcdInst|c0\(0) & (\counterBcdInst|c0\(1) & \fsmControlInst|countEnable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(0),
	datab => \counterBcdInst|c0\(1),
	datac => \counterBcdInst|c0\(2),
	datad => \fsmControlInst|countEnable~combout\,
	combout => \counterBcdInst|c0[2]~1_combout\);

-- Location: FF_X71_Y50_N29
\counterBcdInst|c0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c0[2]~1_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c0\(2));

-- Location: LCCOMB_X71_Y50_N14
\counterBcdInst|c0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c0~0_combout\ = (\counterBcdInst|c0\(1) & (((!\counterBcdInst|c0\(0))))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(0) & ((\counterBcdInst|c0\(2)) # (!\counterBcdInst|c0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(3),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(1),
	datad => \counterBcdInst|c0\(0),
	combout => \counterBcdInst|c0~0_combout\);

-- Location: FF_X71_Y50_N15
\counterBcdInst|c0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c0~0_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \fsmControlInst|countEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c0\(1));

-- Location: LCCOMB_X71_Y50_N22
\counterBcdInst|c0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c0~2_combout\ = (\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(3) $ (((\counterBcdInst|c0\(0) & \counterBcdInst|c0\(2)))))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(3) & ((\counterBcdInst|c0\(2)) # (!\counterBcdInst|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(0),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(2),
	combout => \counterBcdInst|c0~2_combout\);

-- Location: FF_X71_Y50_N23
\counterBcdInst|c0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c0~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \fsmControlInst|countEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c0\(3));

-- Location: LCCOMB_X71_Y50_N26
\counterBcdInst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Equal1~0_combout\ = (\counterBcdInst|c0\(3) & (!\counterBcdInst|c0\(2) & (!\counterBcdInst|c0\(1) & \counterBcdInst|c0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(3),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(1),
	datad => \counterBcdInst|c0\(0),
	combout => \counterBcdInst|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y50_N2
\counterBcdInst|c1[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c1[3]~5_combout\ = (\counterBcdInst|Equal1~0_combout\ & (\clkDividerInst|enable100hz~q\ & \fsmControlInst|isRunningFf~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|Equal1~0_combout\,
	datac => \clkDividerInst|enable100hz~q\,
	datad => \fsmControlInst|isRunningFf~q\,
	combout => \counterBcdInst|c1[3]~5_combout\);

-- Location: FF_X70_Y50_N21
\counterBcdInst|c1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c1[0]~6_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|c1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c1\(0));

-- Location: LCCOMB_X70_Y50_N16
\counterBcdInst|c1[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c1[2]~3_combout\ = \counterBcdInst|c1\(2) $ (((\counterBcdInst|c1\(1) & (\counterBcdInst|c1\(0) & \counterBcdInst|c1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(0),
	datac => \counterBcdInst|c1\(2),
	datad => \counterBcdInst|c1[3]~5_combout\,
	combout => \counterBcdInst|c1[2]~3_combout\);

-- Location: FF_X70_Y50_N17
\counterBcdInst|c1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c1[2]~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c1\(2));

-- Location: LCCOMB_X70_Y50_N22
\counterBcdInst|c1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c1~4_combout\ = (\counterBcdInst|c1\(0) & ((\counterBcdInst|c1\(2) & (\counterBcdInst|c1\(3) $ (\counterBcdInst|c1\(1)))) # (!\counterBcdInst|c1\(2) & (\counterBcdInst|c1\(3) & \counterBcdInst|c1\(1))))) # (!\counterBcdInst|c1\(0) & 
-- (((\counterBcdInst|c1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(0),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(3),
	datad => \counterBcdInst|c1\(1),
	combout => \counterBcdInst|c1~4_combout\);

-- Location: FF_X70_Y50_N23
\counterBcdInst|c1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c1~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|c1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c1\(3));

-- Location: LCCOMB_X70_Y50_N30
\counterBcdInst|c1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|c1~2_combout\ = (\counterBcdInst|c1\(0) & (!\counterBcdInst|c1\(1) & ((\counterBcdInst|c1\(2)) # (!\counterBcdInst|c1\(3))))) # (!\counterBcdInst|c1\(0) & (((\counterBcdInst|c1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(3),
	datab => \counterBcdInst|c1\(0),
	datac => \counterBcdInst|c1\(1),
	datad => \counterBcdInst|c1\(2),
	combout => \counterBcdInst|c1~2_combout\);

-- Location: FF_X70_Y50_N31
\counterBcdInst|c1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|c1~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|c1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|c1\(1));

-- Location: LCCOMB_X70_Y50_N18
\counterBcdInst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Equal2~0_combout\ = (!\counterBcdInst|c1\(1) & (!\counterBcdInst|c1\(2) & (\counterBcdInst|c1\(3) & \counterBcdInst|c1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(3),
	datad => \counterBcdInst|c1\(0),
	combout => \counterBcdInst|Equal2~0_combout\);

-- Location: LCCOMB_X70_Y50_N24
\counterBcdInst|s0[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s0[3]~5_combout\ = (\fsmControlInst|isRunningFf~q\ & (\counterBcdInst|Equal2~0_combout\ & (\clkDividerInst|enable100hz~q\ & \counterBcdInst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmControlInst|isRunningFf~q\,
	datab => \counterBcdInst|Equal2~0_combout\,
	datac => \clkDividerInst|enable100hz~q\,
	datad => \counterBcdInst|Equal1~0_combout\,
	combout => \counterBcdInst|s0[3]~5_combout\);

-- Location: FF_X74_Y46_N13
\counterBcdInst|s0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s0[0]~6_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s0\(0));

-- Location: LCCOMB_X74_Y46_N16
\counterBcdInst|s0[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s0[2]~3_combout\ = \counterBcdInst|s0\(2) $ (((\counterBcdInst|s0\(0) & (\counterBcdInst|s0\(1) & \counterBcdInst|s0[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(0),
	datab => \counterBcdInst|s0\(1),
	datac => \counterBcdInst|s0\(2),
	datad => \counterBcdInst|s0[3]~5_combout\,
	combout => \counterBcdInst|s0[2]~3_combout\);

-- Location: FF_X74_Y46_N17
\counterBcdInst|s0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s0[2]~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s0\(2));

-- Location: LCCOMB_X74_Y46_N30
\counterBcdInst|s0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s0~2_combout\ = (\counterBcdInst|s0\(0) & (!\counterBcdInst|s0\(1) & ((\counterBcdInst|s0\(2)) # (!\counterBcdInst|s0\(3))))) # (!\counterBcdInst|s0\(0) & (((\counterBcdInst|s0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(0),
	datab => \counterBcdInst|s0\(3),
	datac => \counterBcdInst|s0\(1),
	datad => \counterBcdInst|s0\(2),
	combout => \counterBcdInst|s0~2_combout\);

-- Location: FF_X74_Y46_N31
\counterBcdInst|s0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s0~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s0\(1));

-- Location: LCCOMB_X74_Y46_N14
\counterBcdInst|s0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s0~4_combout\ = (\counterBcdInst|s0\(1) & (\counterBcdInst|s0\(3) $ (((\counterBcdInst|s0\(2) & \counterBcdInst|s0\(0)))))) # (!\counterBcdInst|s0\(1) & (\counterBcdInst|s0\(3) & ((\counterBcdInst|s0\(2)) # (!\counterBcdInst|s0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(2),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(0),
	combout => \counterBcdInst|s0~4_combout\);

-- Location: FF_X74_Y46_N15
\counterBcdInst|s0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s0~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s0\(3));

-- Location: LCCOMB_X74_Y46_N26
\counterBcdInst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Equal3~0_combout\ = (\counterBcdInst|s0\(0) & (\counterBcdInst|s0\(3) & (!\counterBcdInst|s0\(1) & !\counterBcdInst|s0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(0),
	datab => \counterBcdInst|s0\(3),
	datac => \counterBcdInst|s0\(1),
	datad => \counterBcdInst|s0\(2),
	combout => \counterBcdInst|Equal3~0_combout\);

-- Location: LCCOMB_X70_Y46_N18
\counterBcdInst|s1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1[3]~0_combout\ = (\counterBcdInst|Equal3~0_combout\ & (\fsmControlInst|countEnable~combout\ & (\counterBcdInst|Equal2~0_combout\ & \counterBcdInst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|Equal3~0_combout\,
	datab => \fsmControlInst|countEnable~combout\,
	datac => \counterBcdInst|Equal2~0_combout\,
	datad => \counterBcdInst|Equal1~0_combout\,
	combout => \counterBcdInst|s1[3]~0_combout\);

-- Location: FF_X69_Y46_N25
\counterBcdInst|s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s1[0]~5_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s1\(0));

-- Location: LCCOMB_X69_Y46_N0
\counterBcdInst|s1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1~2_combout\ = (\counterBcdInst|s1\(1) & ((\counterBcdInst|s1\(2) $ (\counterBcdInst|s1\(0))))) # (!\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(2) & ((\counterBcdInst|s1\(3)) # (!\counterBcdInst|s1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(1),
	datac => \counterBcdInst|s1\(2),
	datad => \counterBcdInst|s1\(0),
	combout => \counterBcdInst|s1~2_combout\);

-- Location: FF_X69_Y46_N1
\counterBcdInst|s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s1~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s1\(2));

-- Location: LCCOMB_X69_Y46_N28
\counterBcdInst|s1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1[3]~3_combout\ = (\counterBcdInst|s1\(2) & (\counterBcdInst|s1\(1) & \counterBcdInst|s1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \counterBcdInst|s1[3]~3_combout\);

-- Location: LCCOMB_X69_Y46_N22
\counterBcdInst|s1[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1[3]~4_combout\ = \counterBcdInst|s1\(3) $ (((\counterBcdInst|s1[3]~3_combout\ & \counterBcdInst|s1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|s1[3]~3_combout\,
	datac => \counterBcdInst|s1\(3),
	datad => \counterBcdInst|s1[3]~0_combout\,
	combout => \counterBcdInst|s1[3]~4_combout\);

-- Location: FF_X69_Y46_N23
\counterBcdInst|s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s1[3]~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s1\(3));

-- Location: LCCOMB_X69_Y46_N14
\counterBcdInst|s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|s1~1_combout\ = (\counterBcdInst|s1\(1) & (((!\counterBcdInst|s1\(0))))) # (!\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(0) & ((\counterBcdInst|s1\(3)) # (!\counterBcdInst|s1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \counterBcdInst|s1~1_combout\);

-- Location: FF_X69_Y46_N15
\counterBcdInst|s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|s1~1_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|s1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|s1\(1));

-- Location: LCCOMB_X70_Y46_N24
\counterBcdInst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Equal4~0_combout\ = (!\counterBcdInst|s1\(1) & (!\counterBcdInst|s1\(3) & (\counterBcdInst|s1\(2) & \counterBcdInst|s1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(1),
	datab => \counterBcdInst|s1\(3),
	datac => \counterBcdInst|s1\(2),
	datad => \counterBcdInst|s1\(0),
	combout => \counterBcdInst|Equal4~0_combout\);

-- Location: LCCOMB_X70_Y46_N0
\counterBcdInst|m0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m0[0]~4_combout\ = !\counterBcdInst|m0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterBcdInst|m0\(0),
	combout => \counterBcdInst|m0[0]~4_combout\);

-- Location: LCCOMB_X70_Y46_N12
\counterBcdInst|m0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m0[3]~0_combout\ = (\counterBcdInst|Equal4~0_combout\ & \counterBcdInst|s1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|Equal4~0_combout\,
	datad => \counterBcdInst|s1[3]~0_combout\,
	combout => \counterBcdInst|m0[3]~0_combout\);

-- Location: FF_X70_Y46_N1
\counterBcdInst|m0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m0[0]~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m0\(0));

-- Location: LCCOMB_X70_Y46_N16
\counterBcdInst|m0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m0[2]~2_combout\ = \counterBcdInst|m0\(2) $ (((\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(0) & \counterBcdInst|m0[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(1),
	datab => \counterBcdInst|m0\(0),
	datac => \counterBcdInst|m0\(2),
	datad => \counterBcdInst|m0[3]~0_combout\,
	combout => \counterBcdInst|m0[2]~2_combout\);

-- Location: FF_X70_Y46_N17
\counterBcdInst|m0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m0[2]~2_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m0\(2));

-- Location: LCCOMB_X70_Y46_N22
\counterBcdInst|m0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m0~1_combout\ = (\counterBcdInst|m0\(1) & (((!\counterBcdInst|m0\(0))))) # (!\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(0) & ((\counterBcdInst|m0\(2)) # (!\counterBcdInst|m0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(3),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(1),
	datad => \counterBcdInst|m0\(0),
	combout => \counterBcdInst|m0~1_combout\);

-- Location: FF_X70_Y46_N23
\counterBcdInst|m0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m0~1_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m0\(1));

-- Location: LCCOMB_X70_Y46_N6
\counterBcdInst|m0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m0~3_combout\ = (\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(3) $ (((\counterBcdInst|m0\(2) & \counterBcdInst|m0\(0)))))) # (!\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(3) & ((\counterBcdInst|m0\(2)) # (!\counterBcdInst|m0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(1),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(0),
	combout => \counterBcdInst|m0~3_combout\);

-- Location: FF_X70_Y46_N7
\counterBcdInst|m0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m0~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m0\(3));

-- Location: LCCOMB_X70_Y46_N26
\counterBcdInst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Equal5~0_combout\ = (\counterBcdInst|m0\(3) & (!\counterBcdInst|m0\(2) & (!\counterBcdInst|m0\(1) & \counterBcdInst|m0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(3),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(1),
	datad => \counterBcdInst|m0\(0),
	combout => \counterBcdInst|Equal5~0_combout\);

-- Location: LCCOMB_X71_Y46_N16
\counterBcdInst|m1[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m1[3]~2_combout\ = (\counterBcdInst|Equal4~0_combout\ & (\counterBcdInst|Equal5~0_combout\ & \counterBcdInst|s1[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|Equal4~0_combout\,
	datac => \counterBcdInst|Equal5~0_combout\,
	datad => \counterBcdInst|s1[3]~0_combout\,
	combout => \counterBcdInst|m1[3]~2_combout\);

-- Location: FF_X71_Y46_N5
\counterBcdInst|m1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m1[0]~6_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m1\(0));

-- Location: LCCOMB_X71_Y46_N12
\counterBcdInst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|Add0~0_combout\ = (\counterBcdInst|m1\(1) & \counterBcdInst|m1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|m1\(1),
	datac => \counterBcdInst|m1\(0),
	combout => \counterBcdInst|Add0~0_combout\);

-- Location: LCCOMB_X71_Y46_N20
\counterBcdInst|m1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m1~5_combout\ = (!\counterBcdInst|process_0~2_combout\ & (\counterBcdInst|m1\(2) $ (((\counterBcdInst|m1\(1) & \counterBcdInst|m1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(0),
	datac => \counterBcdInst|m1\(2),
	datad => \counterBcdInst|process_0~2_combout\,
	combout => \counterBcdInst|m1~5_combout\);

-- Location: FF_X71_Y46_N21
\counterBcdInst|m1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m1~5_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m1\(2));

-- Location: LCCOMB_X71_Y46_N22
\counterBcdInst|m1[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m1[3]~4_combout\ = \counterBcdInst|m1\(3) $ (((\counterBcdInst|Add0~0_combout\ & (\counterBcdInst|m1\(2) & \counterBcdInst|m1[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|Add0~0_combout\,
	datab => \counterBcdInst|m1\(2),
	datac => \counterBcdInst|m1\(3),
	datad => \counterBcdInst|m1[3]~2_combout\,
	combout => \counterBcdInst|m1[3]~4_combout\);

-- Location: FF_X71_Y46_N23
\counterBcdInst|m1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m1[3]~4_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m1\(3));

-- Location: LCCOMB_X71_Y46_N6
\counterBcdInst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|process_0~0_combout\ = (!\counterBcdInst|m1\(3) & (!\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(0) & \counterBcdInst|m1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(3),
	datab => \counterBcdInst|m1\(1),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \counterBcdInst|process_0~0_combout\);

-- Location: LCCOMB_X71_Y46_N28
\counterBcdInst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|process_0~1_combout\ = (\counterBcdInst|process_0~0_combout\ & (\counterBcdInst|Equal2~0_combout\ & (\counterBcdInst|Equal3~0_combout\ & \counterBcdInst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|process_0~0_combout\,
	datab => \counterBcdInst|Equal2~0_combout\,
	datac => \counterBcdInst|Equal3~0_combout\,
	datad => \counterBcdInst|Equal1~0_combout\,
	combout => \counterBcdInst|process_0~1_combout\);

-- Location: LCCOMB_X71_Y46_N2
\counterBcdInst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|process_0~2_combout\ = (\counterBcdInst|Equal4~0_combout\ & (\counterBcdInst|Equal5~0_combout\ & \counterBcdInst|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|Equal4~0_combout\,
	datac => \counterBcdInst|Equal5~0_combout\,
	datad => \counterBcdInst|process_0~1_combout\,
	combout => \counterBcdInst|process_0~2_combout\);

-- Location: LCCOMB_X71_Y46_N18
\counterBcdInst|m1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counterBcdInst|m1~3_combout\ = (!\counterBcdInst|process_0~2_combout\ & (\counterBcdInst|m1\(0) $ (\counterBcdInst|m1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counterBcdInst|m1\(0),
	datac => \counterBcdInst|m1\(1),
	datad => \counterBcdInst|process_0~2_combout\,
	combout => \counterBcdInst|m1~3_combout\);

-- Location: FF_X71_Y46_N19
\counterBcdInst|m1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \counterBcdInst|m1~3_combout\,
	clrn => \ALT_INV_btn2Reset~input_o\,
	ena => \counterBcdInst|m1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterBcdInst|m1\(1));

-- Location: LCCOMB_X72_Y42_N28
\displayDriverInst|decMDec|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux6~0_combout\ = (\counterBcdInst|m1\(1) & (!\counterBcdInst|m1\(3) & ((!\counterBcdInst|m1\(2)) # (!\counterBcdInst|m1\(0))))) # (!\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(3) $ (((\counterBcdInst|m1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y42_N2
\displayDriverInst|decMDec|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux5~0_combout\ = (\counterBcdInst|m1\(0) & ((\counterBcdInst|m1\(1)) # (\counterBcdInst|m1\(3) $ (!\counterBcdInst|m1\(2))))) # (!\counterBcdInst|m1\(0) & ((\counterBcdInst|m1\(2) & ((\counterBcdInst|m1\(3)))) # 
-- (!\counterBcdInst|m1\(2) & (\counterBcdInst|m1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y42_N24
\displayDriverInst|decMDec|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux4~0_combout\ = (\counterBcdInst|m1\(0)) # ((\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(3))) # (!\counterBcdInst|m1\(1) & ((\counterBcdInst|m1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y42_N10
\displayDriverInst|decMDec|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux3~0_combout\ = (\counterBcdInst|m1\(1) & ((\counterBcdInst|m1\(3)) # ((\counterBcdInst|m1\(0) & \counterBcdInst|m1\(2))))) # (!\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(2) $ (((!\counterBcdInst|m1\(3) & 
-- \counterBcdInst|m1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y42_N4
\displayDriverInst|decMDec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux2~0_combout\ = (\counterBcdInst|m1\(2) & (((\counterBcdInst|m1\(3))))) # (!\counterBcdInst|m1\(2) & (\counterBcdInst|m1\(1) & ((\counterBcdInst|m1\(3)) # (!\counterBcdInst|m1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y42_N26
\displayDriverInst|decMDec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux1~0_combout\ = (\counterBcdInst|m1\(3) & ((\counterBcdInst|m1\(1)) # ((\counterBcdInst|m1\(2))))) # (!\counterBcdInst|m1\(3) & (\counterBcdInst|m1\(2) & (\counterBcdInst|m1\(1) $ (\counterBcdInst|m1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y42_N8
\displayDriverInst|decMDec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMDec|Mux0~0_combout\ = (\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(3))) # (!\counterBcdInst|m1\(1) & (\counterBcdInst|m1\(2) $ (((!\counterBcdInst|m1\(3) & \counterBcdInst|m1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m1\(1),
	datab => \counterBcdInst|m1\(3),
	datac => \counterBcdInst|m1\(0),
	datad => \counterBcdInst|m1\(2),
	combout => \displayDriverInst|decMDec|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y46_N0
\displayDriverInst|decMUni|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux6~0_combout\ = (\counterBcdInst|m0\(2) & (!\counterBcdInst|m0\(3) & ((!\counterBcdInst|m0\(1)) # (!\counterBcdInst|m0\(0))))) # (!\counterBcdInst|m0\(2) & ((\counterBcdInst|m0\(3) $ (\counterBcdInst|m0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(0),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(1),
	combout => \displayDriverInst|decMUni|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y46_N20
\displayDriverInst|decMUni|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux5~0_combout\ = (\counterBcdInst|m0\(2) & ((\counterBcdInst|m0\(3)) # ((\counterBcdInst|m0\(1) & \counterBcdInst|m0\(0))))) # (!\counterBcdInst|m0\(2) & ((\counterBcdInst|m0\(1)) # ((!\counterBcdInst|m0\(3) & 
-- \counterBcdInst|m0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(3),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(1),
	datad => \counterBcdInst|m0\(0),
	combout => \displayDriverInst|decMUni|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y46_N10
\displayDriverInst|decMUni|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux4~0_combout\ = (\counterBcdInst|m0\(0)) # ((\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(3))) # (!\counterBcdInst|m0\(1) & ((\counterBcdInst|m0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(3),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(1),
	datad => \counterBcdInst|m0\(0),
	combout => \displayDriverInst|decMUni|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y46_N14
\displayDriverInst|decMUni|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux3~0_combout\ = (\counterBcdInst|m0\(1) & ((\counterBcdInst|m0\(3)) # ((\counterBcdInst|m0\(0) & \counterBcdInst|m0\(2))))) # (!\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(2) $ (((\counterBcdInst|m0\(0) & 
-- !\counterBcdInst|m0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(0),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(1),
	combout => \displayDriverInst|decMUni|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y46_N8
\displayDriverInst|decMUni|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux2~0_combout\ = (\counterBcdInst|m0\(2) & (((\counterBcdInst|m0\(3))))) # (!\counterBcdInst|m0\(2) & (\counterBcdInst|m0\(1) & ((\counterBcdInst|m0\(3)) # (!\counterBcdInst|m0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(0),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(1),
	combout => \displayDriverInst|decMUni|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y46_N30
\displayDriverInst|decMUni|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux1~0_combout\ = (\counterBcdInst|m0\(2) & ((\counterBcdInst|m0\(3)) # (\counterBcdInst|m0\(0) $ (\counterBcdInst|m0\(1))))) # (!\counterBcdInst|m0\(2) & (((\counterBcdInst|m0\(3) & \counterBcdInst|m0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(0),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(1),
	combout => \displayDriverInst|decMUni|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y46_N24
\displayDriverInst|decMUni|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decMUni|Mux0~0_combout\ = (\counterBcdInst|m0\(1) & (((\counterBcdInst|m0\(3))))) # (!\counterBcdInst|m0\(1) & (\counterBcdInst|m0\(2) $ (((\counterBcdInst|m0\(0) & !\counterBcdInst|m0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|m0\(0),
	datab => \counterBcdInst|m0\(2),
	datac => \counterBcdInst|m0\(3),
	datad => \counterBcdInst|m0\(1),
	combout => \displayDriverInst|decMUni|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y46_N16
\displayDriverInst|decSDec|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux6~0_combout\ = (\counterBcdInst|s1\(2) & (!\counterBcdInst|s1\(3) & ((!\counterBcdInst|s1\(0)) # (!\counterBcdInst|s1\(1))))) # (!\counterBcdInst|s1\(2) & (\counterBcdInst|s1\(3) $ ((\counterBcdInst|s1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y46_N26
\displayDriverInst|decSDec|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux5~0_combout\ = (\counterBcdInst|s1\(2) & ((\counterBcdInst|s1\(3)) # ((\counterBcdInst|s1\(1) & \counterBcdInst|s1\(0))))) # (!\counterBcdInst|s1\(2) & ((\counterBcdInst|s1\(1)) # ((!\counterBcdInst|s1\(3) & 
-- \counterBcdInst|s1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y46_N4
\displayDriverInst|decSDec|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux4~0_combout\ = (\counterBcdInst|s1\(0)) # ((\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(3))) # (!\counterBcdInst|s1\(1) & ((\counterBcdInst|s1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y46_N10
\displayDriverInst|decSDec|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux3~0_combout\ = (\counterBcdInst|s1\(1) & ((\counterBcdInst|s1\(3)) # ((\counterBcdInst|s1\(2) & \counterBcdInst|s1\(0))))) # (!\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(2) $ (((!\counterBcdInst|s1\(3) & 
-- \counterBcdInst|s1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(3),
	datab => \counterBcdInst|s1\(2),
	datac => \counterBcdInst|s1\(1),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y46_N8
\displayDriverInst|decSDec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux2~0_combout\ = (\counterBcdInst|s1\(2) & (((\counterBcdInst|s1\(3))))) # (!\counterBcdInst|s1\(2) & (\counterBcdInst|s1\(1) & ((\counterBcdInst|s1\(3)) # (!\counterBcdInst|s1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(1),
	datab => \counterBcdInst|s1\(3),
	datac => \counterBcdInst|s1\(2),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y46_N30
\displayDriverInst|decSDec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux1~0_combout\ = (\counterBcdInst|s1\(3) & ((\counterBcdInst|s1\(1)) # ((\counterBcdInst|s1\(2))))) # (!\counterBcdInst|s1\(3) & (\counterBcdInst|s1\(2) & (\counterBcdInst|s1\(1) $ (\counterBcdInst|s1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(1),
	datab => \counterBcdInst|s1\(3),
	datac => \counterBcdInst|s1\(2),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y46_N4
\displayDriverInst|decSDec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSDec|Mux0~0_combout\ = (\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(3))) # (!\counterBcdInst|s1\(1) & (\counterBcdInst|s1\(2) $ (((!\counterBcdInst|s1\(3) & \counterBcdInst|s1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s1\(1),
	datab => \counterBcdInst|s1\(3),
	datac => \counterBcdInst|s1\(2),
	datad => \counterBcdInst|s1\(0),
	combout => \displayDriverInst|decSDec|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y46_N20
\displayDriverInst|decSUni|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux6~0_combout\ = (\counterBcdInst|s0\(1) & (!\counterBcdInst|s0\(3) & ((!\counterBcdInst|s0\(2)) # (!\counterBcdInst|s0\(0))))) # (!\counterBcdInst|s0\(1) & ((\counterBcdInst|s0\(3) $ (\counterBcdInst|s0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y46_N10
\displayDriverInst|decSUni|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux5~0_combout\ = (\counterBcdInst|s0\(0) & ((\counterBcdInst|s0\(1)) # (\counterBcdInst|s0\(3) $ (!\counterBcdInst|s0\(2))))) # (!\counterBcdInst|s0\(0) & ((\counterBcdInst|s0\(2) & ((\counterBcdInst|s0\(3)))) # 
-- (!\counterBcdInst|s0\(2) & (\counterBcdInst|s0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y46_N24
\displayDriverInst|decSUni|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux4~0_combout\ = (\counterBcdInst|s0\(0)) # ((\counterBcdInst|s0\(1) & (\counterBcdInst|s0\(3))) # (!\counterBcdInst|s0\(1) & ((\counterBcdInst|s0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y46_N22
\displayDriverInst|decSUni|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux3~0_combout\ = (\counterBcdInst|s0\(1) & ((\counterBcdInst|s0\(3)) # ((\counterBcdInst|s0\(0) & \counterBcdInst|s0\(2))))) # (!\counterBcdInst|s0\(1) & (\counterBcdInst|s0\(2) $ (((\counterBcdInst|s0\(0) & 
-- !\counterBcdInst|s0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y46_N8
\displayDriverInst|decSUni|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux2~0_combout\ = (\counterBcdInst|s0\(2) & (((\counterBcdInst|s0\(3))))) # (!\counterBcdInst|s0\(2) & (\counterBcdInst|s0\(1) & ((\counterBcdInst|s0\(3)) # (!\counterBcdInst|s0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y46_N18
\displayDriverInst|decSUni|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux1~0_combout\ = (\counterBcdInst|s0\(3) & ((\counterBcdInst|s0\(1)) # ((\counterBcdInst|s0\(2))))) # (!\counterBcdInst|s0\(3) & (\counterBcdInst|s0\(2) & (\counterBcdInst|s0\(1) $ (\counterBcdInst|s0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y46_N28
\displayDriverInst|decSUni|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decSUni|Mux0~0_combout\ = (\counterBcdInst|s0\(1) & (((\counterBcdInst|s0\(3))))) # (!\counterBcdInst|s0\(1) & (\counterBcdInst|s0\(2) $ (((\counterBcdInst|s0\(0) & !\counterBcdInst|s0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|s0\(1),
	datab => \counterBcdInst|s0\(0),
	datac => \counterBcdInst|s0\(3),
	datad => \counterBcdInst|s0\(2),
	combout => \displayDriverInst|decSUni|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y50_N4
\displayDriverInst|decCDec|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux6~0_combout\ = (\counterBcdInst|c1\(1) & (!\counterBcdInst|c1\(3) & ((!\counterBcdInst|c1\(0)) # (!\counterBcdInst|c1\(2))))) # (!\counterBcdInst|c1\(1) & (\counterBcdInst|c1\(2) $ (((\counterBcdInst|c1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y50_N6
\displayDriverInst|decCDec|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux5~0_combout\ = (\counterBcdInst|c1\(2) & ((\counterBcdInst|c1\(3)) # ((\counterBcdInst|c1\(1) & \counterBcdInst|c1\(0))))) # (!\counterBcdInst|c1\(2) & ((\counterBcdInst|c1\(1)) # ((\counterBcdInst|c1\(0) & 
-- !\counterBcdInst|c1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N12
\displayDriverInst|decCDec|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux4~0_combout\ = (\counterBcdInst|c1\(0)) # ((\counterBcdInst|c1\(1) & ((\counterBcdInst|c1\(3)))) # (!\counterBcdInst|c1\(1) & (\counterBcdInst|c1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y50_N26
\displayDriverInst|decCDec|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux3~0_combout\ = (\counterBcdInst|c1\(1) & ((\counterBcdInst|c1\(3)) # ((\counterBcdInst|c1\(2) & \counterBcdInst|c1\(0))))) # (!\counterBcdInst|c1\(1) & (\counterBcdInst|c1\(2) $ (((\counterBcdInst|c1\(0) & 
-- !\counterBcdInst|c1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y50_N28
\displayDriverInst|decCDec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux2~0_combout\ = (\counterBcdInst|c1\(2) & (((\counterBcdInst|c1\(3))))) # (!\counterBcdInst|c1\(2) & (\counterBcdInst|c1\(1) & ((\counterBcdInst|c1\(3)) # (!\counterBcdInst|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y50_N14
\displayDriverInst|decCDec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux1~0_combout\ = (\counterBcdInst|c1\(2) & ((\counterBcdInst|c1\(3)) # (\counterBcdInst|c1\(1) $ (\counterBcdInst|c1\(0))))) # (!\counterBcdInst|c1\(2) & (\counterBcdInst|c1\(1) & ((\counterBcdInst|c1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y50_N8
\displayDriverInst|decCDec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCDec|Mux0~0_combout\ = (\counterBcdInst|c1\(1) & (((\counterBcdInst|c1\(3))))) # (!\counterBcdInst|c1\(1) & (\counterBcdInst|c1\(2) $ (((\counterBcdInst|c1\(0) & !\counterBcdInst|c1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c1\(1),
	datab => \counterBcdInst|c1\(2),
	datac => \counterBcdInst|c1\(0),
	datad => \counterBcdInst|c1\(3),
	combout => \displayDriverInst|decCDec|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y50_N24
\displayDriverInst|decCUni|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux6~0_combout\ = (\counterBcdInst|c0\(1) & (!\counterBcdInst|c0\(3) & ((!\counterBcdInst|c0\(0)) # (!\counterBcdInst|c0\(2))))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(2) $ ((\counterBcdInst|c0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y50_N6
\displayDriverInst|decCUni|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux5~0_combout\ = (\counterBcdInst|c0\(2) & ((\counterBcdInst|c0\(3)) # ((\counterBcdInst|c0\(1) & \counterBcdInst|c0\(0))))) # (!\counterBcdInst|c0\(2) & ((\counterBcdInst|c0\(1)) # ((!\counterBcdInst|c0\(3) & 
-- \counterBcdInst|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y50_N16
\displayDriverInst|decCUni|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux4~0_combout\ = (\counterBcdInst|c0\(0)) # ((\counterBcdInst|c0\(1) & ((\counterBcdInst|c0\(3)))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y50_N18
\displayDriverInst|decCUni|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux3~0_combout\ = (\counterBcdInst|c0\(1) & ((\counterBcdInst|c0\(3)) # ((\counterBcdInst|c0\(2) & \counterBcdInst|c0\(0))))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(2) $ (((!\counterBcdInst|c0\(3) & 
-- \counterBcdInst|c0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y50_N20
\displayDriverInst|decCUni|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux2~0_combout\ = (\counterBcdInst|c0\(2) & (((\counterBcdInst|c0\(3))))) # (!\counterBcdInst|c0\(2) & (\counterBcdInst|c0\(1) & ((\counterBcdInst|c0\(3)) # (!\counterBcdInst|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y50_N30
\displayDriverInst|decCUni|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux1~0_combout\ = (\counterBcdInst|c0\(2) & ((\counterBcdInst|c0\(3)) # (\counterBcdInst|c0\(1) $ (\counterBcdInst|c0\(0))))) # (!\counterBcdInst|c0\(2) & (\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y50_N8
\displayDriverInst|decCUni|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displayDriverInst|decCUni|Mux0~0_combout\ = (\counterBcdInst|c0\(1) & (((\counterBcdInst|c0\(3))))) # (!\counterBcdInst|c0\(1) & (\counterBcdInst|c0\(2) $ (((!\counterBcdInst|c0\(3) & \counterBcdInst|c0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterBcdInst|c0\(1),
	datab => \counterBcdInst|c0\(2),
	datac => \counterBcdInst|c0\(3),
	datad => \counterBcdInst|c0\(0),
	combout => \displayDriverInst|decCUni|Mux0~0_combout\);

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

ww_segmentsMDecenas(0) <= \segmentsMDecenas[0]~output_o\;

ww_segmentsMDecenas(1) <= \segmentsMDecenas[1]~output_o\;

ww_segmentsMDecenas(2) <= \segmentsMDecenas[2]~output_o\;

ww_segmentsMDecenas(3) <= \segmentsMDecenas[3]~output_o\;

ww_segmentsMDecenas(4) <= \segmentsMDecenas[4]~output_o\;

ww_segmentsMDecenas(5) <= \segmentsMDecenas[5]~output_o\;

ww_segmentsMDecenas(6) <= \segmentsMDecenas[6]~output_o\;

ww_segmentsMUnidades(0) <= \segmentsMUnidades[0]~output_o\;

ww_segmentsMUnidades(1) <= \segmentsMUnidades[1]~output_o\;

ww_segmentsMUnidades(2) <= \segmentsMUnidades[2]~output_o\;

ww_segmentsMUnidades(3) <= \segmentsMUnidades[3]~output_o\;

ww_segmentsMUnidades(4) <= \segmentsMUnidades[4]~output_o\;

ww_segmentsMUnidades(5) <= \segmentsMUnidades[5]~output_o\;

ww_segmentsMUnidades(6) <= \segmentsMUnidades[6]~output_o\;

ww_segmentsSDecenas(0) <= \segmentsSDecenas[0]~output_o\;

ww_segmentsSDecenas(1) <= \segmentsSDecenas[1]~output_o\;

ww_segmentsSDecenas(2) <= \segmentsSDecenas[2]~output_o\;

ww_segmentsSDecenas(3) <= \segmentsSDecenas[3]~output_o\;

ww_segmentsSDecenas(4) <= \segmentsSDecenas[4]~output_o\;

ww_segmentsSDecenas(5) <= \segmentsSDecenas[5]~output_o\;

ww_segmentsSDecenas(6) <= \segmentsSDecenas[6]~output_o\;

ww_segmentsSUnidades(0) <= \segmentsSUnidades[0]~output_o\;

ww_segmentsSUnidades(1) <= \segmentsSUnidades[1]~output_o\;

ww_segmentsSUnidades(2) <= \segmentsSUnidades[2]~output_o\;

ww_segmentsSUnidades(3) <= \segmentsSUnidades[3]~output_o\;

ww_segmentsSUnidades(4) <= \segmentsSUnidades[4]~output_o\;

ww_segmentsSUnidades(5) <= \segmentsSUnidades[5]~output_o\;

ww_segmentsSUnidades(6) <= \segmentsSUnidades[6]~output_o\;

ww_segmentsCDecenas(0) <= \segmentsCDecenas[0]~output_o\;

ww_segmentsCDecenas(1) <= \segmentsCDecenas[1]~output_o\;

ww_segmentsCDecenas(2) <= \segmentsCDecenas[2]~output_o\;

ww_segmentsCDecenas(3) <= \segmentsCDecenas[3]~output_o\;

ww_segmentsCDecenas(4) <= \segmentsCDecenas[4]~output_o\;

ww_segmentsCDecenas(5) <= \segmentsCDecenas[5]~output_o\;

ww_segmentsCDecenas(6) <= \segmentsCDecenas[6]~output_o\;

ww_segmentsCUnidades(0) <= \segmentsCUnidades[0]~output_o\;

ww_segmentsCUnidades(1) <= \segmentsCUnidades[1]~output_o\;

ww_segmentsCUnidades(2) <= \segmentsCUnidades[2]~output_o\;

ww_segmentsCUnidades(3) <= \segmentsCUnidades[3]~output_o\;

ww_segmentsCUnidades(4) <= \segmentsCUnidades[4]~output_o\;

ww_segmentsCUnidades(5) <= \segmentsCUnidades[5]~output_o\;

ww_segmentsCUnidades(6) <= \segmentsCUnidades[6]~output_o\;
END structure;


