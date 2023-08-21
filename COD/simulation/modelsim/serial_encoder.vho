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

-- DATE "11/13/2022 23:12:19"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serial_encoder IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	mIn : IN std_logic;
	code : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END serial_encoder;

-- Design Ports Information
-- code[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serial_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_code : std_logic_vector(7 DOWNTO 0);
SIGNAL \con|nord|y~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \code[0]~output_o\ : std_logic;
SIGNAL \code[1]~output_o\ : std_logic;
SIGNAL \code[2]~output_o\ : std_logic;
SIGNAL \code[3]~output_o\ : std_logic;
SIGNAL \code[4]~output_o\ : std_logic;
SIGNAL \code[5]~output_o\ : std_logic;
SIGNAL \code[6]~output_o\ : std_logic;
SIGNAL \code[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bc|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \con|cMem|prog~0_combout\ : std_logic;
SIGNAL \bc|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \bc|ff1|Q~q\ : std_logic;
SIGNAL \con|nad2|y~0_combout\ : std_logic;
SIGNAL \con|nad2|y~1_combout\ : std_logic;
SIGNAL \bc|ff0|Q~q\ : std_logic;
SIGNAL \bc|ff2|Q~0_combout\ : std_logic;
SIGNAL \bc|ff2|Q~q\ : std_logic;
SIGNAL \con|nord|y~0_combout\ : std_logic;
SIGNAL \con|nord|y~0clkctrl_outclk\ : std_logic;
SIGNAL \and8|bit7|y~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pr8|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \pr8|ff0|Q~q\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \ff|Q~feeder_combout\ : std_logic;
SIGNAL \ff|Q~q\ : std_logic;
SIGNAL \xor8|bit0|y~combout\ : std_logic;
SIGNAL \finalpr8|ff0|Q~0_combout\ : std_logic;
SIGNAL \con|nad4|y~0_combout\ : std_logic;
SIGNAL \finalpr8|ff0|Q~q\ : std_logic;
SIGNAL \and8|bit7|y~1_combout\ : std_logic;
SIGNAL \pr8|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \pr8|ff1|Q~q\ : std_logic;
SIGNAL \and8|bit1|y~0_combout\ : std_logic;
SIGNAL \xor8|bit1|y~combout\ : std_logic;
SIGNAL \finalpr8|ff1|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff1|Q~q\ : std_logic;
SIGNAL \pr8|ff2|Q~feeder_combout\ : std_logic;
SIGNAL \pr8|ff2|Q~q\ : std_logic;
SIGNAL \xor8|bit2|y~combout\ : std_logic;
SIGNAL \finalpr8|ff2|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff2|Q~q\ : std_logic;
SIGNAL \pr8|ff3|Q~feeder_combout\ : std_logic;
SIGNAL \pr8|ff3|Q~q\ : std_logic;
SIGNAL \and8|bit3|y~0_combout\ : std_logic;
SIGNAL \xor8|bit3|y~combout\ : std_logic;
SIGNAL \finalpr8|ff3|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff3|Q~q\ : std_logic;
SIGNAL \pr8|ff4|Q~feeder_combout\ : std_logic;
SIGNAL \pr8|ff4|Q~q\ : std_logic;
SIGNAL \xor8|bit4|y~combout\ : std_logic;
SIGNAL \finalpr8|ff4|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff4|Q~q\ : std_logic;
SIGNAL \and8|bit5|y~0_combout\ : std_logic;
SIGNAL \pr8|ff5|Q~q\ : std_logic;
SIGNAL \xor8|bit5|y~combout\ : std_logic;
SIGNAL \finalpr8|ff5|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff5|Q~q\ : std_logic;
SIGNAL \pr8|ff6|Q~q\ : std_logic;
SIGNAL \and8|bit6|y~0_combout\ : std_logic;
SIGNAL \xor8|bit6|y~combout\ : std_logic;
SIGNAL \finalpr8|ff6|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff6|Q~q\ : std_logic;
SIGNAL \pr8|ff7|Q~q\ : std_logic;
SIGNAL \xor8|bit7|y~combout\ : std_logic;
SIGNAL \finalpr8|ff7|Q~0_combout\ : std_logic;
SIGNAL \finalpr8|ff7|Q~q\ : std_logic;
SIGNAL \con|nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \con|nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \finalpr8|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \finalpr8|ff0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_mIn <= mIn;
code <= ww_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\con|nord|y~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con|nord|y~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\con|nad2|ALT_INV_y~1_combout\ <= NOT \con|nad2|y~1_combout\;
\con|nad4|ALT_INV_y~0_combout\ <= NOT \con|nad4|y~0_combout\;
\finalpr8|ff7|ALT_INV_Q~q\ <= NOT \finalpr8|ff7|Q~q\;
\finalpr8|ff6|ALT_INV_Q~q\ <= NOT \finalpr8|ff6|Q~q\;
\finalpr8|ff5|ALT_INV_Q~q\ <= NOT \finalpr8|ff5|Q~q\;
\finalpr8|ff4|ALT_INV_Q~q\ <= NOT \finalpr8|ff4|Q~q\;
\finalpr8|ff3|ALT_INV_Q~q\ <= NOT \finalpr8|ff3|Q~q\;
\finalpr8|ff2|ALT_INV_Q~q\ <= NOT \finalpr8|ff2|Q~q\;
\finalpr8|ff1|ALT_INV_Q~q\ <= NOT \finalpr8|ff1|Q~q\;
\finalpr8|ff0|ALT_INV_Q~q\ <= NOT \finalpr8|ff0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\code[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\code[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\code[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\code[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\code[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\code[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\code[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\code[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalpr8|ff7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X2_Y4_N8
\bc|ff0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bc|ff0|Q~0_combout\ = !\bc|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff0|Q~q\,
	combout => \bc|ff0|Q~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\nGRst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LCCOMB_X2_Y4_N28
\con|cMem|prog~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \con|cMem|prog~0_combout\ = \bc|ff0|Q~q\ $ (\bc|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff0|Q~q\,
	datab => \bc|ff1|Q~q\,
	combout => \con|cMem|prog~0_combout\);

-- Location: LCCOMB_X2_Y4_N10
\bc|ff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bc|ff1|Q~feeder_combout\ = \con|cMem|prog~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \con|cMem|prog~0_combout\,
	combout => \bc|ff1|Q~feeder_combout\);

-- Location: FF_X2_Y4_N11
\bc|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff1|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff1|Q~q\);

-- Location: LCCOMB_X2_Y4_N0
\con|nad2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \con|nad2|y~0_combout\ = (!\bc|ff0|Q~q\ & \bc|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff0|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \con|nad2|y~0_combout\);

-- Location: LCCOMB_X2_Y4_N16
\con|nad2|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \con|nad2|y~1_combout\ = (\clk~input_o\ & (((\bc|ff2|Q~q\ & \con|nad2|y~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \nGRst~input_o\,
	datac => \clk~input_o\,
	datad => \con|nad2|y~0_combout\,
	combout => \con|nad2|y~1_combout\);

-- Location: FF_X2_Y4_N9
\bc|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff0|Q~q\);

-- Location: LCCOMB_X2_Y4_N6
\bc|ff2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bc|ff2|Q~0_combout\ = \bc|ff2|Q~q\ $ (((\bc|ff0|Q~q\ & \bc|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc|ff0|Q~q\,
	datac => \bc|ff2|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \bc|ff2|Q~0_combout\);

-- Location: FF_X2_Y4_N7
\bc|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff2|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff2|Q~q\);

-- Location: LCCOMB_X2_Y4_N4
\con|nord|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \con|nord|y~0_combout\ = LCELL((\bc|ff2|Q~q\ & (!\clk~input_o\ & (\bc|ff0|Q~q\ & !\bc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \clk~input_o\,
	datac => \bc|ff0|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \con|nord|y~0_combout\);

-- Location: CLKCTRL_G0
\con|nord|y~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con|nord|y~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con|nord|y~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y4_N22
\and8|bit7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit7|y~0_combout\ = (!\bc|ff0|Q~q\ & !\bc|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc|ff0|Q~q\,
	datac => \bc|ff1|Q~q\,
	combout => \and8|bit7|y~0_combout\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y4_N6
\pr8|ff0|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr8|ff0|Q~feeder_combout\ = \xor8|bit0|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8|bit0|y~combout\,
	combout => \pr8|ff0|Q~feeder_combout\);

-- Location: FF_X3_Y4_N7
\pr8|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr8|ff0|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff0|Q~q\);

-- Location: IOIBUF_X3_Y0_N1
\mIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: LCCOMB_X3_Y4_N16
\ff|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff|Q~feeder_combout\ = \mIn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mIn~input_o\,
	combout => \ff|Q~feeder_combout\);

-- Location: FF_X3_Y4_N17
\ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff|Q~q\);

-- Location: LCCOMB_X3_Y4_N10
\xor8|bit0|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit0|y~combout\ = \pr8|ff0|Q~q\ $ (((\ff|Q~q\ & (\and8|bit7|y~0_combout\ $ (!\bc|ff2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit7|y~0_combout\,
	datab => \pr8|ff0|Q~q\,
	datac => \bc|ff2|Q~q\,
	datad => \ff|Q~q\,
	combout => \xor8|bit0|y~combout\);

-- Location: LCCOMB_X3_Y4_N20
\finalpr8|ff0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff0|Q~0_combout\ = !\xor8|bit0|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor8|bit0|y~combout\,
	combout => \finalpr8|ff0|Q~0_combout\);

-- Location: LCCOMB_X2_Y4_N26
\con|nad4|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \con|nad4|y~0_combout\ = (\clk~input_o\ & (((\and8|bit7|y~0_combout\ & !\bc|ff2|Q~q\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit7|y~0_combout\,
	datab => \clk~input_o\,
	datac => \bc|ff2|Q~q\,
	datad => \nGRst~input_o\,
	combout => \con|nad4|y~0_combout\);

-- Location: FF_X3_Y4_N21
\finalpr8|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff0|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff0|Q~q\);

-- Location: LCCOMB_X2_Y4_N18
\and8|bit7|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit7|y~1_combout\ = (!\bc|ff0|Q~q\ & (\ff|Q~q\ & (\bc|ff2|Q~q\ & !\bc|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff0|Q~q\,
	datab => \ff|Q~q\,
	datac => \bc|ff2|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \and8|bit7|y~1_combout\);

-- Location: LCCOMB_X3_Y4_N12
\pr8|ff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr8|ff1|Q~feeder_combout\ = \xor8|bit1|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8|bit1|y~combout\,
	combout => \pr8|ff1|Q~feeder_combout\);

-- Location: FF_X3_Y4_N13
\pr8|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr8|ff1|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff1|Q~q\);

-- Location: LCCOMB_X2_Y4_N20
\and8|bit1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit1|y~0_combout\ = (\ff|Q~q\ & !\bc|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff|Q~q\,
	datac => \bc|ff2|Q~q\,
	combout => \and8|bit1|y~0_combout\);

-- Location: LCCOMB_X2_Y4_N2
\xor8|bit1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit1|y~combout\ = \pr8|ff1|Q~q\ $ (((\and8|bit7|y~1_combout\) # ((\bc|ff1|Q~q\ & \and8|bit1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit7|y~1_combout\,
	datab => \pr8|ff1|Q~q\,
	datac => \bc|ff1|Q~q\,
	datad => \and8|bit1|y~0_combout\,
	combout => \xor8|bit1|y~combout\);

-- Location: LCCOMB_X2_Y4_N12
\finalpr8|ff1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff1|Q~0_combout\ = !\xor8|bit1|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8|bit1|y~combout\,
	combout => \finalpr8|ff1|Q~0_combout\);

-- Location: FF_X2_Y4_N13
\finalpr8|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff1|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff1|Q~q\);

-- Location: LCCOMB_X1_Y4_N18
\pr8|ff2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr8|ff2|Q~feeder_combout\ = \xor8|bit2|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8|bit2|y~combout\,
	combout => \pr8|ff2|Q~feeder_combout\);

-- Location: FF_X1_Y4_N19
\pr8|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr8|ff2|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff2|Q~q\);

-- Location: LCCOMB_X1_Y4_N20
\xor8|bit2|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit2|y~combout\ = \pr8|ff2|Q~q\ $ (((\and8|bit7|y~1_combout\) # ((\and8|bit1|y~0_combout\ & \bc|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit1|y~0_combout\,
	datab => \pr8|ff2|Q~q\,
	datac => \and8|bit7|y~1_combout\,
	datad => \bc|ff0|Q~q\,
	combout => \xor8|bit2|y~combout\);

-- Location: LCCOMB_X1_Y4_N0
\finalpr8|ff2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff2|Q~0_combout\ = !\xor8|bit2|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8|bit2|y~combout\,
	combout => \finalpr8|ff2|Q~0_combout\);

-- Location: FF_X1_Y4_N1
\finalpr8|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff2|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff2|Q~q\);

-- Location: LCCOMB_X3_Y4_N2
\pr8|ff3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr8|ff3|Q~feeder_combout\ = \xor8|bit3|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8|bit3|y~combout\,
	combout => \pr8|ff3|Q~feeder_combout\);

-- Location: FF_X3_Y4_N3
\pr8|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr8|ff3|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff3|Q~q\);

-- Location: LCCOMB_X3_Y4_N28
\and8|bit3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit3|y~0_combout\ = (\ff|Q~q\ & ((\bc|ff2|Q~q\ & (!\bc|ff0|Q~q\ & !\bc|ff1|Q~q\)) # (!\bc|ff2|Q~q\ & (\bc|ff0|Q~q\ & \bc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \ff|Q~q\,
	datac => \bc|ff0|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \and8|bit3|y~0_combout\);

-- Location: LCCOMB_X3_Y4_N26
\xor8|bit3|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit3|y~combout\ = \pr8|ff3|Q~q\ $ (\and8|bit3|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr8|ff3|Q~q\,
	datac => \and8|bit3|y~0_combout\,
	combout => \xor8|bit3|y~combout\);

-- Location: LCCOMB_X3_Y4_N18
\finalpr8|ff3|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff3|Q~0_combout\ = !\xor8|bit3|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor8|bit3|y~combout\,
	combout => \finalpr8|ff3|Q~0_combout\);

-- Location: FF_X3_Y4_N19
\finalpr8|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff3|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff3|Q~q\);

-- Location: LCCOMB_X3_Y4_N0
\pr8|ff4|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr8|ff4|Q~feeder_combout\ = \xor8|bit4|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8|bit4|y~combout\,
	combout => \pr8|ff4|Q~feeder_combout\);

-- Location: FF_X3_Y4_N1
\pr8|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr8|ff4|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff4|Q~q\);

-- Location: LCCOMB_X2_Y4_N14
\xor8|bit4|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit4|y~combout\ = \pr8|ff4|Q~q\ $ (((\and8|bit7|y~1_combout\) # ((\and8|bit1|y~0_combout\ & \con|cMem|prog~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit1|y~0_combout\,
	datab => \pr8|ff4|Q~q\,
	datac => \con|cMem|prog~0_combout\,
	datad => \and8|bit7|y~1_combout\,
	combout => \xor8|bit4|y~combout\);

-- Location: LCCOMB_X2_Y4_N24
\finalpr8|ff4|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff4|Q~0_combout\ = !\xor8|bit4|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8|bit4|y~combout\,
	combout => \finalpr8|ff4|Q~0_combout\);

-- Location: FF_X2_Y4_N25
\finalpr8|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff4|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff4|Q~q\);

-- Location: LCCOMB_X3_Y4_N8
\and8|bit5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit5|y~0_combout\ = (\ff|Q~q\ & (!\bc|ff0|Q~q\ & (\bc|ff2|Q~q\ $ (\bc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \bc|ff1|Q~q\,
	datac => \ff|Q~q\,
	datad => \bc|ff0|Q~q\,
	combout => \and8|bit5|y~0_combout\);

-- Location: FF_X3_Y4_N23
\pr8|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor8|bit5|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff5|Q~q\);

-- Location: LCCOMB_X3_Y4_N14
\xor8|bit5|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit5|y~combout\ = \and8|bit5|y~0_combout\ $ (\pr8|ff5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit5|y~0_combout\,
	datad => \pr8|ff5|Q~q\,
	combout => \xor8|bit5|y~combout\);

-- Location: LCCOMB_X4_Y4_N24
\finalpr8|ff5|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff5|Q~0_combout\ = !\xor8|bit5|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8|bit5|y~combout\,
	combout => \finalpr8|ff5|Q~0_combout\);

-- Location: FF_X4_Y4_N25
\finalpr8|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff5|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff5|Q~q\);

-- Location: FF_X3_Y4_N15
\pr8|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor8|bit6|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff6|Q~q\);

-- Location: LCCOMB_X3_Y4_N4
\and8|bit6|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|bit6|y~0_combout\ = (\ff|Q~q\ & (!\bc|ff1|Q~q\ & (\bc|ff2|Q~q\ $ (\bc|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \bc|ff0|Q~q\,
	datac => \ff|Q~q\,
	datad => \bc|ff1|Q~q\,
	combout => \and8|bit6|y~0_combout\);

-- Location: LCCOMB_X3_Y4_N30
\xor8|bit6|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit6|y~combout\ = \pr8|ff6|Q~q\ $ (\and8|bit6|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr8|ff6|Q~q\,
	datab => \and8|bit6|y~0_combout\,
	combout => \xor8|bit6|y~combout\);

-- Location: LCCOMB_X3_Y4_N24
\finalpr8|ff6|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff6|Q~0_combout\ = !\xor8|bit6|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8|bit6|y~combout\,
	combout => \finalpr8|ff6|Q~0_combout\);

-- Location: FF_X3_Y4_N25
\finalpr8|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff6|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff6|Q~q\);

-- Location: FF_X3_Y4_N31
\pr8|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor8|bit7|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff7|Q~q\);

-- Location: LCCOMB_X3_Y4_N22
\xor8|bit7|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8|bit7|y~combout\ = \and8|bit7|y~1_combout\ $ (\pr8|ff7|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8|bit7|y~1_combout\,
	datad => \pr8|ff7|Q~q\,
	combout => \xor8|bit7|y~combout\);

-- Location: LCCOMB_X4_Y4_N6
\finalpr8|ff7|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalpr8|ff7|Q~0_combout\ = !\xor8|bit7|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8|bit7|y~combout\,
	combout => \finalpr8|ff7|Q~0_combout\);

-- Location: FF_X4_Y4_N7
\finalpr8|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0clkctrl_outclk\,
	d => \finalpr8|ff7|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finalpr8|ff7|Q~q\);

ww_code(0) <= \code[0]~output_o\;

ww_code(1) <= \code[1]~output_o\;

ww_code(2) <= \code[2]~output_o\;

ww_code(3) <= \code[3]~output_o\;

ww_code(4) <= \code[4]~output_o\;

ww_code(5) <= \code[5]~output_o\;

ww_code(6) <= \code[6]~output_o\;

ww_code(7) <= \code[7]~output_o\;
END structure;


