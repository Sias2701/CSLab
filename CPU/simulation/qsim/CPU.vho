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

-- DATE "12/11/2022 16:52:18"

-- 
-- Device: Altera 10CL006YU256C6G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	ACC_ZF : OUT std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	BUS_CTX : INOUT std_logic_vector(7 DOWNTO 0);
	MEM_RW : OUT std_logic;
	ACC : OUT std_logic_vector(7 DOWNTO 0);
	ALU_MODE : OUT std_logic_vector(3 DOWNTO 0);
	ALU_OP : OUT std_logic_vector(7 DOWNTO 0);
	ALU_RES : OUT std_logic_vector(7 DOWNTO 0);
	BRANCH_ADDRESS : OUT std_logic_vector(7 DOWNTO 0);
	CAR_CONTROL : OUT std_logic_vector(3 DOWNTO 0);
	CONTROL_ADDRESS : OUT std_logic_vector(7 DOWNTO 0);
	CONTROL_BUS : OUT std_logic_vector(21 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	MAR : OUT std_logic_vector(7 DOWNTO 0);
	MBR : OUT std_logic_vector(7 DOWNTO 0);
	MBR_BUS_CONTROL : OUT std_logic_vector(4 DOWNTO 0);
	MEM : OUT std_logic_vector(7 DOWNTO 0);
	MEM_IN : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	PC_BUS_CONTROL : OUT std_logic_vector(3 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- ACC_ZF	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_RW	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_MODE[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_MODE[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_MODE[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_MODE[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[5]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_ADDRESS[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR_CONTROL[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR_CONTROL[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR_CONTROL[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR_CONTROL[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_ADDRESS[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[21]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[19]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[18]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[14]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[10]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[9]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL_BUS[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[2]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[3]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR_BUS_CONTROL[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR_BUS_CONTROL[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR_BUS_CONTROL[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR_BUS_CONTROL[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR_BUS_CONTROL[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_BUS_CONTROL[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_BUS_CONTROL[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_BUS_CONTROL[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_BUS_CONTROL[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_CTX[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_ACC_ZF : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_MEM_RW : std_logic;
SIGNAL ww_ACC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_MODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALU_OP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_RES : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BRANCH_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CAR_CONTROL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONTROL_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CONTROL_BUS : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MBR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MBR_BUS_CONTROL : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MEM_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_BUS_CONTROL : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst11|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|Equal7~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|output[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][7]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][7]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~6_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~7_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~4_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~15_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~16_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]~q\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~7\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~5_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~9\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~3_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~4_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~1\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~7_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~3\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~6_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~5\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~10_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \BUS_CTX[4]~input_o\ : std_logic;
SIGNAL \BUS_CTX[5]~input_o\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|CADDR[0]~9\ : std_logic;
SIGNAL \inst13|CADDR[1]~11\ : std_logic;
SIGNAL \inst13|CADDR[2]~13\ : std_logic;
SIGNAL \inst13|CADDR[3]~15\ : std_logic;
SIGNAL \inst13|CADDR[4]~17\ : std_logic;
SIGNAL \inst13|CADDR[5]~18_combout\ : std_logic;
SIGNAL \BUS_CTX[6]~input_o\ : std_logic;
SIGNAL \inst13|Add0~1_combout\ : std_logic;
SIGNAL \inst13|CADDR[5]~19\ : std_logic;
SIGNAL \inst13|CADDR[6]~20_combout\ : std_logic;
SIGNAL \BUS_CTX[7]~input_o\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|CADDR[6]~21\ : std_logic;
SIGNAL \inst13|CADDR[7]~22_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|LOOP_BACK[2]~2_combout\ : std_logic;
SIGNAL \inst14|LOOP_BACK[0]~4_combout\ : std_logic;
SIGNAL \inst13|CADDR~24_combout\ : std_logic;
SIGNAL \inst13|CADDR[5]~25_combout\ : std_logic;
SIGNAL \inst|output[7]~0_combout\ : std_logic;
SIGNAL \inst|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst13|Add0~3_combout\ : std_logic;
SIGNAL \inst13|CADDR[4]~16_combout\ : std_logic;
SIGNAL \BUS_CTX[3]~input_o\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|CADDR[3]~14_combout\ : std_logic;
SIGNAL \inst11|output[7]~0_combout\ : std_logic;
SIGNAL \inst11|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst12|acc_reg[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|acc_reg[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|acc_reg[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst12|acc_reg[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|acc_reg[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|Equal0~1_combout\ : std_logic;
SIGNAL \BUS_CTX[1]~input_o\ : std_logic;
SIGNAL \inst12|acc_reg[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \BUS_CTX[0]~input_o\ : std_logic;
SIGNAL \inst12|acc_reg[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst12|acc_reg[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \BUS_CTX[2]~input_o\ : std_logic;
SIGNAL \inst12|acc_reg[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst12|acc_reg[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|acc_reg[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst12|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|LOOP_BACK~0_combout\ : std_logic;
SIGNAL \inst14|LOOP_BACK[3]~1_combout\ : std_logic;
SIGNAL \inst13|Add0~5_combout\ : std_logic;
SIGNAL \inst13|CADDR[2]~12_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|CADDR[1]~10_combout\ : std_logic;
SIGNAL \inst14|LOOP_BACK[1]~3_combout\ : std_logic;
SIGNAL \inst13|Add0~7_combout\ : std_logic;
SIGNAL \inst13|CADDR[0]~8_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~13_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~14\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~15_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~17_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~13_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][5]~q\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[7]~1_combout\ : std_logic;
SIGNAL \inst6|output[7]~0_combout\ : std_logic;
SIGNAL \inst6|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst5|output[7]~0_combout\ : std_logic;
SIGNAL \inst5|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[7]~0_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[6]~2_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[5]~3_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[4]~4_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[3]~5_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[2]~6_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[1]~7_combout\ : std_logic;
SIGNAL \inst7|MBR_REG[0]~8_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \inst9|output[7]~0_combout\ : std_logic;
SIGNAL \inst9|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst10|Equal7~0_combout\ : std_logic;
SIGNAL \inst10|Equal7~1_combout\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~1_combout\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Add0~3_combout\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add0~5_combout\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Add0~7_combout\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Add0~10_cout\ : std_logic;
SIGNAL \inst10|Add0~12\ : std_logic;
SIGNAL \inst10|Add0~14\ : std_logic;
SIGNAL \inst10|Add0~16\ : std_logic;
SIGNAL \inst10|Add0~18\ : std_logic;
SIGNAL \inst10|Add0~20\ : std_logic;
SIGNAL \inst10|Add0~22\ : std_logic;
SIGNAL \inst10|Add0~24\ : std_logic;
SIGNAL \inst10|Add0~25_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst10|Equal7~2_combout\ : std_logic;
SIGNAL \inst10|Equal7~2clkctrl_outclk\ : std_logic;
SIGNAL \inst10|RESULT[7]~3_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~0_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~4_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~48_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~49_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~1_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~2_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~5_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[0]~8_combout\ : std_logic;
SIGNAL \inst3|output[7]~0_combout\ : std_logic;
SIGNAL \inst3|output[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[0]~9\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[1]~10_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[1]~11\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[2]~12_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[2]~13\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[3]~14_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[3]~15\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[4]~16_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[4]~17\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[5]~18_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[5]~19\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[6]~20_combout\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[6]~21\ : std_logic;
SIGNAL \inst2|PROGRAM_COUNTER_REG[7]~22_combout\ : std_logic;
SIGNAL \inst3|bus_port[7]~0_combout\ : std_logic;
SIGNAL \inst5|bus_port[7]~0_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~24_combout\ : std_logic;
SIGNAL \inst11|bus_port[7]~0_combout\ : std_logic;
SIGNAL \inst6|bus_port[7]~0_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~25_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~26_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~27_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~52_combout\ : std_logic;
SIGNAL \inst9|bus_port[7]~0_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~28_combout\ : std_logic;
SIGNAL \inst|bus_port[7]~53_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~11_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~45_combout\ : std_logic;
SIGNAL \inst10|Add0~23_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~6_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~7_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst10|RESULT[6]~8_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~9_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~10_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~12_combout\ : std_logic;
SIGNAL \inst|bus_port[6]~29_combout\ : std_logic;
SIGNAL \inst|bus_port[6]~30_combout\ : std_logic;
SIGNAL \inst|bus_port[6]~31_combout\ : std_logic;
SIGNAL \inst|bus_port[6]~32_combout\ : std_logic;
SIGNAL \inst10|Add0~21_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst10|RESULT[5]~15_combout\ : std_logic;
SIGNAL \inst10|RESULT[5]~14_combout\ : std_logic;
SIGNAL \inst10|RESULT[5]~16_combout\ : std_logic;
SIGNAL \inst10|RESULT[5]~17_combout\ : std_logic;
SIGNAL \inst10|RESULT[5]~18_combout\ : std_logic;
SIGNAL \inst|bus_port[5]~34_combout\ : std_logic;
SIGNAL \inst|bus_port[5]~33_combout\ : std_logic;
SIGNAL \inst|bus_port[5]~35_combout\ : std_logic;
SIGNAL \inst|bus_port[5]~54_combout\ : std_logic;
SIGNAL \inst10|RESULT[4]~19_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst10|RESULT[4]~20_combout\ : std_logic;
SIGNAL \inst10|RESULT[4]~21_combout\ : std_logic;
SIGNAL \inst10|Add0~19_combout\ : std_logic;
SIGNAL \inst10|RESULT[4]~22_combout\ : std_logic;
SIGNAL \inst10|RESULT[4]~23_combout\ : std_logic;
SIGNAL \inst|bus_port[4]~37_combout\ : std_logic;
SIGNAL \inst|bus_port[4]~36_combout\ : std_logic;
SIGNAL \inst|bus_port[4]~38_combout\ : std_logic;
SIGNAL \inst|bus_port[4]~55_combout\ : std_logic;
SIGNAL \inst|bus_port[3]~39_combout\ : std_logic;
SIGNAL \inst|bus_port[3]~40_combout\ : std_logic;
SIGNAL \inst|bus_port[3]~41_combout\ : std_logic;
SIGNAL \inst10|Add0~17_combout\ : std_logic;
SIGNAL \inst10|RESULT[3]~24_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst10|RESULT[3]~25_combout\ : std_logic;
SIGNAL \inst10|RESULT[3]~26_combout\ : std_logic;
SIGNAL \inst10|RESULT[3]~27_combout\ : std_logic;
SIGNAL \inst10|RESULT[3]~28_combout\ : std_logic;
SIGNAL \inst|bus_port[3]~56_combout\ : std_logic;
SIGNAL \inst10|Add0~15_combout\ : std_logic;
SIGNAL \inst10|RESULT[2]~29_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst10|RESULT[2]~30_combout\ : std_logic;
SIGNAL \inst10|RESULT[2]~31_combout\ : std_logic;
SIGNAL \inst10|RESULT[2]~32_combout\ : std_logic;
SIGNAL \inst10|RESULT[2]~33_combout\ : std_logic;
SIGNAL \inst|bus_port[2]~43_combout\ : std_logic;
SIGNAL \inst|bus_port[2]~42_combout\ : std_logic;
SIGNAL \inst|bus_port[2]~44_combout\ : std_logic;
SIGNAL \inst|bus_port[2]~57_combout\ : std_logic;
SIGNAL \inst|bus_port[1]~45_combout\ : std_logic;
SIGNAL \inst|bus_port[1]~46_combout\ : std_logic;
SIGNAL \inst|bus_port[1]~47_combout\ : std_logic;
SIGNAL \inst10|Add0~13_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst10|RESULT[1]~35_combout\ : std_logic;
SIGNAL \inst10|RESULT[1]~34_combout\ : std_logic;
SIGNAL \inst10|RESULT[1]~36_combout\ : std_logic;
SIGNAL \inst10|RESULT[1]~37_combout\ : std_logic;
SIGNAL \inst10|RESULT[1]~38_combout\ : std_logic;
SIGNAL \inst|bus_port[1]~58_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~40_combout\ : std_logic;
SIGNAL \inst10|Add0~11_combout\ : std_logic;
SIGNAL \inst10|RESULT[7]~39_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~41_combout\ : std_logic;
SIGNAL \inst10|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst10|RESULT[7]~42_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~43_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~46_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~47_combout\ : std_logic;
SIGNAL \inst10|RESULT[0]~44_combout\ : std_logic;
SIGNAL \inst3|bus_port[0]~1_combout\ : std_logic;
SIGNAL \inst|bus_port[0]~49_combout\ : std_logic;
SIGNAL \inst|bus_port[0]~50_combout\ : std_logic;
SIGNAL \inst|bus_port[0]~48_combout\ : std_logic;
SIGNAL \inst|bus_port[0]~51_combout\ : std_logic;
SIGNAL \inst12|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|RESULT[6]~13_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|MBR_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|CADDR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|MUL_BUF\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ir_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|PROGRAM_COUNTER_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|MAR_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \inst|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|ALU_BUF\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|PC_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\ : std_logic_vector(26 DOWNTO 26);

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ACC_ZF <= ww_ACC_ZF;
ww_CLK <= CLK;
ww_RST <= RST;
MEM_RW <= ww_MEM_RW;
ACC <= ww_ACC;
ALU_MODE <= ww_ALU_MODE;
ALU_OP <= ww_ALU_OP;
ALU_RES <= ww_ALU_RES;
BRANCH_ADDRESS <= ww_BRANCH_ADDRESS;
CAR_CONTROL <= ww_CAR_CONTROL;
CONTROL_ADDRESS <= ww_CONTROL_ADDRESS;
CONTROL_BUS <= ww_CONTROL_BUS;
IR <= ww_IR;
MAR <= ww_MAR;
MBR <= ww_MBR;
MBR_BUS_CONTROL <= ww_MBR_BUS_CONTROL;
MEM <= ww_MEM;
MEM_IN <= ww_MEM_IN;
PC <= ww_PC;
PC_BUS_CONTROL <= ww_PC_BUS_CONTROL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(40) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(39) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(38) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(37) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(36) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(35) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(34) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(33) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(32) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\inst13|CADDR\(7) & \inst13|CADDR\(6) & \inst13|CADDR\(5) & \inst13|CADDR\(4) & \inst13|CADDR\(3) & \inst13|CADDR\(2) & \inst13|CADDR\(1) & 
\inst13|CADDR\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(19) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(8);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(32) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(9);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(33) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(10);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(11);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(35) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(12);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(36) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(13);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(14);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(15);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(16);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(17);

\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(19) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(8);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(32) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(9);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(33) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(10);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(34) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(11);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(35) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(12);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(36) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(13);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(37) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(14);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(38) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(15);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(39) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(16);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(40) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(17);

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\ <= (\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\ <= (\inst13|CADDR\(7) & \inst13|CADDR\(6) & \inst13|CADDR\(5) & \inst13|CADDR\(4) & \inst13|CADDR\(3) & \inst13|CADDR\(2) & \inst13|CADDR\(1) & 
\inst13|CADDR\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\ <= (\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(16) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(17) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(5);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(6);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(7);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(8);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(9);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(10);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(11);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(26) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(12);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(13);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(14);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(15);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(30) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(16);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(31) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(17);

\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(13) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(14) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(15) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(16) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(17) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(18) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(5);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(20) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(6);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(21) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(7);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(22) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(8);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(23) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(9);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(24) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(10);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(25) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(11);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(26) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(12);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(27) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(13);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(28) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(14);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(29) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(15);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(30) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(16);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(31) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(17);

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc);

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(41) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\ <= (\inst13|CADDR\(7) & \inst13|CADDR\(6) & \inst13|CADDR\(5) & \inst13|CADDR\(4) & \inst13|CADDR\(3) & \inst13|CADDR\(2) & \inst13|CADDR\(1) & 
\inst13|CADDR\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\ <= (\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(41) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(5);

\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(8) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(0);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(9) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(1);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(10) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(2);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(11) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(3);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(12) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(4);
\inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(41) <= \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(5);

\inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst7|MBR_REG\(7) & \inst7|MBR_REG\(6) & \inst7|MBR_REG\(5) & \inst7|MBR_REG\(4) & 
\inst7|MBR_REG\(3) & \inst7|MBR_REG\(2) & \inst7|MBR_REG\(1) & \inst7|MBR_REG\(0));

\inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & 
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & 
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & 
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\inst4|MAR_REG\(7) & \inst4|MAR_REG\(6) & \inst4|MAR_REG\(5) & \inst4|MAR_REG\(4) & \inst4|MAR_REG\(3) & \inst4|MAR_REG\(2) & \inst4|MAR_REG\(1) & 
\inst4|MAR_REG\(0));

\inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);

\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);

\inst10|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst10|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT8\
& \inst10|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT3\
& \inst10|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst10|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst10|Mult0|auto_generated|mac_mult1~dataout\ & \inst10|Mult0|auto_generated|mac_mult1~1\ & \inst10|Mult0|auto_generated|mac_mult1~0\);

\inst10|Mult0|auto_generated|mac_out2~0\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst10|Mult0|auto_generated|mac_out2~1\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst10|Mult0|auto_generated|mac_out2~dataout\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst10|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst10|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst11|output\(7) & \inst11|output\(6) & \inst11|output\(5) & \inst11|output\(4) & \inst11|output\(3) & \inst11|output\(2) & \inst11|output\(1) & \inst11|output\(0) & gnd);

\inst10|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst10|ALU_BUF\(7) & \inst10|ALU_BUF\(6) & \inst10|ALU_BUF\(5) & \inst10|ALU_BUF\(4) & \inst10|ALU_BUF\(3) & \inst10|ALU_BUF\(2) & \inst10|ALU_BUF\(1) & \inst10|ALU_BUF\(0) & gnd);

\inst10|Mult0|auto_generated|mac_mult1~0\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst10|Mult0|auto_generated|mac_mult1~1\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst10|Mult0|auto_generated|mac_mult1~dataout\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst10|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\inst11|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|output[7]~0_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\inst10|Equal7~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|Equal7~2_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\inst5|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|output[7]~0_combout\);

\inst3|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|output[7]~0_combout\);

\inst|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|output[7]~0_combout\);

\inst9|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|output[7]~0_combout\);

\inst6|output[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|output[7]~0_combout\);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][3]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ <= NOT \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\;
\inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ <= NOT \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\;
\inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26) <= NOT \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(26);

-- Location: FF_X16_Y15_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~8_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: FF_X16_Y15_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: FF_X17_Y12_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~18_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][6]~q\);

-- Location: FF_X17_Y12_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~19_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][7]~q\);

-- Location: FF_X16_Y15_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][6]~q\);

-- Location: LCCOMB_X16_Y15_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][6]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~8_combout\);

-- Location: FF_X16_Y15_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][7]~q\);

-- Location: LCCOMB_X16_Y15_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][7]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~9_combout\);

-- Location: FF_X17_Y12_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~19_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][6]~q\);

-- Location: LCCOMB_X17_Y12_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~18\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][6]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~18_combout\);

-- Location: FF_X17_Y12_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~20_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][7]~q\);

-- Location: LCCOMB_X17_Y12_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][7]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~19_combout\);

-- Location: LCCOMB_X16_Y15_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~9_combout\);

-- Location: LCCOMB_X16_Y15_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~10_combout\);

-- Location: LCCOMB_X17_Y12_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][6]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~19_combout\);

-- Location: LCCOMB_X17_Y12_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~20\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][7]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~20_combout\);

-- Location: IOOBUF_X16_Y24_N23
\ACC_ZF~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Equal0~2_combout\,
	devoe => ww_devoe,
	o => ww_ACC_ZF);

-- Location: IOOBUF_X25_Y24_N23
\MEM_RW~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(19),
	devoe => ww_devoe,
	o => ww_MEM_RW);

-- Location: IOOBUF_X0_Y8_N2
\ACC[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(7));

-- Location: IOOBUF_X34_Y11_N9
\ACC[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(6));

-- Location: IOOBUF_X0_Y6_N23
\ACC[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(5));

-- Location: IOOBUF_X16_Y24_N16
\ACC[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(4));

-- Location: IOOBUF_X11_Y0_N23
\ACC[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(3));

-- Location: IOOBUF_X0_Y9_N2
\ACC[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(2));

-- Location: IOOBUF_X34_Y10_N2
\ACC[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(1));

-- Location: IOOBUF_X9_Y0_N9
\ACC[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|acc_reg[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ACC(0));

-- Location: IOOBUF_X34_Y9_N16
\ALU_MODE[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	devoe => ww_devoe,
	o => ww_ALU_MODE(3));

-- Location: IOOBUF_X7_Y24_N16
\ALU_MODE[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	devoe => ww_devoe,
	o => ww_ALU_MODE(2));

-- Location: IOOBUF_X0_Y10_N23
\ALU_MODE[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	devoe => ww_devoe,
	o => ww_ALU_MODE(1));

-- Location: IOOBUF_X7_Y0_N16
\ALU_MODE[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	devoe => ww_devoe,
	o => ww_ALU_MODE(0));

-- Location: IOOBUF_X9_Y0_N16
\ALU_OP[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(7),
	devoe => ww_devoe,
	o => ww_ALU_OP(7));

-- Location: IOOBUF_X5_Y0_N23
\ALU_OP[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(6),
	devoe => ww_devoe,
	o => ww_ALU_OP(6));

-- Location: IOOBUF_X11_Y0_N16
\ALU_OP[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(5),
	devoe => ww_devoe,
	o => ww_ALU_OP(5));

-- Location: IOOBUF_X16_Y0_N23
\ALU_OP[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(4),
	devoe => ww_devoe,
	o => ww_ALU_OP(4));

-- Location: IOOBUF_X34_Y9_N23
\ALU_OP[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(3),
	devoe => ww_devoe,
	o => ww_ALU_OP(3));

-- Location: IOOBUF_X18_Y0_N9
\ALU_OP[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(2),
	devoe => ww_devoe,
	o => ww_ALU_OP(2));

-- Location: IOOBUF_X13_Y0_N2
\ALU_OP[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(1),
	devoe => ww_devoe,
	o => ww_ALU_OP(1));

-- Location: IOOBUF_X16_Y0_N9
\ALU_OP[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output\(0),
	devoe => ww_devoe,
	o => ww_ALU_OP(0));

-- Location: IOOBUF_X25_Y24_N9
\ALU_RES[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[7]~5_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(7));

-- Location: IOOBUF_X13_Y0_N16
\ALU_RES[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(6));

-- Location: IOOBUF_X7_Y0_N23
\ALU_RES[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[5]~18_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(5));

-- Location: IOOBUF_X0_Y8_N16
\ALU_RES[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[4]~23_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(4));

-- Location: IOOBUF_X21_Y24_N16
\ALU_RES[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[3]~28_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(3));

-- Location: IOOBUF_X30_Y0_N16
\ALU_RES[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[2]~33_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(2));

-- Location: IOOBUF_X18_Y0_N23
\ALU_RES[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[1]~38_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(1));

-- Location: IOOBUF_X13_Y0_N23
\ALU_RES[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|RESULT[0]~44_combout\,
	devoe => ww_devoe,
	o => ww_ALU_RES(0));

-- Location: IOOBUF_X13_Y24_N16
\BRANCH_ADDRESS[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(7));

-- Location: IOOBUF_X9_Y24_N9
\BRANCH_ADDRESS[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(6));

-- Location: IOOBUF_X11_Y24_N16
\BRANCH_ADDRESS[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(5));

-- Location: IOOBUF_X23_Y24_N16
\BRANCH_ADDRESS[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(4));

-- Location: IOOBUF_X9_Y24_N16
\BRANCH_ADDRESS[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(3));

-- Location: IOOBUF_X11_Y24_N2
\BRANCH_ADDRESS[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(2));

-- Location: IOOBUF_X13_Y24_N9
\BRANCH_ADDRESS[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(1));

-- Location: IOOBUF_X13_Y24_N2
\BRANCH_ADDRESS[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	devoe => ww_devoe,
	o => ww_BRANCH_ADDRESS(0));

-- Location: IOOBUF_X34_Y19_N16
\CAR_CONTROL[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LOOP_BACK[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_CAR_CONTROL(3));

-- Location: IOOBUF_X18_Y24_N16
\CAR_CONTROL[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LOOP_BACK[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_CAR_CONTROL(2));

-- Location: IOOBUF_X18_Y24_N23
\CAR_CONTROL[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LOOP_BACK[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_CAR_CONTROL(1));

-- Location: IOOBUF_X28_Y24_N9
\CAR_CONTROL[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LOOP_BACK[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_CAR_CONTROL(0));

-- Location: IOOBUF_X7_Y24_N9
\CONTROL_ADDRESS[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(7),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(7));

-- Location: IOOBUF_X23_Y24_N23
\CONTROL_ADDRESS[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(6),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(6));

-- Location: IOOBUF_X16_Y24_N2
\CONTROL_ADDRESS[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(5),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(5));

-- Location: IOOBUF_X16_Y24_N9
\CONTROL_ADDRESS[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(4),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(4));

-- Location: IOOBUF_X5_Y24_N23
\CONTROL_ADDRESS[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(3),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(3));

-- Location: IOOBUF_X34_Y20_N16
\CONTROL_ADDRESS[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(2),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(2));

-- Location: IOOBUF_X5_Y24_N16
\CONTROL_ADDRESS[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(1),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(1));

-- Location: IOOBUF_X25_Y24_N16
\CONTROL_ADDRESS[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|CADDR\(0),
	devoe => ww_devoe,
	o => ww_CONTROL_ADDRESS(0));

-- Location: IOOBUF_X0_Y10_N16
\CONTROL_BUS[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(21));

-- Location: IOOBUF_X13_Y24_N23
\CONTROL_BUS[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(20));

-- Location: IOOBUF_X0_Y8_N23
\CONTROL_BUS[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(19));

-- Location: IOOBUF_X28_Y24_N16
\CONTROL_BUS[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(26),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(18));

-- Location: IOOBUF_X23_Y24_N9
\CONTROL_BUS[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(17));

-- Location: IOOBUF_X9_Y24_N23
\CONTROL_BUS[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(16));

-- Location: IOOBUF_X1_Y24_N2
\CONTROL_BUS[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(15));

-- Location: IOOBUF_X5_Y0_N16
\CONTROL_BUS[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(14));

-- Location: IOOBUF_X1_Y0_N23
\CONTROL_BUS[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(13));

-- Location: IOOBUF_X16_Y0_N2
\CONTROL_BUS[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(12));

-- Location: IOOBUF_X25_Y24_N2
\CONTROL_BUS[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(19),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(11));

-- Location: IOOBUF_X0_Y6_N16
\CONTROL_BUS[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(10));

-- Location: IOOBUF_X0_Y5_N23
\CONTROL_BUS[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(17),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(9));

-- Location: IOOBUF_X7_Y0_N9
\CONTROL_BUS[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(16),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(8));

-- Location: IOOBUF_X11_Y0_N2
\CONTROL_BUS[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(7));

-- Location: IOOBUF_X7_Y24_N2
\CONTROL_BUS[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(6));

-- Location: IOOBUF_X21_Y24_N9
\CONTROL_BUS[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(5));

-- Location: IOOBUF_X0_Y18_N23
\CONTROL_BUS[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(4));

-- Location: IOOBUF_X11_Y24_N23
\CONTROL_BUS[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(3));

-- Location: IOOBUF_X23_Y24_N2
\CONTROL_BUS[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(2));

-- Location: IOOBUF_X34_Y3_N23
\CONTROL_BUS[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(1));

-- Location: IOOBUF_X3_Y24_N16
\CONTROL_BUS[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	devoe => ww_devoe,
	o => ww_CONTROL_BUS(0));

-- Location: IOOBUF_X34_Y17_N2
\IR[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(7),
	devoe => ww_devoe,
	o => ww_IR(7));

-- Location: IOOBUF_X34_Y11_N2
\IR[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(6),
	devoe => ww_devoe,
	o => ww_IR(6));

-- Location: IOOBUF_X34_Y18_N16
\IR[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(5),
	devoe => ww_devoe,
	o => ww_IR(5));

-- Location: IOOBUF_X34_Y10_N9
\IR[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(4),
	devoe => ww_devoe,
	o => ww_IR(4));

-- Location: IOOBUF_X9_Y0_N2
\IR[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(3),
	devoe => ww_devoe,
	o => ww_IR(3));

-- Location: IOOBUF_X0_Y8_N9
\IR[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(2),
	devoe => ww_devoe,
	o => ww_IR(2));

-- Location: IOOBUF_X0_Y7_N16
\IR[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(1),
	devoe => ww_devoe,
	o => ww_IR(1));

-- Location: IOOBUF_X21_Y24_N2
\IR[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_reg\(0),
	devoe => ww_devoe,
	o => ww_IR(0));

-- Location: IOOBUF_X30_Y0_N9
\MAR[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(7),
	devoe => ww_devoe,
	o => ww_MAR(7));

-- Location: IOOBUF_X34_Y7_N9
\MAR[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(6),
	devoe => ww_devoe,
	o => ww_MAR(6));

-- Location: IOOBUF_X34_Y6_N16
\MAR[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(5),
	devoe => ww_devoe,
	o => ww_MAR(5));

-- Location: IOOBUF_X34_Y4_N16
\MAR[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(4),
	devoe => ww_devoe,
	o => ww_MAR(4));

-- Location: IOOBUF_X23_Y0_N2
\MAR[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(3),
	devoe => ww_devoe,
	o => ww_MAR(3));

-- Location: IOOBUF_X25_Y0_N9
\MAR[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(2),
	devoe => ww_devoe,
	o => ww_MAR(2));

-- Location: IOOBUF_X25_Y0_N2
\MAR[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(1),
	devoe => ww_devoe,
	o => ww_MAR(1));

-- Location: IOOBUF_X28_Y0_N2
\MAR[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MAR_REG\(0),
	devoe => ww_devoe,
	o => ww_MAR(0));

-- Location: IOOBUF_X34_Y18_N2
\MBR[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(7),
	devoe => ww_devoe,
	o => ww_MBR(7));

-- Location: IOOBUF_X34_Y8_N16
\MBR[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(6),
	devoe => ww_devoe,
	o => ww_MBR(6));

-- Location: IOOBUF_X34_Y5_N23
\MBR[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(5),
	devoe => ww_devoe,
	o => ww_MBR(5));

-- Location: IOOBUF_X32_Y0_N2
\MBR[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(4),
	devoe => ww_devoe,
	o => ww_MBR(4));

-- Location: IOOBUF_X34_Y2_N16
\MBR[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(3),
	devoe => ww_devoe,
	o => ww_MBR(3));

-- Location: IOOBUF_X3_Y0_N2
\MBR[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(2),
	devoe => ww_devoe,
	o => ww_MBR(2));

-- Location: IOOBUF_X34_Y17_N16
\MBR[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(1),
	devoe => ww_devoe,
	o => ww_MBR(1));

-- Location: IOOBUF_X32_Y0_N16
\MBR[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(0),
	devoe => ww_devoe,
	o => ww_MBR(0));

-- Location: IOOBUF_X0_Y7_N2
\MBR_BUS_CONTROL[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	devoe => ww_devoe,
	o => ww_MBR_BUS_CONTROL(4));

-- Location: IOOBUF_X0_Y4_N23
\MBR_BUS_CONTROL[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(17),
	devoe => ww_devoe,
	o => ww_MBR_BUS_CONTROL(3));

-- Location: IOOBUF_X7_Y0_N2
\MBR_BUS_CONTROL[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(16),
	devoe => ww_devoe,
	o => ww_MBR_BUS_CONTROL(2));

-- Location: IOOBUF_X11_Y0_N9
\MBR_BUS_CONTROL[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15),
	devoe => ww_devoe,
	o => ww_MBR_BUS_CONTROL(1));

-- Location: IOOBUF_X5_Y24_N9
\MBR_BUS_CONTROL[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14),
	devoe => ww_devoe,
	o => ww_MBR_BUS_CONTROL(0));

-- Location: IOOBUF_X28_Y0_N23
\MEM[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	devoe => ww_devoe,
	o => ww_MEM(7));

-- Location: IOOBUF_X34_Y7_N16
\MEM[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	devoe => ww_devoe,
	o => ww_MEM(6));

-- Location: IOOBUF_X34_Y7_N23
\MEM[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	devoe => ww_devoe,
	o => ww_MEM(5));

-- Location: IOOBUF_X34_Y5_N16
\MEM[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	devoe => ww_devoe,
	o => ww_MEM(4));

-- Location: IOOBUF_X34_Y3_N16
\MEM[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	devoe => ww_devoe,
	o => ww_MEM(3));

-- Location: IOOBUF_X30_Y0_N23
\MEM[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	devoe => ww_devoe,
	o => ww_MEM(2));

-- Location: IOOBUF_X34_Y4_N23
\MEM[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	devoe => ww_devoe,
	o => ww_MEM(1));

-- Location: IOOBUF_X30_Y0_N2
\MEM[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	devoe => ww_devoe,
	o => ww_MEM(0));

-- Location: IOOBUF_X34_Y19_N2
\MEM_IN[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(7),
	devoe => ww_devoe,
	o => ww_MEM_IN(7));

-- Location: IOOBUF_X34_Y8_N9
\MEM_IN[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(6),
	devoe => ww_devoe,
	o => ww_MEM_IN(6));

-- Location: IOOBUF_X32_Y0_N23
\MEM_IN[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(5),
	devoe => ww_devoe,
	o => ww_MEM_IN(5));

-- Location: IOOBUF_X32_Y0_N9
\MEM_IN[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(4),
	devoe => ww_devoe,
	o => ww_MEM_IN(4));

-- Location: IOOBUF_X34_Y2_N23
\MEM_IN[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(3),
	devoe => ww_devoe,
	o => ww_MEM_IN(3));

-- Location: IOOBUF_X9_Y0_N23
\MEM_IN[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(2),
	devoe => ww_devoe,
	o => ww_MEM_IN(2));

-- Location: IOOBUF_X34_Y17_N23
\MEM_IN[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(1),
	devoe => ww_devoe,
	o => ww_MEM_IN(1));

-- Location: IOOBUF_X28_Y0_N16
\MEM_IN[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_REG\(0),
	devoe => ww_devoe,
	o => ww_MEM_IN(0));

-- Location: IOOBUF_X23_Y0_N9
\PC[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(7),
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X34_Y8_N23
\PC[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(6),
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X28_Y0_N9
\PC[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(5),
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X16_Y0_N16
\PC[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(4),
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X21_Y0_N16
\PC[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(3),
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X34_Y9_N2
\PC[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(2),
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X28_Y24_N23
\PC[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(1),
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X34_Y9_N9
\PC[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PC_OUT\(0),
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X32_Y24_N23
\PC_BUS_CONTROL[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(26),
	devoe => ww_devoe,
	o => ww_PC_BUS_CONTROL(3));

-- Location: IOOBUF_X11_Y24_N9
\PC_BUS_CONTROL[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	devoe => ww_devoe,
	o => ww_PC_BUS_CONTROL(2));

-- Location: IOOBUF_X5_Y24_N2
\PC_BUS_CONTROL[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	devoe => ww_devoe,
	o => ww_PC_BUS_CONTROL(1));

-- Location: IOOBUF_X18_Y24_N9
\PC_BUS_CONTROL[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	devoe => ww_devoe,
	o => ww_PC_BUS_CONTROL(0));

-- Location: IOOBUF_X25_Y0_N23
\BUS_CTX[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[7]~52_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(7));

-- Location: IOOBUF_X21_Y0_N2
\BUS_CTX[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[6]~32_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(6));

-- Location: IOOBUF_X18_Y0_N2
\BUS_CTX[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[5]~54_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(5));

-- Location: IOOBUF_X21_Y0_N23
\BUS_CTX[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[4]~55_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(4));

-- Location: IOOBUF_X21_Y0_N9
\BUS_CTX[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[3]~56_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(3));

-- Location: IOOBUF_X23_Y0_N16
\BUS_CTX[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[2]~57_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(2));

-- Location: IOOBUF_X18_Y0_N16
\BUS_CTX[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[1]~58_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(1));

-- Location: IOOBUF_X25_Y0_N16
\BUS_CTX[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bus_port[0]~51_combout\,
	oe => \inst|bus_port[7]~53_combout\,
	devoe => ww_devoe,
	o => BUS_CTX(0));

-- Location: IOOBUF_X0_Y12_N15
\altera_reserved_tdo~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y13_N22
\altera_reserved_tms~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\altera_reserved_tck~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\altera_reserved_tdi~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X13_Y15_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datad => VCC,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X13_Y15_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\);

-- Location: LCCOMB_X13_Y15_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\);

-- Location: LCCOMB_X13_Y15_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\);

-- Location: LCCOMB_X13_Y15_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\);

-- Location: LCCOMB_X13_Y15_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\);

-- Location: LCCOMB_X13_Y15_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\);

-- Location: LCCOMB_X13_Y15_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\);

-- Location: JTAG_X1_Y12_N0
altera_internal_jtag : cyclone10lp_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X14_Y16_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X14_Y16_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X14_Y16_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X14_Y16_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X14_Y16_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X14_Y16_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X14_Y16_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X14_Y16_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X14_Y16_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X14_Y16_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X14_Y16_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X14_Y16_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X14_Y16_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X14_Y16_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X14_Y16_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X18_Y14_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X18_Y14_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X18_Y14_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X18_Y14_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X18_Y14_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X18_Y14_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X18_Y14_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X18_Y14_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X17_Y15_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X17_Y15_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X11_Y15_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X11_Y15_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X11_Y15_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X11_Y15_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X11_Y15_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X11_Y15_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X14_Y16_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X14_Y16_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X14_Y16_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X14_Y16_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X14_Y16_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X14_Y16_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X14_Y16_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X14_Y16_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X17_Y16_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X17_Y16_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: LCCOMB_X17_Y16_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X17_Y16_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: FF_X17_Y16_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: FF_X17_Y16_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X17_Y16_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: FF_X17_Y16_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X17_Y16_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X17_Y16_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X17_Y16_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X17_Y16_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X17_Y16_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X17_Y16_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X17_Y16_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X17_Y16_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X17_Y16_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y16_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X17_Y16_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X16_Y16_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~6_combout\);

-- Location: LCCOMB_X16_Y16_N4
\~QIC_CREATED_GND~I\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X16_Y16_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~QIC_CREATED_GND~I_combout\,
	datab => \~QIC_CREATED_GND~I_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~4_combout\);

-- Location: LCCOMB_X18_Y14_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~5_combout\);

-- Location: LCCOMB_X16_Y16_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~7_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datad => VCC,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X16_Y16_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~8_combout\);

-- Location: FF_X16_Y16_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~8_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X17_Y15_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X17_Y14_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y14_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~8_combout\);

-- Location: LCCOMB_X17_Y14_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: LCCOMB_X17_Y14_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~4_combout\);

-- Location: FF_X17_Y14_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X17_Y12_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~11_combout\);

-- Location: LCCOMB_X17_Y15_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0_combout\);

-- Location: LCCOMB_X17_Y15_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~12_combout\);

-- Location: LCCOMB_X17_Y15_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\);

-- Location: FF_X17_Y12_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~q\);

-- Location: LCCOMB_X17_Y12_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~10_combout\);

-- Location: LCCOMB_X17_Y15_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X17_Y15_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~11_combout\);

-- Location: LCCOMB_X17_Y15_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\);

-- Location: FF_X17_Y12_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\);

-- Location: LCCOMB_X16_Y16_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X16_Y16_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~5_combout\);

-- Location: LCCOMB_X16_Y16_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~6_combout\);

-- Location: LCCOMB_X17_Y16_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X17_Y16_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X16_Y16_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X16_Y16_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~4_combout\);

-- Location: FF_X16_Y16_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3));

-- Location: LCCOMB_X21_Y12_N6
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\);

-- Location: LCCOMB_X21_Y12_N8
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\);

-- Location: LCCOMB_X21_Y12_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\);

-- Location: LCCOMB_X21_Y12_N12
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\);

-- Location: LCCOMB_X21_Y12_N14
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\);

-- Location: LCCOMB_X21_Y12_N16
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\);

-- Location: LCCOMB_X21_Y12_N18
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\);

-- Location: LCCOMB_X17_Y12_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~14_combout\);

-- Location: FF_X17_Y12_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~14_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][1]~q\);

-- Location: LCCOMB_X17_Y12_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][1]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~13_combout\);

-- Location: FF_X17_Y12_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\);

-- Location: LCCOMB_X17_Y12_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~15_combout\);

-- Location: FF_X17_Y12_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~15_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][2]~q\);

-- Location: LCCOMB_X17_Y12_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][2]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~14_combout\);

-- Location: FF_X17_Y12_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~14_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\);

-- Location: LCCOMB_X25_Y10_N0
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_1~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\);

-- Location: FF_X26_Y7_N25
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X26_Y7_N20
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\);

-- Location: FF_X26_Y7_N21
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X26_Y7_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\);

-- Location: FF_X26_Y7_N11
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCCOMB_X26_Y7_N18
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\);

-- Location: FF_X21_Y12_N19
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X21_Y12_N17
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X21_Y12_N15
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X21_Y12_N13
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X21_Y12_N11
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: FF_X21_Y12_N9
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: LCCOMB_X17_Y13_N4
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: FF_X17_Y13_N5
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X14_Y13_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~7_combout\);

-- Location: LCCOMB_X17_Y15_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~2_combout\);

-- Location: LCCOMB_X17_Y15_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\);

-- Location: FF_X16_Y15_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][4]~q\);

-- Location: LCCOMB_X16_Y15_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][4]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~6_combout\);

-- Location: LCCOMB_X17_Y15_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X17_Y15_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\);

-- Location: FF_X16_Y15_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: LCCOMB_X13_Y15_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: LCCOMB_X16_Y16_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X16_Y16_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: FF_X16_Y16_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X16_Y15_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~6_combout\);

-- Location: FF_X16_Y15_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][3]~q\);

-- Location: LCCOMB_X16_Y15_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][3]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~5_combout\);

-- Location: FF_X16_Y15_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X13_Y15_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: FF_X14_Y13_N5
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X17_Y14_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X17_Y14_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X16_Y13_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\);

-- Location: LCCOMB_X16_Y13_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X16_Y13_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X17_Y12_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~16\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~16_combout\);

-- Location: FF_X17_Y12_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~16_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][3]~q\);

-- Location: LCCOMB_X17_Y12_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][3]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~15_combout\);

-- Location: FF_X17_Y12_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~15_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\);

-- Location: LCCOMB_X21_Y12_N2
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\);

-- Location: FF_X21_Y12_N5
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: FF_X21_Y12_N7
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[2][0]~q\,
	sload => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: FF_X17_Y13_N3
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: FF_X14_Y13_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LCCOMB_X16_Y13_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\);

-- Location: FF_X16_Y13_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X17_Y14_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\);

-- Location: FF_X17_Y15_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X17_Y15_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: LCCOMB_X17_Y15_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~6_combout\);

-- Location: FF_X17_Y15_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X14_Y16_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X14_Y16_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X16_Y16_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[9]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9));

-- Location: LCCOMB_X16_Y16_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\);

-- Location: LCCOMB_X16_Y13_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: LCCOMB_X16_Y13_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\);

-- Location: FF_X14_Y13_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4));

-- Location: LCCOMB_X17_Y13_N16
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\);

-- Location: FF_X17_Y13_N17
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\,
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4));

-- Location: LCCOMB_X16_Y13_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~15_combout\);

-- Location: FF_X14_Y13_N11
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5));

-- Location: LCCOMB_X17_Y13_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\);

-- Location: FF_X17_Y13_N11
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\,
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5));

-- Location: LCCOMB_X16_Y13_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~16\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~16_combout\);

-- Location: LCCOMB_X14_Y13_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\);

-- Location: FF_X14_Y13_N13
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]~feeder_combout\,
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6));

-- Location: FF_X17_Y13_N29
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6));

-- Location: LCCOMB_X16_Y13_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~17_combout\);

-- Location: FF_X16_Y13_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~17_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: FF_X16_Y13_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~16_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: FF_X16_Y13_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~15_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X16_Y13_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: FF_X14_Y13_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: FF_X17_Y13_N23
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LCCOMB_X16_Y13_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~13_combout\);

-- Location: LCCOMB_X16_Y13_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~14_combout\);

-- Location: FF_X16_Y13_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~14_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X17_Y12_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~17_combout\);

-- Location: FF_X17_Y12_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~17_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][4]~q\);

-- Location: LCCOMB_X17_Y12_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~16\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][4]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~16_combout\);

-- Location: FF_X17_Y12_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~16_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]~q\);

-- Location: LCCOMB_X21_Y12_N26
\inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][4]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X21_Y12_N27
\inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LCCOMB_X13_Y15_N30
\inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X13_Y15_N31
\inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LCCOMB_X16_Y13_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: FF_X16_Y13_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X16_Y15_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~1_combout\);

-- Location: FF_X16_Y15_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~q\);

-- Location: LCCOMB_X16_Y15_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~0_combout\);

-- Location: FF_X16_Y15_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X13_Y15_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => VCC,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~1\);

-- Location: LCCOMB_X14_Y15_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\);

-- Location: LCCOMB_X16_Y15_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~4_combout\);

-- Location: FF_X16_Y15_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][1]~q\);

-- Location: LCCOMB_X16_Y15_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][1]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~3_combout\);

-- Location: FF_X16_Y15_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X14_Y15_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~5\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~7\);

-- Location: LCCOMB_X13_Y14_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~7\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~9\);

-- Location: LCCOMB_X14_Y14_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~8_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~5_combout\);

-- Location: FF_X13_Y14_N19
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4));

-- Location: LCCOMB_X13_Y14_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~9\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~3_combout\);

-- Location: FF_X13_Y14_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5));

-- Location: LCCOMB_X13_Y14_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\);

-- Location: LCCOMB_X13_Y14_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~4_combout\);

-- Location: FF_X13_Y14_N21
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X13_Y14_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~1\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~3\);

-- Location: LCCOMB_X13_Y14_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~7_combout\);

-- Location: FF_X13_Y14_N1
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X13_Y14_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~3\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~5\);

-- Location: LCCOMB_X13_Y14_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~4_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~6_combout\);

-- Location: FF_X13_Y14_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCCOMB_X13_Y14_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Add1~6_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~1_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~2_combout\);

-- Location: FF_X13_Y14_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3));

-- Location: LCCOMB_X13_Y14_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\);

-- Location: LCCOMB_X13_Y15_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\);

-- Location: LCCOMB_X13_Y15_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\);

-- Location: FF_X13_Y15_N15
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X13_Y15_N13
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X13_Y15_N11
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X13_Y15_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X13_Y15_N7
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: FF_X13_Y15_N5
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: FF_X13_Y15_N3
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: FF_X13_Y15_N1
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: LCCOMB_X14_Y13_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: FF_X14_Y13_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	clrn => \inst15|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X17_Y13_N24
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: FF_X17_Y13_N25
\inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	clrn => \inst8|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X16_Y13_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]~0_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X16_Y13_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X17_Y14_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X17_Y14_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X17_Y14_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X17_Y14_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~12_combout\);

-- Location: LCCOMB_X22_Y18_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X22_Y18_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: LCCOMB_X22_Y18_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: LCCOMB_X17_Y15_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\);

-- Location: FF_X22_Y18_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X22_Y18_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\);

-- Location: LCCOMB_X22_Y18_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\);

-- Location: FF_X22_Y18_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X22_Y18_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X22_Y18_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X22_Y18_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\);

-- Location: FF_X22_Y18_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: FF_X22_Y18_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X17_Y15_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: LCCOMB_X22_Y19_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\);

-- Location: FF_X22_Y19_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X22_Y19_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X22_Y19_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X22_Y19_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X22_Y19_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X22_Y19_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X22_Y19_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X22_Y19_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X22_Y19_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X22_Y18_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X22_Y19_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\);

-- Location: LCCOMB_X21_Y18_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\);

-- Location: LCCOMB_X22_Y19_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X22_Y19_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X22_Y18_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X22_Y18_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X21_Y18_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X22_Y19_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X22_Y19_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X22_Y18_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X21_Y18_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X21_Y18_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X22_Y18_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X22_Y18_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X22_Y18_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X22_Y19_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X22_Y19_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X21_Y18_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X21_Y18_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X21_Y18_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X21_Y18_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X21_Y18_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X21_Y18_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X21_Y18_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X17_Y14_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\);

-- Location: LCCOMB_X14_Y17_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X14_Y17_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\);

-- Location: LCCOMB_X14_Y17_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\);

-- Location: LCCOMB_X14_Y18_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X14_Y18_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\);

-- Location: FF_X14_Y17_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X14_Y17_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X14_Y17_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X14_Y17_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~13_combout\);

-- Location: LCCOMB_X14_Y17_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\);

-- Location: FF_X14_Y17_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X14_Y17_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~15\);

-- Location: FF_X14_Y17_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X14_Y17_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~22_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X14_Y17_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X14_Y17_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X14_Y17_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X14_Y17_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X14_Y18_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\);

-- Location: FF_X14_Y17_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X14_Y17_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: FF_X14_Y17_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X14_Y17_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: FF_X14_Y17_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X14_Y17_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X14_Y17_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X14_Y17_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: FF_X14_Y17_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X18_Y14_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X18_Y14_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X18_Y14_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X18_Y14_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X18_Y14_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X18_Y14_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X18_Y14_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X18_Y14_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X18_Y14_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\);

-- Location: LCCOMB_X17_Y14_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal11~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~10_combout\);

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

-- Location: IOIBUF_X21_Y0_N22
\BUS_CTX[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(4),
	o => \BUS_CTX[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\BUS_CTX[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(5),
	o => \BUS_CTX[5]~input_o\);

-- Location: LCCOMB_X24_Y7_N20
\inst|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(5) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[5]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(5),
	combout => \inst|output\(5));

-- Location: FF_X24_Y7_N21
\inst1|ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(5));

-- Location: LCCOMB_X18_Y15_N28
\inst13|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst1|ir_reg\(5) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[1]~3_combout\,
	datac => \inst1|ir_reg\(5),
	datad => \inst14|LOOP_BACK[3]~1_combout\,
	combout => \inst13|Add0~2_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst13|CADDR[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[0]~8_combout\ = (\inst13|Add0~7_combout\ & (\inst13|CADDR\(0) $ (VCC))) # (!\inst13|Add0~7_combout\ & (\inst13|CADDR\(0) & VCC))
-- \inst13|CADDR[0]~9\ = CARRY((\inst13|Add0~7_combout\ & \inst13|CADDR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~7_combout\,
	datab => \inst13|CADDR\(0),
	datad => VCC,
	combout => \inst13|CADDR[0]~8_combout\,
	cout => \inst13|CADDR[0]~9\);

-- Location: LCCOMB_X18_Y15_N6
\inst13|CADDR[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[1]~10_combout\ = (\inst13|CADDR\(1) & ((\inst13|Add0~6_combout\ & (\inst13|CADDR[0]~9\ & VCC)) # (!\inst13|Add0~6_combout\ & (!\inst13|CADDR[0]~9\)))) # (!\inst13|CADDR\(1) & ((\inst13|Add0~6_combout\ & (!\inst13|CADDR[0]~9\)) # 
-- (!\inst13|Add0~6_combout\ & ((\inst13|CADDR[0]~9\) # (GND)))))
-- \inst13|CADDR[1]~11\ = CARRY((\inst13|CADDR\(1) & (!\inst13|Add0~6_combout\ & !\inst13|CADDR[0]~9\)) # (!\inst13|CADDR\(1) & ((!\inst13|CADDR[0]~9\) # (!\inst13|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|CADDR\(1),
	datab => \inst13|Add0~6_combout\,
	datad => VCC,
	cin => \inst13|CADDR[0]~9\,
	combout => \inst13|CADDR[1]~10_combout\,
	cout => \inst13|CADDR[1]~11\);

-- Location: LCCOMB_X18_Y15_N8
\inst13|CADDR[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[2]~12_combout\ = ((\inst13|Add0~5_combout\ $ (\inst13|CADDR\(2) $ (!\inst13|CADDR[1]~11\)))) # (GND)
-- \inst13|CADDR[2]~13\ = CARRY((\inst13|Add0~5_combout\ & ((\inst13|CADDR\(2)) # (!\inst13|CADDR[1]~11\))) # (!\inst13|Add0~5_combout\ & (\inst13|CADDR\(2) & !\inst13|CADDR[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~5_combout\,
	datab => \inst13|CADDR\(2),
	datad => VCC,
	cin => \inst13|CADDR[1]~11\,
	combout => \inst13|CADDR[2]~12_combout\,
	cout => \inst13|CADDR[2]~13\);

-- Location: LCCOMB_X18_Y15_N10
\inst13|CADDR[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[3]~14_combout\ = (\inst13|CADDR\(3) & ((\inst13|Add0~4_combout\ & (\inst13|CADDR[2]~13\ & VCC)) # (!\inst13|Add0~4_combout\ & (!\inst13|CADDR[2]~13\)))) # (!\inst13|CADDR\(3) & ((\inst13|Add0~4_combout\ & (!\inst13|CADDR[2]~13\)) # 
-- (!\inst13|Add0~4_combout\ & ((\inst13|CADDR[2]~13\) # (GND)))))
-- \inst13|CADDR[3]~15\ = CARRY((\inst13|CADDR\(3) & (!\inst13|Add0~4_combout\ & !\inst13|CADDR[2]~13\)) # (!\inst13|CADDR\(3) & ((!\inst13|CADDR[2]~13\) # (!\inst13|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|CADDR\(3),
	datab => \inst13|Add0~4_combout\,
	datad => VCC,
	cin => \inst13|CADDR[2]~13\,
	combout => \inst13|CADDR[3]~14_combout\,
	cout => \inst13|CADDR[3]~15\);

-- Location: LCCOMB_X18_Y15_N12
\inst13|CADDR[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[4]~16_combout\ = ((\inst13|Add0~3_combout\ $ (\inst13|CADDR\(4) $ (!\inst13|CADDR[3]~15\)))) # (GND)
-- \inst13|CADDR[4]~17\ = CARRY((\inst13|Add0~3_combout\ & ((\inst13|CADDR\(4)) # (!\inst13|CADDR[3]~15\))) # (!\inst13|Add0~3_combout\ & (\inst13|CADDR\(4) & !\inst13|CADDR[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~3_combout\,
	datab => \inst13|CADDR\(4),
	datad => VCC,
	cin => \inst13|CADDR[3]~15\,
	combout => \inst13|CADDR[4]~16_combout\,
	cout => \inst13|CADDR[4]~17\);

-- Location: LCCOMB_X18_Y15_N14
\inst13|CADDR[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[5]~18_combout\ = (\inst13|CADDR\(5) & ((\inst13|Add0~2_combout\ & (\inst13|CADDR[4]~17\ & VCC)) # (!\inst13|Add0~2_combout\ & (!\inst13|CADDR[4]~17\)))) # (!\inst13|CADDR\(5) & ((\inst13|Add0~2_combout\ & (!\inst13|CADDR[4]~17\)) # 
-- (!\inst13|Add0~2_combout\ & ((\inst13|CADDR[4]~17\) # (GND)))))
-- \inst13|CADDR[5]~19\ = CARRY((\inst13|CADDR\(5) & (!\inst13|Add0~2_combout\ & !\inst13|CADDR[4]~17\)) # (!\inst13|CADDR\(5) & ((!\inst13|CADDR[4]~17\) # (!\inst13|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|CADDR\(5),
	datab => \inst13|Add0~2_combout\,
	datad => VCC,
	cin => \inst13|CADDR[4]~17\,
	combout => \inst13|CADDR[5]~18_combout\,
	cout => \inst13|CADDR[5]~19\);

-- Location: IOIBUF_X21_Y0_N1
\BUS_CTX[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(6),
	o => \BUS_CTX[6]~input_o\);

-- Location: LCCOMB_X24_Y7_N2
\inst|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(6) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[6]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(6),
	combout => \inst|output\(6));

-- Location: FF_X24_Y7_N3
\inst1|ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(6));

-- Location: LCCOMB_X18_Y15_N26
\inst13|Add0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~1_combout\ = (\inst1|ir_reg\(6) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(6),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~1_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst13|CADDR[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[6]~20_combout\ = ((\inst13|Add0~1_combout\ $ (\inst13|CADDR\(6) $ (!\inst13|CADDR[5]~19\)))) # (GND)
-- \inst13|CADDR[6]~21\ = CARRY((\inst13|Add0~1_combout\ & ((\inst13|CADDR\(6)) # (!\inst13|CADDR[5]~19\))) # (!\inst13|Add0~1_combout\ & (\inst13|CADDR\(6) & !\inst13|CADDR[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~1_combout\,
	datab => \inst13|CADDR\(6),
	datad => VCC,
	cin => \inst13|CADDR[5]~19\,
	combout => \inst13|CADDR[6]~20_combout\,
	cout => \inst13|CADDR[6]~21\);

-- Location: IOIBUF_X25_Y0_N22
\BUS_CTX[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(7),
	o => \BUS_CTX[7]~input_o\);

-- Location: LCCOMB_X24_Y7_N24
\inst|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(7) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(7),
	combout => \inst|output\(7));

-- Location: FF_X24_Y7_N25
\inst1|ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(7));

-- Location: LCCOMB_X18_Y15_N24
\inst13|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = (\inst1|ir_reg\(7) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(7),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst13|CADDR[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[7]~22_combout\ = \inst13|CADDR\(7) $ (\inst13|CADDR[6]~21\ $ (\inst13|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|CADDR\(7),
	datad => \inst13|Add0~0_combout\,
	cin => \inst13|CADDR[6]~21\,
	combout => \inst13|CADDR[7]~22_combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\);

-- Location: LCCOMB_X12_Y15_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: M9K_X15_Y11_N0
\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828180226018040600040021800040000000000020A060089806010180000009850060400000261401810000009850060400000261401810000009850060400000261401",
	mem_init0 => X"8100A0060809800070609816010180000009850060402801820260001C182605804060000002614018100A0060809800070609816010180000009850060402801820260001C182605804060000002614018100A0060809800070609816010180000009850060402801820260001C18260580406000000200000034800C20001C18260580406000051A00660001C1826058040600000000000000000000000000000000000000000000000800000000800000000800000000800000000800000000800000000800021826058040000800000000800000000800000000800000000800000000800000000800000000800000000800020000000981826058040600",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst15|altsyncram:altsyncram_component|altsyncram_5kt3:auto_generated|altsyncram_q4u2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 42,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 42,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\,
	portbdatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\,
	portaaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\,
	portbaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\,
	portbdataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y11_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(31),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(32),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\);

-- Location: LCCOMB_X14_Y15_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\);

-- Location: FF_X16_Y11_N7
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31));

-- Location: LCCOMB_X16_Y11_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(30),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\);

-- Location: FF_X16_Y11_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~20_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30));

-- Location: LCCOMB_X16_Y11_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(29),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\);

-- Location: FF_X16_Y11_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~21_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29));

-- Location: LCCOMB_X16_Y11_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(28),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\);

-- Location: FF_X16_Y11_N29
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~22_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28));

-- Location: LCCOMB_X16_Y11_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(27),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\);

-- Location: FF_X16_Y11_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~23_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27));

-- Location: LCCOMB_X16_Y11_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(26),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\);

-- Location: FF_X16_Y11_N1
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~24_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26));

-- Location: LCCOMB_X16_Y11_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(25),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\);

-- Location: FF_X16_Y11_N3
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~25_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25));

-- Location: LCCOMB_X16_Y11_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(24),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\);

-- Location: FF_X16_Y11_N13
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~26_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24));

-- Location: LCCOMB_X16_Y11_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(23),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\);

-- Location: FF_X16_Y11_N15
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~27_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23));

-- Location: LCCOMB_X16_Y11_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(22),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\);

-- Location: FF_X16_Y11_N17
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~28_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22));

-- Location: LCCOMB_X16_Y11_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(21),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\);

-- Location: FF_X16_Y11_N19
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~29_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21));

-- Location: LCCOMB_X16_Y11_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(20),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\);

-- Location: FF_X16_Y11_N5
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~30_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20));

-- Location: LCCOMB_X16_Y11_N30
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(18),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\);

-- Location: FF_X16_Y11_N31
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~31_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

-- Location: LCCOMB_X16_Y14_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(17),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\);

-- Location: FF_X16_Y14_N21
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17));

-- Location: LCCOMB_X16_Y14_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(16),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\);

-- Location: FF_X16_Y14_N15
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16));

-- Location: LCCOMB_X16_Y14_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(15),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\);

-- Location: FF_X16_Y14_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15));

-- Location: LCCOMB_X16_Y14_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(14),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\);

-- Location: FF_X16_Y14_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14));

-- Location: LCCOMB_X16_Y14_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(13),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\);

-- Location: FF_X16_Y14_N29
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

-- Location: M9K_X15_Y14_N0
\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000080000000000000000000000000000000000080002000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000008000200008000200000000000000000000000000200008000200008000000000000000000000000008000200008000200000000000000000000000000200008000200008000000000000000000000000008000200008000200000000000000000000000000200008000200008000000000000000000000200008000200008000000000000200008000200008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000140001000200008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst15|altsyncram:altsyncram_component|altsyncram_5kt3:auto_generated|altsyncram_q4u2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 42,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 42,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\,
	portbdatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\,
	portaaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\,
	portbaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\,
	portbdataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y14_N30
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(12),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\);

-- Location: FF_X16_Y14_N31
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12));

-- Location: LCCOMB_X16_Y14_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(11),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\);

-- Location: FF_X16_Y14_N17
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11));

-- Location: LCCOMB_X16_Y14_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(10),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\);

-- Location: FF_X16_Y14_N3
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10));

-- Location: LCCOMB_X16_Y14_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(9),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\);

-- Location: FF_X16_Y14_N13
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9));

-- Location: LCCOMB_X16_Y14_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(8),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\);

-- Location: FF_X16_Y14_N7
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

-- Location: LCCOMB_X14_Y15_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(41),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\);

-- Location: FF_X14_Y15_N7
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(41));

-- Location: M9K_X15_Y15_N0
\inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000040001000040001000000001000188C010000000010000400010000400000024400010000000810000400000018400010000000F100004000000384000100000007",
	mem_init0 => X"1000040001000040001000040001000040000001440001000040001000040001000040001000000041000040001000040001000040001000040000000C400010000400010000400010000400010000000210000400010000400010000400010000400000004400010000400010000400010000400010000100010000400010000400010000400010000000010000400010000400000000000000000000000000000000000000000000400000900400002000400001F40400001AC0400001E804000018804000016400010100004000022004000020C0400001DC0400001D004000014004000011C0400000F80400000D80400000C00000008000400010000400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst15|altsyncram:altsyncram_component|altsyncram_5kt3:auto_generated|altsyncram_q4u2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 42,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 42,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \inst15|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(41),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(40),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\);

-- Location: FF_X14_Y15_N13
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(40));

-- Location: LCCOMB_X14_Y15_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(39),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(40),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\);

-- Location: FF_X14_Y15_N15
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(39));

-- Location: LCCOMB_X14_Y15_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(38),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(39),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\);

-- Location: FF_X14_Y15_N1
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(38));

-- Location: LCCOMB_X14_Y15_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(37),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(38),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\);

-- Location: FF_X14_Y15_N3
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(37));

-- Location: LCCOMB_X14_Y15_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(36),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(37),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\);

-- Location: FF_X14_Y15_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~16_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(36));

-- Location: LCCOMB_X14_Y15_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(36),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(35),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\);

-- Location: FF_X14_Y15_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~17_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(35));

-- Location: LCCOMB_X14_Y15_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(35),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(34),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\);

-- Location: FF_X14_Y15_N5
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~15_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(34));

-- Location: LCCOMB_X16_Y11_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(34),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(33),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\);

-- Location: FF_X16_Y11_N11
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~14_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(33));

-- Location: LCCOMB_X16_Y11_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(32),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(33),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\);

-- Location: FF_X16_Y11_N21
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~18_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(32));

-- Location: LCCOMB_X16_Y11_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(19),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\);

-- Location: FF_X16_Y11_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19));

-- Location: LCCOMB_X16_Y14_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\);

-- Location: FF_X16_Y14_N1
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X16_Y14_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\);

-- Location: FF_X16_Y14_N11
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X16_Y14_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\);

-- Location: FF_X16_Y14_N5
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~9_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X16_Y14_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\);

-- Location: FF_X16_Y14_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~10_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X16_Y14_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\);

-- Location: FF_X16_Y14_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~11_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X16_Y14_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\);

-- Location: FF_X16_Y14_N19
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~12_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X12_Y15_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\);

-- Location: FF_X12_Y15_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~13_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: IOIBUF_X0_Y11_N8
\RST~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y15_N14
\inst14|LOOP_BACK[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst14|LOOP_BACK[2]~2_combout\ = (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(32),
	combout => \inst14|LOOP_BACK[2]~2_combout\);

-- Location: LCCOMB_X19_Y15_N18
\inst14|LOOP_BACK[0]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst14|LOOP_BACK[0]~4_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(30) & !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(30),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34),
	combout => \inst14|LOOP_BACK[0]~4_combout\);

-- Location: LCCOMB_X19_Y15_N8
\inst13|CADDR~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR~24_combout\ = (\inst14|LOOP_BACK[1]~3_combout\) # ((\inst14|LOOP_BACK[0]~4_combout\) # (\inst14|LOOP_BACK[2]~2_combout\ $ (!\inst14|LOOP_BACK[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LOOP_BACK[2]~2_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst14|LOOP_BACK[1]~3_combout\,
	datad => \inst14|LOOP_BACK[0]~4_combout\,
	combout => \inst13|CADDR~24_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst13|CADDR[5]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|CADDR[5]~25_combout\ = (!\inst14|LOOP_BACK[0]~4_combout\ & ((\inst14|LOOP_BACK[2]~2_combout\ & (!\inst14|LOOP_BACK[3]~1_combout\ & !\inst14|LOOP_BACK[1]~3_combout\)) # (!\inst14|LOOP_BACK[2]~2_combout\ & (\inst14|LOOP_BACK[3]~1_combout\ $ 
-- (\inst14|LOOP_BACK[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LOOP_BACK[2]~2_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst14|LOOP_BACK[1]~3_combout\,
	datad => \inst14|LOOP_BACK[0]~4_combout\,
	combout => \inst13|CADDR[5]~25_combout\);

-- Location: FF_X18_Y15_N19
\inst13|CADDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[7]~22_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(7));

-- Location: FF_X18_Y15_N17
\inst13|CADDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[6]~20_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(6));

-- Location: FF_X18_Y15_N15
\inst13|CADDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[5]~18_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(5));

-- Location: LCCOMB_X23_Y8_N8
\inst|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	combout => \inst|output[7]~0_combout\);

-- Location: CLKCTRL_G7
\inst|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y8_N16
\inst|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(4) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[4]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(4),
	combout => \inst|output\(4));

-- Location: FF_X22_Y8_N17
\inst1|ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(4));

-- Location: LCCOMB_X18_Y15_N30
\inst13|Add0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~3_combout\ = (\inst1|ir_reg\(4) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(4),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~3_combout\);

-- Location: FF_X18_Y15_N13
\inst13|CADDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[4]~16_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(4));

-- Location: IOIBUF_X21_Y0_N8
\BUS_CTX[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(3),
	o => \BUS_CTX[3]~input_o\);

-- Location: LCCOMB_X22_Y8_N18
\inst|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(3) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[3]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(3),
	combout => \inst|output\(3));

-- Location: FF_X22_Y8_N19
\inst1|ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(3));

-- Location: LCCOMB_X18_Y15_N0
\inst13|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst1|ir_reg\(3) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(3),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~4_combout\);

-- Location: FF_X18_Y15_N11
\inst13|CADDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[3]~14_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(3));

-- Location: LCCOMB_X19_Y7_N22
\inst11|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output[7]~0_combout\ = (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20),
	combout => \inst11|output[7]~0_combout\);

-- Location: CLKCTRL_G1
\inst11|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y9_N22
\inst11|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(7) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst11|output\(7),
	datad => \inst11|output[7]~0clkctrl_outclk\,
	combout => \inst11|output\(7));

-- Location: FF_X19_Y9_N17
\inst12|acc_reg[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	asdata => \inst11|output\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y8_N22
\inst11|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(6) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[6]~input_o\,
	datac => \inst11|output\(6),
	datad => \inst11|output[7]~0clkctrl_outclk\,
	combout => \inst11|output\(6));

-- Location: FF_X17_Y8_N23
\inst12|acc_reg[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst11|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y8_N16
\inst11|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(5) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[5]~input_o\,
	datac => \inst11|output[7]~0clkctrl_outclk\,
	datad => \inst11|output\(5),
	combout => \inst11|output\(5));

-- Location: LCCOMB_X21_Y8_N4
\inst12|acc_reg[5]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|acc_reg[5]~_Duplicate_1feeder_combout\ = \inst11|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|output\(5),
	combout => \inst12|acc_reg[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y8_N5
\inst12|acc_reg[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst12|acc_reg[5]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y8_N20
\inst11|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(4) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[4]~input_o\,
	datac => \inst11|output[7]~0clkctrl_outclk\,
	datad => \inst11|output\(4),
	combout => \inst11|output\(4));

-- Location: FF_X17_Y8_N21
\inst12|acc_reg[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst11|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X14_Y11_N8
\inst12|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|Equal0~1_combout\ = (!\inst12|acc_reg[7]~_Duplicate_1_q\ & (!\inst12|acc_reg[6]~_Duplicate_1_q\ & (!\inst12|acc_reg[5]~_Duplicate_1_q\ & !\inst12|acc_reg[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datab => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datac => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datad => \inst12|acc_reg[4]~_Duplicate_1_q\,
	combout => \inst12|Equal0~1_combout\);

-- Location: IOIBUF_X18_Y0_N15
\BUS_CTX[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(1),
	o => \BUS_CTX[1]~input_o\);

-- Location: LCCOMB_X17_Y8_N16
\inst11|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(1) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[1]~input_o\,
	datac => \inst11|output[7]~0clkctrl_outclk\,
	datad => \inst11|output\(1),
	combout => \inst11|output\(1));

-- Location: FF_X17_Y8_N17
\inst12|acc_reg[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst11|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[1]~_Duplicate_1_q\);

-- Location: IOIBUF_X25_Y0_N15
\BUS_CTX[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(0),
	o => \BUS_CTX[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N20
\inst11|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(0) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[0]~input_o\,
	datac => \inst11|output[7]~0clkctrl_outclk\,
	datad => \inst11|output\(0),
	combout => \inst11|output\(0));

-- Location: LCCOMB_X21_Y8_N8
\inst12|acc_reg[0]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|acc_reg[0]~_Duplicate_1feeder_combout\ = \inst11|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|output\(0),
	combout => \inst12|acc_reg[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y8_N9
\inst12|acc_reg[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst12|acc_reg[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X23_Y0_N15
\BUS_CTX[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BUS_CTX(2),
	o => \BUS_CTX[2]~input_o\);

-- Location: LCCOMB_X21_Y8_N6
\inst11|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(2) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[2]~input_o\,
	datac => \inst11|output[7]~0clkctrl_outclk\,
	datad => \inst11|output\(2),
	combout => \inst11|output\(2));

-- Location: LCCOMB_X21_Y8_N26
\inst12|acc_reg[2]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|acc_reg[2]~_Duplicate_1feeder_combout\ = \inst11|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|output\(2),
	combout => \inst12|acc_reg[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y8_N27
\inst12|acc_reg[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst12|acc_reg[2]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y8_N26
\inst11|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|output\(3) = (GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst11|output[7]~0clkctrl_outclk\) & ((\inst11|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[3]~input_o\,
	datac => \inst11|output\(3),
	datad => \inst11|output[7]~0clkctrl_outclk\,
	combout => \inst11|output\(3));

-- Location: FF_X17_Y8_N27
\inst12|acc_reg[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	d => \inst11|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|acc_reg[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y8_N16
\inst12|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|Equal0~0_combout\ = (!\inst12|acc_reg[1]~_Duplicate_1_q\ & (!\inst12|acc_reg[0]~_Duplicate_1_q\ & (!\inst12|acc_reg[2]~_Duplicate_1_q\ & !\inst12|acc_reg[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datab => \inst12|acc_reg[0]~_Duplicate_1_q\,
	datac => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datad => \inst12|acc_reg[3]~_Duplicate_1_q\,
	combout => \inst12|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst14|LOOP_BACK~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst14|LOOP_BACK~0_combout\ = (\inst12|Equal0~1_combout\ & ((\inst12|Equal0~0_combout\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(36)))) # (!\inst12|Equal0~0_combout\ & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(35))))) # (!\inst12|Equal0~1_combout\ & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~1_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(35),
	datac => \inst12|Equal0~0_combout\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(36),
	combout => \inst14|LOOP_BACK~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst14|LOOP_BACK[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst14|LOOP_BACK[3]~1_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) & ((!\inst14|LOOP_BACK~0_combout\))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(33),
	datad => \inst14|LOOP_BACK~0_combout\,
	combout => \inst14|LOOP_BACK[3]~1_combout\);

-- Location: LCCOMB_X19_Y6_N0
\inst|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(2) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[2]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(2),
	combout => \inst|output\(2));

-- Location: FF_X19_Y6_N1
\inst1|ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(2));

-- Location: LCCOMB_X18_Y15_N2
\inst13|Add0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~5_combout\ = (\inst1|ir_reg\(2) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(2),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~5_combout\);

-- Location: FF_X18_Y15_N9
\inst13|CADDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[2]~12_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(2));

-- Location: LCCOMB_X19_Y15_N4
\inst13|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34)) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(30) & !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(30),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(32),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y6_N10
\inst|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(1) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[1]~input_o\,
	datac => \inst|output[7]~0clkctrl_outclk\,
	datad => \inst|output\(1),
	combout => \inst|output\(1));

-- Location: FF_X19_Y6_N11
\inst1|ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(1));

-- Location: LCCOMB_X18_Y15_N20
\inst13|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst1|ir_reg\(1) & (((\inst14|LOOP_BACK[1]~3_combout\) # (!\inst14|LOOP_BACK[3]~1_combout\)) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst14|LOOP_BACK[3]~1_combout\,
	datac => \inst1|ir_reg\(1),
	datad => \inst14|LOOP_BACK[1]~3_combout\,
	combout => \inst13|Add0~6_combout\);

-- Location: FF_X18_Y15_N7
\inst13|CADDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[1]~10_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(1));

-- Location: LCCOMB_X19_Y15_N24
\inst14|LOOP_BACK[1]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst14|LOOP_BACK[1]~3_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) & ((\inst14|LOOP_BACK~0_combout\))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(31),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(34),
	datad => \inst14|LOOP_BACK~0_combout\,
	combout => \inst14|LOOP_BACK[1]~3_combout\);

-- Location: LCCOMB_X24_Y7_N22
\inst|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|output\(0) = (GLOBAL(\inst|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst|output[7]~0clkctrl_outclk\) & ((\inst|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~0clkctrl_outclk\,
	datab => \BUS_CTX[0]~input_o\,
	datac => \inst|output\(0),
	combout => \inst|output\(0));

-- Location: FF_X24_Y7_N23
\inst1|ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(10),
	d => \inst|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reg\(0));

-- Location: LCCOMB_X19_Y15_N6
\inst13|Add0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst13|Add0~7_combout\ = (\inst1|ir_reg\(0)) # ((!\inst14|LOOP_BACK[1]~3_combout\ & (\inst13|Equal0~0_combout\ & \inst14|LOOP_BACK[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LOOP_BACK[1]~3_combout\,
	datab => \inst1|ir_reg\(0),
	datac => \inst13|Equal0~0_combout\,
	datad => \inst14|LOOP_BACK[3]~1_combout\,
	combout => \inst13|Add0~7_combout\);

-- Location: FF_X18_Y15_N5
\inst13|CADDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CADDR[0]~8_combout\,
	asdata => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst13|CADDR~24_combout\,
	ena => \inst13|CADDR[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CADDR\(0));

-- Location: LCCOMB_X14_Y15_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\);

-- Location: FF_X14_Y15_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LCCOMB_X14_Y15_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X14_Y15_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: LCCOMB_X16_Y15_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~8_combout\);

-- Location: FF_X16_Y15_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~8_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][5]~q\);

-- Location: LCCOMB_X16_Y15_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][5]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~7_combout\);

-- Location: FF_X16_Y15_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X14_Y15_N30
\inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\);

-- Location: LCCOMB_X12_Y16_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\);

-- Location: LCCOMB_X12_Y16_N24
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\);

-- Location: LCCOMB_X13_Y16_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X13_Y16_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\);

-- Location: FF_X12_Y16_N25
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	sclr => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X12_Y16_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~13_combout\,
	cout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~14\);

-- Location: FF_X12_Y16_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~13_combout\,
	sclr => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X12_Y16_N28
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~14\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~15_combout\);

-- Location: FF_X12_Y16_N29
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~15_combout\,
	sclr => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCCOMB_X12_Y16_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~17_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~17_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\);

-- Location: FF_X12_Y16_N21
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	sclr => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: FF_X12_Y16_N23
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	sclr => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~19_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X12_Y16_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X12_Y16_N14
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X13_Y16_N4
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X12_Y16_N0
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\);

-- Location: LCCOMB_X13_Y16_N22
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\);

-- Location: FF_X13_Y16_N7
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X13_Y16_N10
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\);

-- Location: FF_X13_Y16_N11
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X13_Y16_N26
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: FF_X13_Y16_N27
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X13_Y16_N8
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: FF_X13_Y16_N9
\inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	ena => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X14_Y15_N16
\inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\,
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\);

-- Location: LCCOMB_X16_Y17_N12
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X17_Y17_N16
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\);

-- Location: LCCOMB_X17_Y17_N28
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~13_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~13_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\);

-- Location: LCCOMB_X16_Y13_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\);

-- Location: LCCOMB_X16_Y17_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\);

-- Location: FF_X17_Y17_N17
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	sclr => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCCOMB_X17_Y17_N18
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\);

-- Location: FF_X17_Y17_N19
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	sclr => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X17_Y17_N20
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\);

-- Location: FF_X17_Y17_N21
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	sclr => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X17_Y17_N22
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	cout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\);

-- Location: FF_X17_Y17_N23
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	sclr => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X17_Y17_N24
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\);

-- Location: FF_X17_Y17_N25
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\,
	sclr => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~19_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCCOMB_X17_Y17_N12
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\);

-- Location: LCCOMB_X16_Y17_N4
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X16_Y17_N14
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\);

-- Location: FF_X16_Y17_N5
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X17_Y17_N30
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X17_Y17_N26
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X16_Y17_N24
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: FF_X16_Y17_N25
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X17_Y17_N0
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X17_Y17_N2
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: FF_X16_Y17_N27
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X17_Y17_N10
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\);

-- Location: LCCOMB_X17_Y17_N4
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~13_combout\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\);

-- Location: LCCOMB_X16_Y17_N8
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~14_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: FF_X16_Y17_N9
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X17_Y12_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~18\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][5]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~18_combout\);

-- Location: FF_X17_Y12_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~18_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][5]~q\);

-- Location: LCCOMB_X17_Y12_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~17\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[2][5]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~17_combout\);

-- Location: FF_X17_Y12_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~17_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][5]~q\);

-- Location: LCCOMB_X21_Y12_N24
\inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X21_Y12_N25
\inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: LCCOMB_X21_Y12_N30
\inst8|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_1\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][2]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LCCOMB_X24_Y5_N0
\inst7|MBR_REG[7]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[7]~1_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(17)) # (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(17),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	combout => \inst7|MBR_REG[7]~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst6|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14) & !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15),
	combout => \inst6|output[7]~0_combout\);

-- Location: CLKCTRL_G5
\inst6|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y7_N6
\inst6|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(0) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[0]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(0),
	combout => \inst6|output\(0));

-- Location: LCCOMB_X22_Y12_N0
\inst5|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output[7]~0_combout\ = (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11),
	combout => \inst5|output[7]~0_combout\);

-- Location: CLKCTRL_G9
\inst5|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y5_N30
\inst5|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(0) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[0]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(0),
	combout => \inst5|output\(0));

-- Location: FF_X23_Y5_N31
\inst4|MAR_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(0));

-- Location: LCCOMB_X23_Y5_N20
\inst5|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(1) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[1]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(1),
	combout => \inst5|output\(1));

-- Location: FF_X23_Y5_N21
\inst4|MAR_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(1));

-- Location: LCCOMB_X23_Y5_N2
\inst5|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(2) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[2]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(2),
	combout => \inst5|output\(2));

-- Location: FF_X23_Y5_N3
\inst4|MAR_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(2));

-- Location: LCCOMB_X23_Y5_N0
\inst5|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(3) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[3]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(3),
	combout => \inst5|output\(3));

-- Location: FF_X23_Y5_N1
\inst4|MAR_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(3));

-- Location: LCCOMB_X23_Y5_N22
\inst5|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(4) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[4]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(4),
	combout => \inst5|output\(4));

-- Location: FF_X23_Y5_N23
\inst4|MAR_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(4));

-- Location: LCCOMB_X23_Y5_N28
\inst5|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(5) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[5]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(5),
	combout => \inst5|output\(5));

-- Location: FF_X23_Y5_N29
\inst4|MAR_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(5));

-- Location: LCCOMB_X23_Y5_N18
\inst5|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(6) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[6]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(6),
	combout => \inst5|output\(6));

-- Location: FF_X23_Y5_N19
\inst4|MAR_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(6));

-- Location: LCCOMB_X23_Y5_N16
\inst5|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|output\(7) = (GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst5|output[7]~0clkctrl_outclk\) & ((\inst5|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst5|output[7]~0clkctrl_outclk\,
	datad => \inst5|output\(7),
	combout => \inst5|output\(7));

-- Location: FF_X23_Y5_N17
\inst4|MAR_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(13),
	d => \inst5|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MAR_REG\(7));

-- Location: LCCOMB_X23_Y5_N26
\inst6|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(1) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[1]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(1),
	combout => \inst6|output\(1));

-- Location: LCCOMB_X24_Y5_N28
\inst6|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(2) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[2]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(2),
	combout => \inst6|output\(2));

-- Location: LCCOMB_X24_Y5_N18
\inst6|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(3) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[3]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(3),
	combout => \inst6|output\(3));

-- Location: LCCOMB_X23_Y5_N24
\inst6|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(4) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[4]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(4),
	combout => \inst6|output\(4));

-- Location: LCCOMB_X24_Y7_N12
\inst6|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(5) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[5]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(5),
	combout => \inst6|output\(5));

-- Location: LCCOMB_X24_Y7_N10
\inst6|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(6) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[6]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(6),
	combout => \inst6|output\(6));

-- Location: LCCOMB_X24_Y7_N0
\inst6|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|output\(7) = (GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst6|output[7]~0clkctrl_outclk\) & ((\inst6|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst6|output[7]~0clkctrl_outclk\,
	datad => \inst6|output\(7),
	combout => \inst6|output\(7));

-- Location: LCCOMB_X26_Y7_N30
\inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][1]~q\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: M9K_X27_Y7_N0
\inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF0000000000000000000000000000000000640000000000000000000000000000019000000000000000000000000000000000000000000000000000000000000000000000000000B30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028C00030028400010029000030028000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008400A00000400080004400A30000C000D0028C00010028000030028C00050028000010028C0003002840001002900003002800001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:inst8|altsyncram:altsyncram_component|altsyncram_hlt3:auto_generated|altsyncram_i2r2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(19),
	portare => VCC,
	portbwe => \inst8|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \inst8|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y7_N2
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\);

-- Location: LCCOMB_X26_Y7_N8
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\);

-- Location: FF_X26_Y7_N3
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X26_Y7_N12
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\);

-- Location: FF_X26_Y7_N13
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X26_Y7_N22
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\);

-- Location: FF_X26_Y7_N23
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X26_Y7_N16
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\);

-- Location: FF_X26_Y7_N17
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X24_Y7_N8
\inst7|MBR_REG[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(7)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	datab => \inst6|output\(7),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	combout => \inst7|MBR_REG[7]~0_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst7|MBR_REG[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(7) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[7]~0_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|MBR_REG[7]~1_combout\,
	datac => \inst7|MBR_REG[7]~0_combout\,
	datad => \inst7|MBR_REG\(7),
	combout => \inst7|MBR_REG\(7));

-- Location: LCCOMB_X24_Y7_N26
\inst7|MBR_REG[6]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[6]~2_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(6)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(6),
	datac => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	combout => \inst7|MBR_REG[6]~2_combout\);

-- Location: LCCOMB_X24_Y7_N18
\inst7|MBR_REG[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(6) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[6]~2_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|MBR_REG[7]~1_combout\,
	datac => \inst7|MBR_REG[6]~2_combout\,
	datad => \inst7|MBR_REG\(6),
	combout => \inst7|MBR_REG\(6));

-- Location: LCCOMB_X24_Y7_N4
\inst7|MBR_REG[5]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[5]~3_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(5)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(5),
	datab => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	combout => \inst7|MBR_REG[5]~3_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst7|MBR_REG[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(5) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[5]~3_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|MBR_REG[7]~1_combout\,
	datac => \inst7|MBR_REG[5]~3_combout\,
	datad => \inst7|MBR_REG\(5),
	combout => \inst7|MBR_REG\(5));

-- Location: LCCOMB_X24_Y5_N10
\inst7|MBR_REG[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[4]~4_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(4)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|output\(4),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	combout => \inst7|MBR_REG[4]~4_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst7|MBR_REG[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(4) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[4]~4_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|MBR_REG[4]~4_combout\,
	datab => \inst7|MBR_REG[7]~1_combout\,
	datad => \inst7|MBR_REG\(4),
	combout => \inst7|MBR_REG\(4));

-- Location: LCCOMB_X24_Y5_N12
\inst7|MBR_REG[3]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[3]~5_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(3)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|output\(3),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	combout => \inst7|MBR_REG[3]~5_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst7|MBR_REG[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(3) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[3]~5_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|MBR_REG[3]~5_combout\,
	datab => \inst7|MBR_REG[7]~1_combout\,
	datad => \inst7|MBR_REG\(3),
	combout => \inst7|MBR_REG\(3));

-- Location: LCCOMB_X24_Y5_N6
\inst7|MBR_REG[2]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[2]~6_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(2)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|output\(2),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	combout => \inst7|MBR_REG[2]~6_combout\);

-- Location: LCCOMB_X24_Y5_N22
\inst7|MBR_REG[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(2) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[2]~6_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|MBR_REG[2]~6_combout\,
	datac => \inst7|MBR_REG\(2),
	datad => \inst7|MBR_REG[7]~1_combout\,
	combout => \inst7|MBR_REG\(2));

-- Location: LCCOMB_X24_Y5_N24
\inst7|MBR_REG[1]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[1]~7_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(1)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(1),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	combout => \inst7|MBR_REG[1]~7_combout\);

-- Location: LCCOMB_X24_Y5_N16
\inst7|MBR_REG[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(1) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[1]~7_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|MBR_REG[7]~1_combout\,
	datac => \inst7|MBR_REG[1]~7_combout\,
	datad => \inst7|MBR_REG\(1),
	combout => \inst7|MBR_REG\(1));

-- Location: LCCOMB_X24_Y7_N14
\inst7|MBR_REG[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG[0]~8_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & ((\inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(0)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18) & 
-- (\inst6|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(0),
	datac => \inst8|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(18),
	combout => \inst7|MBR_REG[0]~8_combout\);

-- Location: LCCOMB_X24_Y7_N30
\inst7|MBR_REG[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst7|MBR_REG\(0) = (\inst7|MBR_REG[7]~1_combout\ & (\inst7|MBR_REG[0]~8_combout\)) # (!\inst7|MBR_REG[7]~1_combout\ & ((\inst7|MBR_REG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|MBR_REG[7]~1_combout\,
	datac => \inst7|MBR_REG[0]~8_combout\,
	datad => \inst7|MBR_REG\(0),
	combout => \inst7|MBR_REG\(0));

-- Location: LCCOMB_X26_Y7_N26
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\);

-- Location: FF_X26_Y7_N27
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X26_Y7_N28
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\);

-- Location: FF_X26_Y7_N29
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X26_Y7_N6
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\);

-- Location: FF_X26_Y7_N7
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LCCOMB_X26_Y7_N0
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][3]~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst8|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\);

-- Location: FF_X26_Y7_N1
\inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\,
	ena => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LCCOMB_X25_Y11_N16
\inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][5]~q\,
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datac => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|process_1~0_combout\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datab => \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[2][0]~q\,
	combout => \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\);

-- Location: LCCOMB_X17_Y14_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(9),
	datac => \inst15|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\,
	datad => \inst8|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: LCCOMB_X17_Y14_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~13\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~10_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~13_combout\);

-- Location: LCCOMB_X17_Y14_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X17_Y14_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X17_Y14_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~11\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~13_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~11_combout\);

-- Location: FF_X17_Y14_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G0
\altera_internal_jtag~TCKUTAPclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X16_Y15_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~5\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~5_combout\);

-- Location: FF_X16_Y15_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][2]~q\);

-- Location: LCCOMB_X16_Y15_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~4\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_irf_reg[1][2]~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~4_combout\);

-- Location: FF_X16_Y15_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X14_Y15_N18
\inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \inst15|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\inst9|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output[7]~0_combout\ = (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	combout => \inst9|output[7]~0_combout\);

-- Location: CLKCTRL_G8
\inst9|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y9_N0
\inst9|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(7) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(7),
	combout => \inst9|output\(7));

-- Location: LCCOMB_X19_Y9_N18
\inst10|ALU_BUF[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(7) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(7))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datac => \inst9|output\(7),
	datad => \inst10|ALU_BUF\(7),
	combout => \inst10|ALU_BUF\(7));

-- Location: LCCOMB_X18_Y11_N16
\inst10|Equal7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Equal7~0_combout\ = (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|Equal7~0_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst10|Equal7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Equal7~1_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|Equal7~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst10|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39)) # 
-- ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|Add0~0_combout\);

-- Location: LCCOMB_X18_Y8_N0
\inst10|Add0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~1_combout\ = (\inst10|ALU_BUF\(7) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(7) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(7),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~1_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst9|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(6) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[6]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(6),
	combout => \inst9|output\(6));

-- Location: LCCOMB_X17_Y8_N0
\inst10|ALU_BUF[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(6) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(6))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|output\(6),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datad => \inst10|ALU_BUF\(6),
	combout => \inst10|ALU_BUF\(6));

-- Location: LCCOMB_X18_Y8_N26
\inst10|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|ALU_BUF\(6) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(6) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal7~0_combout\,
	datab => \inst10|Equal7~1_combout\,
	datac => \inst10|ALU_BUF\(6),
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~2_combout\);

-- Location: LCCOMB_X19_Y4_N24
\inst9|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(5) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[5]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(5),
	combout => \inst9|output\(5));

-- Location: LCCOMB_X19_Y4_N20
\inst10|ALU_BUF[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(5) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(5))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datab => \inst9|output\(5),
	datad => \inst10|ALU_BUF\(5),
	combout => \inst10|ALU_BUF\(5));

-- Location: LCCOMB_X18_Y8_N28
\inst10|Add0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~3_combout\ = (\inst10|ALU_BUF\(5) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(5) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(5),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~3_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst9|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(4) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[4]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(4),
	combout => \inst9|output\(4));

-- Location: LCCOMB_X17_Y8_N18
\inst10|ALU_BUF[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(4) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(4))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(4),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datad => \inst10|ALU_BUF\(4),
	combout => \inst10|ALU_BUF\(4));

-- Location: LCCOMB_X18_Y8_N30
\inst10|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|ALU_BUF\(4) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(4) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(4),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~4_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst9|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(3) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[3]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(3),
	combout => \inst9|output\(3));

-- Location: LCCOMB_X17_Y8_N12
\inst10|ALU_BUF[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(3) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(3))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|output\(3),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datad => \inst10|ALU_BUF\(3),
	combout => \inst10|ALU_BUF\(3));

-- Location: LCCOMB_X18_Y8_N2
\inst10|Add0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~5_combout\ = (\inst10|ALU_BUF\(3) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(3) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(3),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~5_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst9|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(2) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[2]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(2),
	combout => \inst9|output\(2));

-- Location: LCCOMB_X19_Y4_N6
\inst10|ALU_BUF[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(2) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(2))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datac => \inst9|output\(2),
	datad => \inst10|ALU_BUF\(2),
	combout => \inst10|ALU_BUF\(2));

-- Location: LCCOMB_X18_Y8_N4
\inst10|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|ALU_BUF\(2) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(2) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(2),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~6_combout\);

-- Location: LCCOMB_X17_Y8_N14
\inst9|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(1) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output[7]~0clkctrl_outclk\,
	datab => \BUS_CTX[1]~input_o\,
	datac => \inst9|output\(1),
	combout => \inst9|output\(1));

-- Location: LCCOMB_X17_Y8_N30
\inst10|ALU_BUF[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(1) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(1))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(1),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datac => \inst10|ALU_BUF\(1),
	combout => \inst10|ALU_BUF\(1));

-- Location: LCCOMB_X18_Y8_N6
\inst10|Add0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~7_combout\ = (\inst10|ALU_BUF\(1) & ((\inst10|Equal7~0_combout\) # ((!\inst10|Equal7~1_combout\ & \inst10|Add0~0_combout\)))) # (!\inst10|ALU_BUF\(1) & (((\inst10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(1),
	datab => \inst10|Equal7~0_combout\,
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Add0~7_combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst9|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|output\(0) = (GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst9|output[7]~0clkctrl_outclk\) & ((\inst9|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[0]~input_o\,
	datac => \inst9|output[7]~0clkctrl_outclk\,
	datad => \inst9|output\(0),
	combout => \inst9|output\(0));

-- Location: LCCOMB_X17_Y6_N0
\inst10|ALU_BUF[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|ALU_BUF\(0) = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & (\inst9|output\(0))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29) & ((\inst10|ALU_BUF\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|output\(0),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(29),
	datad => \inst10|ALU_BUF\(0),
	combout => \inst10|ALU_BUF\(0));

-- Location: LCCOMB_X18_Y11_N14
\inst10|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|ALU_BUF\(0) & ((\inst10|Equal7~0_combout\) # (!\inst10|Equal7~1_combout\))) # (!\inst10|ALU_BUF\(0) & ((!\inst10|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALU_BUF\(0),
	datac => \inst10|Equal7~1_combout\,
	datad => \inst10|Equal7~0_combout\,
	combout => \inst10|Add0~8_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst10|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_cout\ = CARRY(\inst10|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Equal7~1_combout\,
	datad => VCC,
	cout => \inst10|Add0~10_cout\);

-- Location: LCCOMB_X18_Y8_N10
\inst10|Add0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~11_combout\ = (\inst12|acc_reg[0]~_Duplicate_1_q\ & ((\inst10|Add0~8_combout\ & (\inst10|Add0~10_cout\ & VCC)) # (!\inst10|Add0~8_combout\ & (!\inst10|Add0~10_cout\)))) # (!\inst12|acc_reg[0]~_Duplicate_1_q\ & ((\inst10|Add0~8_combout\ & 
-- (!\inst10|Add0~10_cout\)) # (!\inst10|Add0~8_combout\ & ((\inst10|Add0~10_cout\) # (GND)))))
-- \inst10|Add0~12\ = CARRY((\inst12|acc_reg[0]~_Duplicate_1_q\ & (!\inst10|Add0~8_combout\ & !\inst10|Add0~10_cout\)) # (!\inst12|acc_reg[0]~_Duplicate_1_q\ & ((!\inst10|Add0~10_cout\) # (!\inst10|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[0]~_Duplicate_1_q\,
	datab => \inst10|Add0~8_combout\,
	datad => VCC,
	cin => \inst10|Add0~10_cout\,
	combout => \inst10|Add0~11_combout\,
	cout => \inst10|Add0~12\);

-- Location: LCCOMB_X18_Y8_N12
\inst10|Add0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~13_combout\ = ((\inst10|Add0~7_combout\ $ (\inst12|acc_reg[1]~_Duplicate_1_q\ $ (!\inst10|Add0~12\)))) # (GND)
-- \inst10|Add0~14\ = CARRY((\inst10|Add0~7_combout\ & ((\inst12|acc_reg[1]~_Duplicate_1_q\) # (!\inst10|Add0~12\))) # (!\inst10|Add0~7_combout\ & (\inst12|acc_reg[1]~_Duplicate_1_q\ & !\inst10|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~7_combout\,
	datab => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst10|Add0~12\,
	combout => \inst10|Add0~13_combout\,
	cout => \inst10|Add0~14\);

-- Location: LCCOMB_X18_Y8_N14
\inst10|Add0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~15_combout\ = (\inst12|acc_reg[2]~_Duplicate_1_q\ & ((\inst10|Add0~6_combout\ & (\inst10|Add0~14\ & VCC)) # (!\inst10|Add0~6_combout\ & (!\inst10|Add0~14\)))) # (!\inst12|acc_reg[2]~_Duplicate_1_q\ & ((\inst10|Add0~6_combout\ & 
-- (!\inst10|Add0~14\)) # (!\inst10|Add0~6_combout\ & ((\inst10|Add0~14\) # (GND)))))
-- \inst10|Add0~16\ = CARRY((\inst12|acc_reg[2]~_Duplicate_1_q\ & (!\inst10|Add0~6_combout\ & !\inst10|Add0~14\)) # (!\inst12|acc_reg[2]~_Duplicate_1_q\ & ((!\inst10|Add0~14\) # (!\inst10|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datab => \inst10|Add0~6_combout\,
	datad => VCC,
	cin => \inst10|Add0~14\,
	combout => \inst10|Add0~15_combout\,
	cout => \inst10|Add0~16\);

-- Location: LCCOMB_X18_Y8_N16
\inst10|Add0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~17_combout\ = ((\inst12|acc_reg[3]~_Duplicate_1_q\ $ (\inst10|Add0~5_combout\ $ (!\inst10|Add0~16\)))) # (GND)
-- \inst10|Add0~18\ = CARRY((\inst12|acc_reg[3]~_Duplicate_1_q\ & ((\inst10|Add0~5_combout\) # (!\inst10|Add0~16\))) # (!\inst12|acc_reg[3]~_Duplicate_1_q\ & (\inst10|Add0~5_combout\ & !\inst10|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[3]~_Duplicate_1_q\,
	datab => \inst10|Add0~5_combout\,
	datad => VCC,
	cin => \inst10|Add0~16\,
	combout => \inst10|Add0~17_combout\,
	cout => \inst10|Add0~18\);

-- Location: LCCOMB_X18_Y8_N18
\inst10|Add0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~19_combout\ = (\inst10|Add0~4_combout\ & ((\inst12|acc_reg[4]~_Duplicate_1_q\ & (\inst10|Add0~18\ & VCC)) # (!\inst12|acc_reg[4]~_Duplicate_1_q\ & (!\inst10|Add0~18\)))) # (!\inst10|Add0~4_combout\ & ((\inst12|acc_reg[4]~_Duplicate_1_q\ & 
-- (!\inst10|Add0~18\)) # (!\inst12|acc_reg[4]~_Duplicate_1_q\ & ((\inst10|Add0~18\) # (GND)))))
-- \inst10|Add0~20\ = CARRY((\inst10|Add0~4_combout\ & (!\inst12|acc_reg[4]~_Duplicate_1_q\ & !\inst10|Add0~18\)) # (!\inst10|Add0~4_combout\ & ((!\inst10|Add0~18\) # (!\inst12|acc_reg[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~4_combout\,
	datab => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst10|Add0~18\,
	combout => \inst10|Add0~19_combout\,
	cout => \inst10|Add0~20\);

-- Location: LCCOMB_X18_Y8_N20
\inst10|Add0~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~21_combout\ = ((\inst12|acc_reg[5]~_Duplicate_1_q\ $ (\inst10|Add0~3_combout\ $ (!\inst10|Add0~20\)))) # (GND)
-- \inst10|Add0~22\ = CARRY((\inst12|acc_reg[5]~_Duplicate_1_q\ & ((\inst10|Add0~3_combout\) # (!\inst10|Add0~20\))) # (!\inst12|acc_reg[5]~_Duplicate_1_q\ & (\inst10|Add0~3_combout\ & !\inst10|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datab => \inst10|Add0~3_combout\,
	datad => VCC,
	cin => \inst10|Add0~20\,
	combout => \inst10|Add0~21_combout\,
	cout => \inst10|Add0~22\);

-- Location: LCCOMB_X18_Y8_N22
\inst10|Add0~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~23_combout\ = (\inst10|Add0~2_combout\ & ((\inst12|acc_reg[6]~_Duplicate_1_q\ & (\inst10|Add0~22\ & VCC)) # (!\inst12|acc_reg[6]~_Duplicate_1_q\ & (!\inst10|Add0~22\)))) # (!\inst10|Add0~2_combout\ & ((\inst12|acc_reg[6]~_Duplicate_1_q\ & 
-- (!\inst10|Add0~22\)) # (!\inst12|acc_reg[6]~_Duplicate_1_q\ & ((\inst10|Add0~22\) # (GND)))))
-- \inst10|Add0~24\ = CARRY((\inst10|Add0~2_combout\ & (!\inst12|acc_reg[6]~_Duplicate_1_q\ & !\inst10|Add0~22\)) # (!\inst10|Add0~2_combout\ & ((!\inst10|Add0~22\) # (!\inst12|acc_reg[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~2_combout\,
	datab => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst10|Add0~22\,
	combout => \inst10|Add0~23_combout\,
	cout => \inst10|Add0~24\);

-- Location: LCCOMB_X18_Y8_N24
\inst10|Add0~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Add0~25_combout\ = \inst12|acc_reg[7]~_Duplicate_1_q\ $ (\inst10|Add0~24\ $ (!\inst10|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datad => \inst10|Add0~1_combout\,
	cin => \inst10|Add0~24\,
	combout => \inst10|Add0~25_combout\);

-- Location: DSPMULT_X20_Y8_N0
\inst10|Mult0|auto_generated|mac_mult1\ : cyclone10lp_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(22),
	aclr => GND,
	ena => VCC,
	dataa => \inst10|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst10|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst10|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y8_N2
\inst10|Mult0|auto_generated|mac_out2\ : cyclone10lp_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst10|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X18_Y11_N30
\inst10|Equal7~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|Equal7~2_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|Equal7~2_combout\);

-- Location: CLKCTRL_G3
\inst10|Equal7~2clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|Equal7~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|Equal7~2clkctrl_outclk\);

-- Location: LCCOMB_X19_Y9_N28
\inst10|MUL_BUF[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(7) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(7),
	combout => \inst10|MUL_BUF\(7));

-- Location: LCCOMB_X19_Y9_N24
\inst10|RESULT[7]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~3_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & ((\inst10|MUL_BUF\(7)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (\inst10|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst10|Add0~25_combout\,
	datad => \inst10|MUL_BUF\(7),
	combout => \inst10|RESULT[7]~3_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst10|RESULT[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (\inst10|Add0~25_combout\)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & ((\inst12|acc_reg[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst10|Add0~25_combout\,
	datad => \inst12|acc_reg[7]~_Duplicate_1_q\,
	combout => \inst10|RESULT[7]~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst10|RESULT[7]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~4_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|RESULT[7]~3_combout\) # ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39))))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & \inst10|RESULT[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst10|RESULT[7]~3_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datad => \inst10|RESULT[7]~0_combout\,
	combout => \inst10|RESULT[7]~4_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst10|RESULT[7]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~48_combout\ = (\inst10|RESULT[7]~4_combout\ & ((\inst12|acc_reg[7]~_Duplicate_1_q\ $ (\inst10|ALU_BUF\(7))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39)))) # (!\inst10|RESULT[7]~4_combout\ & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & ((\inst10|ALU_BUF\(7)) # (!\inst12|acc_reg[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[7]~4_combout\,
	datab => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datad => \inst10|ALU_BUF\(7),
	combout => \inst10|RESULT[7]~48_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst10|RESULT[7]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~49_combout\ = (\inst10|RESULT[7]~4_combout\ & ((\inst10|RESULT[7]~48_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & \inst12|acc_reg[7]~_Duplicate_1_q\)))) # (!\inst10|RESULT[7]~4_combout\ & 
-- (\inst10|RESULT[7]~48_combout\ & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) $ (\inst12|acc_reg[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datac => \inst10|RESULT[7]~4_combout\,
	datad => \inst10|RESULT[7]~48_combout\,
	combout => \inst10|RESULT[7]~49_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst10|RESULT[7]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~1_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (((\inst12|acc_reg[7]~_Duplicate_1_q\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst12|acc_reg[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datac => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datad => \inst12|acc_reg[7]~_Duplicate_1_q\,
	combout => \inst10|RESULT[7]~1_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst10|RESULT[7]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~2_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & ((\inst10|RESULT[7]~0_combout\))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (\inst10|RESULT[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst10|RESULT[7]~1_combout\,
	datad => \inst10|RESULT[7]~0_combout\,
	combout => \inst10|RESULT[7]~2_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst10|RESULT[7]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~5_combout\ = (\inst10|RESULT[7]~2_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & \inst10|RESULT[7]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst10|RESULT[7]~49_combout\,
	datad => \inst10|RESULT[7]~2_combout\,
	combout => \inst10|RESULT[7]~5_combout\);

-- Location: LCCOMB_X23_Y9_N8
\inst2|PROGRAM_COUNTER_REG[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[0]~8_combout\ = \inst2|PROGRAM_COUNTER_REG\(0) $ (VCC)
-- \inst2|PROGRAM_COUNTER_REG[0]~9\ = CARRY(\inst2|PROGRAM_COUNTER_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(0),
	datad => VCC,
	combout => \inst2|PROGRAM_COUNTER_REG[0]~8_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[0]~9\);

-- Location: LCCOMB_X21_Y8_N2
\inst3|output[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23) & !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	combout => \inst3|output[7]~0_combout\);

-- Location: CLKCTRL_G6
\inst3|output[7]~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|output[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|output[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y9_N30
\inst3|output[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(0) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[0]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[0]~input_o\,
	datac => \inst3|output\(0),
	datad => \inst3|output[7]~0clkctrl_outclk\,
	combout => \inst3|output\(0));

-- Location: FF_X23_Y9_N9
\inst2|PROGRAM_COUNTER_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[0]~8_combout\,
	asdata => \inst3|output\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(0));

-- Location: LCCOMB_X23_Y9_N10
\inst2|PROGRAM_COUNTER_REG[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[1]~10_combout\ = (\inst2|PROGRAM_COUNTER_REG\(1) & (!\inst2|PROGRAM_COUNTER_REG[0]~9\)) # (!\inst2|PROGRAM_COUNTER_REG\(1) & ((\inst2|PROGRAM_COUNTER_REG[0]~9\) # (GND)))
-- \inst2|PROGRAM_COUNTER_REG[1]~11\ = CARRY((!\inst2|PROGRAM_COUNTER_REG[0]~9\) # (!\inst2|PROGRAM_COUNTER_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(1),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[0]~9\,
	combout => \inst2|PROGRAM_COUNTER_REG[1]~10_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[1]~11\);

-- Location: LCCOMB_X23_Y9_N28
\inst3|output[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(1) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[1]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[1]~input_o\,
	datac => \inst3|output[7]~0clkctrl_outclk\,
	datad => \inst3|output\(1),
	combout => \inst3|output\(1));

-- Location: FF_X23_Y9_N11
\inst2|PROGRAM_COUNTER_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[1]~10_combout\,
	asdata => \inst3|output\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(1));

-- Location: LCCOMB_X23_Y9_N12
\inst2|PROGRAM_COUNTER_REG[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[2]~12_combout\ = (\inst2|PROGRAM_COUNTER_REG\(2) & (\inst2|PROGRAM_COUNTER_REG[1]~11\ $ (GND))) # (!\inst2|PROGRAM_COUNTER_REG\(2) & (!\inst2|PROGRAM_COUNTER_REG[1]~11\ & VCC))
-- \inst2|PROGRAM_COUNTER_REG[2]~13\ = CARRY((\inst2|PROGRAM_COUNTER_REG\(2) & !\inst2|PROGRAM_COUNTER_REG[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(2),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[1]~11\,
	combout => \inst2|PROGRAM_COUNTER_REG[2]~12_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[2]~13\);

-- Location: LCCOMB_X23_Y9_N2
\inst3|output[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(2) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[2]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[2]~input_o\,
	datac => \inst3|output[7]~0clkctrl_outclk\,
	datad => \inst3|output\(2),
	combout => \inst3|output\(2));

-- Location: FF_X23_Y9_N13
\inst2|PROGRAM_COUNTER_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[2]~12_combout\,
	asdata => \inst3|output\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(2));

-- Location: LCCOMB_X23_Y9_N14
\inst2|PROGRAM_COUNTER_REG[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[3]~14_combout\ = (\inst2|PROGRAM_COUNTER_REG\(3) & (!\inst2|PROGRAM_COUNTER_REG[2]~13\)) # (!\inst2|PROGRAM_COUNTER_REG\(3) & ((\inst2|PROGRAM_COUNTER_REG[2]~13\) # (GND)))
-- \inst2|PROGRAM_COUNTER_REG[3]~15\ = CARRY((!\inst2|PROGRAM_COUNTER_REG[2]~13\) # (!\inst2|PROGRAM_COUNTER_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(3),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[2]~13\,
	combout => \inst2|PROGRAM_COUNTER_REG[3]~14_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[3]~15\);

-- Location: LCCOMB_X23_Y9_N24
\inst3|output[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(3) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[3]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[3]~input_o\,
	datac => \inst3|output[7]~0clkctrl_outclk\,
	datad => \inst3|output\(3),
	combout => \inst3|output\(3));

-- Location: FF_X23_Y9_N15
\inst2|PROGRAM_COUNTER_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[3]~14_combout\,
	asdata => \inst3|output\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(3));

-- Location: LCCOMB_X23_Y9_N16
\inst2|PROGRAM_COUNTER_REG[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[4]~16_combout\ = (\inst2|PROGRAM_COUNTER_REG\(4) & (\inst2|PROGRAM_COUNTER_REG[3]~15\ $ (GND))) # (!\inst2|PROGRAM_COUNTER_REG\(4) & (!\inst2|PROGRAM_COUNTER_REG[3]~15\ & VCC))
-- \inst2|PROGRAM_COUNTER_REG[4]~17\ = CARRY((\inst2|PROGRAM_COUNTER_REG\(4) & !\inst2|PROGRAM_COUNTER_REG[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(4),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[3]~15\,
	combout => \inst2|PROGRAM_COUNTER_REG[4]~16_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[4]~17\);

-- Location: LCCOMB_X23_Y9_N6
\inst3|output[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(4) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[4]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[4]~input_o\,
	datac => \inst3|output[7]~0clkctrl_outclk\,
	datad => \inst3|output\(4),
	combout => \inst3|output\(4));

-- Location: FF_X23_Y9_N17
\inst2|PROGRAM_COUNTER_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[4]~16_combout\,
	asdata => \inst3|output\(4),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(4));

-- Location: LCCOMB_X23_Y9_N18
\inst2|PROGRAM_COUNTER_REG[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[5]~18_combout\ = (\inst2|PROGRAM_COUNTER_REG\(5) & (!\inst2|PROGRAM_COUNTER_REG[4]~17\)) # (!\inst2|PROGRAM_COUNTER_REG\(5) & ((\inst2|PROGRAM_COUNTER_REG[4]~17\) # (GND)))
-- \inst2|PROGRAM_COUNTER_REG[5]~19\ = CARRY((!\inst2|PROGRAM_COUNTER_REG[4]~17\) # (!\inst2|PROGRAM_COUNTER_REG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(5),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[4]~17\,
	combout => \inst2|PROGRAM_COUNTER_REG[5]~18_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[5]~19\);

-- Location: LCCOMB_X23_Y9_N4
\inst3|output[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(5) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[5]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[5]~input_o\,
	datac => \inst3|output\(5),
	datad => \inst3|output[7]~0clkctrl_outclk\,
	combout => \inst3|output\(5));

-- Location: FF_X23_Y9_N19
\inst2|PROGRAM_COUNTER_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[5]~18_combout\,
	asdata => \inst3|output\(5),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(5));

-- Location: LCCOMB_X23_Y9_N20
\inst2|PROGRAM_COUNTER_REG[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[6]~20_combout\ = (\inst2|PROGRAM_COUNTER_REG\(6) & (\inst2|PROGRAM_COUNTER_REG[5]~19\ $ (GND))) # (!\inst2|PROGRAM_COUNTER_REG\(6) & (!\inst2|PROGRAM_COUNTER_REG[5]~19\ & VCC))
-- \inst2|PROGRAM_COUNTER_REG[6]~21\ = CARRY((\inst2|PROGRAM_COUNTER_REG\(6) & !\inst2|PROGRAM_COUNTER_REG[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(6),
	datad => VCC,
	cin => \inst2|PROGRAM_COUNTER_REG[5]~19\,
	combout => \inst2|PROGRAM_COUNTER_REG[6]~20_combout\,
	cout => \inst2|PROGRAM_COUNTER_REG[6]~21\);

-- Location: LCCOMB_X23_Y9_N26
\inst3|output[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(6) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[6]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_CTX[6]~input_o\,
	datac => \inst3|output\(6),
	datad => \inst3|output[7]~0clkctrl_outclk\,
	combout => \inst3|output\(6));

-- Location: FF_X23_Y9_N21
\inst2|PROGRAM_COUNTER_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[6]~20_combout\,
	asdata => \inst3|output\(6),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(6));

-- Location: LCCOMB_X23_Y9_N22
\inst2|PROGRAM_COUNTER_REG[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PROGRAM_COUNTER_REG[7]~22_combout\ = \inst2|PROGRAM_COUNTER_REG\(7) $ (\inst2|PROGRAM_COUNTER_REG[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(7),
	cin => \inst2|PROGRAM_COUNTER_REG[6]~21\,
	combout => \inst2|PROGRAM_COUNTER_REG[7]~22_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst3|output[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|output\(7) = (GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & (\BUS_CTX[7]~input_o\)) # (!GLOBAL(\inst3|output[7]~0clkctrl_outclk\) & ((\inst3|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_CTX[7]~input_o\,
	datac => \inst3|output[7]~0clkctrl_outclk\,
	datad => \inst3|output\(7),
	combout => \inst3|output\(7));

-- Location: FF_X23_Y9_N23
\inst2|PROGRAM_COUNTER_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(25),
	d => \inst2|PROGRAM_COUNTER_REG[7]~22_combout\,
	asdata => \inst3|output\(7),
	clrn => \RST~inputclkctrl_outclk\,
	sload => \inst15|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PROGRAM_COUNTER_REG\(7));

-- Location: LCCOMB_X23_Y8_N28
\inst2|PC_OUT[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(7) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(7))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(7),
	datab => \inst2|PC_OUT\(7),
	datad => \RST~inputclkctrl_outclk\,
	combout => \inst2|PC_OUT\(7));

-- Location: LCCOMB_X21_Y8_N30
\inst3|bus_port[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|bus_port[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	combout => \inst3|bus_port[7]~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst5|bus_port[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|bus_port[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(12),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(11),
	combout => \inst5|bus_port[7]~0_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst|bus_port[7]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~24_combout\ = (\inst4|MAR_REG\(7) & ((\inst2|PC_OUT\(7)) # ((!\inst3|bus_port[7]~0_combout\)))) # (!\inst4|MAR_REG\(7) & (!\inst5|bus_port[7]~0_combout\ & ((\inst2|PC_OUT\(7)) # (!\inst3|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MAR_REG\(7),
	datab => \inst2|PC_OUT\(7),
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst5|bus_port[7]~0_combout\,
	combout => \inst|bus_port[7]~24_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst11|bus_port[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst11|bus_port[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(21),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(20),
	combout => \inst11|bus_port[7]~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst6|bus_port[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst6|bus_port[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(14),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(15),
	combout => \inst6|bus_port[7]~0_combout\);

-- Location: LCCOMB_X23_Y8_N4
\inst|bus_port[7]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~25_combout\ = (\inst11|bus_port[7]~0_combout\ & (\inst12|acc_reg[7]~_Duplicate_1_q\ & ((\inst7|MBR_REG\(7)) # (!\inst6|bus_port[7]~0_combout\)))) # (!\inst11|bus_port[7]~0_combout\ & (((\inst7|MBR_REG\(7)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bus_port[7]~0_combout\,
	datab => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datac => \inst7|MBR_REG\(7),
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[7]~25_combout\);

-- Location: LCCOMB_X23_Y8_N6
\inst|bus_port[7]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~26_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	combout => \inst|bus_port[7]~26_combout\);

-- Location: LCCOMB_X23_Y8_N24
\inst|bus_port[7]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~27_combout\ = (\inst|bus_port[7]~24_combout\ & (\inst|bus_port[7]~25_combout\ & ((\inst1|ir_reg\(7)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[7]~24_combout\,
	datab => \inst1|ir_reg\(7),
	datac => \inst|bus_port[7]~25_combout\,
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[7]~27_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst|bus_port[7]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~52_combout\ = (\inst|bus_port[7]~27_combout\ & ((\inst10|RESULT[7]~5_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[7]~5_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \inst|bus_port[7]~27_combout\,
	combout => \inst|bus_port[7]~52_combout\);

-- Location: LCCOMB_X22_Y8_N22
\inst9|bus_port[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|bus_port[7]~0_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	combout => \inst9|bus_port[7]~0_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst|bus_port[7]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~28_combout\ = (\inst5|bus_port[7]~0_combout\) # ((\inst6|bus_port[7]~0_combout\) # ((\inst3|bus_port[7]~0_combout\) # (\inst9|bus_port[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bus_port[7]~0_combout\,
	datab => \inst6|bus_port[7]~0_combout\,
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst9|bus_port[7]~0_combout\,
	combout => \inst|bus_port[7]~28_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst|bus_port[7]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[7]~53_combout\ = (\inst11|bus_port[7]~0_combout\) # ((\inst|bus_port[7]~28_combout\) # ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bus_port[7]~0_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	datad => \inst|bus_port[7]~28_combout\,
	combout => \inst|bus_port[7]~53_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst10|RESULT[6]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~11_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) $ ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39))))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & 
-- !\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|RESULT[6]~11_combout\);

-- Location: LCCOMB_X16_Y8_N8
\inst10|RESULT[6]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~45_combout\ = (\inst12|acc_reg[6]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[6]~45_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst10|RESULT[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~6_combout\ = (\inst12|acc_reg[6]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(6) & ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))) # (!\inst10|ALU_BUF\(6) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))) # (!\inst12|acc_reg[6]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|ALU_BUF\(6)))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datad => \inst10|ALU_BUF\(6),
	combout => \inst10|RESULT[6]~6_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst10|RESULT[6]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~7_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|RESULT[6]~7_combout\);

-- Location: LCCOMB_X16_Y8_N18
\inst10|MUL_BUF[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(6) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(6),
	combout => \inst10|MUL_BUF\(6));

-- Location: LCCOMB_X16_Y8_N0
\inst10|RESULT[6]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~8_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst12|acc_reg[5]~_Duplicate_1_q\) # ((\inst10|RESULT[6]~7_combout\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (((!\inst10|RESULT[6]~7_combout\ & \inst10|MUL_BUF\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datab => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|MUL_BUF\(6),
	combout => \inst10|RESULT[6]~8_combout\);

-- Location: LCCOMB_X16_Y8_N2
\inst10|RESULT[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~9_combout\ = (\inst10|RESULT[6]~7_combout\ & ((\inst10|RESULT[6]~8_combout\ & (\inst12|acc_reg[7]~_Duplicate_1_q\)) # (!\inst10|RESULT[6]~8_combout\ & ((\inst10|RESULT[6]~6_combout\))))) # (!\inst10|RESULT[6]~7_combout\ & 
-- (((\inst10|RESULT[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[7]~_Duplicate_1_q\,
	datab => \inst10|RESULT[6]~6_combout\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|RESULT[6]~8_combout\,
	combout => \inst10|RESULT[6]~9_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst10|RESULT[6]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~10_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40))))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|RESULT[6]~10_combout\);

-- Location: LCCOMB_X16_Y8_N12
\inst10|RESULT[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~12_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & (\inst10|Add0~23_combout\)) # (!\inst10|RESULT[6]~10_combout\ & ((\inst10|RESULT[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~23_combout\,
	datab => \inst10|RESULT[6]~9_combout\,
	datac => \inst10|RESULT[6]~10_combout\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[6]~12_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst2|PC_OUT[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(6) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(6))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(6),
	datac => \inst2|PC_OUT\(6),
	datad => \RST~inputclkctrl_outclk\,
	combout => \inst2|PC_OUT\(6));

-- Location: LCCOMB_X23_Y8_N12
\inst|bus_port[6]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[6]~29_combout\ = (\inst3|bus_port[7]~0_combout\ & (\inst2|PC_OUT\(6) & ((\inst4|MAR_REG\(6)) # (!\inst5|bus_port[7]~0_combout\)))) # (!\inst3|bus_port[7]~0_combout\ & (((\inst4|MAR_REG\(6))) # (!\inst5|bus_port[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|bus_port[7]~0_combout\,
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst2|PC_OUT\(6),
	datad => \inst4|MAR_REG\(6),
	combout => \inst|bus_port[6]~29_combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst|bus_port[6]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[6]~30_combout\ = (\inst12|acc_reg[6]~_Duplicate_1_q\ & (((\inst7|MBR_REG\(6))) # (!\inst6|bus_port[7]~0_combout\))) # (!\inst12|acc_reg[6]~_Duplicate_1_q\ & (!\inst11|bus_port[7]~0_combout\ & ((\inst7|MBR_REG\(6)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datab => \inst6|bus_port[7]~0_combout\,
	datac => \inst7|MBR_REG\(6),
	datad => \inst11|bus_port[7]~0_combout\,
	combout => \inst|bus_port[6]~30_combout\);

-- Location: LCCOMB_X23_Y8_N16
\inst|bus_port[6]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[6]~31_combout\ = (\inst|bus_port[6]~29_combout\ & (\inst|bus_port[6]~30_combout\ & ((\inst1|ir_reg\(6)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[6]~29_combout\,
	datab => \inst|bus_port[6]~30_combout\,
	datac => \inst1|ir_reg\(6),
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[6]~31_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst|bus_port[6]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[6]~32_combout\ = (\inst|bus_port[6]~31_combout\ & ((\inst10|RESULT[6]~45_combout\) # ((\inst10|RESULT[6]~12_combout\) # (!\inst9|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[6]~45_combout\,
	datab => \inst9|bus_port[7]~0_combout\,
	datac => \inst10|RESULT[6]~12_combout\,
	datad => \inst|bus_port[6]~31_combout\,
	combout => \inst|bus_port[6]~32_combout\);

-- Location: LCCOMB_X16_Y8_N28
\inst10|MUL_BUF[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(5) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(5),
	combout => \inst10|MUL_BUF\(5));

-- Location: LCCOMB_X16_Y8_N26
\inst10|RESULT[5]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[5]~15_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst10|RESULT[6]~7_combout\) # ((\inst12|acc_reg[4]~_Duplicate_1_q\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (!\inst10|RESULT[6]~7_combout\ & ((\inst10|MUL_BUF\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datab => \inst10|RESULT[6]~7_combout\,
	datac => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datad => \inst10|MUL_BUF\(5),
	combout => \inst10|RESULT[5]~15_combout\);

-- Location: LCCOMB_X16_Y8_N24
\inst10|RESULT[5]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[5]~14_combout\ = (\inst12|acc_reg[5]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(5) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38))) # (!\inst10|ALU_BUF\(5) & 
-- ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)))))) # (!\inst12|acc_reg[5]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|ALU_BUF\(5)))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datac => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datad => \inst10|ALU_BUF\(5),
	combout => \inst10|RESULT[5]~14_combout\);

-- Location: LCCOMB_X16_Y8_N20
\inst10|RESULT[5]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[5]~16_combout\ = (\inst10|RESULT[6]~7_combout\ & ((\inst10|RESULT[5]~15_combout\ & (\inst12|acc_reg[6]~_Duplicate_1_q\)) # (!\inst10|RESULT[5]~15_combout\ & ((\inst10|RESULT[5]~14_combout\))))) # (!\inst10|RESULT[6]~7_combout\ & 
-- (((\inst10|RESULT[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datab => \inst10|RESULT[6]~7_combout\,
	datac => \inst10|RESULT[5]~15_combout\,
	datad => \inst10|RESULT[5]~14_combout\,
	combout => \inst10|RESULT[5]~16_combout\);

-- Location: LCCOMB_X16_Y8_N30
\inst10|RESULT[5]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[5]~17_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & (\inst10|Add0~21_combout\)) # (!\inst10|RESULT[6]~10_combout\ & ((\inst10|RESULT[5]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~21_combout\,
	datab => \inst10|RESULT[5]~16_combout\,
	datac => \inst10|RESULT[6]~10_combout\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[5]~17_combout\);

-- Location: LCCOMB_X19_Y7_N24
\inst10|RESULT[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[5]~18_combout\ = (\inst10|RESULT[5]~17_combout\) # ((\inst12|acc_reg[5]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datac => \inst10|RESULT[5]~17_combout\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[5]~18_combout\);

-- Location: LCCOMB_X19_Y7_N12
\inst|bus_port[5]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[5]~34_combout\ = (\inst11|bus_port[7]~0_combout\ & (\inst12|acc_reg[5]~_Duplicate_1_q\ & ((\inst7|MBR_REG\(5)) # (!\inst6|bus_port[7]~0_combout\)))) # (!\inst11|bus_port[7]~0_combout\ & (((\inst7|MBR_REG\(5)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bus_port[7]~0_combout\,
	datab => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datac => \inst7|MBR_REG\(5),
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[5]~34_combout\);

-- Location: LCCOMB_X23_Y7_N16
\inst2|PC_OUT[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(5) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(5))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PROGRAM_COUNTER_REG\(5),
	datac => \RST~inputclkctrl_outclk\,
	datad => \inst2|PC_OUT\(5),
	combout => \inst2|PC_OUT\(5));

-- Location: LCCOMB_X19_Y7_N26
\inst|bus_port[5]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[5]~33_combout\ = (\inst2|PC_OUT\(5) & (((\inst4|MAR_REG\(5))) # (!\inst5|bus_port[7]~0_combout\))) # (!\inst2|PC_OUT\(5) & (!\inst3|bus_port[7]~0_combout\ & ((\inst4|MAR_REG\(5)) # (!\inst5|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PC_OUT\(5),
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst4|MAR_REG\(5),
	combout => \inst|bus_port[5]~33_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst|bus_port[5]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[5]~35_combout\ = (\inst|bus_port[5]~34_combout\ & (\inst|bus_port[5]~33_combout\ & ((\inst1|ir_reg\(5)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[5]~34_combout\,
	datab => \inst1|ir_reg\(5),
	datac => \inst|bus_port[5]~33_combout\,
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[5]~35_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst|bus_port[5]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[5]~54_combout\ = (\inst|bus_port[5]~35_combout\ & (((\inst10|RESULT[5]~18_combout\) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datab => \inst10|RESULT[5]~18_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	datad => \inst|bus_port[5]~35_combout\,
	combout => \inst|bus_port[5]~54_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst10|RESULT[4]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[4]~19_combout\ = (\inst12|acc_reg[4]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(4) & ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))) # (!\inst10|ALU_BUF\(4) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))) # (!\inst12|acc_reg[4]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|ALU_BUF\(4)))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datad => \inst10|ALU_BUF\(4),
	combout => \inst10|RESULT[4]~19_combout\);

-- Location: LCCOMB_X16_Y8_N6
\inst10|MUL_BUF[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(4) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(4),
	combout => \inst10|MUL_BUF\(4));

-- Location: LCCOMB_X16_Y8_N16
\inst10|RESULT[4]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[4]~20_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst12|acc_reg[3]~_Duplicate_1_q\) # ((\inst10|RESULT[6]~7_combout\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (((!\inst10|RESULT[6]~7_combout\ & \inst10|MUL_BUF\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datab => \inst12|acc_reg[3]~_Duplicate_1_q\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|MUL_BUF\(4),
	combout => \inst10|RESULT[4]~20_combout\);

-- Location: LCCOMB_X16_Y8_N10
\inst10|RESULT[4]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[4]~21_combout\ = (\inst10|RESULT[6]~7_combout\ & ((\inst10|RESULT[4]~20_combout\ & ((\inst12|acc_reg[5]~_Duplicate_1_q\))) # (!\inst10|RESULT[4]~20_combout\ & (\inst10|RESULT[4]~19_combout\)))) # (!\inst10|RESULT[6]~7_combout\ & 
-- (((\inst10|RESULT[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[4]~19_combout\,
	datab => \inst12|acc_reg[5]~_Duplicate_1_q\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|RESULT[4]~20_combout\,
	combout => \inst10|RESULT[4]~21_combout\);

-- Location: LCCOMB_X16_Y8_N4
\inst10|RESULT[4]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[4]~22_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & ((\inst10|Add0~19_combout\))) # (!\inst10|RESULT[6]~10_combout\ & (\inst10|RESULT[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[4]~21_combout\,
	datab => \inst10|RESULT[6]~11_combout\,
	datac => \inst10|RESULT[6]~10_combout\,
	datad => \inst10|Add0~19_combout\,
	combout => \inst10|RESULT[4]~22_combout\);

-- Location: LCCOMB_X16_Y8_N14
\inst10|RESULT[4]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[4]~23_combout\ = (\inst10|RESULT[4]~22_combout\) # ((\inst12|acc_reg[4]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|RESULT[4]~22_combout\,
	datac => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[4]~23_combout\);

-- Location: LCCOMB_X23_Y8_N20
\inst|bus_port[4]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[4]~37_combout\ = (\inst11|bus_port[7]~0_combout\ & (\inst12|acc_reg[4]~_Duplicate_1_q\ & ((\inst7|MBR_REG\(4)) # (!\inst6|bus_port[7]~0_combout\)))) # (!\inst11|bus_port[7]~0_combout\ & (((\inst7|MBR_REG\(4)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|bus_port[7]~0_combout\,
	datab => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datac => \inst7|MBR_REG\(4),
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[4]~37_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst2|PC_OUT[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(4) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(4))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(4),
	datab => \RST~inputclkctrl_outclk\,
	datad => \inst2|PC_OUT\(4),
	combout => \inst2|PC_OUT\(4));

-- Location: LCCOMB_X22_Y8_N24
\inst|bus_port[4]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[4]~36_combout\ = (\inst4|MAR_REG\(4) & ((\inst2|PC_OUT\(4)) # ((!\inst3|bus_port[7]~0_combout\)))) # (!\inst4|MAR_REG\(4) & (!\inst5|bus_port[7]~0_combout\ & ((\inst2|PC_OUT\(4)) # (!\inst3|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MAR_REG\(4),
	datab => \inst2|PC_OUT\(4),
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst5|bus_port[7]~0_combout\,
	combout => \inst|bus_port[4]~36_combout\);

-- Location: LCCOMB_X22_Y8_N10
\inst|bus_port[4]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[4]~38_combout\ = (\inst|bus_port[4]~37_combout\ & (\inst|bus_port[4]~36_combout\ & ((\inst1|ir_reg\(4)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[7]~26_combout\,
	datab => \inst1|ir_reg\(4),
	datac => \inst|bus_port[4]~37_combout\,
	datad => \inst|bus_port[4]~36_combout\,
	combout => \inst|bus_port[4]~38_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst|bus_port[4]~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[4]~55_combout\ = (\inst|bus_port[4]~38_combout\ & ((\inst10|RESULT[4]~23_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[4]~23_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \inst|bus_port[4]~38_combout\,
	combout => \inst|bus_port[4]~55_combout\);

-- Location: LCCOMB_X22_Y8_N6
\inst2|PC_OUT[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(3) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(3))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~inputclkctrl_outclk\,
	datab => \inst2|PROGRAM_COUNTER_REG\(3),
	datad => \inst2|PC_OUT\(3),
	combout => \inst2|PC_OUT\(3));

-- Location: LCCOMB_X22_Y8_N12
\inst|bus_port[3]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[3]~39_combout\ = (\inst2|PC_OUT\(3) & (((\inst4|MAR_REG\(3))) # (!\inst5|bus_port[7]~0_combout\))) # (!\inst2|PC_OUT\(3) & (!\inst3|bus_port[7]~0_combout\ & ((\inst4|MAR_REG\(3)) # (!\inst5|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PC_OUT\(3),
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst4|MAR_REG\(3),
	combout => \inst|bus_port[3]~39_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst|bus_port[3]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[3]~40_combout\ = (\inst12|acc_reg[3]~_Duplicate_1_q\ & (((\inst7|MBR_REG\(3)) # (!\inst6|bus_port[7]~0_combout\)))) # (!\inst12|acc_reg[3]~_Duplicate_1_q\ & (!\inst11|bus_port[7]~0_combout\ & ((\inst7|MBR_REG\(3)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[3]~_Duplicate_1_q\,
	datab => \inst11|bus_port[7]~0_combout\,
	datac => \inst7|MBR_REG\(3),
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[3]~40_combout\);

-- Location: LCCOMB_X22_Y8_N8
\inst|bus_port[3]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[3]~41_combout\ = (\inst|bus_port[3]~39_combout\ & (\inst|bus_port[3]~40_combout\ & ((\inst1|ir_reg\(3)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[3]~39_combout\,
	datab => \inst1|ir_reg\(3),
	datac => \inst|bus_port[3]~40_combout\,
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[3]~41_combout\);

-- Location: LCCOMB_X17_Y8_N4
\inst10|RESULT[3]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[3]~24_combout\ = (\inst12|acc_reg[3]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(3) & ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))) # (!\inst10|ALU_BUF\(3) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))) # (!\inst12|acc_reg[3]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|ALU_BUF\(3)))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst12|acc_reg[3]~_Duplicate_1_q\,
	datad => \inst10|ALU_BUF\(3),
	combout => \inst10|RESULT[3]~24_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst10|MUL_BUF[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(3) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(3),
	combout => \inst10|MUL_BUF\(3));

-- Location: LCCOMB_X19_Y8_N10
\inst10|RESULT[3]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[3]~25_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst12|acc_reg[2]~_Duplicate_1_q\) # ((\inst10|RESULT[6]~7_combout\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (((!\inst10|RESULT[6]~7_combout\ & \inst10|MUL_BUF\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|MUL_BUF\(3),
	combout => \inst10|RESULT[3]~25_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst10|RESULT[3]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[3]~26_combout\ = (\inst10|RESULT[6]~7_combout\ & ((\inst10|RESULT[3]~25_combout\ & (\inst12|acc_reg[4]~_Duplicate_1_q\)) # (!\inst10|RESULT[3]~25_combout\ & ((\inst10|RESULT[3]~24_combout\))))) # (!\inst10|RESULT[6]~7_combout\ & 
-- (((\inst10|RESULT[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[4]~_Duplicate_1_q\,
	datab => \inst10|RESULT[3]~24_combout\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|RESULT[3]~25_combout\,
	combout => \inst10|RESULT[3]~26_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst10|RESULT[3]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[3]~27_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & (\inst10|Add0~17_combout\)) # (!\inst10|RESULT[6]~10_combout\ & ((\inst10|RESULT[3]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~17_combout\,
	datab => \inst10|RESULT[3]~26_combout\,
	datac => \inst10|RESULT[6]~11_combout\,
	datad => \inst10|RESULT[6]~10_combout\,
	combout => \inst10|RESULT[3]~27_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst10|RESULT[3]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[3]~28_combout\ = (\inst10|RESULT[3]~27_combout\) # ((\inst12|acc_reg[3]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[3]~27_combout\,
	datab => \inst12|acc_reg[3]~_Duplicate_1_q\,
	datac => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[3]~28_combout\);

-- Location: LCCOMB_X22_Y8_N0
\inst|bus_port[3]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[3]~56_combout\ = (\inst|bus_port[3]~41_combout\ & ((\inst10|RESULT[3]~28_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[3]~41_combout\,
	datab => \inst10|RESULT[3]~28_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	combout => \inst|bus_port[3]~56_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst10|RESULT[2]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[2]~29_combout\ = (\inst12|acc_reg[2]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(2) & (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38))) # (!\inst10|ALU_BUF\(2) & 
-- ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37)))))) # (!\inst12|acc_reg[2]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|ALU_BUF\(2)))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst10|ALU_BUF\(2),
	datac => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	combout => \inst10|RESULT[2]~29_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst10|MUL_BUF[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(2) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(2),
	combout => \inst10|MUL_BUF\(2));

-- Location: LCCOMB_X19_Y8_N2
\inst10|RESULT[2]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[2]~30_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst12|acc_reg[1]~_Duplicate_1_q\) # ((\inst10|RESULT[6]~7_combout\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (((!\inst10|RESULT[6]~7_combout\ & \inst10|MUL_BUF\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst10|MUL_BUF\(2),
	combout => \inst10|RESULT[2]~30_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst10|RESULT[2]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[2]~31_combout\ = (\inst10|RESULT[2]~30_combout\ & (((\inst12|acc_reg[3]~_Duplicate_1_q\) # (!\inst10|RESULT[6]~7_combout\)))) # (!\inst10|RESULT[2]~30_combout\ & (\inst10|RESULT[2]~29_combout\ & (\inst10|RESULT[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[2]~29_combout\,
	datab => \inst10|RESULT[2]~30_combout\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst12|acc_reg[3]~_Duplicate_1_q\,
	combout => \inst10|RESULT[2]~31_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst10|RESULT[2]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[2]~32_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & (\inst10|Add0~15_combout\)) # (!\inst10|RESULT[6]~10_combout\ & ((\inst10|RESULT[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~15_combout\,
	datab => \inst10|RESULT[2]~31_combout\,
	datac => \inst10|RESULT[6]~11_combout\,
	datad => \inst10|RESULT[6]~10_combout\,
	combout => \inst10|RESULT[2]~32_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst10|RESULT[2]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[2]~33_combout\ = (\inst10|RESULT[2]~32_combout\) # ((\inst12|acc_reg[2]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datab => \inst10|RESULT[2]~32_combout\,
	datac => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[2]~33_combout\);

-- Location: LCCOMB_X22_Y8_N2
\inst|bus_port[2]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[2]~43_combout\ = (\inst7|MBR_REG\(2) & (((\inst12|acc_reg[2]~_Duplicate_1_q\)) # (!\inst11|bus_port[7]~0_combout\))) # (!\inst7|MBR_REG\(2) & (!\inst6|bus_port[7]~0_combout\ & ((\inst12|acc_reg[2]~_Duplicate_1_q\) # 
-- (!\inst11|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|MBR_REG\(2),
	datab => \inst11|bus_port[7]~0_combout\,
	datac => \inst12|acc_reg[2]~_Duplicate_1_q\,
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[2]~43_combout\);

-- Location: LCCOMB_X24_Y9_N16
\inst2|PC_OUT[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(2) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(2))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(2),
	datac => \RST~inputclkctrl_outclk\,
	datad => \inst2|PC_OUT\(2),
	combout => \inst2|PC_OUT\(2));

-- Location: LCCOMB_X23_Y8_N30
\inst|bus_port[2]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[2]~42_combout\ = (\inst3|bus_port[7]~0_combout\ & (\inst2|PC_OUT\(2) & ((\inst4|MAR_REG\(2)) # (!\inst5|bus_port[7]~0_combout\)))) # (!\inst3|bus_port[7]~0_combout\ & (((\inst4|MAR_REG\(2))) # (!\inst5|bus_port[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|bus_port[7]~0_combout\,
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst4|MAR_REG\(2),
	datad => \inst2|PC_OUT\(2),
	combout => \inst|bus_port[2]~42_combout\);

-- Location: LCCOMB_X23_Y8_N0
\inst|bus_port[2]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[2]~44_combout\ = (\inst|bus_port[2]~43_combout\ & (\inst|bus_port[2]~42_combout\ & ((\inst1|ir_reg\(2)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[2]~43_combout\,
	datab => \inst1|ir_reg\(2),
	datac => \inst|bus_port[2]~42_combout\,
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[2]~44_combout\);

-- Location: LCCOMB_X22_Y8_N26
\inst|bus_port[2]~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[2]~57_combout\ = (\inst|bus_port[2]~44_combout\ & ((\inst10|RESULT[2]~33_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[2]~33_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datac => \inst|bus_port[2]~44_combout\,
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	combout => \inst|bus_port[2]~57_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst2|PC_OUT[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(1) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(1))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(1),
	datac => \RST~inputclkctrl_outclk\,
	datad => \inst2|PC_OUT\(1),
	combout => \inst2|PC_OUT\(1));

-- Location: LCCOMB_X19_Y7_N16
\inst|bus_port[1]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[1]~45_combout\ = (\inst2|PC_OUT\(1) & (((\inst4|MAR_REG\(1))) # (!\inst5|bus_port[7]~0_combout\))) # (!\inst2|PC_OUT\(1) & (!\inst3|bus_port[7]~0_combout\ & ((\inst4|MAR_REG\(1)) # (!\inst5|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PC_OUT\(1),
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst3|bus_port[7]~0_combout\,
	datad => \inst4|MAR_REG\(1),
	combout => \inst|bus_port[1]~45_combout\);

-- Location: LCCOMB_X19_Y7_N18
\inst|bus_port[1]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[1]~46_combout\ = (\inst12|acc_reg[1]~_Duplicate_1_q\ & (((\inst7|MBR_REG\(1)) # (!\inst6|bus_port[7]~0_combout\)))) # (!\inst12|acc_reg[1]~_Duplicate_1_q\ & (!\inst11|bus_port[7]~0_combout\ & ((\inst7|MBR_REG\(1)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datab => \inst11|bus_port[7]~0_combout\,
	datac => \inst7|MBR_REG\(1),
	datad => \inst6|bus_port[7]~0_combout\,
	combout => \inst|bus_port[1]~46_combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst|bus_port[1]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[1]~47_combout\ = (\inst|bus_port[1]~45_combout\ & (\inst|bus_port[1]~46_combout\ & ((\inst1|ir_reg\(1)) # (!\inst|bus_port[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bus_port[1]~45_combout\,
	datab => \inst|bus_port[1]~46_combout\,
	datac => \inst1|ir_reg\(1),
	datad => \inst|bus_port[7]~26_combout\,
	combout => \inst|bus_port[1]~47_combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst10|MUL_BUF[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(1) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(1),
	combout => \inst10|MUL_BUF\(1));

-- Location: LCCOMB_X19_Y8_N26
\inst10|RESULT[1]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[1]~35_combout\ = (\inst10|RESULT[6]~7_combout\ & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40))) # (!\inst10|RESULT[6]~7_combout\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & 
-- (\inst12|acc_reg[0]~_Duplicate_1_q\)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst10|MUL_BUF\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[6]~7_combout\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datac => \inst12|acc_reg[0]~_Duplicate_1_q\,
	datad => \inst10|MUL_BUF\(1),
	combout => \inst10|RESULT[1]~35_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst10|RESULT[1]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[1]~34_combout\ = (\inst12|acc_reg[1]~_Duplicate_1_q\ & ((\inst10|ALU_BUF\(1) & ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38)))) # (!\inst10|ALU_BUF\(1) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37))))) # (!\inst12|acc_reg[1]~_Duplicate_1_q\ & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst10|ALU_BUF\(1))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datac => \inst10|ALU_BUF\(1),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	combout => \inst10|RESULT[1]~34_combout\);

-- Location: LCCOMB_X19_Y8_N4
\inst10|RESULT[1]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[1]~36_combout\ = (\inst10|RESULT[1]~35_combout\ & (((\inst12|acc_reg[2]~_Duplicate_1_q\) # (!\inst10|RESULT[6]~7_combout\)))) # (!\inst10|RESULT[1]~35_combout\ & (\inst10|RESULT[1]~34_combout\ & (\inst10|RESULT[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[1]~35_combout\,
	datab => \inst10|RESULT[1]~34_combout\,
	datac => \inst10|RESULT[6]~7_combout\,
	datad => \inst12|acc_reg[2]~_Duplicate_1_q\,
	combout => \inst10|RESULT[1]~36_combout\);

-- Location: LCCOMB_X19_Y7_N10
\inst10|RESULT[1]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[1]~37_combout\ = (!\inst10|RESULT[6]~11_combout\ & ((\inst10|RESULT[6]~10_combout\ & (\inst10|Add0~13_combout\)) # (!\inst10|RESULT[6]~10_combout\ & ((\inst10|RESULT[1]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[6]~10_combout\,
	datab => \inst10|Add0~13_combout\,
	datac => \inst10|RESULT[1]~36_combout\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[1]~37_combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst10|RESULT[1]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[1]~38_combout\ = (\inst10|RESULT[1]~37_combout\) # ((\inst12|acc_reg[1]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[1]~37_combout\,
	datac => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[1]~38_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst|bus_port[1]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[1]~58_combout\ = (\inst|bus_port[1]~47_combout\ & (((\inst10|RESULT[1]~38_combout\) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(28),
	datab => \inst|bus_port[1]~47_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(27),
	datad => \inst10|RESULT[1]~38_combout\,
	combout => \inst|bus_port[1]~58_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst10|RESULT[0]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~40_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (((\inst12|acc_reg[0]~_Duplicate_1_q\)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & 
-- (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (\inst12|acc_reg[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst12|acc_reg[1]~_Duplicate_1_q\,
	datad => \inst12|acc_reg[0]~_Duplicate_1_q\,
	combout => \inst10|RESULT[0]~40_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst10|RESULT[7]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~39_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (\inst10|Add0~11_combout\)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & ((\inst12|acc_reg[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst10|Add0~11_combout\,
	datad => \inst12|acc_reg[0]~_Duplicate_1_q\,
	combout => \inst10|RESULT[7]~39_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst10|RESULT[0]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~41_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & ((\inst10|RESULT[7]~39_combout\))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (\inst10|RESULT[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datab => \inst10|RESULT[0]~40_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst10|RESULT[7]~39_combout\,
	combout => \inst10|RESULT[0]~41_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst10|MUL_BUF[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|MUL_BUF\(0) = (GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & (\inst10|Mult0|auto_generated|mac_out2~dataout\)) # (!GLOBAL(\inst10|Equal7~2clkctrl_outclk\) & ((\inst10|MUL_BUF\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mult0|auto_generated|mac_out2~dataout\,
	datac => \inst10|Equal7~2clkctrl_outclk\,
	datad => \inst10|MUL_BUF\(0),
	combout => \inst10|MUL_BUF\(0));

-- Location: LCCOMB_X18_Y11_N24
\inst10|RESULT[7]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[7]~42_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & ((\inst10|MUL_BUF\(0)))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & (\inst10|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datac => \inst10|Add0~11_combout\,
	datad => \inst10|MUL_BUF\(0),
	combout => \inst10|RESULT[7]~42_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst10|RESULT[0]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~43_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & ((\inst10|RESULT[7]~42_combout\) # ((\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39))))) # 
-- (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37) & (((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & \inst10|RESULT[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(37),
	datab => \inst10|RESULT[7]~42_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datad => \inst10|RESULT[7]~39_combout\,
	combout => \inst10|RESULT[0]~43_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst10|RESULT[0]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~46_combout\ = (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & ((\inst12|acc_reg[0]~_Duplicate_1_q\ & (\inst10|ALU_BUF\(0) $ (\inst10|RESULT[0]~43_combout\))) # (!\inst12|acc_reg[0]~_Duplicate_1_q\ & 
-- ((\inst10|ALU_BUF\(0)) # (!\inst10|RESULT[0]~43_combout\))))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39) & (((\inst10|RESULT[0]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[0]~_Duplicate_1_q\,
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(39),
	datac => \inst10|ALU_BUF\(0),
	datad => \inst10|RESULT[0]~43_combout\,
	combout => \inst10|RESULT[0]~46_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst10|RESULT[0]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~47_combout\ = (\inst10|RESULT[0]~43_combout\ & ((\inst10|RESULT[0]~46_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) & \inst12|acc_reg[0]~_Duplicate_1_q\)))) # (!\inst10|RESULT[0]~43_combout\ & 
-- (\inst10|RESULT[0]~46_combout\ & (\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38) $ (\inst12|acc_reg[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(38),
	datab => \inst10|RESULT[0]~43_combout\,
	datac => \inst10|RESULT[0]~46_combout\,
	datad => \inst12|acc_reg[0]~_Duplicate_1_q\,
	combout => \inst10|RESULT[0]~47_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst10|RESULT[0]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[0]~44_combout\ = (\inst10|RESULT[0]~41_combout\) # ((!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40) & \inst10|RESULT[0]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[0]~41_combout\,
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(40),
	datad => \inst10|RESULT[0]~47_combout\,
	combout => \inst10|RESULT[0]~44_combout\);

-- Location: LCCOMB_X26_Y9_N0
\inst2|PC_OUT[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|PC_OUT\(0) = (GLOBAL(\RST~inputclkctrl_outclk\) & (\inst2|PROGRAM_COUNTER_REG\(0))) # (!GLOBAL(\RST~inputclkctrl_outclk\) & ((\inst2|PC_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PROGRAM_COUNTER_REG\(0),
	datac => \RST~inputclkctrl_outclk\,
	datad => \inst2|PC_OUT\(0),
	combout => \inst2|PC_OUT\(0));

-- Location: LCCOMB_X21_Y8_N10
\inst3|bus_port[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst3|bus_port[0]~1_combout\ = ((\inst2|PC_OUT\(0)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(24),
	datac => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(23),
	datad => \inst2|PC_OUT\(0),
	combout => \inst3|bus_port[0]~1_combout\);

-- Location: LCCOMB_X21_Y8_N12
\inst|bus_port[0]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[0]~49_combout\ = (\inst12|acc_reg[0]~_Duplicate_1_q\ & ((\inst7|MBR_REG\(0)) # ((!\inst6|bus_port[7]~0_combout\)))) # (!\inst12|acc_reg[0]~_Duplicate_1_q\ & (!\inst11|bus_port[7]~0_combout\ & ((\inst7|MBR_REG\(0)) # 
-- (!\inst6|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc_reg[0]~_Duplicate_1_q\,
	datab => \inst7|MBR_REG\(0),
	datac => \inst6|bus_port[7]~0_combout\,
	datad => \inst11|bus_port[7]~0_combout\,
	combout => \inst|bus_port[0]~49_combout\);

-- Location: LCCOMB_X21_Y8_N14
\inst|bus_port[0]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[0]~50_combout\ = (\inst3|bus_port[0]~1_combout\ & (\inst|bus_port[0]~49_combout\ & ((\inst4|MAR_REG\(0)) # (!\inst5|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|bus_port[0]~1_combout\,
	datab => \inst5|bus_port[7]~0_combout\,
	datac => \inst4|MAR_REG\(0),
	datad => \inst|bus_port[0]~49_combout\,
	combout => \inst|bus_port[0]~50_combout\);

-- Location: LCCOMB_X21_Y8_N0
\inst|bus_port[0]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[0]~48_combout\ = ((\inst1|ir_reg\(0)) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8))) # (!\inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(9),
	datac => \inst1|ir_reg\(0),
	datad => \inst15|altsyncram_component|auto_generated|altsyncram1|q_a\(8),
	combout => \inst|bus_port[0]~48_combout\);

-- Location: LCCOMB_X21_Y8_N24
\inst|bus_port[0]~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|bus_port[0]~51_combout\ = (\inst|bus_port[0]~50_combout\ & (\inst|bus_port[0]~48_combout\ & ((\inst10|RESULT[0]~44_combout\) # (!\inst9|bus_port[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bus_port[7]~0_combout\,
	datab => \inst10|RESULT[0]~44_combout\,
	datac => \inst|bus_port[0]~50_combout\,
	datad => \inst|bus_port[0]~48_combout\,
	combout => \inst|bus_port[0]~51_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst12|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst12|Equal0~2_combout\ = (\inst12|Equal0~1_combout\ & \inst12|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~1_combout\,
	datac => \inst12|Equal0~0_combout\,
	combout => \inst12|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y8_N22
\inst10|RESULT[6]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst10|RESULT[6]~13_combout\ = (\inst10|RESULT[6]~12_combout\) # ((\inst12|acc_reg[6]~_Duplicate_1_q\ & \inst10|RESULT[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|RESULT[6]~12_combout\,
	datac => \inst12|acc_reg[6]~_Duplicate_1_q\,
	datad => \inst10|RESULT[6]~11_combout\,
	combout => \inst10|RESULT[6]~13_combout\);

-- Location: LCCOMB_X24_Y19_N0
\auto_hub|~GND\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X14_Y16_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X17_Y16_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : cyclone10lp_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);
END structure;


