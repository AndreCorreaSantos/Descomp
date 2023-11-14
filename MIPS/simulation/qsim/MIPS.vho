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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/14/2023 20:44:39"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	MIPS IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	saidaULAOUT : OUT std_logic_vector(31 DOWNTO 0);
	entradaAOUT : OUT std_logic_vector(31 DOWNTO 0);
	entradaBOUT : OUT std_logic_vector(31 DOWNTO 0);
	saidaPCOUT : OUT std_logic_vector(31 DOWNTO 0);
	saidaInstrucao : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

ARCHITECTURE structure OF MIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_saidaULAOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaAOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaBOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaPCOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaInstrucao : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \saidaULAOUT[0]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[1]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[2]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[3]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[4]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[5]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[6]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[7]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[8]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[9]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[10]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[11]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[12]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[13]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[14]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[15]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[16]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[17]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[18]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[19]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[20]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[21]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[22]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[23]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[24]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[25]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[26]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[27]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[28]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[29]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[30]~output_o\ : std_logic;
SIGNAL \saidaULAOUT[31]~output_o\ : std_logic;
SIGNAL \entradaAOUT[0]~output_o\ : std_logic;
SIGNAL \entradaAOUT[1]~output_o\ : std_logic;
SIGNAL \entradaAOUT[2]~output_o\ : std_logic;
SIGNAL \entradaAOUT[3]~output_o\ : std_logic;
SIGNAL \entradaAOUT[4]~output_o\ : std_logic;
SIGNAL \entradaAOUT[5]~output_o\ : std_logic;
SIGNAL \entradaAOUT[6]~output_o\ : std_logic;
SIGNAL \entradaAOUT[7]~output_o\ : std_logic;
SIGNAL \entradaAOUT[8]~output_o\ : std_logic;
SIGNAL \entradaAOUT[9]~output_o\ : std_logic;
SIGNAL \entradaAOUT[10]~output_o\ : std_logic;
SIGNAL \entradaAOUT[11]~output_o\ : std_logic;
SIGNAL \entradaAOUT[12]~output_o\ : std_logic;
SIGNAL \entradaAOUT[13]~output_o\ : std_logic;
SIGNAL \entradaAOUT[14]~output_o\ : std_logic;
SIGNAL \entradaAOUT[15]~output_o\ : std_logic;
SIGNAL \entradaAOUT[16]~output_o\ : std_logic;
SIGNAL \entradaAOUT[17]~output_o\ : std_logic;
SIGNAL \entradaAOUT[18]~output_o\ : std_logic;
SIGNAL \entradaAOUT[19]~output_o\ : std_logic;
SIGNAL \entradaAOUT[20]~output_o\ : std_logic;
SIGNAL \entradaAOUT[21]~output_o\ : std_logic;
SIGNAL \entradaAOUT[22]~output_o\ : std_logic;
SIGNAL \entradaAOUT[23]~output_o\ : std_logic;
SIGNAL \entradaAOUT[24]~output_o\ : std_logic;
SIGNAL \entradaAOUT[25]~output_o\ : std_logic;
SIGNAL \entradaAOUT[26]~output_o\ : std_logic;
SIGNAL \entradaAOUT[27]~output_o\ : std_logic;
SIGNAL \entradaAOUT[28]~output_o\ : std_logic;
SIGNAL \entradaAOUT[29]~output_o\ : std_logic;
SIGNAL \entradaAOUT[30]~output_o\ : std_logic;
SIGNAL \entradaAOUT[31]~output_o\ : std_logic;
SIGNAL \entradaBOUT[0]~output_o\ : std_logic;
SIGNAL \entradaBOUT[1]~output_o\ : std_logic;
SIGNAL \entradaBOUT[2]~output_o\ : std_logic;
SIGNAL \entradaBOUT[3]~output_o\ : std_logic;
SIGNAL \entradaBOUT[4]~output_o\ : std_logic;
SIGNAL \entradaBOUT[5]~output_o\ : std_logic;
SIGNAL \entradaBOUT[6]~output_o\ : std_logic;
SIGNAL \entradaBOUT[7]~output_o\ : std_logic;
SIGNAL \entradaBOUT[8]~output_o\ : std_logic;
SIGNAL \entradaBOUT[9]~output_o\ : std_logic;
SIGNAL \entradaBOUT[10]~output_o\ : std_logic;
SIGNAL \entradaBOUT[11]~output_o\ : std_logic;
SIGNAL \entradaBOUT[12]~output_o\ : std_logic;
SIGNAL \entradaBOUT[13]~output_o\ : std_logic;
SIGNAL \entradaBOUT[14]~output_o\ : std_logic;
SIGNAL \entradaBOUT[15]~output_o\ : std_logic;
SIGNAL \entradaBOUT[16]~output_o\ : std_logic;
SIGNAL \entradaBOUT[17]~output_o\ : std_logic;
SIGNAL \entradaBOUT[18]~output_o\ : std_logic;
SIGNAL \entradaBOUT[19]~output_o\ : std_logic;
SIGNAL \entradaBOUT[20]~output_o\ : std_logic;
SIGNAL \entradaBOUT[21]~output_o\ : std_logic;
SIGNAL \entradaBOUT[22]~output_o\ : std_logic;
SIGNAL \entradaBOUT[23]~output_o\ : std_logic;
SIGNAL \entradaBOUT[24]~output_o\ : std_logic;
SIGNAL \entradaBOUT[25]~output_o\ : std_logic;
SIGNAL \entradaBOUT[26]~output_o\ : std_logic;
SIGNAL \entradaBOUT[27]~output_o\ : std_logic;
SIGNAL \entradaBOUT[28]~output_o\ : std_logic;
SIGNAL \entradaBOUT[29]~output_o\ : std_logic;
SIGNAL \entradaBOUT[30]~output_o\ : std_logic;
SIGNAL \entradaBOUT[31]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[0]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[1]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[2]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[3]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[4]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[5]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[6]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[7]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[8]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[9]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[10]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[11]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[12]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[13]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[14]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[15]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[16]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[17]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[18]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[19]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[20]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[21]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[22]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[23]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[24]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[25]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[26]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[27]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[28]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[29]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[30]~output_o\ : std_logic;
SIGNAL \saidaPCOUT[31]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[0]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[1]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[2]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[3]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[4]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[5]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[6]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[7]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[8]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[9]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[10]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[11]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[12]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[13]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[14]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[15]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[16]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[17]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[18]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[19]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[20]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[21]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[22]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[23]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[24]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[25]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[26]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[27]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[28]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[29]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[30]~output_o\ : std_logic;
SIGNAL \saidaInstrucao[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ProgramCounter|DOUT[2]~0_combout\ : std_logic;
SIGNAL \SomaPC|Add0~1_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~2\ : std_logic;
SIGNAL \SomaPC|Add0~5_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~6\ : std_logic;
SIGNAL \SomaPC|Add0~9_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~10\ : std_logic;
SIGNAL \SomaPC|Add0~17_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~18\ : std_logic;
SIGNAL \SomaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Banco|registrador~294_q\ : std_logic;
SIGNAL \Banco|saidaA[0]~0_combout\ : std_logic;
SIGNAL \Banco|registrador~38_q\ : std_logic;
SIGNAL \Banco|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~39_q\ : std_logic;
SIGNAL \Banco|registrador~295_q\ : std_logic;
SIGNAL \Banco|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \Banco|registrador~296_q\ : std_logic;
SIGNAL \Banco|saidaA[2]~2_combout\ : std_logic;
SIGNAL \Banco|registrador~40_q\ : std_logic;
SIGNAL \Banco|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~41_q\ : std_logic;
SIGNAL \Banco|registrador~297_q\ : std_logic;
SIGNAL \Banco|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \Banco|registrador~298_q\ : std_logic;
SIGNAL \Banco|saidaA[4]~4_combout\ : std_logic;
SIGNAL \Banco|registrador~42_q\ : std_logic;
SIGNAL \Banco|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \Banco|registrador~299_q\ : std_logic;
SIGNAL \Banco|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|Add0~21_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~43_q\ : std_logic;
SIGNAL \Banco|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \Banco|registrador~300_q\ : std_logic;
SIGNAL \Banco|saidaA[6]~6_combout\ : std_logic;
SIGNAL \Banco|registrador~44_q\ : std_logic;
SIGNAL \Banco|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \Banco|registrador~301_q\ : std_logic;
SIGNAL \Banco|saidaA[7]~7_combout\ : std_logic;
SIGNAL \ULA|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~45_q\ : std_logic;
SIGNAL \Banco|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \Banco|registrador~302_q\ : std_logic;
SIGNAL \Banco|saidaA[8]~8_combout\ : std_logic;
SIGNAL \Banco|registrador~46_q\ : std_logic;
SIGNAL \Banco|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \Banco|registrador~303_q\ : std_logic;
SIGNAL \Banco|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|Add0~37_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~47_q\ : std_logic;
SIGNAL \Banco|registrador~1071_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \Banco|registrador~304_q\ : std_logic;
SIGNAL \Banco|saidaA[10]~10_combout\ : std_logic;
SIGNAL \Banco|registrador~48_q\ : std_logic;
SIGNAL \Banco|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \Banco|registrador~305_q\ : std_logic;
SIGNAL \Banco|saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~49_q\ : std_logic;
SIGNAL \Banco|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \Banco|registrador~306_q\ : std_logic;
SIGNAL \Banco|saidaA[12]~12_combout\ : std_logic;
SIGNAL \Banco|registrador~50_q\ : std_logic;
SIGNAL \Banco|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \Banco|registrador~307_q\ : std_logic;
SIGNAL \Banco|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA|Add0~53_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~51_q\ : std_logic;
SIGNAL \Banco|registrador~1075_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \Banco|registrador~308_q\ : std_logic;
SIGNAL \Banco|saidaA[14]~14_combout\ : std_logic;
SIGNAL \Banco|registrador~52_q\ : std_logic;
SIGNAL \Banco|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \Banco|registrador~309_q\ : std_logic;
SIGNAL \Banco|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~53_q\ : std_logic;
SIGNAL \Banco|registrador~1077_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \Banco|registrador~310_q\ : std_logic;
SIGNAL \Banco|saidaA[16]~16_combout\ : std_logic;
SIGNAL \Banco|registrador~54_q\ : std_logic;
SIGNAL \Banco|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \Banco|registrador~311_q\ : std_logic;
SIGNAL \Banco|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~69_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~55_q\ : std_logic;
SIGNAL \Banco|registrador~1079_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \Banco|registrador~312_q\ : std_logic;
SIGNAL \Banco|saidaA[18]~18_combout\ : std_logic;
SIGNAL \Banco|registrador~56_q\ : std_logic;
SIGNAL \Banco|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \Banco|registrador~313_q\ : std_logic;
SIGNAL \Banco|saidaA[19]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~57_q\ : std_logic;
SIGNAL \Banco|registrador~1081_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \Banco|registrador~314_q\ : std_logic;
SIGNAL \Banco|saidaA[20]~20_combout\ : std_logic;
SIGNAL \Banco|registrador~58_q\ : std_logic;
SIGNAL \Banco|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \Banco|registrador~315_q\ : std_logic;
SIGNAL \Banco|saidaA[21]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~85_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~59_q\ : std_logic;
SIGNAL \Banco|registrador~1083_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \Banco|registrador~316_q\ : std_logic;
SIGNAL \Banco|saidaA[22]~22_combout\ : std_logic;
SIGNAL \Banco|registrador~60_q\ : std_logic;
SIGNAL \Banco|registrador~1084_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \Banco|registrador~317_q\ : std_logic;
SIGNAL \Banco|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~61_q\ : std_logic;
SIGNAL \Banco|registrador~1085_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \Banco|registrador~318_q\ : std_logic;
SIGNAL \Banco|saidaA[24]~24_combout\ : std_logic;
SIGNAL \Banco|registrador~62_q\ : std_logic;
SIGNAL \Banco|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \Banco|registrador~319_q\ : std_logic;
SIGNAL \Banco|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~63_q\ : std_logic;
SIGNAL \Banco|registrador~1087_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \Banco|registrador~320_q\ : std_logic;
SIGNAL \Banco|saidaA[26]~26_combout\ : std_logic;
SIGNAL \Banco|registrador~64_q\ : std_logic;
SIGNAL \Banco|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \Banco|registrador~321_q\ : std_logic;
SIGNAL \Banco|saidaA[27]~27_combout\ : std_logic;
SIGNAL \ULA|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~65_q\ : std_logic;
SIGNAL \Banco|registrador~1089_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \Banco|registrador~322_q\ : std_logic;
SIGNAL \Banco|saidaA[28]~28_combout\ : std_logic;
SIGNAL \Banco|registrador~66_q\ : std_logic;
SIGNAL \Banco|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \Banco|registrador~323_q\ : std_logic;
SIGNAL \Banco|saidaA[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~67_q\ : std_logic;
SIGNAL \Banco|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \Banco|registrador~324_q\ : std_logic;
SIGNAL \Banco|saidaA[30]~30_combout\ : std_logic;
SIGNAL \Banco|registrador~68_q\ : std_logic;
SIGNAL \Banco|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \Banco|registrador~325_q\ : std_logic;
SIGNAL \Banco|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \Banco|registrador~69_q\ : std_logic;
SIGNAL \Banco|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \Banco|saidaA[1]~1_combout\ : std_logic;
SIGNAL \Banco|saidaA[3]~3_combout\ : std_logic;
SIGNAL \SomaPC|Add0~14\ : std_logic;
SIGNAL \SomaPC|Add0~21_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~22\ : std_logic;
SIGNAL \SomaPC|Add0~25_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~26\ : std_logic;
SIGNAL \SomaPC|Add0~29_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~30\ : std_logic;
SIGNAL \SomaPC|Add0~33_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~34\ : std_logic;
SIGNAL \SomaPC|Add0~37_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~38\ : std_logic;
SIGNAL \SomaPC|Add0~41_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~42\ : std_logic;
SIGNAL \SomaPC|Add0~45_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~46\ : std_logic;
SIGNAL \SomaPC|Add0~49_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~50\ : std_logic;
SIGNAL \SomaPC|Add0~53_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~54\ : std_logic;
SIGNAL \SomaPC|Add0~57_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~58\ : std_logic;
SIGNAL \SomaPC|Add0~61_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~62\ : std_logic;
SIGNAL \SomaPC|Add0~65_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~66\ : std_logic;
SIGNAL \SomaPC|Add0~69_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~70\ : std_logic;
SIGNAL \SomaPC|Add0~73_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~74\ : std_logic;
SIGNAL \SomaPC|Add0~77_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~78\ : std_logic;
SIGNAL \SomaPC|Add0~81_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~82\ : std_logic;
SIGNAL \SomaPC|Add0~85_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~86\ : std_logic;
SIGNAL \SomaPC|Add0~89_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~90\ : std_logic;
SIGNAL \SomaPC|Add0~93_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~94\ : std_logic;
SIGNAL \SomaPC|Add0~97_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~98\ : std_logic;
SIGNAL \SomaPC|Add0~101_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~102\ : std_logic;
SIGNAL \SomaPC|Add0~105_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~106\ : std_logic;
SIGNAL \SomaPC|Add0~109_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~110\ : std_logic;
SIGNAL \SomaPC|Add0~113_sumout\ : std_logic;
SIGNAL \ProgramCounter|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Banco|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ProgramCounter|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \Banco|ALT_INV_saidaA[6]~6_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
saidaULAOUT <= ww_saidaULAOUT;
entradaAOUT <= ww_entradaAOUT;
entradaBOUT <= ww_entradaBOUT;
saidaPCOUT <= ww_saidaPCOUT;
saidaInstrucao <= ww_saidaInstrucao;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Banco|ALT_INV_registrador~311_q\ <= NOT \Banco|registrador~311_q\;
\Banco|ALT_INV_registrador~54_q\ <= NOT \Banco|registrador~54_q\;
\Banco|ALT_INV_registrador~310_q\ <= NOT \Banco|registrador~310_q\;
\Banco|ALT_INV_registrador~53_q\ <= NOT \Banco|registrador~53_q\;
\Banco|ALT_INV_registrador~309_q\ <= NOT \Banco|registrador~309_q\;
\Banco|ALT_INV_registrador~52_q\ <= NOT \Banco|registrador~52_q\;
\Banco|ALT_INV_registrador~308_q\ <= NOT \Banco|registrador~308_q\;
\Banco|ALT_INV_registrador~51_q\ <= NOT \Banco|registrador~51_q\;
\Banco|ALT_INV_registrador~307_q\ <= NOT \Banco|registrador~307_q\;
\Banco|ALT_INV_registrador~50_q\ <= NOT \Banco|registrador~50_q\;
\Banco|ALT_INV_registrador~306_q\ <= NOT \Banco|registrador~306_q\;
\Banco|ALT_INV_registrador~49_q\ <= NOT \Banco|registrador~49_q\;
\Banco|ALT_INV_registrador~305_q\ <= NOT \Banco|registrador~305_q\;
\Banco|ALT_INV_registrador~48_q\ <= NOT \Banco|registrador~48_q\;
\Banco|ALT_INV_registrador~304_q\ <= NOT \Banco|registrador~304_q\;
\Banco|ALT_INV_registrador~47_q\ <= NOT \Banco|registrador~47_q\;
\Banco|ALT_INV_registrador~303_q\ <= NOT \Banco|registrador~303_q\;
\Banco|ALT_INV_registrador~46_q\ <= NOT \Banco|registrador~46_q\;
\Banco|ALT_INV_registrador~302_q\ <= NOT \Banco|registrador~302_q\;
\Banco|ALT_INV_registrador~45_q\ <= NOT \Banco|registrador~45_q\;
\Banco|ALT_INV_registrador~301_q\ <= NOT \Banco|registrador~301_q\;
\Banco|ALT_INV_registrador~44_q\ <= NOT \Banco|registrador~44_q\;
\Banco|ALT_INV_registrador~300_q\ <= NOT \Banco|registrador~300_q\;
\Banco|ALT_INV_registrador~43_q\ <= NOT \Banco|registrador~43_q\;
\Banco|ALT_INV_registrador~299_q\ <= NOT \Banco|registrador~299_q\;
\Banco|ALT_INV_registrador~42_q\ <= NOT \Banco|registrador~42_q\;
\Banco|ALT_INV_registrador~298_q\ <= NOT \Banco|registrador~298_q\;
\Banco|ALT_INV_registrador~297_q\ <= NOT \Banco|registrador~297_q\;
\Banco|ALT_INV_registrador~41_q\ <= NOT \Banco|registrador~41_q\;
\Banco|ALT_INV_registrador~40_q\ <= NOT \Banco|registrador~40_q\;
\Banco|ALT_INV_registrador~296_q\ <= NOT \Banco|registrador~296_q\;
\Banco|ALT_INV_registrador~295_q\ <= NOT \Banco|registrador~295_q\;
\Banco|ALT_INV_registrador~39_q\ <= NOT \Banco|registrador~39_q\;
\Banco|ALT_INV_registrador~38_q\ <= NOT \Banco|registrador~38_q\;
\Banco|ALT_INV_registrador~294_q\ <= NOT \Banco|registrador~294_q\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\Banco|ALT_INV_saidaA[5]~5_combout\ <= NOT \Banco|saidaA[5]~5_combout\;
\Banco|ALT_INV_saidaA[4]~4_combout\ <= NOT \Banco|saidaA[4]~4_combout\;
\Banco|ALT_INV_registrador~1063_combout\ <= NOT \Banco|registrador~1063_combout\;
\Banco|ALT_INV_saidaA[2]~2_combout\ <= NOT \Banco|saidaA[2]~2_combout\;
\Banco|ALT_INV_registrador~1062_combout\ <= NOT \Banco|registrador~1062_combout\;
\Banco|ALT_INV_saidaA[0]~0_combout\ <= NOT \Banco|saidaA[0]~0_combout\;
\ProgramCounter|ALT_INV_DOUT\(2) <= NOT \ProgramCounter|DOUT\(2);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\ProgramCounter|ALT_INV_DOUT\(6) <= NOT \ProgramCounter|DOUT\(6);
\ProgramCounter|ALT_INV_DOUT\(7) <= NOT \ProgramCounter|DOUT\(7);
\ProgramCounter|ALT_INV_DOUT\(5) <= NOT \ProgramCounter|DOUT\(5);
\ProgramCounter|ALT_INV_DOUT\(4) <= NOT \ProgramCounter|DOUT\(4);
\ProgramCounter|ALT_INV_DOUT\(3) <= NOT \ProgramCounter|DOUT\(3);
\Banco|ALT_INV_registrador~69_q\ <= NOT \Banco|registrador~69_q\;
\Banco|ALT_INV_registrador~325_q\ <= NOT \Banco|registrador~325_q\;
\Banco|ALT_INV_registrador~68_q\ <= NOT \Banco|registrador~68_q\;
\Banco|ALT_INV_registrador~324_q\ <= NOT \Banco|registrador~324_q\;
\Banco|ALT_INV_registrador~67_q\ <= NOT \Banco|registrador~67_q\;
\Banco|ALT_INV_registrador~323_q\ <= NOT \Banco|registrador~323_q\;
\Banco|ALT_INV_registrador~66_q\ <= NOT \Banco|registrador~66_q\;
\Banco|ALT_INV_registrador~322_q\ <= NOT \Banco|registrador~322_q\;
\Banco|ALT_INV_registrador~65_q\ <= NOT \Banco|registrador~65_q\;
\Banco|ALT_INV_registrador~321_q\ <= NOT \Banco|registrador~321_q\;
\Banco|ALT_INV_registrador~64_q\ <= NOT \Banco|registrador~64_q\;
\Banco|ALT_INV_registrador~320_q\ <= NOT \Banco|registrador~320_q\;
\Banco|ALT_INV_registrador~63_q\ <= NOT \Banco|registrador~63_q\;
\Banco|ALT_INV_registrador~319_q\ <= NOT \Banco|registrador~319_q\;
\Banco|ALT_INV_registrador~62_q\ <= NOT \Banco|registrador~62_q\;
\Banco|ALT_INV_registrador~318_q\ <= NOT \Banco|registrador~318_q\;
\Banco|ALT_INV_registrador~61_q\ <= NOT \Banco|registrador~61_q\;
\Banco|ALT_INV_registrador~317_q\ <= NOT \Banco|registrador~317_q\;
\Banco|ALT_INV_registrador~60_q\ <= NOT \Banco|registrador~60_q\;
\Banco|ALT_INV_registrador~316_q\ <= NOT \Banco|registrador~316_q\;
\Banco|ALT_INV_registrador~59_q\ <= NOT \Banco|registrador~59_q\;
\Banco|ALT_INV_registrador~315_q\ <= NOT \Banco|registrador~315_q\;
\Banco|ALT_INV_registrador~58_q\ <= NOT \Banco|registrador~58_q\;
\Banco|ALT_INV_registrador~314_q\ <= NOT \Banco|registrador~314_q\;
\Banco|ALT_INV_registrador~57_q\ <= NOT \Banco|registrador~57_q\;
\Banco|ALT_INV_registrador~313_q\ <= NOT \Banco|registrador~313_q\;
\Banco|ALT_INV_registrador~56_q\ <= NOT \Banco|registrador~56_q\;
\Banco|ALT_INV_registrador~312_q\ <= NOT \Banco|registrador~312_q\;
\Banco|ALT_INV_registrador~55_q\ <= NOT \Banco|registrador~55_q\;
\Banco|ALT_INV_registrador~1093_combout\ <= NOT \Banco|registrador~1093_combout\;
\Banco|ALT_INV_registrador~1092_combout\ <= NOT \Banco|registrador~1092_combout\;
\Banco|ALT_INV_registrador~1091_combout\ <= NOT \Banco|registrador~1091_combout\;
\Banco|ALT_INV_registrador~1090_combout\ <= NOT \Banco|registrador~1090_combout\;
\Banco|ALT_INV_registrador~1089_combout\ <= NOT \Banco|registrador~1089_combout\;
\Banco|ALT_INV_registrador~1088_combout\ <= NOT \Banco|registrador~1088_combout\;
\Banco|ALT_INV_registrador~1087_combout\ <= NOT \Banco|registrador~1087_combout\;
\Banco|ALT_INV_registrador~1086_combout\ <= NOT \Banco|registrador~1086_combout\;
\Banco|ALT_INV_registrador~1085_combout\ <= NOT \Banco|registrador~1085_combout\;
\Banco|ALT_INV_registrador~1084_combout\ <= NOT \Banco|registrador~1084_combout\;
\Banco|ALT_INV_registrador~1083_combout\ <= NOT \Banco|registrador~1083_combout\;
\Banco|ALT_INV_registrador~1082_combout\ <= NOT \Banco|registrador~1082_combout\;
\Banco|ALT_INV_registrador~1081_combout\ <= NOT \Banco|registrador~1081_combout\;
\Banco|ALT_INV_registrador~1080_combout\ <= NOT \Banco|registrador~1080_combout\;
\Banco|ALT_INV_registrador~1079_combout\ <= NOT \Banco|registrador~1079_combout\;
\Banco|ALT_INV_registrador~1078_combout\ <= NOT \Banco|registrador~1078_combout\;
\Banco|ALT_INV_registrador~1077_combout\ <= NOT \Banco|registrador~1077_combout\;
\Banco|ALT_INV_registrador~1076_combout\ <= NOT \Banco|registrador~1076_combout\;
\Banco|ALT_INV_registrador~1075_combout\ <= NOT \Banco|registrador~1075_combout\;
\Banco|ALT_INV_registrador~1074_combout\ <= NOT \Banco|registrador~1074_combout\;
\Banco|ALT_INV_registrador~1073_combout\ <= NOT \Banco|registrador~1073_combout\;
\Banco|ALT_INV_registrador~1072_combout\ <= NOT \Banco|registrador~1072_combout\;
\Banco|ALT_INV_registrador~1071_combout\ <= NOT \Banco|registrador~1071_combout\;
\Banco|ALT_INV_registrador~1070_combout\ <= NOT \Banco|registrador~1070_combout\;
\Banco|ALT_INV_registrador~1069_combout\ <= NOT \Banco|registrador~1069_combout\;
\Banco|ALT_INV_registrador~1068_combout\ <= NOT \Banco|registrador~1068_combout\;
\Banco|ALT_INV_registrador~1067_combout\ <= NOT \Banco|registrador~1067_combout\;
\Banco|ALT_INV_registrador~1066_combout\ <= NOT \Banco|registrador~1066_combout\;
\Banco|ALT_INV_registrador~1065_combout\ <= NOT \Banco|registrador~1065_combout\;
\Banco|ALT_INV_registrador~1064_combout\ <= NOT \Banco|registrador~1064_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ProgramCounter|ALT_INV_DOUT\(31) <= NOT \ProgramCounter|DOUT\(31);
\ProgramCounter|ALT_INV_DOUT\(30) <= NOT \ProgramCounter|DOUT\(30);
\ProgramCounter|ALT_INV_DOUT\(29) <= NOT \ProgramCounter|DOUT\(29);
\ProgramCounter|ALT_INV_DOUT\(28) <= NOT \ProgramCounter|DOUT\(28);
\ProgramCounter|ALT_INV_DOUT\(27) <= NOT \ProgramCounter|DOUT\(27);
\ProgramCounter|ALT_INV_DOUT\(26) <= NOT \ProgramCounter|DOUT\(26);
\ProgramCounter|ALT_INV_DOUT\(25) <= NOT \ProgramCounter|DOUT\(25);
\ProgramCounter|ALT_INV_DOUT\(24) <= NOT \ProgramCounter|DOUT\(24);
\ProgramCounter|ALT_INV_DOUT\(23) <= NOT \ProgramCounter|DOUT\(23);
\ProgramCounter|ALT_INV_DOUT\(22) <= NOT \ProgramCounter|DOUT\(22);
\ProgramCounter|ALT_INV_DOUT\(21) <= NOT \ProgramCounter|DOUT\(21);
\ProgramCounter|ALT_INV_DOUT\(20) <= NOT \ProgramCounter|DOUT\(20);
\ProgramCounter|ALT_INV_DOUT\(19) <= NOT \ProgramCounter|DOUT\(19);
\ProgramCounter|ALT_INV_DOUT\(18) <= NOT \ProgramCounter|DOUT\(18);
\ProgramCounter|ALT_INV_DOUT\(17) <= NOT \ProgramCounter|DOUT\(17);
\ProgramCounter|ALT_INV_DOUT\(16) <= NOT \ProgramCounter|DOUT\(16);
\ProgramCounter|ALT_INV_DOUT\(15) <= NOT \ProgramCounter|DOUT\(15);
\ProgramCounter|ALT_INV_DOUT\(14) <= NOT \ProgramCounter|DOUT\(14);
\ProgramCounter|ALT_INV_DOUT\(13) <= NOT \ProgramCounter|DOUT\(13);
\ProgramCounter|ALT_INV_DOUT\(12) <= NOT \ProgramCounter|DOUT\(12);
\ProgramCounter|ALT_INV_DOUT\(11) <= NOT \ProgramCounter|DOUT\(11);
\ProgramCounter|ALT_INV_DOUT\(10) <= NOT \ProgramCounter|DOUT\(10);
\ProgramCounter|ALT_INV_DOUT\(9) <= NOT \ProgramCounter|DOUT\(9);
\ProgramCounter|ALT_INV_DOUT\(8) <= NOT \ProgramCounter|DOUT\(8);
\Banco|ALT_INV_saidaA[31]~31_combout\ <= NOT \Banco|saidaA[31]~31_combout\;
\Banco|ALT_INV_saidaA[30]~30_combout\ <= NOT \Banco|saidaA[30]~30_combout\;
\Banco|ALT_INV_saidaA[29]~29_combout\ <= NOT \Banco|saidaA[29]~29_combout\;
\Banco|ALT_INV_saidaA[28]~28_combout\ <= NOT \Banco|saidaA[28]~28_combout\;
\Banco|ALT_INV_saidaA[27]~27_combout\ <= NOT \Banco|saidaA[27]~27_combout\;
\Banco|ALT_INV_saidaA[26]~26_combout\ <= NOT \Banco|saidaA[26]~26_combout\;
\Banco|ALT_INV_saidaA[25]~25_combout\ <= NOT \Banco|saidaA[25]~25_combout\;
\Banco|ALT_INV_saidaA[24]~24_combout\ <= NOT \Banco|saidaA[24]~24_combout\;
\Banco|ALT_INV_saidaA[23]~23_combout\ <= NOT \Banco|saidaA[23]~23_combout\;
\Banco|ALT_INV_saidaA[22]~22_combout\ <= NOT \Banco|saidaA[22]~22_combout\;
\Banco|ALT_INV_saidaA[21]~21_combout\ <= NOT \Banco|saidaA[21]~21_combout\;
\Banco|ALT_INV_saidaA[20]~20_combout\ <= NOT \Banco|saidaA[20]~20_combout\;
\Banco|ALT_INV_saidaA[19]~19_combout\ <= NOT \Banco|saidaA[19]~19_combout\;
\Banco|ALT_INV_saidaA[18]~18_combout\ <= NOT \Banco|saidaA[18]~18_combout\;
\Banco|ALT_INV_saidaA[17]~17_combout\ <= NOT \Banco|saidaA[17]~17_combout\;
\Banco|ALT_INV_saidaA[16]~16_combout\ <= NOT \Banco|saidaA[16]~16_combout\;
\Banco|ALT_INV_saidaA[15]~15_combout\ <= NOT \Banco|saidaA[15]~15_combout\;
\Banco|ALT_INV_saidaA[14]~14_combout\ <= NOT \Banco|saidaA[14]~14_combout\;
\Banco|ALT_INV_saidaA[13]~13_combout\ <= NOT \Banco|saidaA[13]~13_combout\;
\Banco|ALT_INV_saidaA[12]~12_combout\ <= NOT \Banco|saidaA[12]~12_combout\;
\Banco|ALT_INV_saidaA[11]~11_combout\ <= NOT \Banco|saidaA[11]~11_combout\;
\Banco|ALT_INV_saidaA[10]~10_combout\ <= NOT \Banco|saidaA[10]~10_combout\;
\Banco|ALT_INV_saidaA[9]~9_combout\ <= NOT \Banco|saidaA[9]~9_combout\;
\Banco|ALT_INV_saidaA[8]~8_combout\ <= NOT \Banco|saidaA[8]~8_combout\;
\Banco|ALT_INV_saidaA[7]~7_combout\ <= NOT \Banco|saidaA[7]~7_combout\;
\Banco|ALT_INV_saidaA[6]~6_combout\ <= NOT \Banco|saidaA[6]~6_combout\;

\saidaULAOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[0]~output_o\);

\saidaULAOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[1]~output_o\);

\saidaULAOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[2]~output_o\);

\saidaULAOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[3]~output_o\);

\saidaULAOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[4]~output_o\);

\saidaULAOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[5]~output_o\);

\saidaULAOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[6]~output_o\);

\saidaULAOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[7]~output_o\);

\saidaULAOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[8]~output_o\);

\saidaULAOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[9]~output_o\);

\saidaULAOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[10]~output_o\);

\saidaULAOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[11]~output_o\);

\saidaULAOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[12]~output_o\);

\saidaULAOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[13]~output_o\);

\saidaULAOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[14]~output_o\);

\saidaULAOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[15]~output_o\);

\saidaULAOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[16]~output_o\);

\saidaULAOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[17]~output_o\);

\saidaULAOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[18]~output_o\);

\saidaULAOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[19]~output_o\);

\saidaULAOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[20]~output_o\);

\saidaULAOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[21]~output_o\);

\saidaULAOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[22]~output_o\);

\saidaULAOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[23]~output_o\);

\saidaULAOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[24]~output_o\);

\saidaULAOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[25]~output_o\);

\saidaULAOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[26]~output_o\);

\saidaULAOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[27]~output_o\);

\saidaULAOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[28]~output_o\);

\saidaULAOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[29]~output_o\);

\saidaULAOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[30]~output_o\);

\saidaULAOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \saidaULAOUT[31]~output_o\);

\entradaAOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[0]~output_o\);

\entradaAOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[1]~output_o\);

\entradaAOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[2]~output_o\);

\entradaAOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[3]~output_o\);

\entradaAOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[4]~output_o\);

\entradaAOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[5]~output_o\);

\entradaAOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[6]~output_o\);

\entradaAOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[7]~output_o\);

\entradaAOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[8]~output_o\);

\entradaAOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[9]~output_o\);

\entradaAOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[10]~output_o\);

\entradaAOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[11]~output_o\);

\entradaAOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[12]~output_o\);

\entradaAOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[13]~output_o\);

\entradaAOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[14]~output_o\);

\entradaAOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[15]~output_o\);

\entradaAOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[16]~output_o\);

\entradaAOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[17]~output_o\);

\entradaAOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[18]~output_o\);

\entradaAOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[19]~output_o\);

\entradaAOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[20]~output_o\);

\entradaAOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[21]~output_o\);

\entradaAOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[22]~output_o\);

\entradaAOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[23]~output_o\);

\entradaAOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[24]~output_o\);

\entradaAOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[25]~output_o\);

\entradaAOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[26]~output_o\);

\entradaAOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[27]~output_o\);

\entradaAOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[28]~output_o\);

\entradaAOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[29]~output_o\);

\entradaAOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[30]~output_o\);

\entradaAOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Banco|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => \entradaAOUT[31]~output_o\);

\entradaBOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \entradaBOUT[0]~output_o\);

\entradaBOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \entradaBOUT[1]~output_o\);

\entradaBOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[2]~output_o\);

\entradaBOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \entradaBOUT[3]~output_o\);

\entradaBOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[4]~output_o\);

\entradaBOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[5]~output_o\);

\entradaBOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[6]~output_o\);

\entradaBOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[7]~output_o\);

\entradaBOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[8]~output_o\);

\entradaBOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[9]~output_o\);

\entradaBOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[10]~output_o\);

\entradaBOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[11]~output_o\);

\entradaBOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[12]~output_o\);

\entradaBOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[13]~output_o\);

\entradaBOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[14]~output_o\);

\entradaBOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[15]~output_o\);

\entradaBOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[16]~output_o\);

\entradaBOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[17]~output_o\);

\entradaBOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[18]~output_o\);

\entradaBOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[19]~output_o\);

\entradaBOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[20]~output_o\);

\entradaBOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[21]~output_o\);

\entradaBOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[22]~output_o\);

\entradaBOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[23]~output_o\);

\entradaBOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[24]~output_o\);

\entradaBOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[25]~output_o\);

\entradaBOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[26]~output_o\);

\entradaBOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[27]~output_o\);

\entradaBOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[28]~output_o\);

\entradaBOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[29]~output_o\);

\entradaBOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[30]~output_o\);

\entradaBOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entradaBOUT[31]~output_o\);

\saidaPCOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaPCOUT[0]~output_o\);

\saidaPCOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaPCOUT[1]~output_o\);

\saidaPCOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(2),
	devoe => ww_devoe,
	o => \saidaPCOUT[2]~output_o\);

\saidaPCOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(3),
	devoe => ww_devoe,
	o => \saidaPCOUT[3]~output_o\);

\saidaPCOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(4),
	devoe => ww_devoe,
	o => \saidaPCOUT[4]~output_o\);

\saidaPCOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(5),
	devoe => ww_devoe,
	o => \saidaPCOUT[5]~output_o\);

\saidaPCOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(6),
	devoe => ww_devoe,
	o => \saidaPCOUT[6]~output_o\);

\saidaPCOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(7),
	devoe => ww_devoe,
	o => \saidaPCOUT[7]~output_o\);

\saidaPCOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(8),
	devoe => ww_devoe,
	o => \saidaPCOUT[8]~output_o\);

\saidaPCOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(9),
	devoe => ww_devoe,
	o => \saidaPCOUT[9]~output_o\);

\saidaPCOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(10),
	devoe => ww_devoe,
	o => \saidaPCOUT[10]~output_o\);

\saidaPCOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(11),
	devoe => ww_devoe,
	o => \saidaPCOUT[11]~output_o\);

\saidaPCOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(12),
	devoe => ww_devoe,
	o => \saidaPCOUT[12]~output_o\);

\saidaPCOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(13),
	devoe => ww_devoe,
	o => \saidaPCOUT[13]~output_o\);

\saidaPCOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(14),
	devoe => ww_devoe,
	o => \saidaPCOUT[14]~output_o\);

\saidaPCOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(15),
	devoe => ww_devoe,
	o => \saidaPCOUT[15]~output_o\);

\saidaPCOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(16),
	devoe => ww_devoe,
	o => \saidaPCOUT[16]~output_o\);

\saidaPCOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(17),
	devoe => ww_devoe,
	o => \saidaPCOUT[17]~output_o\);

\saidaPCOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(18),
	devoe => ww_devoe,
	o => \saidaPCOUT[18]~output_o\);

\saidaPCOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(19),
	devoe => ww_devoe,
	o => \saidaPCOUT[19]~output_o\);

\saidaPCOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(20),
	devoe => ww_devoe,
	o => \saidaPCOUT[20]~output_o\);

\saidaPCOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(21),
	devoe => ww_devoe,
	o => \saidaPCOUT[21]~output_o\);

\saidaPCOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(22),
	devoe => ww_devoe,
	o => \saidaPCOUT[22]~output_o\);

\saidaPCOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(23),
	devoe => ww_devoe,
	o => \saidaPCOUT[23]~output_o\);

\saidaPCOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(24),
	devoe => ww_devoe,
	o => \saidaPCOUT[24]~output_o\);

\saidaPCOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(25),
	devoe => ww_devoe,
	o => \saidaPCOUT[25]~output_o\);

\saidaPCOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(26),
	devoe => ww_devoe,
	o => \saidaPCOUT[26]~output_o\);

\saidaPCOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(27),
	devoe => ww_devoe,
	o => \saidaPCOUT[27]~output_o\);

\saidaPCOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(28),
	devoe => ww_devoe,
	o => \saidaPCOUT[28]~output_o\);

\saidaPCOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(29),
	devoe => ww_devoe,
	o => \saidaPCOUT[29]~output_o\);

\saidaPCOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(30),
	devoe => ww_devoe,
	o => \saidaPCOUT[30]~output_o\);

\saidaPCOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(31),
	devoe => ww_devoe,
	o => \saidaPCOUT[31]~output_o\);

\saidaInstrucao[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[0]~output_o\);

\saidaInstrucao[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[1]~output_o\);

\saidaInstrucao[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[2]~output_o\);

\saidaInstrucao[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[3]~output_o\);

\saidaInstrucao[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[4]~output_o\);

\saidaInstrucao[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[5]~output_o\);

\saidaInstrucao[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[6]~output_o\);

\saidaInstrucao[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[7]~output_o\);

\saidaInstrucao[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[8]~output_o\);

\saidaInstrucao[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[9]~output_o\);

\saidaInstrucao[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[10]~output_o\);

\saidaInstrucao[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[11]~output_o\);

\saidaInstrucao[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[12]~output_o\);

\saidaInstrucao[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[13]~output_o\);

\saidaInstrucao[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[14]~output_o\);

\saidaInstrucao[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[15]~output_o\);

\saidaInstrucao[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[16]~output_o\);

\saidaInstrucao[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[17]~output_o\);

\saidaInstrucao[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[18]~output_o\);

\saidaInstrucao[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[19]~output_o\);

\saidaInstrucao[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[20]~output_o\);

\saidaInstrucao[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[21]~output_o\);

\saidaInstrucao[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[22]~output_o\);

\saidaInstrucao[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[23]~output_o\);

\saidaInstrucao[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saidaInstrucao[24]~output_o\);

\saidaInstrucao[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[25]~output_o\);

\saidaInstrucao[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[26]~output_o\);

\saidaInstrucao[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[27]~output_o\);

\saidaInstrucao[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[28]~output_o\);

\saidaInstrucao[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[29]~output_o\);

\saidaInstrucao[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[30]~output_o\);

\saidaInstrucao[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaInstrucao[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ProgramCounter|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ProgramCounter|DOUT[2]~0_combout\ = !\ProgramCounter|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	combout => \ProgramCounter|DOUT[2]~0_combout\);

\ProgramCounter|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ProgramCounter|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(2));

\SomaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~1_sumout\ = SUM(( \ProgramCounter|DOUT\(2) ) + ( \ProgramCounter|DOUT\(3) ) + ( !VCC ))
-- \SomaPC|Add0~2\ = CARRY(( \ProgramCounter|DOUT\(2) ) + ( \ProgramCounter|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(2),
	dataf => \ProgramCounter|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \SomaPC|Add0~1_sumout\,
	cout => \SomaPC|Add0~2\);

\ProgramCounter|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(3));

\SomaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~5_sumout\ = SUM(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \SomaPC|Add0~2\ ))
-- \SomaPC|Add0~6\ = CARRY(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \SomaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	cin => \SomaPC|Add0~2\,
	sumout => \SomaPC|Add0~5_sumout\,
	cout => \SomaPC|Add0~6\);

\ProgramCounter|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(4));

\SomaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~9_sumout\ = SUM(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \SomaPC|Add0~6\ ))
-- \SomaPC|Add0~10\ = CARRY(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \SomaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	cin => \SomaPC|Add0~6\,
	sumout => \SomaPC|Add0~9_sumout\,
	cout => \SomaPC|Add0~10\);

\ProgramCounter|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(5));

\SomaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~17_sumout\ = SUM(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \SomaPC|Add0~10\ ))
-- \SomaPC|Add0~18\ = CARRY(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \SomaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(6),
	cin => \SomaPC|Add0~10\,
	sumout => \SomaPC|Add0~17_sumout\,
	cout => \SomaPC|Add0~18\);

\ProgramCounter|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(6));

\SomaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~13_sumout\ = SUM(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \SomaPC|Add0~18\ ))
-- \SomaPC|Add0~14\ = CARRY(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \SomaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(7),
	cin => \SomaPC|Add0~18\,
	sumout => \SomaPC|Add0~13_sumout\,
	cout => \SomaPC|Add0~14\);

\ProgramCounter|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\ProgramCounter|DOUT\(6) & ( (!\ProgramCounter|DOUT\(3) & (!\ProgramCounter|DOUT\(4) & (!\ProgramCounter|DOUT\(5) & !\ProgramCounter|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(3),
	datab => \ProgramCounter|ALT_INV_DOUT\(4),
	datac => \ProgramCounter|ALT_INV_DOUT\(5),
	datad => \ProgramCounter|ALT_INV_DOUT\(7),
	datae => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\ProgramCounter|DOUT\(6) & ( !\ProgramCounter|DOUT\(2) & ( (!\ProgramCounter|DOUT\(3) & (!\ProgramCounter|DOUT\(4) & (!\ProgramCounter|DOUT\(5) & !\ProgramCounter|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(3),
	datab => \ProgramCounter|ALT_INV_DOUT\(4),
	datac => \ProgramCounter|ALT_INV_DOUT\(5),
	datad => \ProgramCounter|ALT_INV_DOUT\(7),
	datae => \ProgramCounter|ALT_INV_DOUT\(6),
	dataf => \ProgramCounter|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~1_combout\);

\Banco|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \Banco|registrador~294_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~294_q\);

\Banco|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[0]~0_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~294_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~294_q\,
	combout => \Banco|saidaA[0]~0_combout\);

\Banco|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~38_q\,
	asdata => \ULA|Add0~1_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~38_q\);

\Banco|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1064_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~38_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~38_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~38_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~38_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~38_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1064_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( !\ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1064_combout\) # (\Banco|saidaA[0]~0_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1064_combout\) # 
-- (\Banco|saidaA[0]~0_combout\)))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( !\ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1064_combout\) # (\Banco|saidaA[0]~0_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1064_combout\) # 
-- (\Banco|saidaA[0]~0_combout\)))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[0]~0_combout\,
	dataf => \Banco|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_wirecell_combout\ = !\ULA|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|Add0~5_wirecell_combout\);

\Banco|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~39_q\,
	asdata => \ULA|Add0~5_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~39_q\);

\Banco|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \Banco|registrador~295_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~295_q\);

\Banco|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1062_combout\ = (!\ROM1|memROM~0_combout\ & (((!\Banco|registrador~39_q\)))) # (\ROM1|memROM~0_combout\ & ((!\ProgramCounter|DOUT\(2)) # ((\Banco|registrador~295_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011110101111001001111010111100100111101011110010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~39_q\,
	datad => \Banco|ALT_INV_registrador~295_q\,
	combout => \Banco|registrador~1062_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( !\ROM1|memROM~0_combout\ ) + ( (\Banco|registrador~1062_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( !\ROM1|memROM~0_combout\ ) + ( (\Banco|registrador~1062_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000100000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \Banco|ALT_INV_registrador~1062_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\Banco|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \Banco|registrador~296_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~296_q\);

\Banco|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[2]~2_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~296_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~296_q\,
	combout => \Banco|saidaA[2]~2_combout\);

\Banco|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~40_q\,
	asdata => \ULA|Add0~9_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~40_q\);

\Banco|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1065_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~40_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~40_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~40_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~40_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~40_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1065_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1065_combout\) # (\Banco|saidaA[2]~2_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1065_combout\) # 
-- (\Banco|saidaA[2]~2_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1065_combout\) # (\Banco|saidaA[2]~2_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1065_combout\) # 
-- (\Banco|saidaA[2]~2_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[2]~2_combout\,
	dataf => \Banco|ALT_INV_registrador~1065_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_wirecell_combout\ = !\ULA|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|Add0~13_wirecell_combout\);

\Banco|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~41_q\,
	asdata => \ULA|Add0~13_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~41_q\);

\Banco|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \Banco|registrador~297_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~297_q\);

\Banco|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1063_combout\ = (!\ROM1|memROM~0_combout\ & (((!\Banco|registrador~41_q\)))) # (\ROM1|memROM~0_combout\ & ((!\ProgramCounter|DOUT\(2)) # ((\Banco|registrador~297_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011110101111001001111010111100100111101011110010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~41_q\,
	datad => \Banco|ALT_INV_registrador~297_q\,
	combout => \Banco|registrador~1063_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( !\ROM1|memROM~0_combout\ ) + ( (\Banco|registrador~1063_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( !\ROM1|memROM~0_combout\ ) + ( (\Banco|registrador~1063_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000100000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \Banco|ALT_INV_registrador~1063_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\Banco|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \Banco|registrador~298_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~298_q\);

\Banco|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[4]~4_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~298_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~298_q\,
	combout => \Banco|saidaA[4]~4_combout\);

\Banco|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~42_q\,
	asdata => \ULA|Add0~17_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~42_q\);

\Banco|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1066_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~42_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~42_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~42_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~42_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~42_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1066_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1066_combout\) # (\Banco|saidaA[4]~4_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1066_combout\) # 
-- (\Banco|saidaA[4]~4_combout\)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1066_combout\) # (\Banco|saidaA[4]~4_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1066_combout\) # 
-- (\Banco|saidaA[4]~4_combout\)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[4]~4_combout\,
	dataf => \Banco|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\Banco|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \Banco|registrador~299_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~299_q\);

\Banco|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[5]~5_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~299_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~299_q\,
	combout => \Banco|saidaA[5]~5_combout\);

\ULA|Add0~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_wirecell_combout\ = !\ULA|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|Add0~21_wirecell_combout\);

\Banco|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~43_q\,
	asdata => \ULA|Add0~21_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~43_q\);

\Banco|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1067_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~43_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~43_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( !\Banco|registrador~43_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (!\Banco|registrador~43_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~43_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1067_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1067_combout\) # (\Banco|saidaA[5]~5_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1067_combout\) # 
-- (\Banco|saidaA[5]~5_combout\)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1067_combout\) # (\Banco|saidaA[5]~5_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1067_combout\) # 
-- (\Banco|saidaA[5]~5_combout\)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[5]~5_combout\,
	dataf => \Banco|ALT_INV_registrador~1067_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\Banco|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \Banco|registrador~300_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~300_q\);

\Banco|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[6]~6_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~300_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~300_q\,
	combout => \Banco|saidaA[6]~6_combout\);

\Banco|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~44_q\,
	asdata => \ULA|Add0~25_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~44_q\);

\Banco|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1068_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~44_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~44_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~44_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~44_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~44_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1068_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1068_combout\) # (\Banco|saidaA[6]~6_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1068_combout\) # 
-- (\Banco|saidaA[6]~6_combout\)))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1068_combout\) # (\Banco|saidaA[6]~6_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1068_combout\) # 
-- (\Banco|saidaA[6]~6_combout\)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[6]~6_combout\,
	dataf => \Banco|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\Banco|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \Banco|registrador~301_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~301_q\);

\Banco|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[7]~7_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~301_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~301_q\,
	combout => \Banco|saidaA[7]~7_combout\);

\ULA|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_wirecell_combout\ = !\ULA|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|Add0~29_wirecell_combout\);

\Banco|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~45_q\,
	asdata => \ULA|Add0~29_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~45_q\);

\Banco|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1069_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~45_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~45_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( !\Banco|registrador~45_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (!\Banco|registrador~45_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~45_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1069_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1069_combout\) # (\Banco|saidaA[7]~7_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1069_combout\) # 
-- (\Banco|saidaA[7]~7_combout\)))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1069_combout\) # (\Banco|saidaA[7]~7_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1069_combout\) # 
-- (\Banco|saidaA[7]~7_combout\)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[7]~7_combout\,
	dataf => \Banco|ALT_INV_registrador~1069_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\Banco|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \Banco|registrador~302_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~302_q\);

\Banco|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[8]~8_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~302_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~302_q\,
	combout => \Banco|saidaA[8]~8_combout\);

\Banco|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~46_q\,
	asdata => \ULA|Add0~33_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~46_q\);

\Banco|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1070_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~46_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~46_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~46_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~46_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~46_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1070_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1070_combout\) # (\Banco|saidaA[8]~8_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1070_combout\) # 
-- (\Banco|saidaA[8]~8_combout\)))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1070_combout\) # (\Banco|saidaA[8]~8_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1070_combout\) # 
-- (\Banco|saidaA[8]~8_combout\)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[8]~8_combout\,
	dataf => \Banco|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\Banco|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \Banco|registrador~303_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~303_q\);

\Banco|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[9]~9_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~303_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~303_q\,
	combout => \Banco|saidaA[9]~9_combout\);

\ULA|Add0~37_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_wirecell_combout\ = !\ULA|Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|Add0~37_wirecell_combout\);

\Banco|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~47_q\,
	asdata => \ULA|Add0~37_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~47_q\);

\Banco|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1071_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~47_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~47_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( !\Banco|registrador~47_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (!\Banco|registrador~47_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~47_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1071_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1071_combout\) # (\Banco|saidaA[9]~9_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1071_combout\) # 
-- (\Banco|saidaA[9]~9_combout\)))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1071_combout\) # (\Banco|saidaA[9]~9_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1071_combout\) # 
-- (\Banco|saidaA[9]~9_combout\)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[9]~9_combout\,
	dataf => \Banco|ALT_INV_registrador~1071_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\Banco|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \Banco|registrador~304_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~304_q\);

\Banco|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[10]~10_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~304_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~304_q\,
	combout => \Banco|saidaA[10]~10_combout\);

\Banco|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~48_q\,
	asdata => \ULA|Add0~41_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~48_q\);

\Banco|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1072_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~48_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( \Banco|registrador~48_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( \Banco|registrador~48_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (\Banco|registrador~48_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~48_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1072_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1072_combout\) # (\Banco|saidaA[10]~10_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1072_combout\) # 
-- (\Banco|saidaA[10]~10_combout\)))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1072_combout\) # (\Banco|saidaA[10]~10_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1072_combout\) # 
-- (\Banco|saidaA[10]~10_combout\)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[10]~10_combout\,
	dataf => \Banco|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\Banco|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \Banco|registrador~305_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~305_q\);

\Banco|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[11]~11_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~305_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~305_q\,
	combout => \Banco|saidaA[11]~11_combout\);

\ULA|Add0~45_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_wirecell_combout\ = !\ULA|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|Add0~45_wirecell_combout\);

\Banco|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~49_q\,
	asdata => \ULA|Add0~45_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~49_q\);

\Banco|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1073_combout\ = ( \ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~49_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( \ProgramCounter|DOUT\(6) & ( !\Banco|registrador~49_q\ ) ) ) # ( \ProgramCounter|DOUT\(7) & ( 
-- !\ProgramCounter|DOUT\(6) & ( !\Banco|registrador~49_q\ ) ) ) # ( !\ProgramCounter|DOUT\(7) & ( !\ProgramCounter|DOUT\(6) & ( (!\Banco|registrador~49_q\ & (((\ProgramCounter|DOUT\(5)) # (\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Banco|ALT_INV_registrador~49_q\,
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ProgramCounter|ALT_INV_DOUT\(7),
	dataf => \ProgramCounter|ALT_INV_DOUT\(6),
	combout => \Banco|registrador~1073_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1073_combout\) # (\Banco|saidaA[11]~11_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1073_combout\) # 
-- (\Banco|saidaA[11]~11_combout\)))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1073_combout\) # (\Banco|saidaA[11]~11_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1073_combout\) # 
-- (\Banco|saidaA[11]~11_combout\)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[11]~11_combout\,
	dataf => \Banco|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\Banco|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \Banco|registrador~306_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~306_q\);

\Banco|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[12]~12_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~306_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~306_q\,
	combout => \Banco|saidaA[12]~12_combout\);

\Banco|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~50_q\,
	asdata => \ULA|Add0~49_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~50_q\);

\Banco|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1074_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~50_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~50_q\,
	combout => \Banco|registrador~1074_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1074_combout\) # (\Banco|saidaA[12]~12_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1074_combout\) # 
-- (\Banco|saidaA[12]~12_combout\)))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1074_combout\) # (\Banco|saidaA[12]~12_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1074_combout\) # 
-- (\Banco|saidaA[12]~12_combout\)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[12]~12_combout\,
	dataf => \Banco|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\Banco|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \Banco|registrador~307_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~307_q\);

\Banco|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[13]~13_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~307_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~307_q\,
	combout => \Banco|saidaA[13]~13_combout\);

\ULA|Add0~53_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_wirecell_combout\ = !\ULA|Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|Add0~53_wirecell_combout\);

\Banco|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~51_q\,
	asdata => \ULA|Add0~53_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~51_q\);

\Banco|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1075_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~51_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~51_q\,
	combout => \Banco|registrador~1075_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1075_combout\) # (\Banco|saidaA[13]~13_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1075_combout\) # 
-- (\Banco|saidaA[13]~13_combout\)))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1075_combout\) # (\Banco|saidaA[13]~13_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1075_combout\) # 
-- (\Banco|saidaA[13]~13_combout\)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[13]~13_combout\,
	dataf => \Banco|ALT_INV_registrador~1075_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\Banco|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \Banco|registrador~308_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~308_q\);

\Banco|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[14]~14_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~308_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~308_q\,
	combout => \Banco|saidaA[14]~14_combout\);

\Banco|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~52_q\,
	asdata => \ULA|Add0~57_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~52_q\);

\Banco|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1076_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~52_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~52_q\,
	combout => \Banco|registrador~1076_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1076_combout\) # (\Banco|saidaA[14]~14_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1076_combout\) # 
-- (\Banco|saidaA[14]~14_combout\)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1076_combout\) # (\Banco|saidaA[14]~14_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1076_combout\) # 
-- (\Banco|saidaA[14]~14_combout\)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[14]~14_combout\,
	dataf => \Banco|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\Banco|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \Banco|registrador~309_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~309_q\);

\Banco|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[15]~15_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~309_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~309_q\,
	combout => \Banco|saidaA[15]~15_combout\);

\ULA|Add0~61_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_wirecell_combout\ = !\ULA|Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|Add0~61_wirecell_combout\);

\Banco|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~53_q\,
	asdata => \ULA|Add0~61_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~53_q\);

\Banco|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1077_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~53_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~53_q\,
	combout => \Banco|registrador~1077_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1077_combout\) # (\Banco|saidaA[15]~15_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1077_combout\) # 
-- (\Banco|saidaA[15]~15_combout\)))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1077_combout\) # (\Banco|saidaA[15]~15_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1077_combout\) # 
-- (\Banco|saidaA[15]~15_combout\)))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[15]~15_combout\,
	dataf => \Banco|ALT_INV_registrador~1077_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\Banco|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \Banco|registrador~310_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~310_q\);

\Banco|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[16]~16_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~310_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~310_q\,
	combout => \Banco|saidaA[16]~16_combout\);

\Banco|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~54_q\,
	asdata => \ULA|Add0~65_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~54_q\);

\Banco|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1078_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~54_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~54_q\,
	combout => \Banco|registrador~1078_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1078_combout\) # (\Banco|saidaA[16]~16_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1078_combout\) # 
-- (\Banco|saidaA[16]~16_combout\)))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1078_combout\) # (\Banco|saidaA[16]~16_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1078_combout\) # 
-- (\Banco|saidaA[16]~16_combout\)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[16]~16_combout\,
	dataf => \Banco|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\Banco|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \Banco|registrador~311_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~311_q\);

\Banco|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[17]~17_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~311_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~311_q\,
	combout => \Banco|saidaA[17]~17_combout\);

\ULA|Add0~69_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_wirecell_combout\ = !\ULA|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|Add0~69_wirecell_combout\);

\Banco|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~55_q\,
	asdata => \ULA|Add0~69_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~55_q\);

\Banco|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1079_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~55_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~55_q\,
	combout => \Banco|registrador~1079_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1079_combout\) # (\Banco|saidaA[17]~17_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1079_combout\) # 
-- (\Banco|saidaA[17]~17_combout\)))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1079_combout\) # (\Banco|saidaA[17]~17_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1079_combout\) # 
-- (\Banco|saidaA[17]~17_combout\)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[17]~17_combout\,
	dataf => \Banco|ALT_INV_registrador~1079_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\Banco|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \Banco|registrador~312_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~312_q\);

\Banco|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[18]~18_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~312_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~312_q\,
	combout => \Banco|saidaA[18]~18_combout\);

\Banco|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~56_q\,
	asdata => \ULA|Add0~73_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~56_q\);

\Banco|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1080_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~56_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~56_q\,
	combout => \Banco|registrador~1080_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1080_combout\) # (\Banco|saidaA[18]~18_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1080_combout\) # 
-- (\Banco|saidaA[18]~18_combout\)))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1080_combout\) # (\Banco|saidaA[18]~18_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1080_combout\) # 
-- (\Banco|saidaA[18]~18_combout\)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[18]~18_combout\,
	dataf => \Banco|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\Banco|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \Banco|registrador~313_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~313_q\);

\Banco|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[19]~19_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~313_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~313_q\,
	combout => \Banco|saidaA[19]~19_combout\);

\ULA|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_wirecell_combout\ = !\ULA|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|Add0~77_wirecell_combout\);

\Banco|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~57_q\,
	asdata => \ULA|Add0~77_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~57_q\);

\Banco|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1081_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~57_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~57_q\,
	combout => \Banco|registrador~1081_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1081_combout\) # (\Banco|saidaA[19]~19_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1081_combout\) # 
-- (\Banco|saidaA[19]~19_combout\)))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1081_combout\) # (\Banco|saidaA[19]~19_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1081_combout\) # 
-- (\Banco|saidaA[19]~19_combout\)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[19]~19_combout\,
	dataf => \Banco|ALT_INV_registrador~1081_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\Banco|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \Banco|registrador~314_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~314_q\);

\Banco|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[20]~20_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~314_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~314_q\,
	combout => \Banco|saidaA[20]~20_combout\);

\Banco|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~58_q\,
	asdata => \ULA|Add0~81_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~58_q\);

\Banco|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1082_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~58_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~58_q\,
	combout => \Banco|registrador~1082_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1082_combout\) # (\Banco|saidaA[20]~20_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1082_combout\) # 
-- (\Banco|saidaA[20]~20_combout\)))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1082_combout\) # (\Banco|saidaA[20]~20_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1082_combout\) # 
-- (\Banco|saidaA[20]~20_combout\)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[20]~20_combout\,
	dataf => \Banco|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\Banco|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \Banco|registrador~315_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~315_q\);

\Banco|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[21]~21_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~315_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~315_q\,
	combout => \Banco|saidaA[21]~21_combout\);

\ULA|Add0~85_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_wirecell_combout\ = !\ULA|Add0~85_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|Add0~85_wirecell_combout\);

\Banco|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~59_q\,
	asdata => \ULA|Add0~85_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~59_q\);

\Banco|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1083_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~59_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~59_q\,
	combout => \Banco|registrador~1083_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1083_combout\) # (\Banco|saidaA[21]~21_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1083_combout\) # 
-- (\Banco|saidaA[21]~21_combout\)))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1083_combout\) # (\Banco|saidaA[21]~21_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1083_combout\) # 
-- (\Banco|saidaA[21]~21_combout\)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[21]~21_combout\,
	dataf => \Banco|ALT_INV_registrador~1083_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\Banco|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \Banco|registrador~316_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~316_q\);

\Banco|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[22]~22_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~316_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~316_q\,
	combout => \Banco|saidaA[22]~22_combout\);

\Banco|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~60_q\,
	asdata => \ULA|Add0~89_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~60_q\);

\Banco|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1084_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~60_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~60_q\,
	combout => \Banco|registrador~1084_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1084_combout\) # (\Banco|saidaA[22]~22_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1084_combout\) # 
-- (\Banco|saidaA[22]~22_combout\)))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1084_combout\) # (\Banco|saidaA[22]~22_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1084_combout\) # 
-- (\Banco|saidaA[22]~22_combout\)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[22]~22_combout\,
	dataf => \Banco|ALT_INV_registrador~1084_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\Banco|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \Banco|registrador~317_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~317_q\);

\Banco|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[23]~23_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~317_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~317_q\,
	combout => \Banco|saidaA[23]~23_combout\);

\ULA|Add0~93_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_wirecell_combout\ = !\ULA|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|Add0~93_wirecell_combout\);

\Banco|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~61_q\,
	asdata => \ULA|Add0~93_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~61_q\);

\Banco|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1085_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~61_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~61_q\,
	combout => \Banco|registrador~1085_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1085_combout\) # (\Banco|saidaA[23]~23_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1085_combout\) # 
-- (\Banco|saidaA[23]~23_combout\)))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1085_combout\) # (\Banco|saidaA[23]~23_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1085_combout\) # 
-- (\Banco|saidaA[23]~23_combout\)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[23]~23_combout\,
	dataf => \Banco|ALT_INV_registrador~1085_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\Banco|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \Banco|registrador~318_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~318_q\);

\Banco|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[24]~24_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~318_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~318_q\,
	combout => \Banco|saidaA[24]~24_combout\);

\Banco|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~62_q\,
	asdata => \ULA|Add0~97_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~62_q\);

\Banco|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1086_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~62_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~62_q\,
	combout => \Banco|registrador~1086_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1086_combout\) # (\Banco|saidaA[24]~24_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1086_combout\) # 
-- (\Banco|saidaA[24]~24_combout\)))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1086_combout\) # (\Banco|saidaA[24]~24_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1086_combout\) # 
-- (\Banco|saidaA[24]~24_combout\)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[24]~24_combout\,
	dataf => \Banco|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\Banco|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \Banco|registrador~319_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~319_q\);

\Banco|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[25]~25_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~319_q\,
	combout => \Banco|saidaA[25]~25_combout\);

\ULA|Add0~101_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_wirecell_combout\ = !\ULA|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|Add0~101_wirecell_combout\);

\Banco|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~63_q\,
	asdata => \ULA|Add0~101_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~63_q\);

\Banco|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1087_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~63_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~63_q\,
	combout => \Banco|registrador~1087_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1087_combout\) # (\Banco|saidaA[25]~25_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1087_combout\) # 
-- (\Banco|saidaA[25]~25_combout\)))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1087_combout\) # (\Banco|saidaA[25]~25_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1087_combout\) # 
-- (\Banco|saidaA[25]~25_combout\)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[25]~25_combout\,
	dataf => \Banco|ALT_INV_registrador~1087_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\Banco|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \Banco|registrador~320_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~320_q\);

\Banco|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[26]~26_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~320_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~320_q\,
	combout => \Banco|saidaA[26]~26_combout\);

\Banco|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~64_q\,
	asdata => \ULA|Add0~105_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~64_q\);

\Banco|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1088_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~64_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~64_q\,
	combout => \Banco|registrador~1088_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1088_combout\) # (\Banco|saidaA[26]~26_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1088_combout\) # 
-- (\Banco|saidaA[26]~26_combout\)))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1088_combout\) # (\Banco|saidaA[26]~26_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1088_combout\) # 
-- (\Banco|saidaA[26]~26_combout\)))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[26]~26_combout\,
	dataf => \Banco|ALT_INV_registrador~1088_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\Banco|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \Banco|registrador~321_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~321_q\);

\Banco|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[27]~27_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~321_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~321_q\,
	combout => \Banco|saidaA[27]~27_combout\);

\ULA|Add0~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_wirecell_combout\ = !\ULA|Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|Add0~109_wirecell_combout\);

\Banco|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~65_q\,
	asdata => \ULA|Add0~109_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~65_q\);

\Banco|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1089_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~65_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~65_q\,
	combout => \Banco|registrador~1089_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1089_combout\) # (\Banco|saidaA[27]~27_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1089_combout\) # 
-- (\Banco|saidaA[27]~27_combout\)))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1089_combout\) # (\Banco|saidaA[27]~27_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1089_combout\) # 
-- (\Banco|saidaA[27]~27_combout\)))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[27]~27_combout\,
	dataf => \Banco|ALT_INV_registrador~1089_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\Banco|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \Banco|registrador~322_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~322_q\);

\Banco|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[28]~28_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~322_q\,
	combout => \Banco|saidaA[28]~28_combout\);

\Banco|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~66_q\,
	asdata => \ULA|Add0~113_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~66_q\);

\Banco|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1090_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~66_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~66_q\,
	combout => \Banco|registrador~1090_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1090_combout\) # (\Banco|saidaA[28]~28_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1090_combout\) # 
-- (\Banco|saidaA[28]~28_combout\)))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1090_combout\) # (\Banco|saidaA[28]~28_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1090_combout\) # 
-- (\Banco|saidaA[28]~28_combout\)))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[28]~28_combout\,
	dataf => \Banco|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\Banco|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \Banco|registrador~323_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~323_q\);

\Banco|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[29]~29_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~323_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~323_q\,
	combout => \Banco|saidaA[29]~29_combout\);

\ULA|Add0~117_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_wirecell_combout\ = !\ULA|Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|Add0~117_wirecell_combout\);

\Banco|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~67_q\,
	asdata => \ULA|Add0~117_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~67_q\);

\Banco|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1091_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~67_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~67_q\,
	combout => \Banco|registrador~1091_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1091_combout\) # (\Banco|saidaA[29]~29_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1091_combout\) # 
-- (\Banco|saidaA[29]~29_combout\)))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1091_combout\) # (\Banco|saidaA[29]~29_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1091_combout\) # 
-- (\Banco|saidaA[29]~29_combout\)))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[29]~29_combout\,
	dataf => \Banco|ALT_INV_registrador~1091_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\Banco|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \Banco|registrador~324_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~324_q\);

\Banco|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[30]~30_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~324_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~324_q\,
	combout => \Banco|saidaA[30]~30_combout\);

\Banco|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~68_q\,
	asdata => \ULA|Add0~121_sumout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~68_q\);

\Banco|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1092_combout\ = (!\ROM1|memROM~0_combout\ & \Banco|registrador~68_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~68_q\,
	combout => \Banco|registrador~1092_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1092_combout\) # (\Banco|saidaA[30]~30_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1092_combout\) # 
-- (\Banco|saidaA[30]~30_combout\)))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1092_combout\) # (\Banco|saidaA[30]~30_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1092_combout\) # 
-- (\Banco|saidaA[30]~30_combout\)))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[30]~30_combout\,
	dataf => \Banco|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\Banco|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \Banco|registrador~325_q\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~325_q\);

\Banco|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[31]~31_combout\ = (\ROM1|memROM~0_combout\ & (\ProgramCounter|DOUT\(2) & \Banco|registrador~325_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ProgramCounter|ALT_INV_DOUT\(2),
	datac => \Banco|ALT_INV_registrador~325_q\,
	combout => \Banco|saidaA[31]~31_combout\);

\ULA|Add0~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_wirecell_combout\ = !\ULA|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|Add0~125_wirecell_combout\);

\Banco|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Banco|registrador~69_q\,
	asdata => \ULA|Add0~125_wirecell_combout\,
	sload => \ROM1|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Banco|registrador~69_q\);

\Banco|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|registrador~1093_combout\ = (!\ROM1|memROM~0_combout\ & !\Banco|registrador~69_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~69_q\,
	combout => \Banco|registrador~1093_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( VCC ) + ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\Banco|registrador~1093_combout\) # (\Banco|saidaA[31]~31_combout\)))) # (\ROM1|memROM~0_combout\ & (((\Banco|registrador~1093_combout\) # 
-- (\Banco|saidaA[31]~31_combout\)))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Banco|ALT_INV_saidaA[31]~31_combout\,
	dataf => \Banco|ALT_INV_registrador~1093_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\Banco|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[1]~1_combout\ = (\ROM1|memROM~0_combout\ & \Banco|registrador~1062_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~1062_combout\,
	combout => \Banco|saidaA[1]~1_combout\);

\Banco|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Banco|saidaA[3]~3_combout\ = (\ROM1|memROM~0_combout\ & \Banco|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Banco|ALT_INV_registrador~1063_combout\,
	combout => \Banco|saidaA[3]~3_combout\);

\SomaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~21_sumout\ = SUM(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \SomaPC|Add0~14\ ))
-- \SomaPC|Add0~22\ = CARRY(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \SomaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	cin => \SomaPC|Add0~14\,
	sumout => \SomaPC|Add0~21_sumout\,
	cout => \SomaPC|Add0~22\);

\ProgramCounter|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(8));

\SomaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~25_sumout\ = SUM(( \ProgramCounter|DOUT\(9) ) + ( GND ) + ( \SomaPC|Add0~22\ ))
-- \SomaPC|Add0~26\ = CARRY(( \ProgramCounter|DOUT\(9) ) + ( GND ) + ( \SomaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(9),
	cin => \SomaPC|Add0~22\,
	sumout => \SomaPC|Add0~25_sumout\,
	cout => \SomaPC|Add0~26\);

\ProgramCounter|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(9));

\SomaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~29_sumout\ = SUM(( \ProgramCounter|DOUT\(10) ) + ( GND ) + ( \SomaPC|Add0~26\ ))
-- \SomaPC|Add0~30\ = CARRY(( \ProgramCounter|DOUT\(10) ) + ( GND ) + ( \SomaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(10),
	cin => \SomaPC|Add0~26\,
	sumout => \SomaPC|Add0~29_sumout\,
	cout => \SomaPC|Add0~30\);

\ProgramCounter|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(10));

\SomaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~33_sumout\ = SUM(( \ProgramCounter|DOUT\(11) ) + ( GND ) + ( \SomaPC|Add0~30\ ))
-- \SomaPC|Add0~34\ = CARRY(( \ProgramCounter|DOUT\(11) ) + ( GND ) + ( \SomaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(11),
	cin => \SomaPC|Add0~30\,
	sumout => \SomaPC|Add0~33_sumout\,
	cout => \SomaPC|Add0~34\);

\ProgramCounter|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(11));

\SomaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~37_sumout\ = SUM(( \ProgramCounter|DOUT\(12) ) + ( GND ) + ( \SomaPC|Add0~34\ ))
-- \SomaPC|Add0~38\ = CARRY(( \ProgramCounter|DOUT\(12) ) + ( GND ) + ( \SomaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(12),
	cin => \SomaPC|Add0~34\,
	sumout => \SomaPC|Add0~37_sumout\,
	cout => \SomaPC|Add0~38\);

\ProgramCounter|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(12));

\SomaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~41_sumout\ = SUM(( \ProgramCounter|DOUT\(13) ) + ( GND ) + ( \SomaPC|Add0~38\ ))
-- \SomaPC|Add0~42\ = CARRY(( \ProgramCounter|DOUT\(13) ) + ( GND ) + ( \SomaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(13),
	cin => \SomaPC|Add0~38\,
	sumout => \SomaPC|Add0~41_sumout\,
	cout => \SomaPC|Add0~42\);

\ProgramCounter|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(13));

\SomaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~45_sumout\ = SUM(( \ProgramCounter|DOUT\(14) ) + ( GND ) + ( \SomaPC|Add0~42\ ))
-- \SomaPC|Add0~46\ = CARRY(( \ProgramCounter|DOUT\(14) ) + ( GND ) + ( \SomaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(14),
	cin => \SomaPC|Add0~42\,
	sumout => \SomaPC|Add0~45_sumout\,
	cout => \SomaPC|Add0~46\);

\ProgramCounter|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(14));

\SomaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~49_sumout\ = SUM(( \ProgramCounter|DOUT\(15) ) + ( GND ) + ( \SomaPC|Add0~46\ ))
-- \SomaPC|Add0~50\ = CARRY(( \ProgramCounter|DOUT\(15) ) + ( GND ) + ( \SomaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(15),
	cin => \SomaPC|Add0~46\,
	sumout => \SomaPC|Add0~49_sumout\,
	cout => \SomaPC|Add0~50\);

\ProgramCounter|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(15));

\SomaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~53_sumout\ = SUM(( \ProgramCounter|DOUT\(16) ) + ( GND ) + ( \SomaPC|Add0~50\ ))
-- \SomaPC|Add0~54\ = CARRY(( \ProgramCounter|DOUT\(16) ) + ( GND ) + ( \SomaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(16),
	cin => \SomaPC|Add0~50\,
	sumout => \SomaPC|Add0~53_sumout\,
	cout => \SomaPC|Add0~54\);

\ProgramCounter|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(16));

\SomaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~57_sumout\ = SUM(( \ProgramCounter|DOUT\(17) ) + ( GND ) + ( \SomaPC|Add0~54\ ))
-- \SomaPC|Add0~58\ = CARRY(( \ProgramCounter|DOUT\(17) ) + ( GND ) + ( \SomaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(17),
	cin => \SomaPC|Add0~54\,
	sumout => \SomaPC|Add0~57_sumout\,
	cout => \SomaPC|Add0~58\);

\ProgramCounter|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(17));

\SomaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~61_sumout\ = SUM(( \ProgramCounter|DOUT\(18) ) + ( GND ) + ( \SomaPC|Add0~58\ ))
-- \SomaPC|Add0~62\ = CARRY(( \ProgramCounter|DOUT\(18) ) + ( GND ) + ( \SomaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(18),
	cin => \SomaPC|Add0~58\,
	sumout => \SomaPC|Add0~61_sumout\,
	cout => \SomaPC|Add0~62\);

\ProgramCounter|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(18));

\SomaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~65_sumout\ = SUM(( \ProgramCounter|DOUT\(19) ) + ( GND ) + ( \SomaPC|Add0~62\ ))
-- \SomaPC|Add0~66\ = CARRY(( \ProgramCounter|DOUT\(19) ) + ( GND ) + ( \SomaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(19),
	cin => \SomaPC|Add0~62\,
	sumout => \SomaPC|Add0~65_sumout\,
	cout => \SomaPC|Add0~66\);

\ProgramCounter|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(19));

\SomaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~69_sumout\ = SUM(( \ProgramCounter|DOUT\(20) ) + ( GND ) + ( \SomaPC|Add0~66\ ))
-- \SomaPC|Add0~70\ = CARRY(( \ProgramCounter|DOUT\(20) ) + ( GND ) + ( \SomaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(20),
	cin => \SomaPC|Add0~66\,
	sumout => \SomaPC|Add0~69_sumout\,
	cout => \SomaPC|Add0~70\);

\ProgramCounter|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(20));

\SomaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~73_sumout\ = SUM(( \ProgramCounter|DOUT\(21) ) + ( GND ) + ( \SomaPC|Add0~70\ ))
-- \SomaPC|Add0~74\ = CARRY(( \ProgramCounter|DOUT\(21) ) + ( GND ) + ( \SomaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(21),
	cin => \SomaPC|Add0~70\,
	sumout => \SomaPC|Add0~73_sumout\,
	cout => \SomaPC|Add0~74\);

\ProgramCounter|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(21));

\SomaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~77_sumout\ = SUM(( \ProgramCounter|DOUT\(22) ) + ( GND ) + ( \SomaPC|Add0~74\ ))
-- \SomaPC|Add0~78\ = CARRY(( \ProgramCounter|DOUT\(22) ) + ( GND ) + ( \SomaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(22),
	cin => \SomaPC|Add0~74\,
	sumout => \SomaPC|Add0~77_sumout\,
	cout => \SomaPC|Add0~78\);

\ProgramCounter|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(22));

\SomaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~81_sumout\ = SUM(( \ProgramCounter|DOUT\(23) ) + ( GND ) + ( \SomaPC|Add0~78\ ))
-- \SomaPC|Add0~82\ = CARRY(( \ProgramCounter|DOUT\(23) ) + ( GND ) + ( \SomaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(23),
	cin => \SomaPC|Add0~78\,
	sumout => \SomaPC|Add0~81_sumout\,
	cout => \SomaPC|Add0~82\);

\ProgramCounter|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(23));

\SomaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~85_sumout\ = SUM(( \ProgramCounter|DOUT\(24) ) + ( GND ) + ( \SomaPC|Add0~82\ ))
-- \SomaPC|Add0~86\ = CARRY(( \ProgramCounter|DOUT\(24) ) + ( GND ) + ( \SomaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(24),
	cin => \SomaPC|Add0~82\,
	sumout => \SomaPC|Add0~85_sumout\,
	cout => \SomaPC|Add0~86\);

\ProgramCounter|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(24));

\SomaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~89_sumout\ = SUM(( \ProgramCounter|DOUT\(25) ) + ( GND ) + ( \SomaPC|Add0~86\ ))
-- \SomaPC|Add0~90\ = CARRY(( \ProgramCounter|DOUT\(25) ) + ( GND ) + ( \SomaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(25),
	cin => \SomaPC|Add0~86\,
	sumout => \SomaPC|Add0~89_sumout\,
	cout => \SomaPC|Add0~90\);

\ProgramCounter|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(25));

\SomaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~93_sumout\ = SUM(( \ProgramCounter|DOUT\(26) ) + ( GND ) + ( \SomaPC|Add0~90\ ))
-- \SomaPC|Add0~94\ = CARRY(( \ProgramCounter|DOUT\(26) ) + ( GND ) + ( \SomaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(26),
	cin => \SomaPC|Add0~90\,
	sumout => \SomaPC|Add0~93_sumout\,
	cout => \SomaPC|Add0~94\);

\ProgramCounter|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(26));

\SomaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~97_sumout\ = SUM(( \ProgramCounter|DOUT\(27) ) + ( GND ) + ( \SomaPC|Add0~94\ ))
-- \SomaPC|Add0~98\ = CARRY(( \ProgramCounter|DOUT\(27) ) + ( GND ) + ( \SomaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(27),
	cin => \SomaPC|Add0~94\,
	sumout => \SomaPC|Add0~97_sumout\,
	cout => \SomaPC|Add0~98\);

\ProgramCounter|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(27));

\SomaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~101_sumout\ = SUM(( \ProgramCounter|DOUT\(28) ) + ( GND ) + ( \SomaPC|Add0~98\ ))
-- \SomaPC|Add0~102\ = CARRY(( \ProgramCounter|DOUT\(28) ) + ( GND ) + ( \SomaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(28),
	cin => \SomaPC|Add0~98\,
	sumout => \SomaPC|Add0~101_sumout\,
	cout => \SomaPC|Add0~102\);

\ProgramCounter|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(28));

\SomaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~105_sumout\ = SUM(( \ProgramCounter|DOUT\(29) ) + ( GND ) + ( \SomaPC|Add0~102\ ))
-- \SomaPC|Add0~106\ = CARRY(( \ProgramCounter|DOUT\(29) ) + ( GND ) + ( \SomaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(29),
	cin => \SomaPC|Add0~102\,
	sumout => \SomaPC|Add0~105_sumout\,
	cout => \SomaPC|Add0~106\);

\ProgramCounter|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(29));

\SomaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~109_sumout\ = SUM(( \ProgramCounter|DOUT\(30) ) + ( GND ) + ( \SomaPC|Add0~106\ ))
-- \SomaPC|Add0~110\ = CARRY(( \ProgramCounter|DOUT\(30) ) + ( GND ) + ( \SomaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(30),
	cin => \SomaPC|Add0~106\,
	sumout => \SomaPC|Add0~109_sumout\,
	cout => \SomaPC|Add0~110\);

\ProgramCounter|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(30));

\SomaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~113_sumout\ = SUM(( \ProgramCounter|DOUT\(31) ) + ( GND ) + ( \SomaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(31),
	cin => \SomaPC|Add0~110\,
	sumout => \SomaPC|Add0~113_sumout\);

\ProgramCounter|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomaPC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(31));

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

ww_saidaULAOUT(0) <= \saidaULAOUT[0]~output_o\;

ww_saidaULAOUT(1) <= \saidaULAOUT[1]~output_o\;

ww_saidaULAOUT(2) <= \saidaULAOUT[2]~output_o\;

ww_saidaULAOUT(3) <= \saidaULAOUT[3]~output_o\;

ww_saidaULAOUT(4) <= \saidaULAOUT[4]~output_o\;

ww_saidaULAOUT(5) <= \saidaULAOUT[5]~output_o\;

ww_saidaULAOUT(6) <= \saidaULAOUT[6]~output_o\;

ww_saidaULAOUT(7) <= \saidaULAOUT[7]~output_o\;

ww_saidaULAOUT(8) <= \saidaULAOUT[8]~output_o\;

ww_saidaULAOUT(9) <= \saidaULAOUT[9]~output_o\;

ww_saidaULAOUT(10) <= \saidaULAOUT[10]~output_o\;

ww_saidaULAOUT(11) <= \saidaULAOUT[11]~output_o\;

ww_saidaULAOUT(12) <= \saidaULAOUT[12]~output_o\;

ww_saidaULAOUT(13) <= \saidaULAOUT[13]~output_o\;

ww_saidaULAOUT(14) <= \saidaULAOUT[14]~output_o\;

ww_saidaULAOUT(15) <= \saidaULAOUT[15]~output_o\;

ww_saidaULAOUT(16) <= \saidaULAOUT[16]~output_o\;

ww_saidaULAOUT(17) <= \saidaULAOUT[17]~output_o\;

ww_saidaULAOUT(18) <= \saidaULAOUT[18]~output_o\;

ww_saidaULAOUT(19) <= \saidaULAOUT[19]~output_o\;

ww_saidaULAOUT(20) <= \saidaULAOUT[20]~output_o\;

ww_saidaULAOUT(21) <= \saidaULAOUT[21]~output_o\;

ww_saidaULAOUT(22) <= \saidaULAOUT[22]~output_o\;

ww_saidaULAOUT(23) <= \saidaULAOUT[23]~output_o\;

ww_saidaULAOUT(24) <= \saidaULAOUT[24]~output_o\;

ww_saidaULAOUT(25) <= \saidaULAOUT[25]~output_o\;

ww_saidaULAOUT(26) <= \saidaULAOUT[26]~output_o\;

ww_saidaULAOUT(27) <= \saidaULAOUT[27]~output_o\;

ww_saidaULAOUT(28) <= \saidaULAOUT[28]~output_o\;

ww_saidaULAOUT(29) <= \saidaULAOUT[29]~output_o\;

ww_saidaULAOUT(30) <= \saidaULAOUT[30]~output_o\;

ww_saidaULAOUT(31) <= \saidaULAOUT[31]~output_o\;

ww_entradaAOUT(0) <= \entradaAOUT[0]~output_o\;

ww_entradaAOUT(1) <= \entradaAOUT[1]~output_o\;

ww_entradaAOUT(2) <= \entradaAOUT[2]~output_o\;

ww_entradaAOUT(3) <= \entradaAOUT[3]~output_o\;

ww_entradaAOUT(4) <= \entradaAOUT[4]~output_o\;

ww_entradaAOUT(5) <= \entradaAOUT[5]~output_o\;

ww_entradaAOUT(6) <= \entradaAOUT[6]~output_o\;

ww_entradaAOUT(7) <= \entradaAOUT[7]~output_o\;

ww_entradaAOUT(8) <= \entradaAOUT[8]~output_o\;

ww_entradaAOUT(9) <= \entradaAOUT[9]~output_o\;

ww_entradaAOUT(10) <= \entradaAOUT[10]~output_o\;

ww_entradaAOUT(11) <= \entradaAOUT[11]~output_o\;

ww_entradaAOUT(12) <= \entradaAOUT[12]~output_o\;

ww_entradaAOUT(13) <= \entradaAOUT[13]~output_o\;

ww_entradaAOUT(14) <= \entradaAOUT[14]~output_o\;

ww_entradaAOUT(15) <= \entradaAOUT[15]~output_o\;

ww_entradaAOUT(16) <= \entradaAOUT[16]~output_o\;

ww_entradaAOUT(17) <= \entradaAOUT[17]~output_o\;

ww_entradaAOUT(18) <= \entradaAOUT[18]~output_o\;

ww_entradaAOUT(19) <= \entradaAOUT[19]~output_o\;

ww_entradaAOUT(20) <= \entradaAOUT[20]~output_o\;

ww_entradaAOUT(21) <= \entradaAOUT[21]~output_o\;

ww_entradaAOUT(22) <= \entradaAOUT[22]~output_o\;

ww_entradaAOUT(23) <= \entradaAOUT[23]~output_o\;

ww_entradaAOUT(24) <= \entradaAOUT[24]~output_o\;

ww_entradaAOUT(25) <= \entradaAOUT[25]~output_o\;

ww_entradaAOUT(26) <= \entradaAOUT[26]~output_o\;

ww_entradaAOUT(27) <= \entradaAOUT[27]~output_o\;

ww_entradaAOUT(28) <= \entradaAOUT[28]~output_o\;

ww_entradaAOUT(29) <= \entradaAOUT[29]~output_o\;

ww_entradaAOUT(30) <= \entradaAOUT[30]~output_o\;

ww_entradaAOUT(31) <= \entradaAOUT[31]~output_o\;

ww_entradaBOUT(0) <= \entradaBOUT[0]~output_o\;

ww_entradaBOUT(1) <= \entradaBOUT[1]~output_o\;

ww_entradaBOUT(2) <= \entradaBOUT[2]~output_o\;

ww_entradaBOUT(3) <= \entradaBOUT[3]~output_o\;

ww_entradaBOUT(4) <= \entradaBOUT[4]~output_o\;

ww_entradaBOUT(5) <= \entradaBOUT[5]~output_o\;

ww_entradaBOUT(6) <= \entradaBOUT[6]~output_o\;

ww_entradaBOUT(7) <= \entradaBOUT[7]~output_o\;

ww_entradaBOUT(8) <= \entradaBOUT[8]~output_o\;

ww_entradaBOUT(9) <= \entradaBOUT[9]~output_o\;

ww_entradaBOUT(10) <= \entradaBOUT[10]~output_o\;

ww_entradaBOUT(11) <= \entradaBOUT[11]~output_o\;

ww_entradaBOUT(12) <= \entradaBOUT[12]~output_o\;

ww_entradaBOUT(13) <= \entradaBOUT[13]~output_o\;

ww_entradaBOUT(14) <= \entradaBOUT[14]~output_o\;

ww_entradaBOUT(15) <= \entradaBOUT[15]~output_o\;

ww_entradaBOUT(16) <= \entradaBOUT[16]~output_o\;

ww_entradaBOUT(17) <= \entradaBOUT[17]~output_o\;

ww_entradaBOUT(18) <= \entradaBOUT[18]~output_o\;

ww_entradaBOUT(19) <= \entradaBOUT[19]~output_o\;

ww_entradaBOUT(20) <= \entradaBOUT[20]~output_o\;

ww_entradaBOUT(21) <= \entradaBOUT[21]~output_o\;

ww_entradaBOUT(22) <= \entradaBOUT[22]~output_o\;

ww_entradaBOUT(23) <= \entradaBOUT[23]~output_o\;

ww_entradaBOUT(24) <= \entradaBOUT[24]~output_o\;

ww_entradaBOUT(25) <= \entradaBOUT[25]~output_o\;

ww_entradaBOUT(26) <= \entradaBOUT[26]~output_o\;

ww_entradaBOUT(27) <= \entradaBOUT[27]~output_o\;

ww_entradaBOUT(28) <= \entradaBOUT[28]~output_o\;

ww_entradaBOUT(29) <= \entradaBOUT[29]~output_o\;

ww_entradaBOUT(30) <= \entradaBOUT[30]~output_o\;

ww_entradaBOUT(31) <= \entradaBOUT[31]~output_o\;

ww_saidaPCOUT(0) <= \saidaPCOUT[0]~output_o\;

ww_saidaPCOUT(1) <= \saidaPCOUT[1]~output_o\;

ww_saidaPCOUT(2) <= \saidaPCOUT[2]~output_o\;

ww_saidaPCOUT(3) <= \saidaPCOUT[3]~output_o\;

ww_saidaPCOUT(4) <= \saidaPCOUT[4]~output_o\;

ww_saidaPCOUT(5) <= \saidaPCOUT[5]~output_o\;

ww_saidaPCOUT(6) <= \saidaPCOUT[6]~output_o\;

ww_saidaPCOUT(7) <= \saidaPCOUT[7]~output_o\;

ww_saidaPCOUT(8) <= \saidaPCOUT[8]~output_o\;

ww_saidaPCOUT(9) <= \saidaPCOUT[9]~output_o\;

ww_saidaPCOUT(10) <= \saidaPCOUT[10]~output_o\;

ww_saidaPCOUT(11) <= \saidaPCOUT[11]~output_o\;

ww_saidaPCOUT(12) <= \saidaPCOUT[12]~output_o\;

ww_saidaPCOUT(13) <= \saidaPCOUT[13]~output_o\;

ww_saidaPCOUT(14) <= \saidaPCOUT[14]~output_o\;

ww_saidaPCOUT(15) <= \saidaPCOUT[15]~output_o\;

ww_saidaPCOUT(16) <= \saidaPCOUT[16]~output_o\;

ww_saidaPCOUT(17) <= \saidaPCOUT[17]~output_o\;

ww_saidaPCOUT(18) <= \saidaPCOUT[18]~output_o\;

ww_saidaPCOUT(19) <= \saidaPCOUT[19]~output_o\;

ww_saidaPCOUT(20) <= \saidaPCOUT[20]~output_o\;

ww_saidaPCOUT(21) <= \saidaPCOUT[21]~output_o\;

ww_saidaPCOUT(22) <= \saidaPCOUT[22]~output_o\;

ww_saidaPCOUT(23) <= \saidaPCOUT[23]~output_o\;

ww_saidaPCOUT(24) <= \saidaPCOUT[24]~output_o\;

ww_saidaPCOUT(25) <= \saidaPCOUT[25]~output_o\;

ww_saidaPCOUT(26) <= \saidaPCOUT[26]~output_o\;

ww_saidaPCOUT(27) <= \saidaPCOUT[27]~output_o\;

ww_saidaPCOUT(28) <= \saidaPCOUT[28]~output_o\;

ww_saidaPCOUT(29) <= \saidaPCOUT[29]~output_o\;

ww_saidaPCOUT(30) <= \saidaPCOUT[30]~output_o\;

ww_saidaPCOUT(31) <= \saidaPCOUT[31]~output_o\;

ww_saidaInstrucao(0) <= \saidaInstrucao[0]~output_o\;

ww_saidaInstrucao(1) <= \saidaInstrucao[1]~output_o\;

ww_saidaInstrucao(2) <= \saidaInstrucao[2]~output_o\;

ww_saidaInstrucao(3) <= \saidaInstrucao[3]~output_o\;

ww_saidaInstrucao(4) <= \saidaInstrucao[4]~output_o\;

ww_saidaInstrucao(5) <= \saidaInstrucao[5]~output_o\;

ww_saidaInstrucao(6) <= \saidaInstrucao[6]~output_o\;

ww_saidaInstrucao(7) <= \saidaInstrucao[7]~output_o\;

ww_saidaInstrucao(8) <= \saidaInstrucao[8]~output_o\;

ww_saidaInstrucao(9) <= \saidaInstrucao[9]~output_o\;

ww_saidaInstrucao(10) <= \saidaInstrucao[10]~output_o\;

ww_saidaInstrucao(11) <= \saidaInstrucao[11]~output_o\;

ww_saidaInstrucao(12) <= \saidaInstrucao[12]~output_o\;

ww_saidaInstrucao(13) <= \saidaInstrucao[13]~output_o\;

ww_saidaInstrucao(14) <= \saidaInstrucao[14]~output_o\;

ww_saidaInstrucao(15) <= \saidaInstrucao[15]~output_o\;

ww_saidaInstrucao(16) <= \saidaInstrucao[16]~output_o\;

ww_saidaInstrucao(17) <= \saidaInstrucao[17]~output_o\;

ww_saidaInstrucao(18) <= \saidaInstrucao[18]~output_o\;

ww_saidaInstrucao(19) <= \saidaInstrucao[19]~output_o\;

ww_saidaInstrucao(20) <= \saidaInstrucao[20]~output_o\;

ww_saidaInstrucao(21) <= \saidaInstrucao[21]~output_o\;

ww_saidaInstrucao(22) <= \saidaInstrucao[22]~output_o\;

ww_saidaInstrucao(23) <= \saidaInstrucao[23]~output_o\;

ww_saidaInstrucao(24) <= \saidaInstrucao[24]~output_o\;

ww_saidaInstrucao(25) <= \saidaInstrucao[25]~output_o\;

ww_saidaInstrucao(26) <= \saidaInstrucao[26]~output_o\;

ww_saidaInstrucao(27) <= \saidaInstrucao[27]~output_o\;

ww_saidaInstrucao(28) <= \saidaInstrucao[28]~output_o\;

ww_saidaInstrucao(29) <= \saidaInstrucao[29]~output_o\;

ww_saidaInstrucao(30) <= \saidaInstrucao[30]~output_o\;

ww_saidaInstrucao(31) <= \saidaInstrucao[31]~output_o\;
END structure;


