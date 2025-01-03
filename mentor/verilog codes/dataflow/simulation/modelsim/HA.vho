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

-- DATE "03/08/2024 14:04:40"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	encoder8 IS
    PORT (
	y : OUT std_logic_vector(2 DOWNTO 0);
	i : IN std_logic_vector(7 DOWNTO 0)
	);
END encoder8;

-- Design Ports Information
-- y[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- y[1]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- y[2]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- i[0]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[7]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[3]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[4]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[5]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i[6]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF encoder8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i : std_logic_vector(7 DOWNTO 0);
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \i~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

y <= ww_y;
ww_i <= i;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(6),
	combout => \i~combout\(6));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(4),
	combout => \i~combout\(4));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(2),
	combout => \i~combout\(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(1),
	combout => \i~combout\(1));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(3),
	combout => \i~combout\(3));

-- Location: LC_X2_Y2_N2
\y~0\ : maxii_lcell
-- Equation(s):
-- \y~0_combout\ = (!\i~combout\(4) & ((\i~combout\(3)) # ((!\i~combout\(2) & \i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i~combout\(4),
	datab => \i~combout\(2),
	datac => \i~combout\(1),
	datad => \i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(7),
	combout => \i~combout\(7));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(5),
	combout => \i~combout\(5));

-- Location: LC_X2_Y2_N4
\y~1\ : maxii_lcell
-- Equation(s):
-- \y~1_combout\ = (\i~combout\(7)) # ((!\i~combout\(6) & ((\y~0_combout\) # (\i~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i~combout\(6),
	datab => \y~0_combout\,
	datac => \i~combout\(7),
	datad => \i~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~1_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y~1_combout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i~combout\(7),
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i~combout\(7),
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i(0));
END structure;


