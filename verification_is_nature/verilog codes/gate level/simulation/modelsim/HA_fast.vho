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

-- DATE "03/04/2024 17:25:02"

-- 
-- Device: Altera EPM240M100C4 Package MBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	HA IS
    PORT (
	s : BUFFER std_logic;
	c : BUFFER std_logic;
	a : IN std_logic;
	b : IN std_logic
	);
END HA;

-- Design Ports Information
-- s	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- c	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF HA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL a_acombout : std_logic;
SIGNAL b_acombout : std_logic;
SIGNAL x1_acombout : std_logic;
SIGNAL x2_acombout : std_logic;

BEGIN

s <= ww_s;
c <= ww_c;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
a_aI : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => a_acombout);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
b_aI : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => b_acombout);

-- Location: LC_X2_Y2_N2
x1 : maxii_lcell
-- Equation(s):
-- x1_acombout = (a_acombout $ ((b_acombout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => a_acombout,
	datac => b_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => x1_acombout);

-- Location: LC_X2_Y2_N5
x2 : maxii_lcell
-- Equation(s):
-- x2_acombout = ((a_acombout & (b_acombout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => a_acombout,
	datac => b_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => x2_acombout);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
s_aI : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => x1_acombout,
	oe => VCC,
	padio => ww_s);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
c_aI : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => x2_acombout,
	oe => VCC,
	padio => ww_c);
END structure;


