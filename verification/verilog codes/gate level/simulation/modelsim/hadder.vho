-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/08/2024 10:49:18"

-- 
-- Device: Altera EPM240F100C5 Package FBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	sr IS
    PORT (
	q : BUFFER std_logic;
	p : BUFFER std_logic;
	s : IN std_logic;
	r : IN std_logic;
	clk : IN std_logic
	);
END sr;

-- Design Ports Information
-- q	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- p	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- r	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \r~combout\ : std_logic;
SIGNAL \x5~combout\ : std_logic;
SIGNAL \x6~combout\ : std_logic;
SIGNAL \ALT_INV_x5~combout\ : std_logic;

BEGIN

q <= ww_q;
p <= ww_p;
ww_s <= s;
ww_r <= r;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x5~combout\ <= NOT \x5~combout\;

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s,
	combout => \s~combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_r,
	combout => \r~combout\);

-- Location: LC_X2_Y2_N2
x5 : maxii_lcell
-- Equation(s):
-- \x5~combout\ = (\s~combout\ & (\clk~combout\ & ((\x5~combout\) # (\r~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x5~combout\,
	datab => \s~combout\,
	datac => \clk~combout\,
	datad => \r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x5~combout\);

-- Location: LC_X2_Y2_N3
x6 : maxii_lcell
-- Equation(s):
-- \x6~combout\ = (\x5~combout\) # (((\clk~combout\ & \r~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x5~combout\,
	datac => \clk~combout\,
	datad => \r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x6~combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_x5~combout\,
	oe => VCC,
	padio => ww_q);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \x6~combout\,
	oe => VCC,
	padio => ww_p);
END structure;


