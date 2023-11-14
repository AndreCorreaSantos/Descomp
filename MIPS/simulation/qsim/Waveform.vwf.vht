-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "11/14/2023 14:12:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_vhd_vec_tst IS
END MIPS_vhd_vec_tst;
ARCHITECTURE MIPS_arch OF MIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL entradaAOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entradaBOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saidaInstrucao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaPCOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaULAOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	entradaAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entradaBOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	saidaInstrucao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaPCOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaULAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	entradaAOUT => entradaAOUT,
	entradaBOUT => entradaBOUT,
	KEY => KEY,
	saidaInstrucao => saidaInstrucao,
	saidaPCOUT => saidaPCOUT,
	saidaULAOUT => saidaULAOUT
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		KEY(0) <= '0';
		WAIT FOR 40000 ps;
		KEY(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_KEY_0;
END MIPS_arch;
