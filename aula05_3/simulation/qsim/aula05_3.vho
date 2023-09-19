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

-- DATE "09/18/2023 21:47:39"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	aula05_3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	SinaisControleOut : OUT std_logic_vector(11 DOWNTO 0)
	);
END aula05_3;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[8]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[10]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SinaisControleOut[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula05_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_SinaisControleOut : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \UC1|saida~5_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \UC1|saida~4_combout\ : std_logic;
SIGNAL \UC1|saida[2]~2_combout\ : std_logic;
SIGNAL \ZF1|DOUT~0_combout\ : std_logic;
SIGNAL \UC1|Equal6~0_combout\ : std_logic;
SIGNAL \UC1|saida[5]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~27feeder_combout\ : std_logic;
SIGNAL \UC1|saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~35feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \ZF1|DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~9_combout\ : std_logic;
SIGNAL \REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~28feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~8_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \UC1|Equal6~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ZF1|DOUT~2_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~10_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~11_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ZF1|DOUT~3_combout\ : std_logic;
SIGNAL \ZF1|DOUT~4_combout\ : std_logic;
SIGNAL \ZF1|DOUT~q\ : std_logic;
SIGNAL \UC1|Equal3~0_combout\ : std_logic;
SIGNAL \UC1|Equal4~0_combout\ : std_logic;
SIGNAL \LOGDESVIO|saida[1]~0_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \UC1|saida[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ZF1|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \ZF1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ZF1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \ZF1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \LOGDESVIO|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ZF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \UC1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
SinaisControleOut <= ww_SinaisControleOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\ZF1|ALT_INV_DOUT~3_combout\ <= NOT \ZF1|DOUT~3_combout\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\ULA1|ALT_INV_saida[2]~5_combout\ <= NOT \ULA1|saida[2]~5_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\ULA1|ALT_INV_saida[3]~4_combout\ <= NOT \ULA1|saida[3]~4_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\ZF1|ALT_INV_DOUT~2_combout\ <= NOT \ZF1|DOUT~2_combout\;
\ULA1|ALT_INV_saida[6]~3_combout\ <= NOT \ULA1|saida[6]~3_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\ZF1|ALT_INV_DOUT~1_combout\ <= NOT \ZF1|DOUT~1_combout\;
\ULA1|ALT_INV_saida[0]~2_combout\ <= NOT \ULA1|saida[0]~2_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \ULA1|saida[1]~1_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\ZF1|ALT_INV_DOUT~0_combout\ <= NOT \ZF1|DOUT~0_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\LOGDESVIO|ALT_INV_saida[1]~0_combout\ <= NOT \LOGDESVIO|saida[1]~0_combout\;
\ZF1|ALT_INV_DOUT~q\ <= NOT \ZF1|DOUT~q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\UC1|ALT_INV_Equal4~0_combout\ <= NOT \UC1|Equal4~0_combout\;
\UC1|ALT_INV_saida~5_combout\ <= NOT \UC1|saida~5_combout\;
\UC1|ALT_INV_saida~4_combout\ <= NOT \UC1|saida~4_combout\;
\UC1|ALT_INV_Equal3~0_combout\ <= NOT \UC1|Equal3~0_combout\;
\UC1|ALT_INV_Equal6~0_combout\ <= NOT \UC1|Equal6~0_combout\;
\ULA1|ALT_INV_saida[1]~0_combout\ <= NOT \ULA1|saida[1]~0_combout\;
\UC1|ALT_INV_saida[2]~2_combout\ <= NOT \UC1|saida[2]~2_combout\;
\UC1|ALT_INV_saida[0]~0_combout\ <= NOT \UC1|saida[0]~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\UC1|ALT_INV_Equal6~1_combout\ <= NOT \UC1|Equal6~1_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;

-- Location: IOOBUF_X8_Y45_N59
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X8_Y45_N93
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X8_Y45_N42
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X0_Y20_N39
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X8_Y45_N76
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y20_N5
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y21_N39
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X10_Y45_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X0_Y21_N5
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y19_N22
\SinaisControleOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(0));

-- Location: IOOBUF_X0_Y19_N39
\SinaisControleOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(1));

-- Location: IOOBUF_X0_Y18_N96
\SinaisControleOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(2));

-- Location: IOOBUF_X19_Y0_N53
\SinaisControleOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(3));

-- Location: IOOBUF_X0_Y18_N45
\SinaisControleOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|ALT_INV_saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(4));

-- Location: IOOBUF_X0_Y18_N79
\SinaisControleOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(5));

-- Location: IOOBUF_X0_Y20_N22
\SinaisControleOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(6));

-- Location: IOOBUF_X0_Y19_N56
\SinaisControleOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(7));

-- Location: IOOBUF_X0_Y21_N56
\SinaisControleOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(8));

-- Location: IOOBUF_X0_Y20_N56
\SinaisControleOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(9));

-- Location: IOOBUF_X0_Y19_N5
\SinaisControleOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(10));

-- Location: IOOBUF_X0_Y21_N22
\SinaisControleOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC1|ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => ww_SinaisControleOut(11));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X4_Y24_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X5_Y24_N28
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X4_Y24_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: MLABCELL_X4_Y24_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X5_Y24_N50
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y24_N51
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(1)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(3) & !\PC|DOUT\(1))) # (\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT\(3) & 
-- \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X4_Y24_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: MLABCELL_X4_Y24_N15
\MUX_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[5]~5_combout\ = ( \incrementaPC|Add0~21_sumout\ & ( !\UC1|saida~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \UC1|ALT_INV_saida~5_combout\,
	combout => \MUX_PC|saida_MUX[5]~5_combout\);

-- Location: FF_X5_Y24_N41
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X4_Y24_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: MLABCELL_X4_Y24_N18
\MUX_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[6]~6_combout\ = ( \incrementaPC|Add0~25_sumout\ & ( !\UC1|saida~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_saida~5_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX_PC|saida_MUX[6]~6_combout\);

-- Location: FF_X4_Y24_N20
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y24_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: MLABCELL_X4_Y24_N21
\MUX_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[7]~7_combout\ = ( \incrementaPC|Add0~29_sumout\ & ( !\UC1|saida~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_saida~5_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX_PC|saida_MUX[7]~7_combout\);

-- Location: FF_X5_Y24_N47
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X5_Y24_N1
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X5_Y24_N36
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \PC|DOUT\(1) & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: FF_X5_Y24_N34
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X4_Y24_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X5_Y24_N33
\MUX_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[8]~8_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\LOGDESVIO|saida[1]~0_combout\) # (\RAM1|process_0~0_combout\) ) ) # ( !\incrementaPC|Add0~33_sumout\ & ( (\LOGDESVIO|saida[1]~0_combout\ & \RAM1|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LOGDESVIO|ALT_INV_saida[1]~0_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUX_PC|saida_MUX[8]~8_combout\);

-- Location: FF_X5_Y24_N35
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X5_Y24_N40
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X4_Y24_N19
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X5_Y25_N48
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X5_Y24_N11
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y24_N3
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ $ (\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100001111101000000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X5_Y24_N24
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT\(1) $ (((!\PC|DOUT\(3) & !\PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ $ (((!\PC|DOUT\(3) & !\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X5_Y23_N9
\UC1|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida~5_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \UC1|saida~5_combout\);

-- Location: MLABCELL_X4_Y24_N6
\MUX_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[4]~4_combout\ = ( !\UC1|saida~5_combout\ & ( \incrementaPC|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \UC1|ALT_INV_saida~5_combout\,
	combout => \MUX_PC|saida_MUX[4]~4_combout\);

-- Location: FF_X5_Y24_N56
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y24_N12
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X5_Y24_N42
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~11_combout\ ) ) # ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~11_combout\ & ( (((\PC|DOUT\(5)) # (\PC|DOUT[8]~DUPLICATE_q\)) # (\PC|DOUT\(6))) # (\PC|DOUT[4]~DUPLICATE_q\) ) ) ) # ( 
-- \PC|DOUT[7]~DUPLICATE_q\ & ( !\ROM1|memROM~11_combout\ ) ) # ( !\PC|DOUT[7]~DUPLICATE_q\ & ( !\ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X4_Y24_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X5_Y24_N9
\MUX_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[1]~1_combout\ = ( \LOGDESVIO|saida[1]~0_combout\ & ( !\ROM1|memROM~6_combout\ ) ) # ( !\LOGDESVIO|saida[1]~0_combout\ & ( \incrementaPC|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \LOGDESVIO|ALT_INV_saida[1]~0_combout\,
	combout => \MUX_PC|saida_MUX[1]~1_combout\);

-- Location: FF_X5_Y24_N10
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X4_Y24_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X5_Y25_N45
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT\(2) & ((\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(2) & (!\PC|DOUT[0]~DUPLICATE_q\)))) # (\PC|DOUT[1]~DUPLICATE_q\ & (((!\PC|DOUT[3]~DUPLICATE_q\) # 
-- (\PC|DOUT\(2))) # (\PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011011110111010101101111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X5_Y24_N48
\MUX_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[2]~2_combout\ = ( \LOGDESVIO|saida[1]~0_combout\ & ( !\ROM1|memROM~7_combout\ ) ) # ( !\LOGDESVIO|saida[1]~0_combout\ & ( \incrementaPC|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \LOGDESVIO|ALT_INV_saida[1]~0_combout\,
	combout => \MUX_PC|saida_MUX[2]~2_combout\);

-- Location: FF_X5_Y24_N49
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X5_Y25_N54
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT\(2))))) # (\PC|DOUT[0]~DUPLICATE_q\ & (((!\PC|DOUT\(2)) # (!\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( 
-- !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111111111010011111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X5_Y24_N27
\MUX_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[3]~3_combout\ = ( \LOGDESVIO|saida[1]~0_combout\ & ( !\ROM1|memROM~8_combout\ ) ) # ( !\LOGDESVIO|saida[1]~0_combout\ & ( \incrementaPC|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \LOGDESVIO|ALT_INV_saida[1]~0_combout\,
	combout => \MUX_PC|saida_MUX[3]~3_combout\);

-- Location: FF_X5_Y24_N29
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y24_N6
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\ & ((!\PC|DOUT\(1)) # (\PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ $ (!\PC|DOUT\(1)))) # 
-- (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100000010110101010000001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X5_Y23_N51
\UC1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida~4_combout\ = ( \ROM1|memROM~1_combout\ & ( ((!\ROM1|memROM~3_combout\) # ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~0_combout\))) # (\ROM1|memROM~2_combout\) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|saida~4_combout\);

-- Location: LABCELL_X5_Y23_N21
\UC1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida[2]~2_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \UC1|saida[2]~2_combout\);

-- Location: LABCELL_X5_Y23_N39
\ZF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZF1|DOUT~0_combout\ = ( !\UC1|saida[2]~2_combout\ & ( \ZF1|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \UC1|ALT_INV_saida[2]~2_combout\,
	dataf => \ZF1|ALT_INV_DOUT~q\,
	combout => \ZF1|DOUT~0_combout\);

-- Location: LABCELL_X5_Y24_N18
\UC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|Equal6~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|Equal6~0_combout\);

-- Location: LABCELL_X6_Y24_N45
\UC1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida[5]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010101010101010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|saida[5]~3_combout\);

-- Location: FF_X6_Y25_N20
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[2]~5_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: MLABCELL_X4_Y25_N24
\RAM1|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~27feeder_combout\ = ( \REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~27feeder_combout\);

-- Location: LABCELL_X6_Y24_N12
\UC1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida[0]~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|saida[0]~0_combout\);

-- Location: LABCELL_X5_Y24_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X5_Y24_N57
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y24_N39
\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \RAM1|process_0~0_combout\ & ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~6_combout\ & (\UC1|saida[0]~0_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \UC1|ALT_INV_saida[0]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~176_combout\);

-- Location: FF_X4_Y25_N26
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~27feeder_combout\,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: MLABCELL_X4_Y25_N12
\RAM1|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~35feeder_combout\ = ( \REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~35feeder_combout\);

-- Location: LABCELL_X6_Y24_N3
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \RAM1|process_0~0_combout\ & ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~6_combout\ & (\UC1|saida[0]~0_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \UC1|ALT_INV_saida[0]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~173_combout\);

-- Location: FF_X4_Y25_N14
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~35feeder_combout\,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: MLABCELL_X4_Y24_N24
\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \RAM1|process_0~0_combout\ & ( \UC1|saida[0]~0_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \UC1|ALT_INV_saida[0]~0_combout\,
	combout => \RAM1|ram~175_combout\);

-- Location: FF_X5_Y25_N29
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X6_Y24_N24
\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \RAM1|process_0~0_combout\ & ( \UC1|saida[0]~0_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~8_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \UC1|ALT_INV_saida[0]~0_combout\,
	combout => \RAM1|ram~174_combout\);

-- Location: FF_X4_Y25_N20
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: MLABCELL_X4_Y25_N18
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \RAM1|ram~43_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~19_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~27_q\)) ) ) ) # ( !\RAM1|ram~43_q\ & ( \ROM1|memROM~6_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~19_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~27_q\)) ) ) ) # ( \RAM1|ram~43_q\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~35_q\) ) ) ) # ( !\RAM1|ram~43_q\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (\RAM1|ram~35_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	datae => \RAM1|ALT_INV_ram~43_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X5_Y25_N42
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \RAM1|ram~164_combout\ & ( (\ROM1|memROM~8_combout\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: LABCELL_X6_Y24_N33
\ULA1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\)) # (\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( 
-- ((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|saida[1]~0_combout\);

-- Location: LABCELL_X5_Y24_N21
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \UC1|Equal6~0_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \UC1|ALT_INV_Equal6~0_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: LABCELL_X7_Y25_N30
\ULA1|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~2_combout\ = ( \UC1|Equal6~0_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \UC1|ALT_INV_Equal6~0_combout\,
	combout => \ULA1|saida[0]~2_combout\);

-- Location: FF_X6_Y24_N56
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: FF_X6_Y24_N44
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X7_Y24_N2
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X6_Y24_N52
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X6_Y24_N48
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~17_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~41_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X5_Y25_N57
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~150_combout\ & ( (\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X6_Y25_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y25_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~151_combout\))) # (\UC1|Equal6~0_combout\ & (!\ROM1|memROM~5_combout\)) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~151_combout\))) # (\UC1|Equal6~0_combout\ & (!\ROM1|memROM~5_combout\)) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \REGA|ALT_INV_DOUT\(0),
	datac => \UC1|ALT_INV_Equal6~0_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X7_Y25_N39
\ULA1|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~7_combout\ = ( \ULA1|Add0~5_sumout\ & ( (\ULA1|saida[1]~0_combout\) # (\ULA1|saida[0]~2_combout\) ) ) # ( !\ULA1|Add0~5_sumout\ & ( \ULA1|saida[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~2_combout\,
	datac => \ULA1|ALT_INV_saida[1]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[0]~7_combout\);

-- Location: FF_X7_Y25_N41
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[0]~7_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X6_Y25_N36
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~149_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~2\ = CARRY(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~149_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_Equal6~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X7_Y25_N33
\ULA1|saida[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~6_combout\ = ( \ULA1|Add0~1_sumout\ & ( (\ULA1|saida[1]~1_combout\) # (\ULA1|saida[1]~0_combout\) ) ) # ( !\ULA1|Add0~1_sumout\ & ( \ULA1|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[1]~0_combout\,
	datad => \ULA1|ALT_INV_saida[1]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[1]~6_combout\);

-- Location: FF_X7_Y25_N35
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~6_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X5_Y25_N8
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X5_Y25_N6
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & \RAM1|ram~34_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~34_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: FF_X5_Y25_N5
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X5_Y25_N18
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~7_combout\ & ( (\RAM1|ram~18_q\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: FF_X5_Y25_N53
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: LABCELL_X5_Y25_N51
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & \RAM1|ram~42_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~42_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: FF_X4_Y25_N35
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: MLABCELL_X4_Y25_N30
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X5_Y25_N33
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~146_combout\ & ( \RAM1|ram~148_combout\ & ( ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~145_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~147_combout\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~146_combout\ 
-- & ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (\RAM1|ram~145_combout\))) # (\ROM1|memROM~6_combout\ & (((\RAM1|ram~147_combout\)) # (\ROM1|memROM~5_combout\))) ) ) ) # ( \RAM1|ram~146_combout\ & ( 
-- !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\RAM1|ram~145_combout\)) # (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~147_combout\)))) ) ) ) # ( !\RAM1|ram~146_combout\ & ( 
-- !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~145_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~147_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~145_combout\,
	datad => \RAM1|ALT_INV_ram~147_combout\,
	datae => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X6_Y25_N39
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~165_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~7_combout\)) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~165_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~7_combout\)) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \UC1|ALT_INV_Equal6~0_combout\,
	datad => \RAM1|ALT_INV_ram~165_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X6_Y25_N18
\ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~5_combout\ = ( \ULA1|Add0~21_sumout\ & ( (!\UC1|Equal6~0_combout\) # (!\ROM1|memROM~7_combout\) ) ) # ( !\ULA1|Add0~21_sumout\ & ( (\UC1|Equal6~0_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_Equal6~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[2]~5_combout\);

-- Location: LABCELL_X6_Y25_N24
\ZF1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZF1|DOUT~1_combout\ = ( \ULA1|Add0~1_sumout\ & ( \ULA1|Add0~5_sumout\ & ( (\UC1|saida[2]~2_combout\ & (!\ULA1|saida[1]~0_combout\ & (!\ULA1|saida[0]~2_combout\ & !\ULA1|saida[1]~1_combout\))) ) ) ) # ( !\ULA1|Add0~1_sumout\ & ( \ULA1|Add0~5_sumout\ & ( 
-- (\UC1|saida[2]~2_combout\ & (!\ULA1|saida[1]~0_combout\ & (!\ULA1|saida[0]~2_combout\ & !\ULA1|saida[1]~1_combout\))) ) ) ) # ( \ULA1|Add0~1_sumout\ & ( !\ULA1|Add0~5_sumout\ & ( (\UC1|saida[2]~2_combout\ & (!\ULA1|saida[1]~0_combout\ & 
-- (!\ULA1|saida[0]~2_combout\ & !\ULA1|saida[1]~1_combout\))) ) ) ) # ( !\ULA1|Add0~1_sumout\ & ( !\ULA1|Add0~5_sumout\ & ( (\UC1|saida[2]~2_combout\ & (!\ULA1|saida[0]~2_combout\ & !\ULA1|saida[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC1|ALT_INV_saida[2]~2_combout\,
	datab => \ULA1|ALT_INV_saida[1]~0_combout\,
	datac => \ULA1|ALT_INV_saida[0]~2_combout\,
	datad => \ULA1|ALT_INV_saida[1]~1_combout\,
	datae => \ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ZF1|DOUT~1_combout\);

-- Location: LABCELL_X6_Y24_N57
\ULA1|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|saida[6]~3_combout\);

-- Location: LABCELL_X7_Y25_N24
\ULA1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~9_combout\ = ( \ULA1|Add0~13_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[6]~3_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[4]~9_combout\);

-- Location: FF_X7_Y25_N26
\REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~9_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X4_Y25_N5
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X5_Y25_N20
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X4_Y25_N41
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X4_Y25_N10
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: MLABCELL_X4_Y25_N9
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \RAM1|ram~45_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~29_q\)) ) ) ) # ( !\RAM1|ram~45_q\ & ( \ROM1|memROM~6_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~29_q\)) ) ) ) # ( \RAM1|ram~45_q\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~37_q\) ) ) ) # ( !\RAM1|ram~45_q\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (\RAM1|ram~37_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datab => \RAM1|ALT_INV_ram~21_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~45_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X5_Y25_N9
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~157_combout\ & ( (\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: FF_X7_Y25_N25
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~9_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: LABCELL_X6_Y25_N42
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~163_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\UC1|Equal6~0_combout\ & ((!\RAM1|ram~163_combout\))) # (\UC1|Equal6~0_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_Equal6~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X6_Y25_N21
\ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~4_combout\ = ( \ULA1|Add0~17_sumout\ & ( (!\ROM1|memROM~8_combout\) # (!\UC1|Equal6~0_combout\) ) ) # ( !\ULA1|Add0~17_sumout\ & ( (!\ROM1|memROM~8_combout\ & \UC1|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \UC1|ALT_INV_Equal6~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[3]~4_combout\);

-- Location: FF_X6_Y25_N23
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~4_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X5_Y25_N17
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: LABCELL_X5_Y25_N15
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & \RAM1|ram~44_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~44_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: MLABCELL_X4_Y25_N42
\RAM1|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~28feeder_combout\ = ( \REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~28feeder_combout\);

-- Location: FF_X4_Y25_N44
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~28feeder_combout\,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: MLABCELL_X4_Y25_N48
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: FF_X5_Y25_N40
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X5_Y25_N36
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~7_combout\ & ( (\RAM1|ram~36_q\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X7_Y25_N14
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X7_Y25_N15
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X5_Y25_N27
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~159_combout\ & ( \RAM1|ram~161_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~160_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~162_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~159_combout\ & ( \RAM1|ram~161_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~160_combout\ & ((\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~162_combout\)))) ) ) ) # ( 
-- \RAM1|ram~159_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~5_combout\)) # (\RAM1|ram~160_combout\))) # (\ROM1|memROM~6_combout\ & (((\RAM1|ram~162_combout\ & \ROM1|memROM~5_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~159_combout\ & ( !\RAM1|ram~161_combout\ & ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~160_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~162_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_ram~160_combout\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~159_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X6_Y25_N45
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~158_combout\) # (\UC1|Equal6~0_combout\) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~158_combout\) # (\UC1|Equal6~0_combout\) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC1|ALT_INV_Equal6~0_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X7_Y25_N51
\ULA1|saida[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~8_combout\ = ( \ULA1|Add0~9_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \ULA1|ALT_INV_saida[6]~3_combout\,
	combout => \ULA1|saida[5]~8_combout\);

-- Location: FF_X7_Y25_N53
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~8_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X4_Y25_N56
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: MLABCELL_X4_Y25_N0
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X5_Y25_N14
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: LABCELL_X5_Y25_N12
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~8_combout\ & \RAM1|ram~46_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~46_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: FF_X5_Y25_N26
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X5_Y25_N21
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~7_combout\ & ( (\RAM1|ram~22_q\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: FF_X5_Y25_N32
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X5_Y25_N39
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & \RAM1|ram~38_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X5_Y25_N0
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~154_combout\ & ( \RAM1|ram~152_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\))) ) ) ) # ( 
-- !\RAM1|ram~154_combout\ & ( \RAM1|ram~152_combout\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))) # (\ROM1|memROM~6_combout\ & 
-- (\RAM1|ram~155_combout\)))) ) ) ) # ( \RAM1|ram~154_combout\ & ( !\RAM1|ram~152_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))) # 
-- (\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\)))) ) ) ) # ( !\RAM1|ram~154_combout\ & ( !\RAM1|ram~152_combout\ & ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))) # (\ROM1|memROM~6_combout\ & 
-- (\RAM1|ram~155_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	datae => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X5_Y24_N15
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X6_Y24_N6
\UC1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|Equal6~1_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|Equal6~1_combout\);

-- Location: LABCELL_X6_Y25_N48
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # ((!\ROM1|memROM~9_combout\ & \UC1|Equal6~1_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\RAM1|ram~156_combout\) # ((!\ROM1|memROM~9_combout\ & \UC1|Equal6~1_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~156_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \UC1|ALT_INV_Equal6~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X6_Y25_N9
\ZF1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZF1|DOUT~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) ) # ( !\ULA1|Add0~9_sumout\ & ( (!\ULA1|saida[6]~3_combout\ & \ULA1|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[6]~3_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ZF1|DOUT~2_combout\);

-- Location: LABCELL_X6_Y25_N15
\ULA1|saida[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~10_combout\ = ( \ULA1|Add0~25_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[6]~3_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[7]~10_combout\);

-- Location: FF_X6_Y25_N17
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[7]~10_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X7_Y25_N2
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X7_Y25_N6
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X7_Y25_N11
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X7_Y25_N21
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: FF_X6_Y24_N37
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X7_Y25_N36
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \ROM1|memROM~8_combout\ & ( (\RAM1|ram~32_q\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~32_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~169_combout\);

-- Location: FF_X6_Y25_N58
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: LABCELL_X7_Y25_N42
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~48_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: LABCELL_X7_Y25_N3
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \RAM1|ram~169_combout\ & ( \RAM1|ram~167_combout\ & ( ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~166_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~168_combout\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~169_combout\ 
-- & ( \RAM1|ram~167_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\RAM1|ram~166_combout\)) # (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~168_combout\)))) ) ) ) # ( \RAM1|ram~169_combout\ & ( 
-- !\RAM1|ram~167_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (\RAM1|ram~166_combout\))) # (\ROM1|memROM~6_combout\ & (((\RAM1|ram~168_combout\)) # (\ROM1|memROM~5_combout\))) ) ) ) # ( !\RAM1|ram~169_combout\ & ( 
-- !\RAM1|ram~167_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~166_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~168_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~166_combout\,
	datad => \RAM1|ALT_INV_ram~168_combout\,
	datae => \RAM1|ALT_INV_ram~169_combout\,
	dataf => \RAM1|ALT_INV_ram~167_combout\,
	combout => \RAM1|ram~170_combout\);

-- Location: LABCELL_X6_Y25_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\RAM1|ram~172_combout\) # ((!\ROM1|memROM~9_combout\ & \UC1|Equal6~1_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~30\ = CARRY(( (!\RAM1|ram~172_combout\) # ((!\ROM1|memROM~9_combout\ & \UC1|Equal6~1_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \RAM1|ALT_INV_ram~172_combout\,
	datad => \UC1|ALT_INV_Equal6~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X6_Y25_N6
\ULA1|saida[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~11_combout\ = ( \ULA1|Add0~29_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[6]~3_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[6]~11_combout\);

-- Location: FF_X6_Y25_N8
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~11_combout\,
	ena => \UC1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X6_Y24_N20
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X6_Y24_N17
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X5_Y24_N14
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X6_Y24_N29
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: LABCELL_X6_Y24_N21
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~47_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~23_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \RAM1|ALT_INV_ram~39_q\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \RAM1|ALT_INV_ram~47_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: LABCELL_X7_Y25_N57
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~171_combout\ & ( \ROM1|memROM~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~171_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: LABCELL_X6_Y25_N54
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\RAM1|ram~170_combout\) # ((!\ROM1|memROM~9_combout\ & \UC1|Equal6~1_combout\)) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \UC1|ALT_INV_Equal6~1_combout\,
	datad => \RAM1|ALT_INV_ram~170_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~25_sumout\);

-- Location: LABCELL_X6_Y25_N12
\ZF1|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZF1|DOUT~3_combout\ = ( \ULA1|Add0~29_sumout\ & ( !\ULA1|saida[6]~3_combout\ ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\ULA1|saida[6]~3_combout\ & \ULA1|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[6]~3_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ZF1|DOUT~3_combout\);

-- Location: LABCELL_X6_Y25_N0
\ZF1|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZF1|DOUT~4_combout\ = ( \ULA1|saida[3]~4_combout\ & ( \ZF1|DOUT~3_combout\ & ( \ZF1|DOUT~0_combout\ ) ) ) # ( !\ULA1|saida[3]~4_combout\ & ( \ZF1|DOUT~3_combout\ & ( \ZF1|DOUT~0_combout\ ) ) ) # ( \ULA1|saida[3]~4_combout\ & ( !\ZF1|DOUT~3_combout\ & ( 
-- \ZF1|DOUT~0_combout\ ) ) ) # ( !\ULA1|saida[3]~4_combout\ & ( !\ZF1|DOUT~3_combout\ & ( ((!\ULA1|saida[2]~5_combout\ & (\ZF1|DOUT~1_combout\ & !\ZF1|DOUT~2_combout\))) # (\ZF1|DOUT~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ZF1|ALT_INV_DOUT~0_combout\,
	datab => \ULA1|ALT_INV_saida[2]~5_combout\,
	datac => \ZF1|ALT_INV_DOUT~1_combout\,
	datad => \ZF1|ALT_INV_DOUT~2_combout\,
	datae => \ULA1|ALT_INV_saida[3]~4_combout\,
	dataf => \ZF1|ALT_INV_DOUT~3_combout\,
	combout => \ZF1|DOUT~4_combout\);

-- Location: FF_X6_Y25_N1
\ZF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ZF1|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ZF1|DOUT~q\);

-- Location: LABCELL_X5_Y23_N48
\UC1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|Equal3~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \UC1|Equal3~0_combout\);

-- Location: LABCELL_X5_Y23_N12
\UC1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|Equal4~0_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \UC1|Equal4~0_combout\);

-- Location: LABCELL_X5_Y23_N30
\LOGDESVIO|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGDESVIO|saida[1]~0_combout\ = ( !\UC1|Equal4~0_combout\ & ( (\UC1|saida~4_combout\ & (\UC1|saida~5_combout\ & ((!\ZF1|DOUT~q\) # (!\UC1|Equal3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100000000000101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC1|ALT_INV_saida~4_combout\,
	datab => \ZF1|ALT_INV_DOUT~q\,
	datac => \UC1|ALT_INV_Equal3~0_combout\,
	datad => \UC1|ALT_INV_saida~5_combout\,
	dataf => \UC1|ALT_INV_Equal4~0_combout\,
	combout => \LOGDESVIO|saida[1]~0_combout\);

-- Location: LABCELL_X5_Y24_N0
\MUX_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (\LOGDESVIO|saida[1]~0_combout\) # (\incrementaPC|Add0~1_sumout\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\incrementaPC|Add0~1_sumout\ & !\LOGDESVIO|saida[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \LOGDESVIO|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \MUX_PC|saida_MUX[0]~0_combout\);

-- Location: FF_X5_Y24_N2
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X5_Y24_N55
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X5_Y24_N46
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X5_Y23_N0
\UC1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC1|saida[1]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\)) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001100000011000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \UC1|saida[1]~1_combout\);

-- Location: IOIBUF_X34_Y45_N52
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X47_Y43_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


