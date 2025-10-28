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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/16/2025 20:10:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cronometro_digital
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cronometro_digital_vhd_vec_tst IS
END cronometro_digital_vhd_vec_tst;
ARCHITECTURE cronometro_digital_arch OF cronometro_digital_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ANODES_OUT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL BTN1_START_PAUSE : STD_LOGIC;
SIGNAL BTN2_RESET : STD_LOGIC;
SIGNAL CLK_50MHZ : STD_LOGIC;
SIGNAL SEGMENTS_OUT : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT cronometro_digital
	PORT (
	ANODES_OUT : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	BTN1_START_PAUSE : IN STD_LOGIC;
	BTN2_RESET : IN STD_LOGIC;
	CLK_50MHZ : IN STD_LOGIC;
	SEGMENTS_OUT : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cronometro_digital
	PORT MAP (
-- list connections between master ports and signals
	ANODES_OUT => ANODES_OUT,
	BTN1_START_PAUSE => BTN1_START_PAUSE,
	BTN2_RESET => BTN2_RESET,
	CLK_50MHZ => CLK_50MHZ,
	SEGMENTS_OUT => SEGMENTS_OUT
	);

-- BTN1_START_PAUSE
t_prcs_BTN1_START_PAUSE: PROCESS
BEGIN
	BTN1_START_PAUSE <= '0';
	WAIT FOR 4000 ps;
	BTN1_START_PAUSE <= '1';
	WAIT FOR 4000 ps;
	BTN1_START_PAUSE <= '0';
WAIT;
END PROCESS t_prcs_BTN1_START_PAUSE;

-- BTN2_RESET
t_prcs_BTN2_RESET: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		BTN2_RESET <= '0';
		WAIT FOR 2000 ps;
		BTN2_RESET <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	BTN2_RESET <= '0';
WAIT;
END PROCESS t_prcs_BTN2_RESET;

-- CLK_50MHZ
t_prcs_CLK_50MHZ: PROCESS
BEGIN
LOOP
	CLK_50MHZ <= '0';
	WAIT FOR 1000 ps;
	CLK_50MHZ <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50MHZ;
END cronometro_digital_arch;
