-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "12/11/2022 13:00:27"

-- 
-- Device: Altera 10CL006YE144C6G Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
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
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SineGenerator IS
    PORT (
	CLK : IN std_logic;
	DOUT : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SineGenerator;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SineGenerator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q1[0]~15_combout\ : std_logic;
SIGNAL \Q1[1]~5_combout\ : std_logic;
SIGNAL \Q1[1]~6\ : std_logic;
SIGNAL \Q1[2]~7_combout\ : std_logic;
SIGNAL \Q1[2]~8\ : std_logic;
SIGNAL \Q1[3]~9_combout\ : std_logic;
SIGNAL \Q1[3]~10\ : std_logic;
SIGNAL \Q1[4]~11_combout\ : std_logic;
SIGNAL \Q1[4]~12\ : std_logic;
SIGNAL \Q1[5]~13_combout\ : std_logic;
SIGNAL \u1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL Q1 : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (Q1(5) & Q1(4) & Q1(3) & Q1(2) & Q1(1) & Q1(0));

\u1|altsyncram_component|auto_generated|q_a\(0) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u1|altsyncram_component|auto_generated|q_a\(1) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u1|altsyncram_component|auto_generated|q_a\(2) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u1|altsyncram_component|auto_generated|q_a\(3) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u1|altsyncram_component|auto_generated|q_a\(4) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u1|altsyncram_component|auto_generated|q_a\(5) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u1|altsyncram_component|auto_generated|q_a\(6) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u1|altsyncram_component|auto_generated|q_a\(7) <= \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\DOUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\DOUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DOUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\DOUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\DOUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DOUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DOUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DOUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y4_N12
\Q1[0]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[0]~15_combout\ = !Q1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q1(0),
	combout => \Q1[0]~15_combout\);

-- Location: FF_X14_Y4_N13
\Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(0));

-- Location: LCCOMB_X14_Y4_N14
\Q1[1]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[1]~5_combout\ = (Q1(0) & (Q1(1) $ (VCC))) # (!Q1(0) & (Q1(1) & VCC))
-- \Q1[1]~6\ = CARRY((Q1(0) & Q1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(0),
	datab => Q1(1),
	datad => VCC,
	combout => \Q1[1]~5_combout\,
	cout => \Q1[1]~6\);

-- Location: FF_X14_Y4_N15
\Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(1));

-- Location: LCCOMB_X14_Y4_N16
\Q1[2]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[2]~7_combout\ = (Q1(2) & (!\Q1[1]~6\)) # (!Q1(2) & ((\Q1[1]~6\) # (GND)))
-- \Q1[2]~8\ = CARRY((!\Q1[1]~6\) # (!Q1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(2),
	datad => VCC,
	cin => \Q1[1]~6\,
	combout => \Q1[2]~7_combout\,
	cout => \Q1[2]~8\);

-- Location: FF_X14_Y4_N17
\Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(2));

-- Location: LCCOMB_X14_Y4_N18
\Q1[3]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[3]~9_combout\ = (Q1(3) & (\Q1[2]~8\ $ (GND))) # (!Q1(3) & (!\Q1[2]~8\ & VCC))
-- \Q1[3]~10\ = CARRY((Q1(3) & !\Q1[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(3),
	datad => VCC,
	cin => \Q1[2]~8\,
	combout => \Q1[3]~9_combout\,
	cout => \Q1[3]~10\);

-- Location: FF_X14_Y4_N19
\Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(3));

-- Location: LCCOMB_X14_Y4_N20
\Q1[4]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[4]~11_combout\ = (Q1(4) & (!\Q1[3]~10\)) # (!Q1(4) & ((\Q1[3]~10\) # (GND)))
-- \Q1[4]~12\ = CARRY((!\Q1[3]~10\) # (!Q1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(4),
	datad => VCC,
	cin => \Q1[3]~10\,
	combout => \Q1[4]~11_combout\,
	cout => \Q1[4]~12\);

-- Location: FF_X14_Y4_N21
\Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(4));

-- Location: LCCOMB_X14_Y4_N22
\Q1[5]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Q1[5]~13_combout\ = Q1(5) $ (!\Q1[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(5),
	cin => \Q1[4]~12\,
	combout => \Q1[5]~13_combout\);

-- Location: FF_X14_Y4_N23
\Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q1[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(5));

-- Location: M9K_X15_Y4_N0
\u1|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"003F800FC003E400F5003C000E90038800D90034000C6002EC00B0002900098002300080001D0006800170005000114003A000C0002700078001700040000B0001C00040000800000000800040001C000B000400017000780027000C0003A001140050001700068001D000800023000980029000B0002EC00C60034000D90038800E9003C000F5003E400FC003F800FF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "data_rom:u1|altsyncram:altsyncram_component|altsyncram_qhr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;
END structure;


