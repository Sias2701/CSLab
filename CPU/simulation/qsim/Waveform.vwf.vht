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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/11/2022 16:52:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ACC_ZF : STD_LOGIC;
SIGNAL ALU_MODE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALU_OP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_RES : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL BRANCH_ADDRESS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL BUS_CTX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CAR_CONTROL : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL CONTROL_ADDRESS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CONTROL_BUS : STD_LOGIC_VECTOR(21 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MBR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MBR_BUS_CONTROL : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL MEM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEM_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEM_RW : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_BUS_CONTROL : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT CPU
	PORT (
	ACC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ACC_ZF : OUT STD_LOGIC;
	ALU_MODE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALU_OP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_RES : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	BRANCH_ADDRESS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	BUS_CTX : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CAR_CONTROL : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	CONTROL_ADDRESS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CONTROL_BUS : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MBR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MBR_BUS_CONTROL : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	MEM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEM_IN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEM_RW : OUT STD_LOGIC;
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_BUS_CONTROL : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	ACC => ACC,
	ACC_ZF => ACC_ZF,
	ALU_MODE => ALU_MODE,
	ALU_OP => ALU_OP,
	ALU_RES => ALU_RES,
	BRANCH_ADDRESS => BRANCH_ADDRESS,
	BUS_CTX => BUS_CTX,
	CAR_CONTROL => CAR_CONTROL,
	CLK => CLK,
	CONTROL_ADDRESS => CONTROL_ADDRESS,
	CONTROL_BUS => CONTROL_BUS,
	IR => IR,
	MAR => MAR,
	MBR => MBR,
	MBR_BUS_CONTROL => MBR_BUS_CONTROL,
	MEM => MEM,
	MEM_IN => MEM_IN,
	MEM_RW => MEM_RW,
	PC => PC,
	PC_BUS_CONTROL => PC_BUS_CONTROL,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 2500 ps;
	CLK <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 20000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
-- BUS_CTX[7]
t_prcs_BUS_CTX_7: PROCESS
BEGIN
	BUS_CTX(7) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_7;
-- BUS_CTX[6]
t_prcs_BUS_CTX_6: PROCESS
BEGIN
	BUS_CTX(6) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_6;
-- BUS_CTX[5]
t_prcs_BUS_CTX_5: PROCESS
BEGIN
	BUS_CTX(5) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_5;
-- BUS_CTX[4]
t_prcs_BUS_CTX_4: PROCESS
BEGIN
	BUS_CTX(4) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_4;
-- BUS_CTX[3]
t_prcs_BUS_CTX_3: PROCESS
BEGIN
	BUS_CTX(3) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_3;
-- BUS_CTX[2]
t_prcs_BUS_CTX_2: PROCESS
BEGIN
	BUS_CTX(2) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_2;
-- BUS_CTX[1]
t_prcs_BUS_CTX_1: PROCESS
BEGIN
	BUS_CTX(1) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_1;
-- BUS_CTX[0]
t_prcs_BUS_CTX_0: PROCESS
BEGIN
	BUS_CTX(0) <= 'Z';
WAIT;
END PROCESS t_prcs_BUS_CTX_0;
END CPU_arch;
