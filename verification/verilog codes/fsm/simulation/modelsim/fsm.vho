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

-- DATE "03/26/2024 16:15:21"

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

ENTITY 	fifo IS
    PORT (
	datao : BUFFER std_logic_vector(7 DOWNTO 0);
	full : BUFFER std_logic;
	empty : BUFFER std_logic;
	count : BUFFER std_logic_vector(3 DOWNTO 0);
	datain : IN std_logic_vector(7 DOWNTO 0);
	rd : IN std_logic;
	wr : IN std_logic;
	clk : IN std_logic;
	res : IN std_logic
	);
END fifo;

-- Design Ports Information
-- datao[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[3]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[4]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[5]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[6]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- datao[7]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- full	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- empty	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- count[0]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- count[1]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- count[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- count[3]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- res	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rd	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wr	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[4]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[5]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[7]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fifo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_datao : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL \mem~8_regout\ : std_logic;
SIGNAL \mem~16_regout\ : std_logic;
SIGNAL \mem~48_regout\ : std_logic;
SIGNAL \mem~40_regout\ : std_logic;
SIGNAL \mem~9_regout\ : std_logic;
SIGNAL \mem~17_regout\ : std_logic;
SIGNAL \mem~49_regout\ : std_logic;
SIGNAL \mem~41_regout\ : std_logic;
SIGNAL \mem~10_regout\ : std_logic;
SIGNAL \mem~18_regout\ : std_logic;
SIGNAL \mem~50_regout\ : std_logic;
SIGNAL \mem~42_regout\ : std_logic;
SIGNAL \mem~11_regout\ : std_logic;
SIGNAL \mem~19_regout\ : std_logic;
SIGNAL \mem~51_regout\ : std_logic;
SIGNAL \mem~43_regout\ : std_logic;
SIGNAL \mem~12_regout\ : std_logic;
SIGNAL \mem~20_regout\ : std_logic;
SIGNAL \mem~52_regout\ : std_logic;
SIGNAL \mem~44_regout\ : std_logic;
SIGNAL \mem~13_regout\ : std_logic;
SIGNAL \mem~21_regout\ : std_logic;
SIGNAL \mem~53_regout\ : std_logic;
SIGNAL \mem~45_regout\ : std_logic;
SIGNAL \mem~14_regout\ : std_logic;
SIGNAL \mem~22_regout\ : std_logic;
SIGNAL \mem~54_regout\ : std_logic;
SIGNAL \mem~46_regout\ : std_logic;
SIGNAL \mem~15_regout\ : std_logic;
SIGNAL \mem~23_regout\ : std_logic;
SIGNAL \mem~55_regout\ : std_logic;
SIGNAL \mem~47_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \res~combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \wr~combout\ : std_logic;
SIGNAL \Add1~7COUT1_48\ : std_logic;
SIGNAL \Add1~2COUT1_50\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_52\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_54\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_56\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_58\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \rd~combout\ : std_logic;
SIGNAL \datao[0]~0_combout\ : std_logic;
SIGNAL \prd[0]~1\ : std_logic;
SIGNAL \prd[0]~1COUT1_24\ : std_logic;
SIGNAL \prd[1]~3\ : std_logic;
SIGNAL \prd[1]~3COUT1_26\ : std_logic;
SIGNAL \prd[2]~5\ : std_logic;
SIGNAL \prd[2]~5COUT1_28\ : std_logic;
SIGNAL \prd[3]~7\ : std_logic;
SIGNAL \prd[3]~7COUT1_30\ : std_logic;
SIGNAL \prd[4]~9\ : std_logic;
SIGNAL \prd[5]~11\ : std_logic;
SIGNAL \prd[5]~11COUT1_32\ : std_logic;
SIGNAL \prd[6]~13\ : std_logic;
SIGNAL \prd[6]~13COUT1_34\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \full~reg0_regout\ : std_logic;
SIGNAL \pwr[7]~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \mem~96_combout\ : std_logic;
SIGNAL \mem~100_combout\ : std_logic;
SIGNAL \mem~24_regout\ : std_logic;
SIGNAL \mem~99_combout\ : std_logic;
SIGNAL \mem~0_regout\ : std_logic;
SIGNAL \mem~98_combout\ : std_logic;
SIGNAL \mem~64\ : std_logic;
SIGNAL \mem~97_combout\ : std_logic;
SIGNAL \mem~65\ : std_logic;
SIGNAL \mem~104_combout\ : std_logic;
SIGNAL \mem~56_regout\ : std_logic;
SIGNAL \mem~103_combout\ : std_logic;
SIGNAL \mem~32_regout\ : std_logic;
SIGNAL \mem~102_combout\ : std_logic;
SIGNAL \mem~66\ : std_logic;
SIGNAL \mem~101_combout\ : std_logic;
SIGNAL \mem~67\ : std_logic;
SIGNAL \datao[0]~reg0_regout\ : std_logic;
SIGNAL \mem~25_regout\ : std_logic;
SIGNAL \mem~1_regout\ : std_logic;
SIGNAL \mem~68\ : std_logic;
SIGNAL \mem~69\ : std_logic;
SIGNAL \mem~57_regout\ : std_logic;
SIGNAL \mem~33_regout\ : std_logic;
SIGNAL \mem~70\ : std_logic;
SIGNAL \mem~71\ : std_logic;
SIGNAL \datao[1]~reg0_regout\ : std_logic;
SIGNAL \mem~26_regout\ : std_logic;
SIGNAL \mem~2_regout\ : std_logic;
SIGNAL \mem~72\ : std_logic;
SIGNAL \mem~73\ : std_logic;
SIGNAL \mem~58_regout\ : std_logic;
SIGNAL \mem~34_regout\ : std_logic;
SIGNAL \mem~74\ : std_logic;
SIGNAL \mem~75\ : std_logic;
SIGNAL \datao[2]~reg0_regout\ : std_logic;
SIGNAL \mem~27_regout\ : std_logic;
SIGNAL \mem~3_regout\ : std_logic;
SIGNAL \mem~76\ : std_logic;
SIGNAL \mem~77\ : std_logic;
SIGNAL \mem~59_regout\ : std_logic;
SIGNAL \mem~35_regout\ : std_logic;
SIGNAL \mem~78\ : std_logic;
SIGNAL \mem~79\ : std_logic;
SIGNAL \datao[3]~reg0_regout\ : std_logic;
SIGNAL \mem~28_regout\ : std_logic;
SIGNAL \mem~4_regout\ : std_logic;
SIGNAL \mem~80\ : std_logic;
SIGNAL \mem~81\ : std_logic;
SIGNAL \mem~60_regout\ : std_logic;
SIGNAL \mem~36_regout\ : std_logic;
SIGNAL \mem~82\ : std_logic;
SIGNAL \mem~83\ : std_logic;
SIGNAL \datao[4]~reg0_regout\ : std_logic;
SIGNAL \mem~29_regout\ : std_logic;
SIGNAL \mem~5_regout\ : std_logic;
SIGNAL \mem~84\ : std_logic;
SIGNAL \mem~85\ : std_logic;
SIGNAL \mem~61_regout\ : std_logic;
SIGNAL \mem~37_regout\ : std_logic;
SIGNAL \mem~86\ : std_logic;
SIGNAL \mem~87\ : std_logic;
SIGNAL \datao[5]~reg0_regout\ : std_logic;
SIGNAL \mem~30_regout\ : std_logic;
SIGNAL \mem~6_regout\ : std_logic;
SIGNAL \mem~88\ : std_logic;
SIGNAL \mem~89\ : std_logic;
SIGNAL \mem~62_regout\ : std_logic;
SIGNAL \mem~38_regout\ : std_logic;
SIGNAL \mem~90\ : std_logic;
SIGNAL \mem~91\ : std_logic;
SIGNAL \datao[6]~reg0_regout\ : std_logic;
SIGNAL \mem~63_regout\ : std_logic;
SIGNAL \mem~39_regout\ : std_logic;
SIGNAL \mem~94\ : std_logic;
SIGNAL \mem~95\ : std_logic;
SIGNAL \mem~31_regout\ : std_logic;
SIGNAL \mem~7_regout\ : std_logic;
SIGNAL \mem~92\ : std_logic;
SIGNAL \mem~93\ : std_logic;
SIGNAL \datao[7]~reg0_regout\ : std_logic;
SIGNAL \count[0]~reg0_regout\ : std_logic;
SIGNAL \count[0]~1\ : std_logic;
SIGNAL \count[0]~1COUT1_13\ : std_logic;
SIGNAL \count[1]~reg0_regout\ : std_logic;
SIGNAL \count[1]~3\ : std_logic;
SIGNAL \count[1]~3COUT1_15\ : std_logic;
SIGNAL \count[2]~reg0_regout\ : std_logic;
SIGNAL \count[2]~5\ : std_logic;
SIGNAL \count[2]~5COUT1_17\ : std_logic;
SIGNAL \count[3]~reg0_regout\ : std_logic;
SIGNAL pwr : std_logic_vector(7 DOWNTO 0);
SIGNAL prd : std_logic_vector(7 DOWNTO 0);
SIGNAL \datain~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_full~reg0_regout\ : std_logic;

BEGIN

datao <= ww_datao;
full <= ww_full;
empty <= ww_empty;
count <= ww_count;
ww_datain <= datain;
ww_rd <= rd;
ww_wr <= wr;
ww_clk <= clk;
ww_res <= res;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_full~reg0_regout\ <= NOT \full~reg0_regout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\res~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_res,
	combout => \res~combout\);

-- Location: LC_X3_Y1_N0
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = (!pwr(0))
-- \Add1~7\ = CARRY((pwr(0)))
-- \Add1~7COUT1_48\ = CARRY((pwr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_48\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr,
	combout => \wr~combout\);

-- Location: LC_X3_Y1_N1
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = (pwr(1) $ ((\Add1~7\)))
-- \Add1~2\ = CARRY(((!\Add1~7\) # (!pwr(1))))
-- \Add1~2COUT1_50\ = CARRY(((!\Add1~7COUT1_48\) # (!pwr(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => pwr(1),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_50\);

-- Location: LC_X3_Y1_N2
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = (pwr(2) $ ((!\Add1~2\)))
-- \Add1~17\ = CARRY(((pwr(2) & !\Add1~2\)))
-- \Add1~17COUT1_52\ = CARRY(((pwr(2) & !\Add1~2COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => pwr(2),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_52\);

-- Location: LC_X3_Y1_N3
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = (pwr(3) $ ((\Add1~17\)))
-- \Add1~12\ = CARRY(((!\Add1~17\) # (!pwr(3))))
-- \Add1~12COUT1_54\ = CARRY(((!\Add1~17COUT1_52\) # (!pwr(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => pwr(3),
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_54\);

-- Location: LC_X2_Y1_N2
\pwr[3]\ : maxii_lcell
-- Equation(s):
-- pwr(3) = DFFEAS(((!\res~combout\ & (\Add1~10_combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \res~combout\,
	datac => \Add1~10_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(3));

-- Location: LC_X3_Y1_N4
\Add1~25\ : maxii_lcell
-- Equation(s):
-- \Add1~25_combout\ = pwr(4) $ ((((!\Add1~12\))))
-- \Add1~27\ = CARRY((pwr(4) & ((!\Add1~12COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(4),
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout => \Add1~27\);

-- Location: LC_X4_Y1_N3
\pwr[4]\ : maxii_lcell
-- Equation(s):
-- pwr(4) = DFFEAS(((!\res~combout\ & ((\Add1~25_combout\)))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \res~combout\,
	datad => \Add1~25_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(4));

-- Location: LC_X3_Y1_N5
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = (pwr(5) $ ((\Add1~27\)))
-- \Add1~22\ = CARRY(((!\Add1~27\) # (!pwr(5))))
-- \Add1~22COUT1_56\ = CARRY(((!\Add1~27\) # (!pwr(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => pwr(5),
	cin => \Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_56\);

-- Location: LC_X4_Y1_N8
\pwr[5]\ : maxii_lcell
-- Equation(s):
-- pwr(5) = DFFEAS(((!\res~combout\ & (\Add1~20_combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \res~combout\,
	datac => \Add1~20_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(5));

-- Location: LC_X3_Y1_N6
\Add1~35\ : maxii_lcell
-- Equation(s):
-- \Add1~35_combout\ = (pwr(6) $ ((!(!\Add1~27\ & \Add1~22\) # (\Add1~27\ & \Add1~22COUT1_56\))))
-- \Add1~37\ = CARRY(((pwr(6) & !\Add1~22\)))
-- \Add1~37COUT1_58\ = CARRY(((pwr(6) & !\Add1~22COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => pwr(6),
	cin => \Add1~27\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_58\);

-- Location: LC_X4_Y1_N9
\pwr[6]\ : maxii_lcell
-- Equation(s):
-- pwr(6) = DFFEAS((((\Add1~35_combout\ & !\res~combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~35_combout\,
	datad => \res~combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(6));

-- Location: LC_X3_Y1_N7
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = (((!\Add1~27\ & \Add1~37\) # (\Add1~27\ & \Add1~37COUT1_58\) $ (pwr(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => pwr(7),
	cin => \Add1~27\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\);

-- Location: LC_X2_Y1_N4
\pwr[7]\ : maxii_lcell
-- Equation(s):
-- pwr(7) = DFFEAS((((!\res~combout\ & \Add1~30_combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \res~combout\,
	datad => \Add1~30_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(7));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rd,
	combout => \rd~combout\);

-- Location: LC_X4_Y1_N4
\datao[0]~0\ : maxii_lcell
-- Equation(s):
-- \datao[0]~0_combout\ = ((\res~combout\) # ((\rd~combout\ & \full~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \res~combout\,
	datac => \rd~combout\,
	datad => \full~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datao[0]~0_combout\);

-- Location: LC_X2_Y2_N0
\prd[0]\ : maxii_lcell
-- Equation(s):
-- prd(0) = DFFEAS(((!prd(0))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[0]~1\ = CARRY(((prd(0))))
-- \prd[0]~1COUT1_24\ = CARRY(((prd(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => prd(0),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(0),
	cout0 => \prd[0]~1\,
	cout1 => \prd[0]~1COUT1_24\);

-- Location: LC_X2_Y2_N1
\prd[1]\ : maxii_lcell
-- Equation(s):
-- prd(1) = DFFEAS((prd(1) $ ((!\prd[0]~1\))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[1]~3\ = CARRY(((!prd(1) & !\prd[0]~1\)))
-- \prd[1]~3COUT1_26\ = CARRY(((!prd(1) & !\prd[0]~1COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => prd(1),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin0 => \prd[0]~1\,
	cin1 => \prd[0]~1COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(1),
	cout0 => \prd[1]~3\,
	cout1 => \prd[1]~3COUT1_26\);

-- Location: LC_X2_Y2_N2
\prd[2]\ : maxii_lcell
-- Equation(s):
-- prd(2) = DFFEAS((prd(2) $ ((\prd[1]~3\))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[2]~5\ = CARRY(((prd(2)) # (!\prd[1]~3\)))
-- \prd[2]~5COUT1_28\ = CARRY(((prd(2)) # (!\prd[1]~3COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => prd(2),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin0 => \prd[1]~3\,
	cin1 => \prd[1]~3COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(2),
	cout0 => \prd[2]~5\,
	cout1 => \prd[2]~5COUT1_28\);

-- Location: LC_X2_Y2_N3
\prd[3]\ : maxii_lcell
-- Equation(s):
-- prd(3) = DFFEAS(prd(3) $ ((((!\prd[2]~5\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[3]~7\ = CARRY((!prd(3) & ((!\prd[2]~5\))))
-- \prd[3]~7COUT1_30\ = CARRY((!prd(3) & ((!\prd[2]~5COUT1_28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(3),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin0 => \prd[2]~5\,
	cin1 => \prd[2]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(3),
	cout0 => \prd[3]~7\,
	cout1 => \prd[3]~7COUT1_30\);

-- Location: LC_X2_Y2_N4
\prd[4]\ : maxii_lcell
-- Equation(s):
-- prd(4) = DFFEAS(prd(4) $ ((((\prd[3]~7\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[4]~9\ = CARRY((prd(4)) # ((!\prd[3]~7COUT1_30\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(4),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin0 => \prd[3]~7\,
	cin1 => \prd[3]~7COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(4),
	cout => \prd[4]~9\);

-- Location: LC_X2_Y2_N5
\prd[5]\ : maxii_lcell
-- Equation(s):
-- prd(5) = DFFEAS(prd(5) $ ((((!\prd[4]~9\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[5]~11\ = CARRY((!prd(5) & ((!\prd[4]~9\))))
-- \prd[5]~11COUT1_32\ = CARRY((!prd(5) & ((!\prd[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(5),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin => \prd[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(5),
	cout0 => \prd[5]~11\,
	cout1 => \prd[5]~11COUT1_32\);

-- Location: LC_X2_Y2_N6
\prd[6]\ : maxii_lcell
-- Equation(s):
-- prd(6) = DFFEAS(prd(6) $ (((((!\prd[4]~9\ & \prd[5]~11\) # (\prd[4]~9\ & \prd[5]~11COUT1_32\))))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )
-- \prd[6]~13\ = CARRY((prd(6)) # ((!\prd[5]~11\)))
-- \prd[6]~13COUT1_34\ = CARRY((prd(6)) # ((!\prd[5]~11COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(6),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin => \prd[4]~9\,
	cin0 => \prd[5]~11\,
	cin1 => \prd[5]~11COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(6),
	cout0 => \prd[6]~13\,
	cout1 => \prd[6]~13COUT1_34\);

-- Location: LC_X2_Y2_N7
\prd[7]\ : maxii_lcell
-- Equation(s):
-- prd(7) = DFFEAS((prd(7) $ ((!(!\prd[4]~9\ & \prd[6]~13\) # (\prd[4]~9\ & \prd[6]~13COUT1_34\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => prd(7),
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	cin => \prd[4]~9\,
	cin0 => \prd[6]~13\,
	cin1 => \prd[6]~13COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prd(7));

-- Location: LC_X2_Y1_N8
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (pwr(7) & (prd(7) & (pwr(6) $ (!prd(6))))) # (!pwr(7) & (!prd(7) & (pwr(6) $ (!prd(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(7),
	datab => prd(7),
	datac => pwr(6),
	datad => prd(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X3_Y2_N9
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (prd(5) & (pwr(5) & (prd(4) $ (!pwr(4))))) # (!prd(5) & (!pwr(5) & (prd(4) $ (!pwr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(5),
	datab => prd(4),
	datac => pwr(4),
	datad => pwr(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X2_Y1_N5
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (pwr(3) & (prd(3) & (prd(2) $ (!pwr(2))))) # (!pwr(3) & (!prd(3) & (prd(2) $ (!pwr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(3),
	datab => prd(2),
	datac => prd(3),
	datad => pwr(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X3_Y2_N6
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (prd(0) & (pwr(0) & (pwr(1) $ (!prd(1))))) # (!prd(0) & (!pwr(0) & (pwr(1) $ (!prd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(0),
	datab => pwr(1),
	datac => prd(1),
	datad => pwr(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X2_Y1_N7
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X2_Y1_N3
\Equal1~0\ : maxii_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (prd(0) & (\Add1~5_combout\ & (prd(1) $ (!\Add1~0_combout\)))) # (!prd(0) & (!\Add1~5_combout\ & (prd(1) $ (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(0),
	datab => prd(1),
	datac => \Add1~5_combout\,
	datad => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X3_Y1_N9
\Equal1~2\ : maxii_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (prd(5) & (\Add1~20_combout\ & (prd(4) $ (!\Add1~25_combout\)))) # (!prd(5) & (!\Add1~20_combout\ & (prd(4) $ (!\Add1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(5),
	datab => prd(4),
	datac => \Add1~20_combout\,
	datad => \Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X2_Y1_N6
\Equal1~1\ : maxii_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (prd(3) & (\Add1~10_combout\ & (\Add1~15_combout\ $ (!prd(2))))) # (!prd(3) & (!\Add1~10_combout\ & (\Add1~15_combout\ $ (!prd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(3),
	datab => \Add1~15_combout\,
	datac => \Add1~10_combout\,
	datad => prd(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X2_Y1_N9
\Equal1~3\ : maxii_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (prd(7) & (\Add1~30_combout\ & (prd(6) $ (!\Add1~35_combout\)))) # (!prd(7) & (!\Add1~30_combout\ & (prd(6) $ (!\Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => prd(7),
	datab => prd(6),
	datac => \Add1~35_combout\,
	datad => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: LC_X2_Y1_N0
\Equal1~4\ : maxii_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X2_Y1_N1
\full~reg0\ : maxii_lcell
-- Equation(s):
-- \full~reg0_regout\ = DFFEAS(((!\Equal0~4_combout\ & ((\full~reg0_regout\) # (\Equal1~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \full~reg0_regout\,
	datac => \Equal0~4_combout\,
	datad => \Equal1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \full~reg0_regout\);

-- Location: LC_X4_Y1_N7
\pwr[7]~1\ : maxii_lcell
-- Equation(s):
-- \pwr[7]~1_combout\ = ((\res~combout\) # ((\wr~combout\ & !\full~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \res~combout\,
	datac => \wr~combout\,
	datad => \full~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwr[7]~1_combout\);

-- Location: LC_X3_Y1_N8
\pwr[0]\ : maxii_lcell
-- Equation(s):
-- pwr(0) = DFFEAS((((!\res~combout\ & \Add1~5_combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \res~combout\,
	datad => \Add1~5_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(0));

-- Location: LC_X4_Y1_N5
\pwr[1]\ : maxii_lcell
-- Equation(s):
-- pwr(1) = DFFEAS((((\Add1~0_combout\ & !\res~combout\))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~0_combout\,
	datad => \res~combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(1));

-- Location: LC_X4_Y1_N2
\pwr[2]\ : maxii_lcell
-- Equation(s):
-- pwr(2) = DFFEAS(((!\res~combout\ & ((\Add1~15_combout\)))), GLOBAL(\clk~combout\), VCC, , \pwr[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \res~combout\,
	datad => \Add1~15_combout\,
	aclr => GND,
	ena => \pwr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwr(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(0),
	combout => \datain~combout\(0));

-- Location: LC_X5_Y1_N9
\mem~96\ : maxii_lcell
-- Equation(s):
-- \mem~96_combout\ = (((\res~combout\) # (\full~reg0_regout\)) # (!\wr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr~combout\,
	datac => \res~combout\,
	datad => \full~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~96_combout\);

-- Location: LC_X5_Y1_N5
\mem~100\ : maxii_lcell
-- Equation(s):
-- \mem~100_combout\ = (pwr(1) & (!pwr(2) & (pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~100_combout\);

-- Location: LC_X6_Y2_N0
\mem~24\ : maxii_lcell
-- Equation(s):
-- \mem~24_regout\ = DFFEAS((((\datain~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(0),
	aclr => GND,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~24_regout\);

-- Location: LC_X5_Y1_N0
\mem~99\ : maxii_lcell
-- Equation(s):
-- \mem~99_combout\ = (!pwr(1) & (!pwr(2) & (!pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~99_combout\);

-- Location: LC_X6_Y2_N5
\mem~0\ : maxii_lcell
-- Equation(s):
-- \mem~0_regout\ = DFFEAS((((\datain~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(0),
	aclr => GND,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~0_regout\);

-- Location: LC_X5_Y1_N2
\mem~98\ : maxii_lcell
-- Equation(s):
-- \mem~98_combout\ = (!pwr(1) & (!pwr(2) & (pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~98_combout\);

-- Location: LC_X5_Y2_N5
\mem~8\ : maxii_lcell
-- Equation(s):
-- \mem~64\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L86Q))) # (!pwr(0) & (\mem~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~0_regout\,
	datab => pwr(1),
	datac => \datain~combout\(0),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~64\,
	regout => \mem~8_regout\);

-- Location: LC_X5_Y1_N6
\mem~97\ : maxii_lcell
-- Equation(s):
-- \mem~97_combout\ = (pwr(1) & (!pwr(2) & (!pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~97_combout\);

-- Location: LC_X5_Y2_N6
\mem~16\ : maxii_lcell
-- Equation(s):
-- \mem~65\ = (pwr(1) & ((\mem~64\ & (\mem~24_regout\)) # (!\mem~64\ & ((A1L94Q))))) # (!pwr(1) & (((\mem~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~24_regout\,
	datab => pwr(1),
	datac => \datain~combout\(0),
	datad => \mem~64\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~65\,
	regout => \mem~16_regout\);

-- Location: LC_X5_Y1_N7
\mem~104\ : maxii_lcell
-- Equation(s):
-- \mem~104_combout\ = (pwr(1) & (pwr(2) & (pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~104_combout\);

-- Location: LC_X4_Y3_N1
\mem~56\ : maxii_lcell
-- Equation(s):
-- \mem~56_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~56_regout\);

-- Location: LC_X5_Y1_N4
\mem~103\ : maxii_lcell
-- Equation(s):
-- \mem~103_combout\ = (!pwr(1) & (pwr(2) & (!pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~103_combout\);

-- Location: LC_X4_Y2_N5
\mem~32\ : maxii_lcell
-- Equation(s):
-- \mem~32_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~32_regout\);

-- Location: LC_X5_Y1_N3
\mem~102\ : maxii_lcell
-- Equation(s):
-- \mem~102_combout\ = (pwr(1) & (pwr(2) & (!pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~102_combout\);

-- Location: LC_X4_Y2_N7
\mem~48\ : maxii_lcell
-- Equation(s):
-- \mem~66\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L126Q))) # (!pwr(1) & (\mem~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~32_regout\,
	datac => \datain~combout\(0),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~66\,
	regout => \mem~48_regout\);

-- Location: LC_X5_Y1_N1
\mem~101\ : maxii_lcell
-- Equation(s):
-- \mem~101_combout\ = (!pwr(1) & (pwr(2) & (pwr(0) & !\mem~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pwr(1),
	datab => pwr(2),
	datac => pwr(0),
	datad => \mem~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~101_combout\);

-- Location: LC_X4_Y3_N3
\mem~40\ : maxii_lcell
-- Equation(s):
-- \mem~67\ = (pwr(0) & ((\mem~66\ & (\mem~56_regout\)) # (!\mem~66\ & ((A1L118Q))))) # (!pwr(0) & (((\mem~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~56_regout\,
	datac => \datain~combout\(0),
	datad => \mem~66\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~67\,
	regout => \mem~40_regout\);

-- Location: LC_X5_Y3_N8
\datao[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[0]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~67\)))) # (!pwr(2) & (((\mem~65\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~65\,
	datad => \mem~67\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[0]~reg0_regout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(1),
	combout => \datain~combout\(1));

-- Location: LC_X6_Y2_N9
\mem~25\ : maxii_lcell
-- Equation(s):
-- \mem~25_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~25_regout\);

-- Location: LC_X6_Y2_N3
\mem~1\ : maxii_lcell
-- Equation(s):
-- \mem~1_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~1_regout\);

-- Location: LC_X5_Y2_N2
\mem~9\ : maxii_lcell
-- Equation(s):
-- \mem~68\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L87Q))) # (!pwr(0) & (\mem~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~1_regout\,
	datab => pwr(1),
	datac => \datain~combout\(1),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~68\,
	regout => \mem~9_regout\);

-- Location: LC_X5_Y2_N3
\mem~17\ : maxii_lcell
-- Equation(s):
-- \mem~69\ = (pwr(1) & ((\mem~68\ & (\mem~25_regout\)) # (!\mem~68\ & ((A1L95Q))))) # (!pwr(1) & (((\mem~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~25_regout\,
	datac => \datain~combout\(1),
	datad => \mem~68\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~69\,
	regout => \mem~17_regout\);

-- Location: LC_X4_Y3_N4
\mem~57\ : maxii_lcell
-- Equation(s):
-- \mem~57_regout\ = DFFEAS((((\datain~combout\(1)))), GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(1),
	aclr => GND,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~57_regout\);

-- Location: LC_X4_Y2_N4
\mem~33\ : maxii_lcell
-- Equation(s):
-- \mem~33_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~33_regout\);

-- Location: LC_X4_Y2_N0
\mem~49\ : maxii_lcell
-- Equation(s):
-- \mem~70\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L127Q))) # (!pwr(1) & (\mem~33_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~33_regout\,
	datac => \datain~combout\(1),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~70\,
	regout => \mem~49_regout\);

-- Location: LC_X4_Y3_N5
\mem~41\ : maxii_lcell
-- Equation(s):
-- \mem~71\ = (pwr(0) & ((\mem~70\ & (\mem~57_regout\)) # (!\mem~70\ & ((A1L119Q))))) # (!pwr(0) & (((\mem~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~57_regout\,
	datac => \datain~combout\(1),
	datad => \mem~70\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~71\,
	regout => \mem~41_regout\);

-- Location: LC_X5_Y3_N7
\datao[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[1]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~71\)))) # (!pwr(2) & (((\mem~69\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~69\,
	datad => \mem~71\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[1]~reg0_regout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(2),
	combout => \datain~combout\(2));

-- Location: LC_X6_Y2_N6
\mem~26\ : maxii_lcell
-- Equation(s):
-- \mem~26_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~26_regout\);

-- Location: LC_X6_Y2_N4
\mem~2\ : maxii_lcell
-- Equation(s):
-- \mem~2_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~2_regout\);

-- Location: LC_X5_Y2_N0
\mem~10\ : maxii_lcell
-- Equation(s):
-- \mem~72\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L88Q))) # (!pwr(0) & (\mem~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~2_regout\,
	datac => \datain~combout\(2),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~72\,
	regout => \mem~10_regout\);

-- Location: LC_X5_Y2_N1
\mem~18\ : maxii_lcell
-- Equation(s):
-- \mem~73\ = (pwr(1) & ((\mem~72\ & (\mem~26_regout\)) # (!\mem~72\ & ((A1L96Q))))) # (!pwr(1) & (((\mem~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~26_regout\,
	datab => pwr(1),
	datac => \datain~combout\(2),
	datad => \mem~72\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~73\,
	regout => \mem~18_regout\);

-- Location: LC_X4_Y3_N9
\mem~58\ : maxii_lcell
-- Equation(s):
-- \mem~58_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~58_regout\);

-- Location: LC_X4_Y4_N9
\mem~34\ : maxii_lcell
-- Equation(s):
-- \mem~34_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~34_regout\);

-- Location: LC_X4_Y4_N5
\mem~50\ : maxii_lcell
-- Equation(s):
-- \mem~74\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L128Q))) # (!pwr(1) & (\mem~34_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~34_regout\,
	datac => \datain~combout\(2),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~74\,
	regout => \mem~50_regout\);

-- Location: LC_X4_Y3_N7
\mem~42\ : maxii_lcell
-- Equation(s):
-- \mem~75\ = (pwr(0) & ((\mem~74\ & (\mem~58_regout\)) # (!\mem~74\ & ((A1L120Q))))) # (!pwr(0) & (((\mem~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~58_regout\,
	datac => \datain~combout\(2),
	datad => \mem~74\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~75\,
	regout => \mem~42_regout\);

-- Location: LC_X5_Y3_N5
\datao[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[2]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~75\)))) # (!pwr(2) & (((\mem~73\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~73\,
	datad => \mem~75\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[2]~reg0_regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(3),
	combout => \datain~combout\(3));

-- Location: LC_X6_Y2_N2
\mem~27\ : maxii_lcell
-- Equation(s):
-- \mem~27_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~27_regout\);

-- Location: LC_X6_Y2_N1
\mem~3\ : maxii_lcell
-- Equation(s):
-- \mem~3_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~3_regout\);

-- Location: LC_X5_Y2_N9
\mem~11\ : maxii_lcell
-- Equation(s):
-- \mem~76\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L89Q))) # (!pwr(0) & (\mem~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~3_regout\,
	datab => pwr(1),
	datac => \datain~combout\(3),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~76\,
	regout => \mem~11_regout\);

-- Location: LC_X5_Y2_N8
\mem~19\ : maxii_lcell
-- Equation(s):
-- \mem~77\ = (pwr(1) & ((\mem~76\ & (\mem~27_regout\)) # (!\mem~76\ & ((A1L97Q))))) # (!pwr(1) & (((\mem~76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~27_regout\,
	datac => \datain~combout\(3),
	datad => \mem~76\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~77\,
	regout => \mem~19_regout\);

-- Location: LC_X5_Y4_N9
\mem~59\ : maxii_lcell
-- Equation(s):
-- \mem~59_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~59_regout\);

-- Location: LC_X4_Y4_N8
\mem~35\ : maxii_lcell
-- Equation(s):
-- \mem~35_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~35_regout\);

-- Location: LC_X4_Y4_N1
\mem~51\ : maxii_lcell
-- Equation(s):
-- \mem~78\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L129Q))) # (!pwr(1) & (\mem~35_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~35_regout\,
	datab => pwr(0),
	datac => \datain~combout\(3),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~78\,
	regout => \mem~51_regout\);

-- Location: LC_X4_Y3_N8
\mem~43\ : maxii_lcell
-- Equation(s):
-- \mem~79\ = (pwr(0) & ((\mem~78\ & (\mem~59_regout\)) # (!\mem~78\ & ((A1L121Q))))) # (!pwr(0) & (((\mem~78\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~59_regout\,
	datac => \datain~combout\(3),
	datad => \mem~78\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~79\,
	regout => \mem~43_regout\);

-- Location: LC_X5_Y3_N3
\datao[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[3]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~79\)))) # (!pwr(2) & (\mem~77\)), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datab => \mem~77\,
	datac => \mem~79\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[3]~reg0_regout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(4),
	combout => \datain~combout\(4));

-- Location: LC_X6_Y2_N7
\mem~28\ : maxii_lcell
-- Equation(s):
-- \mem~28_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~28_regout\);

-- Location: LC_X6_Y2_N8
\mem~4\ : maxii_lcell
-- Equation(s):
-- \mem~4_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~4_regout\);

-- Location: LC_X5_Y2_N4
\mem~12\ : maxii_lcell
-- Equation(s):
-- \mem~80\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L90Q))) # (!pwr(0) & (\mem~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~4_regout\,
	datac => \datain~combout\(4),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~80\,
	regout => \mem~12_regout\);

-- Location: LC_X5_Y2_N7
\mem~20\ : maxii_lcell
-- Equation(s):
-- \mem~81\ = (pwr(1) & ((\mem~80\ & (\mem~28_regout\)) # (!\mem~80\ & ((A1L98Q))))) # (!pwr(1) & (((\mem~80\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~28_regout\,
	datac => \datain~combout\(4),
	datad => \mem~80\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~81\,
	regout => \mem~20_regout\);

-- Location: LC_X4_Y3_N0
\mem~60\ : maxii_lcell
-- Equation(s):
-- \mem~60_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~60_regout\);

-- Location: LC_X4_Y2_N6
\mem~36\ : maxii_lcell
-- Equation(s):
-- \mem~36_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~36_regout\);

-- Location: LC_X4_Y2_N1
\mem~52\ : maxii_lcell
-- Equation(s):
-- \mem~82\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L130Q))) # (!pwr(1) & (\mem~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~36_regout\,
	datac => \datain~combout\(4),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~82\,
	regout => \mem~52_regout\);

-- Location: LC_X4_Y3_N2
\mem~44\ : maxii_lcell
-- Equation(s):
-- \mem~83\ = (pwr(0) & ((\mem~82\ & (\mem~60_regout\)) # (!\mem~82\ & ((A1L122Q))))) # (!pwr(0) & (((\mem~82\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~60_regout\,
	datac => \datain~combout\(4),
	datad => \mem~82\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~83\,
	regout => \mem~44_regout\);

-- Location: LC_X5_Y3_N2
\datao[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[4]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~83\)))) # (!pwr(2) & (((\mem~81\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~81\,
	datad => \mem~83\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[4]~reg0_regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(5),
	combout => \datain~combout\(5));

-- Location: LC_X6_Y1_N2
\mem~29\ : maxii_lcell
-- Equation(s):
-- \mem~29_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~29_regout\);

-- Location: LC_X6_Y1_N6
\mem~5\ : maxii_lcell
-- Equation(s):
-- \mem~5_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~5_regout\);

-- Location: LC_X6_Y3_N8
\mem~13\ : maxii_lcell
-- Equation(s):
-- \mem~84\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L91Q))) # (!pwr(0) & (\mem~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~5_regout\,
	datab => pwr(1),
	datac => \datain~combout\(5),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~84\,
	regout => \mem~13_regout\);

-- Location: LC_X6_Y3_N9
\mem~21\ : maxii_lcell
-- Equation(s):
-- \mem~85\ = (pwr(1) & ((\mem~84\ & (\mem~29_regout\)) # (!\mem~84\ & ((A1L99Q))))) # (!pwr(1) & (((\mem~84\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~29_regout\,
	datac => \datain~combout\(5),
	datad => \mem~84\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~85\,
	regout => \mem~21_regout\);

-- Location: LC_X5_Y4_N3
\mem~61\ : maxii_lcell
-- Equation(s):
-- \mem~61_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~61_regout\);

-- Location: LC_X4_Y4_N4
\mem~37\ : maxii_lcell
-- Equation(s):
-- \mem~37_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~37_regout\);

-- Location: LC_X4_Y4_N0
\mem~53\ : maxii_lcell
-- Equation(s):
-- \mem~86\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L131Q))) # (!pwr(1) & (\mem~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~37_regout\,
	datac => \datain~combout\(5),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~86\,
	regout => \mem~53_regout\);

-- Location: LC_X5_Y4_N5
\mem~45\ : maxii_lcell
-- Equation(s):
-- \mem~87\ = (pwr(0) & ((\mem~86\ & (\mem~61_regout\)) # (!\mem~86\ & ((A1L123Q))))) # (!pwr(0) & (((\mem~86\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~61_regout\,
	datab => pwr(0),
	datac => \datain~combout\(5),
	datad => \mem~86\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~87\,
	regout => \mem~45_regout\);

-- Location: LC_X5_Y3_N4
\datao[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[5]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~87\)))) # (!pwr(2) & (((\mem~85\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~85\,
	datad => \mem~87\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[5]~reg0_regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(6),
	combout => \datain~combout\(6));

-- Location: LC_X6_Y1_N3
\mem~30\ : maxii_lcell
-- Equation(s):
-- \mem~30_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, \datain~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~30_regout\);

-- Location: LC_X6_Y1_N5
\mem~6\ : maxii_lcell
-- Equation(s):
-- \mem~6_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, \datain~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~6_regout\);

-- Location: LC_X6_Y3_N1
\mem~14\ : maxii_lcell
-- Equation(s):
-- \mem~88\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L92Q))) # (!pwr(0) & (\mem~6_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~6_regout\,
	datac => \datain~combout\(6),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~88\,
	regout => \mem~14_regout\);

-- Location: LC_X6_Y3_N2
\mem~22\ : maxii_lcell
-- Equation(s):
-- \mem~89\ = (pwr(1) & ((\mem~88\ & (\mem~30_regout\)) # (!\mem~88\ & ((A1L100Q))))) # (!pwr(1) & (((\mem~88\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~30_regout\,
	datac => \datain~combout\(6),
	datad => \mem~88\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~89\,
	regout => \mem~22_regout\);

-- Location: LC_X5_Y4_N8
\mem~62\ : maxii_lcell
-- Equation(s):
-- \mem~62_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, \datain~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~62_regout\);

-- Location: LC_X4_Y4_N6
\mem~38\ : maxii_lcell
-- Equation(s):
-- \mem~38_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~38_regout\);

-- Location: LC_X4_Y4_N2
\mem~54\ : maxii_lcell
-- Equation(s):
-- \mem~90\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L132Q))) # (!pwr(1) & (\mem~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~38_regout\,
	datac => \datain~combout\(6),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~90\,
	regout => \mem~54_regout\);

-- Location: LC_X5_Y4_N6
\mem~46\ : maxii_lcell
-- Equation(s):
-- \mem~91\ = (pwr(0) & ((\mem~90\ & (\mem~62_regout\)) # (!\mem~90\ & ((A1L124Q))))) # (!pwr(0) & (((\mem~90\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~62_regout\,
	datab => pwr(0),
	datac => \datain~combout\(6),
	datad => \mem~90\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~91\,
	regout => \mem~46_regout\);

-- Location: LC_X5_Y3_N9
\datao[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[6]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~91\)))) # (!pwr(2) & (((\mem~89\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~89\,
	datad => \mem~91\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[6]~reg0_regout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datain[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_datain(7),
	combout => \datain~combout\(7));

-- Location: LC_X5_Y1_N8
\mem~63\ : maxii_lcell
-- Equation(s):
-- \mem~63_regout\ = DFFEAS((((\datain~combout\(7)))), GLOBAL(\clk~combout\), VCC, , \mem~104_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(7),
	aclr => GND,
	ena => \mem~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~63_regout\);

-- Location: LC_X4_Y2_N3
\mem~39\ : maxii_lcell
-- Equation(s):
-- \mem~39_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem~103_combout\, \datain~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datain~combout\(7),
	aclr => GND,
	sload => VCC,
	ena => \mem~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~39_regout\);

-- Location: LC_X4_Y2_N8
\mem~55\ : maxii_lcell
-- Equation(s):
-- \mem~94\ = (pwr(0) & (((pwr(1))))) # (!pwr(0) & ((pwr(1) & ((A1L133Q))) # (!pwr(1) & (\mem~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~39_regout\,
	datac => \datain~combout\(7),
	datad => pwr(1),
	aclr => GND,
	sload => VCC,
	ena => \mem~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~94\,
	regout => \mem~55_regout\);

-- Location: LC_X4_Y3_N6
\mem~47\ : maxii_lcell
-- Equation(s):
-- \mem~95\ = (pwr(0) & ((\mem~94\ & (\mem~63_regout\)) # (!\mem~94\ & ((A1L125Q))))) # (!pwr(0) & (((\mem~94\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(0),
	datab => \mem~63_regout\,
	datac => \datain~combout\(7),
	datad => \mem~94\,
	aclr => GND,
	sload => VCC,
	ena => \mem~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~95\,
	regout => \mem~47_regout\);

-- Location: LC_X6_Y1_N1
\mem~31\ : maxii_lcell
-- Equation(s):
-- \mem~31_regout\ = DFFEAS((((\datain~combout\(7)))), GLOBAL(\clk~combout\), VCC, , \mem~100_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(7),
	aclr => GND,
	ena => \mem~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~31_regout\);

-- Location: LC_X6_Y1_N7
\mem~7\ : maxii_lcell
-- Equation(s):
-- \mem~7_regout\ = DFFEAS((((\datain~combout\(7)))), GLOBAL(\clk~combout\), VCC, , \mem~99_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datain~combout\(7),
	aclr => GND,
	ena => \mem~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem~7_regout\);

-- Location: LC_X6_Y3_N3
\mem~15\ : maxii_lcell
-- Equation(s):
-- \mem~92\ = (pwr(1) & (((pwr(0))))) # (!pwr(1) & ((pwr(0) & ((A1L93Q))) # (!pwr(0) & (\mem~7_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(1),
	datab => \mem~7_regout\,
	datac => \datain~combout\(7),
	datad => pwr(0),
	aclr => GND,
	sload => VCC,
	ena => \mem~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~92\,
	regout => \mem~15_regout\);

-- Location: LC_X6_Y3_N4
\mem~23\ : maxii_lcell
-- Equation(s):
-- \mem~93\ = (pwr(1) & ((\mem~92\ & (\mem~31_regout\)) # (!\mem~92\ & ((A1L101Q))))) # (!pwr(1) & (((\mem~92\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem~31_regout\,
	datab => pwr(1),
	datac => \datain~combout\(7),
	datad => \mem~92\,
	aclr => GND,
	sload => VCC,
	ena => \mem~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem~93\,
	regout => \mem~23_regout\);

-- Location: LC_X5_Y3_N6
\datao[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \datao[7]~reg0_regout\ = DFFEAS((pwr(2) & (((\mem~95\)))) # (!pwr(2) & (((\mem~93\)))), GLOBAL(\clk~combout\), VCC, , \datao[0]~0_combout\, , , \res~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datac => \mem~95\,
	datad => \mem~93\,
	aclr => GND,
	sclr => \res~combout\,
	ena => \datao[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datao[7]~reg0_regout\);

-- Location: LC_X3_Y2_N0
\count[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \count[0]~reg0_regout\ = DFFEAS(prd(0) $ ((pwr(0))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[0]~1\ = CARRY(((pwr(0))) # (!prd(0)))
-- \count[0]~1COUT1_13\ = CARRY(((pwr(0))) # (!prd(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(0),
	datab => pwr(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0]~reg0_regout\,
	cout0 => \count[0]~1\,
	cout1 => \count[0]~1COUT1_13\);

-- Location: LC_X3_Y2_N1
\count[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \count[1]~reg0_regout\ = DFFEAS(prd(1) $ (pwr(1) $ ((!\count[0]~1\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[1]~3\ = CARRY((prd(1) & ((!\count[0]~1\) # (!pwr(1)))) # (!prd(1) & (!pwr(1) & !\count[0]~1\)))
-- \count[1]~3COUT1_15\ = CARRY((prd(1) & ((!\count[0]~1COUT1_13\) # (!pwr(1)))) # (!prd(1) & (!pwr(1) & !\count[0]~1COUT1_13\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => prd(1),
	datab => pwr(1),
	aclr => GND,
	cin0 => \count[0]~1\,
	cin1 => \count[0]~1COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[1]~reg0_regout\,
	cout0 => \count[1]~3\,
	cout1 => \count[1]~3COUT1_15\);

-- Location: LC_X3_Y2_N2
\count[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \count[2]~reg0_regout\ = DFFEAS(pwr(2) $ (prd(2) $ ((\count[1]~3\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[2]~5\ = CARRY((pwr(2) & ((!\count[1]~3\) # (!prd(2)))) # (!pwr(2) & (!prd(2) & !\count[1]~3\)))
-- \count[2]~5COUT1_17\ = CARRY((pwr(2) & ((!\count[1]~3COUT1_15\) # (!prd(2)))) # (!pwr(2) & (!prd(2) & !\count[1]~3COUT1_15\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(2),
	datab => prd(2),
	aclr => GND,
	cin0 => \count[1]~3\,
	cin1 => \count[1]~3COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[2]~reg0_regout\,
	cout0 => \count[2]~5\,
	cout1 => \count[2]~5COUT1_17\);

-- Location: LC_X3_Y2_N3
\count[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \count[3]~reg0_regout\ = DFFEAS(pwr(3) $ (((\count[2]~5\ $ (!prd(3))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pwr(3),
	datad => prd(3),
	aclr => GND,
	cin0 => \count[2]~5\,
	cin1 => \count[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[3]~reg0_regout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[0]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(0));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[1]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[2]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[3]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(3));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[4]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(4));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[5]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(5));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[6]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datao[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datao[7]~reg0_regout\,
	oe => VCC,
	padio => ww_datao(7));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\full~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \full~reg0_regout\,
	oe => VCC,
	padio => ww_full);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\empty~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_full~reg0_regout\,
	oe => VCC,
	padio => ww_empty);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count[0]~reg0_regout\,
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count[1]~reg0_regout\,
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count[2]~reg0_regout\,
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count[3]~reg0_regout\,
	oe => VCC,
	padio => ww_count(3));
END structure;


