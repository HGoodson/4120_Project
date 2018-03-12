-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "03/11/2018 22:32:15"

-- 
-- Device: Altera 5CGXFC7D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Phase_1 IS
    PORT (
	Clear : IN std_logic;
	Clock : IN std_logic;
	Iout : OUT std_logic_vector(31 DOWNTO 0)
	);
END Phase_1;

-- Design Ports Information
-- Iout[0]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[1]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[3]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[8]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[9]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[10]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[11]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[12]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[13]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[14]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[15]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[16]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[17]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[18]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[19]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[20]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[21]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[22]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[23]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[24]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[25]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[26]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[27]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[28]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[29]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[30]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Iout[31]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Phase_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Iout : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \U2|Q[2]~0_combout\ : std_logic;
SIGNAL \U2|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~1_sumout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~5_sumout\ : std_logic;
SIGNAL \U1|Add0~6\ : std_logic;
SIGNAL \U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|Add0~10\ : std_logic;
SIGNAL \U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~17_sumout\ : std_logic;
SIGNAL \U3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U2|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Clear~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 2);

BEGIN

ww_Clear <= Clear;
ww_Clock <= Clock;
Iout <= ww_Iout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U2|Q\(7) & \U2|Q\(6) & \U2|Q\(5) & \U2|Q\(4) & \U2|Q\(3) & \U2|Q[2]~DUPLICATE_q\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|q_a\(0) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U3|altsyncram_component|auto_generated|q_a\(1) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U3|altsyncram_component|auto_generated|q_a\(2) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U3|altsyncram_component|auto_generated|q_a\(3) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U3|altsyncram_component|auto_generated|q_a\(4) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U3|altsyncram_component|auto_generated|q_a\(5) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U3|altsyncram_component|auto_generated|q_a\(6) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U3|altsyncram_component|auto_generated|q_a\(7) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U3|altsyncram_component|auto_generated|q_a\(8) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U3|altsyncram_component|auto_generated|q_a\(9) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U3|altsyncram_component|auto_generated|q_a\(10) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U3|altsyncram_component|auto_generated|q_a\(11) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\U2|Q\(7) & \U2|Q\(6) & \U2|Q\(5) & \U2|Q\(4) & \U2|Q\(3) & \U2|Q[2]~DUPLICATE_q\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|q_a\(12) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\U3|altsyncram_component|auto_generated|q_a\(13) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\U3|altsyncram_component|auto_generated|q_a\(14) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\U3|altsyncram_component|auto_generated|q_a\(15) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\U3|altsyncram_component|auto_generated|q_a\(16) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\U3|altsyncram_component|auto_generated|q_a\(17) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\U3|altsyncram_component|auto_generated|q_a\(18) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\U3|altsyncram_component|auto_generated|q_a\(19) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\U3|altsyncram_component|auto_generated|q_a\(20) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\U3|altsyncram_component|auto_generated|q_a\(21) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);
\U3|altsyncram_component|auto_generated|q_a\(22) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(10);
\U3|altsyncram_component|auto_generated|q_a\(23) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(11);
\U3|altsyncram_component|auto_generated|q_a\(24) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(12);
\U3|altsyncram_component|auto_generated|q_a\(25) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(13);
\U3|altsyncram_component|auto_generated|q_a\(26) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(14);
\U3|altsyncram_component|auto_generated|q_a\(27) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(15);
\U3|altsyncram_component|auto_generated|q_a\(28) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(16);
\U3|altsyncram_component|auto_generated|q_a\(29) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(17);
\U3|altsyncram_component|auto_generated|q_a\(30) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(18);
\U3|altsyncram_component|auto_generated|q_a\(31) <= \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(19);
\ALT_INV_Clear~input_o\ <= NOT \Clear~input_o\;
\U2|ALT_INV_Q\(7) <= NOT \U2|Q\(7);
\U2|ALT_INV_Q\(6) <= NOT \U2|Q\(6);
\U2|ALT_INV_Q\(5) <= NOT \U2|Q\(5);
\U2|ALT_INV_Q\(4) <= NOT \U2|Q\(4);
\U2|ALT_INV_Q\(3) <= NOT \U2|Q\(3);
\U2|ALT_INV_Q\(2) <= NOT \U2|Q\(2);

-- Location: IOOBUF_X62_Y0_N19
\Iout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_Iout(0));

-- Location: IOOBUF_X66_Y0_N76
\Iout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_Iout(1));

-- Location: IOOBUF_X52_Y0_N2
\Iout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_Iout(2));

-- Location: IOOBUF_X58_Y0_N42
\Iout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_Iout(3));

-- Location: IOOBUF_X62_Y0_N2
\Iout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_Iout(4));

-- Location: IOOBUF_X64_Y0_N53
\Iout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_Iout(5));

-- Location: IOOBUF_X58_Y0_N76
\Iout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_Iout(6));

-- Location: IOOBUF_X64_Y0_N19
\Iout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_Iout(7));

-- Location: IOOBUF_X62_Y0_N36
\Iout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_Iout(8));

-- Location: IOOBUF_X54_Y0_N53
\Iout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_Iout(9));

-- Location: IOOBUF_X60_Y0_N19
\Iout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_Iout(10));

-- Location: IOOBUF_X52_Y0_N53
\Iout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_Iout(11));

-- Location: IOOBUF_X58_Y0_N59
\Iout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_Iout(12));

-- Location: IOOBUF_X54_Y0_N2
\Iout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_Iout(13));

-- Location: IOOBUF_X60_Y0_N53
\Iout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_Iout(14));

-- Location: IOOBUF_X52_Y0_N36
\Iout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_Iout(15));

-- Location: IOOBUF_X66_Y0_N59
\Iout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_Iout(16));

-- Location: IOOBUF_X56_Y0_N36
\Iout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_Iout(17));

-- Location: IOOBUF_X60_Y0_N2
\Iout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_Iout(18));

-- Location: IOOBUF_X58_Y0_N93
\Iout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_Iout(19));

-- Location: IOOBUF_X56_Y0_N2
\Iout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_Iout(20));

-- Location: IOOBUF_X66_Y0_N42
\Iout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_Iout(21));

-- Location: IOOBUF_X52_Y0_N19
\Iout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_Iout(22));

-- Location: IOOBUF_X54_Y0_N36
\Iout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_Iout(23));

-- Location: IOOBUF_X64_Y0_N2
\Iout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_Iout(24));

-- Location: IOOBUF_X66_Y0_N93
\Iout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_Iout(25));

-- Location: IOOBUF_X56_Y0_N53
\Iout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_Iout(26));

-- Location: IOOBUF_X62_Y0_N53
\Iout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_Iout(27));

-- Location: IOOBUF_X64_Y0_N36
\Iout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_Iout(28));

-- Location: IOOBUF_X60_Y0_N36
\Iout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_Iout(29));

-- Location: IOOBUF_X54_Y0_N19
\Iout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_Iout(30));

-- Location: IOOBUF_X56_Y0_N19
\Iout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_Iout(31));

-- Location: IOIBUF_X40_Y0_N18
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G6
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X59_Y2_N39
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X50_Y0_N41
\Clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: FF_X57_Y2_N56
\U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U2|Q[2]~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(2));

-- Location: LABCELL_X57_Y2_N54
\U2|Q[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Q[2]~0_combout\ = ( !\U2|Q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U2|ALT_INV_Q\(2),
	combout => \U2|Q[2]~0_combout\);

-- Location: FF_X57_Y2_N55
\U2|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U2|Q[2]~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q[2]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y2_N0
\U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~1_sumout\ = SUM(( \U2|Q\(3) ) + ( \U2|Q\(2) ) + ( !VCC ))
-- \U1|Add0~2\ = CARRY(( \U2|Q\(3) ) + ( \U2|Q\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_Q\(2),
	datad => \U2|ALT_INV_Q\(3),
	cin => GND,
	sumout => \U1|Add0~1_sumout\,
	cout => \U1|Add0~2\);

-- Location: FF_X57_Y2_N1
\U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U1|Add0~1_sumout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(3));

-- Location: LABCELL_X57_Y2_N3
\U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~5_sumout\ = SUM(( \U2|Q\(4) ) + ( GND ) + ( \U1|Add0~2\ ))
-- \U1|Add0~6\ = CARRY(( \U2|Q\(4) ) + ( GND ) + ( \U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Q\(4),
	cin => \U1|Add0~2\,
	sumout => \U1|Add0~5_sumout\,
	cout => \U1|Add0~6\);

-- Location: FF_X57_Y2_N5
\U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U1|Add0~5_sumout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(4));

-- Location: LABCELL_X57_Y2_N6
\U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~9_sumout\ = SUM(( \U2|Q\(5) ) + ( GND ) + ( \U1|Add0~6\ ))
-- \U1|Add0~10\ = CARRY(( \U2|Q\(5) ) + ( GND ) + ( \U1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Q\(5),
	cin => \U1|Add0~6\,
	sumout => \U1|Add0~9_sumout\,
	cout => \U1|Add0~10\);

-- Location: FF_X57_Y2_N7
\U2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U1|Add0~9_sumout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(5));

-- Location: LABCELL_X57_Y2_N9
\U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~13_sumout\ = SUM(( \U2|Q\(6) ) + ( GND ) + ( \U1|Add0~10\ ))
-- \U1|Add0~14\ = CARRY(( \U2|Q\(6) ) + ( GND ) + ( \U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Q\(6),
	cin => \U1|Add0~10\,
	sumout => \U1|Add0~13_sumout\,
	cout => \U1|Add0~14\);

-- Location: FF_X57_Y2_N10
\U2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U1|Add0~13_sumout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(6));

-- Location: LABCELL_X57_Y2_N12
\U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~17_sumout\ = SUM(( \U2|Q\(7) ) + ( GND ) + ( \U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Q\(7),
	cin => \U1|Add0~14\,
	sumout => \U1|Add0~17_sumout\);

-- Location: FF_X57_Y2_N14
\U2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \U1|Add0~17_sumout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q\(7));

-- Location: M10K_X58_Y2_N0
\U3|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "IP_Catalog:U3|altsyncram:altsyncram_component|altsyncram_8gv3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clock~inputCLKENA0_outclk\,
	portadatain => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y2_N0
\U3|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "IP_Catalog:U3|altsyncram:altsyncram_component|altsyncram_8gv3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clock~inputCLKENA0_outclk\,
	portadatain => \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \U3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);
END structure;


