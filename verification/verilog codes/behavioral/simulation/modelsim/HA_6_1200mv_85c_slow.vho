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

-- DATE "11/07/2024 18:35:28"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comp IS
    PORT (
	x : BUFFER std_logic;
	y : BUFFER std_logic;
	z : BUFFER std_logic;
	a : IN std_logic_vector(1 DOWNTO 0);
	b : IN std_logic_vector(1 DOWNTO 0)
	);
END comp;

-- Design Ports Information
-- x	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(1 DOWNTO 0);
SIGNAL \x~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \x~2_combout\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \z~2_combout\ : std_logic;

BEGIN

x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\x~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~2_combout\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~8_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~2_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\x~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x~2_combout\ = (\b[1]~input_o\ & (((!\a[1]~input_o\)))) # (!\b[1]~input_o\ & (!\b[0]~input_o\ & ((\a[1]~input_o\) # (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \x~2_combout\);

-- Location: LCCOMB_X9_Y1_N4
\y~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~8_combout\ = (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[1]~input_o\) # (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \y~8_combout\);

-- Location: LCCOMB_X9_Y1_N18
\z~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \z~2_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & (\b[1]~input_o\ $ (!\a[1]~input_o\)))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \z~2_combout\);

ww_x <= \x~output_o\;

ww_y <= \y~output_o\;

ww_z <= \z~output_o\;
END structure;


