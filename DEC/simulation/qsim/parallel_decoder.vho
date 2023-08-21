-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/16/2022 17:15:00"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parallel_decoder IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	m : OUT std_logic_vector(3 DOWNTO 0);
	v : OUT std_logic
	);
END parallel_decoder;

-- Design Ports Information
-- m[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parallel_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_v : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \m_partial_encoder[2]~1_combout\ : std_logic;
SIGNAL \m3_c[0]~2_combout\ : std_logic;
SIGNAL \m3_c[2]~0_combout\ : std_logic;
SIGNAL \m3_c[3]~1_combout\ : std_logic;
SIGNAL \m3_c[1]~3_combout\ : std_logic;
SIGNAL \m_partial_encoder[3]~0_combout\ : std_logic;
SIGNAL \pop|hA02|and20|y~combout\ : std_logic;
SIGNAL \pop|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \pop|fA20|hA0|and20|y~combout\ : std_logic;
SIGNAL \pop|fA20|fA10|or20|y~1_combout\ : std_logic;
SIGNAL \m_partial_encoder[1]~2_combout\ : std_logic;
SIGNAL \pop|hA01|and20|y~combout\ : std_logic;
SIGNAL \pop|hA00|and20|y~combout\ : std_logic;
SIGNAL \pop|fA10|hA0|and20|y~combout\ : std_logic;
SIGNAL \pop|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \pop|fA20|fA10|or20|y~2_combout\ : std_logic;
SIGNAL \m1_v~0_combout\ : std_logic;
SIGNAL \m2_v~0_combout\ : std_logic;
SIGNAL \m3_v~0_combout\ : std_logic;
SIGNAL \m_v~0_combout\ : std_logic;
SIGNAL \pop|fA10|fA0|and20|y~combout\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \m~1_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL m2_c : std_logic_vector(3 DOWNTO 0);
SIGNAL m1_c : std_logic_vector(3 DOWNTO 0);
SIGNAL \part_encoder|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_m_v~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
m <= ww_m;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_m_v~0_combout\ <= NOT \m_v~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~0_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~1_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~2_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~3_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_m_v~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X2_Y10_N6
\m2_c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- m2_c(1) = \x[1]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[1]~input_o\,
	datad => \x[3]~input_o\,
	combout => m2_c(1));

-- Location: IOIBUF_X28_Y0_N22
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LCCOMB_X2_Y10_N16
\m2_c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- m2_c(2) = \x[6]~input_o\ $ (\x[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datad => \x[4]~input_o\,
	combout => m2_c(2));

-- Location: IOIBUF_X34_Y12_N8
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X2_Y10_N4
\m2_c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- m2_c(0) = \x[0]~input_o\ $ (\x[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => m2_c(0));

-- Location: IOIBUF_X0_Y5_N15
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X2_Y10_N10
\m2_c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- m2_c(3) = \x[5]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datad => \x[7]~input_o\,
	combout => m2_c(3));

-- Location: LCCOMB_X2_Y10_N8
\m_partial_encoder[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_partial_encoder[2]~1_combout\ = (m2_c(1) & ((m2_c(2) & ((m2_c(0)) # (m2_c(3)))) # (!m2_c(2) & (m2_c(0) & m2_c(3))))) # (!m2_c(1) & (m2_c(2) & (m2_c(0) & m2_c(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_c(1),
	datab => m2_c(2),
	datac => m2_c(0),
	datad => m2_c(3),
	combout => \m_partial_encoder[2]~1_combout\);

-- Location: LCCOMB_X4_Y9_N16
\m3_c[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_c[0]~2_combout\ = \x[1]~input_o\ $ (\x[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \m3_c[0]~2_combout\);

-- Location: LCCOMB_X3_Y8_N0
\m3_c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_c[2]~0_combout\ = \x[4]~input_o\ $ (\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datac => \x[5]~input_o\,
	combout => \m3_c[2]~0_combout\);

-- Location: LCCOMB_X3_Y8_N26
\m3_c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_c[3]~1_combout\ = \x[7]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \m3_c[3]~1_combout\);

-- Location: LCCOMB_X3_Y8_N20
\m3_c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_c[1]~3_combout\ = \x[2]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datad => \x[3]~input_o\,
	combout => \m3_c[1]~3_combout\);

-- Location: LCCOMB_X3_Y8_N6
\m_partial_encoder[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_partial_encoder[3]~0_combout\ = (\m3_c[0]~2_combout\ & ((\m3_c[2]~0_combout\ & ((\m3_c[3]~1_combout\) # (\m3_c[1]~3_combout\))) # (!\m3_c[2]~0_combout\ & (\m3_c[3]~1_combout\ & \m3_c[1]~3_combout\)))) # (!\m3_c[0]~2_combout\ & (\m3_c[2]~0_combout\ & 
-- (\m3_c[3]~1_combout\ & \m3_c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3_c[0]~2_combout\,
	datab => \m3_c[2]~0_combout\,
	datac => \m3_c[3]~1_combout\,
	datad => \m3_c[1]~3_combout\,
	combout => \m_partial_encoder[3]~0_combout\);

-- Location: LCCOMB_X3_Y8_N12
\pop|hA02|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|hA02|and20|y~combout\ = (\m_partial_encoder[2]~1_combout\ & (!\x[5]~input_o\ & (\x[4]~input_o\ $ (!\m_partial_encoder[3]~0_combout\)))) # (!\m_partial_encoder[2]~1_combout\ & (\x[5]~input_o\ & (\x[4]~input_o\ $ (\m_partial_encoder[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_partial_encoder[2]~1_combout\,
	datab => \x[4]~input_o\,
	datac => \x[5]~input_o\,
	datad => \m_partial_encoder[3]~0_combout\,
	combout => \pop|hA02|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N22
\pop|fA11|fA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA11|fA0|and20|y~combout\ = (\pop|hA02|and20|y~combout\ & (\x[7]~input_o\ & (\x[6]~input_o\ $ (\m_partial_encoder[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pop|hA02|and20|y~combout\,
	datab => \x[6]~input_o\,
	datac => \x[7]~input_o\,
	datad => \m_partial_encoder[3]~0_combout\,
	combout => \pop|fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N16
\pop|fA20|hA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA20|hA0|and20|y~combout\ = (\m3_c[0]~2_combout\ & (!\m3_c[1]~3_combout\ & (\m3_c[2]~0_combout\ $ (\m3_c[3]~1_combout\)))) # (!\m3_c[0]~2_combout\ & (\m3_c[1]~3_combout\ & (\m3_c[2]~0_combout\ $ (\m3_c[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3_c[0]~2_combout\,
	datab => \m3_c[2]~0_combout\,
	datac => \m3_c[3]~1_combout\,
	datad => \m3_c[1]~3_combout\,
	combout => \pop|fA20|hA0|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N14
\pop|fA20|fA10|or20|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA20|fA10|or20|y~1_combout\ = (\m3_c[2]~0_combout\ & ((\x[6]~input_o\ & (!\m_partial_encoder[3]~0_combout\)) # (!\x[6]~input_o\ & ((\x[7]~input_o\))))) # (!\m3_c[2]~0_combout\ & ((\x[6]~input_o\ & ((\x[7]~input_o\))) # (!\x[6]~input_o\ & 
-- (\m_partial_encoder[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_partial_encoder[3]~0_combout\,
	datab => \m3_c[2]~0_combout\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \pop|fA20|fA10|or20|y~1_combout\);

-- Location: LCCOMB_X2_Y10_N12
\m1_c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- m1_c(3) = \x[7]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[7]~input_o\,
	datad => \x[3]~input_o\,
	combout => m1_c(3));

-- Location: LCCOMB_X2_Y10_N22
\m1_c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- m1_c(0) = \x[0]~input_o\ $ (\x[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[4]~input_o\,
	combout => m1_c(0));

-- Location: LCCOMB_X2_Y10_N26
\m1_c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- m1_c(2) = \x[2]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datad => \x[6]~input_o\,
	combout => m1_c(2));

-- Location: LCCOMB_X2_Y10_N0
\m1_c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- m1_c(1) = \x[5]~input_o\ $ (\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datac => \x[1]~input_o\,
	combout => m1_c(1));

-- Location: LCCOMB_X2_Y10_N18
\m_partial_encoder[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_partial_encoder[1]~2_combout\ = (m1_c(3) & ((m1_c(0) & ((m1_c(2)) # (m1_c(1)))) # (!m1_c(0) & (m1_c(2) & m1_c(1))))) # (!m1_c(3) & (m1_c(0) & (m1_c(2) & m1_c(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_c(3),
	datab => m1_c(0),
	datac => m1_c(2),
	datad => m1_c(1),
	combout => \m_partial_encoder[1]~2_combout\);

-- Location: LCCOMB_X3_Y8_N8
\pop|hA01|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|hA01|and20|y~combout\ = (\x[3]~input_o\ & (!\m_partial_encoder[1]~2_combout\ & (\m_partial_encoder[3]~0_combout\ $ (\x[2]~input_o\)))) # (!\x[3]~input_o\ & (\m_partial_encoder[1]~2_combout\ & (\m_partial_encoder[3]~0_combout\ $ (!\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_partial_encoder[3]~0_combout\,
	datab => \x[3]~input_o\,
	datac => \x[2]~input_o\,
	datad => \m_partial_encoder[1]~2_combout\,
	combout => \pop|hA01|and20|y~combout\);

-- Location: LCCOMB_X3_Y9_N0
\part_encoder|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \part_encoder|o\(1) = \m_partial_encoder[1]~2_combout\ $ (\m_partial_encoder[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_partial_encoder[1]~2_combout\,
	datac => \m_partial_encoder[2]~1_combout\,
	combout => \part_encoder|o\(1));

-- Location: LCCOMB_X6_Y9_N8
\pop|hA00|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|hA00|and20|y~combout\ = (\x[1]~input_o\ & (!\part_encoder|o\(1) & (\m_partial_encoder[3]~0_combout\ $ (\x[0]~input_o\)))) # (!\x[1]~input_o\ & (\part_encoder|o\(1) & (\m_partial_encoder[3]~0_combout\ $ (!\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_partial_encoder[3]~0_combout\,
	datab => \x[1]~input_o\,
	datac => \part_encoder|o\(1),
	datad => \x[0]~input_o\,
	combout => \pop|hA00|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N18
\pop|fA10|hA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA10|hA0|and20|y~combout\ = (\m3_c[0]~2_combout\ & (!\m3_c[2]~0_combout\ & (!\m3_c[3]~1_combout\ & \m3_c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3_c[0]~2_combout\,
	datab => \m3_c[2]~0_combout\,
	datac => \m3_c[3]~1_combout\,
	datad => \m3_c[1]~3_combout\,
	combout => \pop|fA10|hA0|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N28
\pop|fA20|fA10|or20|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA20|fA10|or20|y~0_combout\ = \pop|hA01|and20|y~combout\ $ (\pop|hA00|and20|y~combout\ $ (\pop|fA10|hA0|and20|y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pop|hA01|and20|y~combout\,
	datac => \pop|hA00|and20|y~combout\,
	datad => \pop|fA10|hA0|and20|y~combout\,
	combout => \pop|fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X3_Y8_N24
\pop|fA20|fA10|or20|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA20|fA10|or20|y~2_combout\ = (\pop|fA20|hA0|and20|y~combout\ & ((\pop|fA20|fA10|or20|y~0_combout\) # (\pop|hA02|and20|y~combout\ $ (\pop|fA20|fA10|or20|y~1_combout\)))) # (!\pop|fA20|hA0|and20|y~combout\ & (\pop|fA20|fA10|or20|y~0_combout\ & 
-- (\pop|hA02|and20|y~combout\ $ (\pop|fA20|fA10|or20|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pop|hA02|and20|y~combout\,
	datab => \pop|fA20|hA0|and20|y~combout\,
	datac => \pop|fA20|fA10|or20|y~1_combout\,
	datad => \pop|fA20|fA10|or20|y~0_combout\,
	combout => \pop|fA20|fA10|or20|y~2_combout\);

-- Location: LCCOMB_X2_Y10_N30
\m1_v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1_v~0_combout\ = (m1_c(3) & ((m1_c(0) & ((m1_c(2)) # (m1_c(1)))) # (!m1_c(0) & (m1_c(2) $ (!m1_c(1)))))) # (!m1_c(3) & ((m1_c(0) & (m1_c(2) $ (!m1_c(1)))) # (!m1_c(0) & ((!m1_c(1)) # (!m1_c(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_c(3),
	datab => m1_c(0),
	datac => m1_c(2),
	datad => m1_c(1),
	combout => \m1_v~0_combout\);

-- Location: LCCOMB_X2_Y10_N28
\m2_v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2_v~0_combout\ = (m2_c(1) & ((m2_c(2) & ((m2_c(0)) # (m2_c(3)))) # (!m2_c(2) & (m2_c(0) $ (!m2_c(3)))))) # (!m2_c(1) & ((m2_c(2) & (m2_c(0) $ (!m2_c(3)))) # (!m2_c(2) & ((!m2_c(3)) # (!m2_c(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_c(1),
	datab => m2_c(2),
	datac => m2_c(0),
	datad => m2_c(3),
	combout => \m2_v~0_combout\);

-- Location: LCCOMB_X3_Y8_N10
\m3_v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_v~0_combout\ = (\m3_c[0]~2_combout\ & ((\m3_c[2]~0_combout\ & ((\m3_c[3]~1_combout\) # (\m3_c[1]~3_combout\))) # (!\m3_c[2]~0_combout\ & (\m3_c[3]~1_combout\ $ (!\m3_c[1]~3_combout\))))) # (!\m3_c[0]~2_combout\ & ((\m3_c[2]~0_combout\ & 
-- (\m3_c[3]~1_combout\ $ (!\m3_c[1]~3_combout\))) # (!\m3_c[2]~0_combout\ & ((!\m3_c[1]~3_combout\) # (!\m3_c[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3_c[0]~2_combout\,
	datab => \m3_c[2]~0_combout\,
	datac => \m3_c[3]~1_combout\,
	datad => \m3_c[1]~3_combout\,
	combout => \m3_v~0_combout\);

-- Location: LCCOMB_X2_Y10_N24
\m_v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_v~0_combout\ = ((!\m3_v~0_combout\) # (!\m2_v~0_combout\)) # (!\m1_v~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_v~0_combout\,
	datab => \m2_v~0_combout\,
	datac => \m3_v~0_combout\,
	combout => \m_v~0_combout\);

-- Location: LCCOMB_X3_Y8_N2
\pop|fA10|fA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \pop|fA10|fA0|and20|y~combout\ = (\pop|hA01|and20|y~combout\ & \pop|hA00|and20|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pop|hA01|and20|y~combout\,
	datac => \pop|hA00|and20|y~combout\,
	combout => \pop|fA10|fA0|and20|y~combout\);

-- Location: LCCOMB_X3_Y8_N4
\m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (!\m_v~0_combout\ & (\pop|fA20|fA10|or20|y~2_combout\ $ (((\pop|fA11|fA0|and20|y~combout\) # (\pop|fA10|fA0|and20|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pop|fA11|fA0|and20|y~combout\,
	datab => \pop|fA20|fA10|or20|y~2_combout\,
	datac => \m_v~0_combout\,
	datad => \pop|fA10|fA0|and20|y~combout\,
	combout => \m~0_combout\);

-- Location: LCCOMB_X2_Y10_N2
\m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~1_combout\ = (\m1_v~0_combout\ & (\m2_v~0_combout\ & (\m3_v~0_combout\ & \m_partial_encoder[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_v~0_combout\,
	datab => \m2_v~0_combout\,
	datac => \m3_v~0_combout\,
	datad => \m_partial_encoder[1]~2_combout\,
	combout => \m~1_combout\);

-- Location: LCCOMB_X2_Y10_N20
\m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\m1_v~0_combout\ & (\m2_v~0_combout\ & (\m3_v~0_combout\ & \m_partial_encoder[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_v~0_combout\,
	datab => \m2_v~0_combout\,
	datac => \m3_v~0_combout\,
	datad => \m_partial_encoder[2]~1_combout\,
	combout => \m~2_combout\);

-- Location: LCCOMB_X2_Y10_N14
\m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\m1_v~0_combout\ & (\m_partial_encoder[3]~0_combout\ & (\m3_v~0_combout\ & \m2_v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_v~0_combout\,
	datab => \m_partial_encoder[3]~0_combout\,
	datac => \m3_v~0_combout\,
	datad => \m2_v~0_combout\,
	combout => \m~3_combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_v <= \v~output_o\;
END structure;


