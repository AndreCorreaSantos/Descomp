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

-- DATE "10/01/2023 20:17:44"

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

ENTITY 	aula07 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	ADDRMEM : OUT std_logic_vector(5 DOWNTO 0);
	OUTMEM : OUT std_logic_vector(7 DOWNTO 0)
	);
END aula07;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADDRMEM[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRMEM[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRMEM[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRMEM[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRMEM[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRMEM[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTMEM[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF aula07 IS
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
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ADDRMEM : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_OUTMEM : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|UC1|Equal6~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|UC1|Equal6~3_combout\ : std_logic;
SIGNAL \CPU|UC1|Equal6~2_combout\ : std_logic;
SIGNAL \RAM1|dado_out~8_combout\ : std_logic;
SIGNAL \CPU|UC1|Equal6~4_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|Equal6~1_combout\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER|DECINT|Equal7~0_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX|HEX3|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER|DECINT|Equal7~1_combout\ : std_logic;
SIGNAL \HEX|HEX2|REG4BITS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \HEX|HEX2|REG4BITS|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX|HEX2|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER|DECINT|Equal7~2_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX|HEX1|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER|DECINT|Equal7~3_combout\ : std_logic;
SIGNAL \HEX|HEX0|REG4BITS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \HEX|HEX0|REG4BITS|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX|HEX0|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LED1|DOUT~q\ : std_logic;
SIGNAL \LED2|DOUT~feeder_combout\ : std_logic;
SIGNAL \LED2|DOUT~q\ : std_logic;
SIGNAL \LED8|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \HEX|HEX0|REG4BITS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX|HEX3|REG4BITS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX|HEX2|REG4BITS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX|HEX1|REG4BITS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LED8|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|UC1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \HEX|HEX0|REG4BITS|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX|HEX1|REG4BITS|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX|HEX2|REG4BITS|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX|HEX3|REG4BITS|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ADDRMEM <= ww_ADDRMEM;
OUTMEM <= ww_OUTMEM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[6]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[5]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\RAM1|ALT_INV_dado_out~8_combout\ <= NOT \RAM1|dado_out~8_combout\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[7]~7_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[6]~6_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[5]~5_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[4]~4_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[2]~3_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[1]~2_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[3]~1_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~0_combout\;
\CPU|UC1|ALT_INV_Equal6~4_combout\ <= NOT \CPU|UC1|Equal6~4_combout\;
\CPU|UC1|ALT_INV_Equal6~3_combout\ <= NOT \CPU|UC1|Equal6~3_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\CPU|UC1|ALT_INV_Equal6~2_combout\ <= NOT \CPU|UC1|Equal6~2_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|UC1|ALT_INV_Equal6~1_combout\ <= NOT \CPU|UC1|Equal6~1_combout\;
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2) <= NOT \HEX|HEX0|REG4BITS|DOUT\(2);
\HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1) <= NOT \HEX|HEX0|REG4BITS|DOUT\(1);
\HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3) <= NOT \HEX|HEX0|REG4BITS|DOUT\(3);
\HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0) <= NOT \HEX|HEX0|REG4BITS|DOUT\(0);
\HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2) <= NOT \HEX|HEX1|REG4BITS|DOUT\(2);
\HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1) <= NOT \HEX|HEX1|REG4BITS|DOUT\(1);
\HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3) <= NOT \HEX|HEX1|REG4BITS|DOUT\(3);
\HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0) <= NOT \HEX|HEX1|REG4BITS|DOUT\(0);
\HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2) <= NOT \HEX|HEX2|REG4BITS|DOUT\(2);
\HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1) <= NOT \HEX|HEX2|REG4BITS|DOUT\(1);
\HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3) <= NOT \HEX|HEX2|REG4BITS|DOUT\(3);
\HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0) <= NOT \HEX|HEX2|REG4BITS|DOUT\(0);
\HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2) <= NOT \HEX|HEX3|REG4BITS|DOUT\(2);
\HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1) <= NOT \HEX|HEX3|REG4BITS|DOUT\(1);
\HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3) <= NOT \HEX|HEX3|REG4BITS|DOUT\(3);
\HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0) <= NOT \HEX|HEX3|REG4BITS|DOUT\(0);
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);

-- Location: IOOBUF_X36_Y45_N53
\OUTMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~528_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(0));

-- Location: IOOBUF_X12_Y0_N2
\OUTMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~529_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(1));

-- Location: IOOBUF_X54_Y16_N22
\OUTMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~530_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(2));

-- Location: IOOBUF_X12_Y0_N19
\OUTMEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~531_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(3));

-- Location: IOOBUF_X54_Y15_N39
\OUTMEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~532_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(4));

-- Location: IOOBUF_X54_Y16_N5
\OUTMEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~533_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(5));

-- Location: IOOBUF_X54_Y15_N22
\OUTMEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~534_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(6));

-- Location: IOOBUF_X54_Y16_N39
\OUTMEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~535_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_OUTMEM(7));

-- Location: IOOBUF_X14_Y0_N53
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X36_Y45_N36
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X36_Y45_N19
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X54_Y14_N62
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y14_N96
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X38_Y45_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X12_Y0_N36
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X36_Y45_N2
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X34_Y45_N36
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX3|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX2|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX1|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX|HEX0|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED2|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y14_N79
\ADDRMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(0));

-- Location: IOOBUF_X54_Y14_N45
\ADDRMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(1));

-- Location: IOOBUF_X34_Y45_N53
\ADDRMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(2));

-- Location: IOOBUF_X54_Y15_N56
\ADDRMEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(3));

-- Location: IOOBUF_X34_Y45_N2
\ADDRMEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(4));

-- Location: IOOBUF_X14_Y0_N36
\ADDRMEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_ADDRMEM(5));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: LABCELL_X36_Y2_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: FF_X36_Y2_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N38
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X36_Y2_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X36_Y2_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X36_Y2_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X36_Y2_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: MLABCELL_X37_Y2_N57
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X36_Y2_N47
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X36_Y2_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X36_Y2_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X36_Y2_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X36_Y2_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X36_Y2_N18
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X36_Y2_N15
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~12_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X36_Y2_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N27
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\ROM1|memROM~0_combout\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000000010000010000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X36_Y2_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X36_Y2_N0
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X36_Y2_N24
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~0_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X36_Y2_N41
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: FF_X36_Y2_N40
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N24
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (\CPU|PC|DOUT[3]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X35_Y2_N51
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011011000110110001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X36_Y2_N3
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X35_Y2_N48
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X35_Y2_N42
\CPU|UC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal6~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~9_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|UC1|Equal6~0_combout\);

-- Location: FF_X36_Y2_N49
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: FF_X36_Y2_N50
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N27
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X36_Y2_N12
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~11_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X36_Y2_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X36_Y2_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: FF_X36_Y2_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: FF_X36_Y2_N37
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: MLABCELL_X37_Y2_N21
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X35_Y2_N45
\CPU|UC1|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal6~3_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|UC1|Equal6~3_combout\);

-- Location: LABCELL_X35_Y2_N12
\CPU|UC1|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal6~2_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~7_combout\ & !\CPU|PC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|UC1|Equal6~2_combout\);

-- Location: LABCELL_X35_Y2_N6
\RAM1|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~8_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|dado_out~8_combout\);

-- Location: LABCELL_X35_Y2_N39
\CPU|UC1|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal6~4_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~9_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|UC1|Equal6~4_combout\);

-- Location: LABCELL_X36_Y1_N3
\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \RAM1|ram~527_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((!\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~3_combout\ & (((\ROM1|memROM~1_combout\)))) ) ) # ( 
-- !\RAM1|ram~527_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000110011101010100011001111111010001100111111101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X36_Y1_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|UC1|Equal6~4_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X36_Y1_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[0]~0_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[0]~0_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y1_N0
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \RAM1|dado_out~8_combout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (((!\CPU|UC1|Equal6~3_combout\) # (\ROM1|memROM~1_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (\RAM1|ram~528_combout\)) ) ) ) # ( 
-- !\RAM1|dado_out~8_combout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|UC1|Equal6~3_combout\) # ((\ROM1|memROM~1_combout\) # (\CPU|UC1|Equal6~2_combout\)) ) ) ) # ( \RAM1|dado_out~8_combout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & 
-- (((\CPU|UC1|Equal6~3_combout\ & \ROM1|memROM~1_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (\RAM1|ram~528_combout\)) ) ) ) # ( !\RAM1|dado_out~8_combout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( ((\CPU|UC1|Equal6~3_combout\ & \ROM1|memROM~1_combout\)) # 
-- (\CPU|UC1|Equal6~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000001010011010111001111111111111100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~528_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\CPU|UC1|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida[5]~0_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~7_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~6_combout\)) ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ $ 
-- (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \CPU|UC1|saida[5]~0_combout\);

-- Location: FF_X35_Y1_N1
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X35_Y2_N0
\CPU|UC1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal6~1_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|UC1|Equal6~1_combout\);

-- Location: LABCELL_X35_Y2_N30
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \CPU|UC1|Equal6~1_combout\ & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: FF_X35_Y2_N52
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X35_Y2_N21
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \CPU|UC1|Equal6~1_combout\ & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (((\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( \CPU|UC1|Equal6~1_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100101110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X36_Y2_N8
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X36_Y2_N6
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~23_q\)) # (\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\)) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & 
-- (!\ROM1|memROM~2_combout\ & \RAM1|ram~15_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X36_Y1_N18
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~536_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X35_Y1_N33
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \RAM1|ram~527_combout\ & ( !\ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X36_Y1_N24
\CPU|MUX_ULA|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~2_combout\ = ( \RAM1|ram~563_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((!\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~3_combout\ & (((\ROM1|memROM~2_combout\)))) ) ) # ( 
-- !\RAM1|ram~563_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111111100000111011111110000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \RAM1|ALT_INV_ram~563_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~2_combout\);

-- Location: LABCELL_X36_Y1_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|MUX_ULA|saida_MUX[1]~2_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|MUX_ULA|saida_MUX[1]~2_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X35_Y1_N42
\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( \CPU|UC1|Equal6~3_combout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (\ROM1|memROM~2_combout\)) # (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~529_combout\)))) ) ) ) # ( 
-- !\CPU|ULA1|Add0~9_sumout\ & ( \CPU|UC1|Equal6~3_combout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (\ROM1|memROM~2_combout\)) # (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~529_combout\)))) ) ) ) # ( \CPU|ULA1|Add0~9_sumout\ & ( 
-- !\CPU|UC1|Equal6~3_combout\ & ( (!\RAM1|dado_out~8_combout\) # ((!\CPU|UC1|Equal6~2_combout\) # (\RAM1|ram~529_combout\)) ) ) ) # ( !\CPU|ULA1|Add0~9_sumout\ & ( !\CPU|UC1|Equal6~3_combout\ & ( (\CPU|UC1|Equal6~2_combout\ & ((!\RAM1|dado_out~8_combout\) # 
-- (\RAM1|ram~529_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111111111001111111101011100010111110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \RAM1|ALT_INV_ram~529_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

-- Location: FF_X35_Y1_N43
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~2_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X37_Y2_N26
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X37_Y2_N8
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: MLABCELL_X37_Y2_N6
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \RAM1|ram~16_q\ & ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~24_q\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\RAM1|ram~16_q\ & ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~24_q\ & (!\ROM1|memROM~4_combout\ & 
-- !\ROM1|memROM~2_combout\)) ) ) ) # ( \RAM1|ram~16_q\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \RAM1|ALT_INV_ram~16_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~563_combout\);

-- Location: LABCELL_X35_Y1_N12
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = (\RAM1|ram~563_combout\ & !\ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~563_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X36_Y2_N21
\CPU|MUX_ULA|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~3_combout\ = ( \RAM1|ram~559_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (!\ROM1|memROM~3_combout\))) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~3_combout\))) ) ) # ( !\RAM1|ram~559_combout\ & 
-- ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110101101000001111010110101010111101011010101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~559_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~3_combout\);

-- Location: LABCELL_X36_Y1_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[2]~3_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[2]~3_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X36_Y1_N12
\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \RAM1|ram~530_combout\ & ( \CPU|ULA1|Add0~13_sumout\ & ( ((!\CPU|UC1|Equal6~3_combout\) # (\ROM1|memROM~3_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~530_combout\ & ( \CPU|ULA1|Add0~13_sumout\ & ( 
-- (!\CPU|UC1|Equal6~2_combout\ & (((!\CPU|UC1|Equal6~3_combout\) # (\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (!\RAM1|dado_out~8_combout\)) ) ) ) # ( \RAM1|ram~530_combout\ & ( !\CPU|ULA1|Add0~13_sumout\ & ( ((\CPU|UC1|Equal6~3_combout\ & 
-- \ROM1|memROM~3_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~530_combout\ & ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (((\CPU|UC1|Equal6~3_combout\ & \ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & 
-- (!\RAM1|dado_out~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101110001100110011111111100010111011101111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~530_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

-- Location: FF_X36_Y1_N14
\CPU|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~3_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N20
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: FF_X37_Y2_N17
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: MLABCELL_X37_Y2_N12
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\RAM1|ram~25_q\ & !\ROM1|memROM~2_combout\) ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\RAM1|ram~17_q\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: MLABCELL_X37_Y2_N45
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~559_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~559_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X36_Y1_N21
\CPU|MUX_ULA|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~1_combout\ = ( \RAM1|ram~555_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((!\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~3_combout\ & (((\ROM1|memROM~4_combout\)))) ) ) # ( 
-- !\RAM1|ram~555_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000110011101010100011001111111010001100111111101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	dataf => \RAM1|ALT_INV_ram~555_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~1_combout\);

-- Location: LABCELL_X36_Y1_N42
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[3]~1_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[3]~1_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X35_Y1_N24
\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( \RAM1|ram~531_combout\ & ( ((!\CPU|UC1|Equal6~3_combout\) # (\CPU|UC1|Equal6~2_combout\)) # (\ROM1|memROM~4_combout\) ) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( \RAM1|ram~531_combout\ & ( 
-- ((\ROM1|memROM~4_combout\ & \CPU|UC1|Equal6~3_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( \CPU|ULA1|Add0~5_sumout\ & ( !\RAM1|ram~531_combout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (((!\CPU|UC1|Equal6~3_combout\)) # (\ROM1|memROM~4_combout\))) # 
-- (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\)))) ) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( !\RAM1|ram~531_combout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (\ROM1|memROM~4_combout\ & (\CPU|UC1|Equal6~3_combout\))) # (\CPU|UC1|Equal6~2_combout\ & 
-- (((!\RAM1|dado_out~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010000110111111101000000011111000111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

-- Location: FF_X35_Y1_N25
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~1_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X35_Y1_N31
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X35_Y1_N56
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X35_Y1_N54
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~1_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~1_combout\ & (\RAM1|ram~26_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: LABCELL_X35_Y1_N30
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~555_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~555_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X36_Y1_N0
\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM1|ram~551_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (!\ROM1|memROM~3_combout\))) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~3_combout\))) ) ) # ( !\RAM1|ram~551_combout\ & 
-- ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111111110000101011111111000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X36_Y1_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[4]~4_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[4]~4_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X35_Y1_N18
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \RAM1|dado_out~8_combout\ & ( \CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (((!\CPU|UC1|Equal6~3_combout\)) # (\ROM1|memROM~3_combout\))) # (\CPU|UC1|Equal6~2_combout\ & (((\RAM1|ram~532_combout\)))) ) ) ) 
-- # ( !\RAM1|dado_out~8_combout\ & ( \CPU|ULA1|Add0~17_sumout\ & ( ((!\CPU|UC1|Equal6~3_combout\) # (\CPU|UC1|Equal6~2_combout\)) # (\ROM1|memROM~3_combout\) ) ) ) # ( \RAM1|dado_out~8_combout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ 
-- & (\ROM1|memROM~3_combout\ & ((\CPU|UC1|Equal6~3_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (((\RAM1|ram~532_combout\)))) ) ) ) # ( !\RAM1|dado_out~8_combout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( ((\ROM1|memROM~3_combout\ & \CPU|UC1|Equal6~3_combout\)) # 
-- (\CPU|UC1|Equal6~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000000110101001111111111010111111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \RAM1|ALT_INV_ram~532_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datae => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X35_Y1_N19
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X37_Y2_N2
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: FF_X37_Y2_N35
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X37_Y2_N33
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \RAM1|ram~19_q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~27_q\)) ) ) ) # ( !\RAM1|ram~19_q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & 
-- (!\ROM1|memROM~2_combout\ & \RAM1|ram~27_q\)) ) ) ) # ( \RAM1|ram~19_q\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	datae => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: LABCELL_X35_Y1_N39
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~551_combout\ & ( !\ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X36_Y1_N27
\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \RAM1|ram~547_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((!\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~3_combout\ & (((\ROM1|memROM~5_combout\)))) ) ) # ( 
-- !\RAM1|ram~547_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111101010100000111111101110000011111110111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X36_Y1_N11
\CPU|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[5]~5_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[5]~5_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X36_Y1_N9
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \RAM1|ram~533_combout\ & ( \CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|UC1|Equal6~3_combout\) # ((\CPU|UC1|Equal6~2_combout\) # (\ROM1|memROM~5_combout\)) ) ) ) # ( !\RAM1|ram~533_combout\ & ( \CPU|ULA1|Add0~21_sumout\ & ( 
-- (!\CPU|UC1|Equal6~2_combout\ & ((!\CPU|UC1|Equal6~3_combout\) # ((\ROM1|memROM~5_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\)))) ) ) ) # ( \RAM1|ram~533_combout\ & ( !\CPU|ULA1|Add0~21_sumout\ & ( 
-- ((\CPU|UC1|Equal6~3_combout\ & \ROM1|memROM~5_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~533_combout\ & ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (\CPU|UC1|Equal6~3_combout\ & (\ROM1|memROM~5_combout\))) # 
-- (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010000000111110001111110111111101100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	datae => \RAM1|ALT_INV_ram~533_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X36_Y1_N10
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X37_Y2_N31
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X37_Y2_N29
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: MLABCELL_X37_Y2_N27
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~28_q\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~4_combout\) ) ) ) # ( \RAM1|ram~28_q\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & 
-- \RAM1|ram~20_q\)) ) ) ) # ( !\RAM1|ram~28_q\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~20_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	datae => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: MLABCELL_X37_Y2_N3
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~547_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~547_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: LABCELL_X35_Y1_N48
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \RAM1|ram~543_combout\ & ( \CPU|UC1|Equal6~3_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( !\RAM1|ram~543_combout\ & ( \CPU|UC1|Equal6~3_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( \RAM1|ram~543_combout\ & ( 
-- !\CPU|UC1|Equal6~3_combout\ & ( (!\ROM1|memROM~3_combout\) # (!\RAM1|dado_out~8_combout\) ) ) ) # ( !\RAM1|ram~543_combout\ & ( !\CPU|UC1|Equal6~3_combout\ & ( !\RAM1|dado_out~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	datae => \RAM1|ALT_INV_ram~543_combout\,
	dataf => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X36_Y1_N17
\CPU|REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX_ULA|saida_MUX[6]~6_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX_ULA|saida_MUX[6]~6_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datac => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X36_Y1_N15
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \RAM1|ram~534_combout\ & ( \CPU|ULA1|Add0~25_sumout\ & ( ((!\CPU|UC1|Equal6~3_combout\) # (\ROM1|memROM~3_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~534_combout\ & ( \CPU|ULA1|Add0~25_sumout\ & ( 
-- (!\CPU|UC1|Equal6~2_combout\ & (((!\CPU|UC1|Equal6~3_combout\) # (\ROM1|memROM~3_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (!\RAM1|dado_out~8_combout\)) ) ) ) # ( \RAM1|ram~534_combout\ & ( !\CPU|ULA1|Add0~25_sumout\ & ( ((\ROM1|memROM~3_combout\ & 
-- \CPU|UC1|Equal6~3_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~534_combout\ & ( !\CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (((\ROM1|memROM~3_combout\ & \CPU|UC1|Equal6~3_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & 
-- (!\RAM1|dado_out~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101110001100110011111111101110001011101111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datae => \RAM1|ALT_INV_ram~534_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X36_Y1_N16
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X37_Y2_N44
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X36_Y2_N11
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X36_Y2_N9
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~29_q\)) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~21_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: LABCELL_X35_Y1_N57
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~543_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~543_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: LABCELL_X35_Y1_N6
\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \RAM1|ram~539_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & ((!\ROM1|memROM~3_combout\) # ((!\RAM1|dado_out~8_combout\)))) # (\CPU|UC1|Equal6~3_combout\ & (((\ROM1|memROM~5_combout\)))) ) ) # ( 
-- !\RAM1|ram~539_combout\ & ( (!\CPU|UC1|Equal6~3_combout\ & (!\RAM1|dado_out~8_combout\)) # (\CPU|UC1|Equal6~3_combout\ & ((\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111111101110000011111110111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X36_Y1_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGA|DOUT\(7) ) + ( !\CPU|MUX_ULA|saida_MUX[7]~7_combout\ $ (((\CPU|UC1|Equal6~4_combout\ & !\CPU|UC1|Equal6~2_combout\))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~4_combout\,
	datab => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X36_Y1_N6
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \RAM1|ram~535_combout\ & ( \CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|UC1|Equal6~3_combout\) # ((\CPU|UC1|Equal6~2_combout\) # (\ROM1|memROM~5_combout\)) ) ) ) # ( !\RAM1|ram~535_combout\ & ( \CPU|ULA1|Add0~29_sumout\ & ( 
-- (!\CPU|UC1|Equal6~2_combout\ & ((!\CPU|UC1|Equal6~3_combout\) # ((\ROM1|memROM~5_combout\)))) # (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\)))) ) ) ) # ( \RAM1|ram~535_combout\ & ( !\CPU|ULA1|Add0~29_sumout\ & ( 
-- ((\CPU|UC1|Equal6~3_combout\ & \ROM1|memROM~5_combout\)) # (\CPU|UC1|Equal6~2_combout\) ) ) ) # ( !\RAM1|ram~535_combout\ & ( !\CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|UC1|Equal6~2_combout\ & (\CPU|UC1|Equal6~3_combout\ & (\ROM1|memROM~5_combout\))) # 
-- (\CPU|UC1|Equal6~2_combout\ & (((!\RAM1|dado_out~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110000000100011111111110111011111100001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC1|ALT_INV_Equal6~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~2_combout\,
	datae => \RAM1|ALT_INV_ram~535_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X36_Y1_N7
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X35_Y1_N8
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X35_Y1_N17
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X35_Y1_N15
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (\RAM1|ram~30_q\ & !\ROM1|memROM~4_combout\)) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~22_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_ram~30_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X35_Y1_N9
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = (!\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: FF_X36_Y2_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \CPU|UC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N36
\DECODER|DECINT|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|DECINT|Equal7~0_combout\ = ( \ROM1|memROM~10_combout\ & ( \CPU|UC1|Equal6~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	combout => \DECODER|DECINT|Equal7~0_combout\);

-- Location: FF_X37_Y2_N40
\HEX|HEX3|REG4BITS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX3|REG4BITS|DOUT\(0));

-- Location: FF_X37_Y2_N52
\HEX|HEX3|REG4BITS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX3|REG4BITS|DOUT\(2));

-- Location: FF_X37_Y2_N38
\HEX|HEX3|REG4BITS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX3|REG4BITS|DOUT\(3));

-- Location: FF_X37_Y2_N59
\HEX|HEX3|REG4BITS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX3|REG4BITS|DOUT\(1));

-- Location: LABCELL_X41_Y2_N51
\HEX|HEX3|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(0) & !\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( 
-- (\HEX|HEX3|REG4BITS|DOUT\(0) & \HEX|HEX3|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( !\HEX|HEX3|REG4BITS|DOUT\(0) $ (!\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N30
\HEX|HEX3|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(0)) # (\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( 
-- (\HEX|HEX3|REG4BITS|DOUT\(2) & !\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(2) & !\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( 
-- !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(2) & \HEX|HEX3|REG4BITS|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N39
\HEX|HEX3|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( \HEX|HEX3|REG4BITS|DOUT\(2) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( (!\HEX|HEX3|REG4BITS|DOUT\(0) & 
-- !\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (!\HEX|HEX3|REG4BITS|DOUT\(0) & \HEX|HEX3|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N18
\HEX|HEX3|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( !\HEX|HEX3|REG4BITS|DOUT\(2) $ (\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( 
-- (\HEX|HEX3|REG4BITS|DOUT\(2) & \HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( !\HEX|HEX3|REG4BITS|DOUT\(2) $ (!\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N0
\HEX|HEX3|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( \HEX|HEX3|REG4BITS|DOUT\(0) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (!\HEX|HEX3|REG4BITS|DOUT\(2) & 
-- \HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(0)) # (\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N57
\HEX|HEX3|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( (!\HEX|HEX3|REG4BITS|DOUT\(2)) # (\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & 
-- ( (\HEX|HEX3|REG4BITS|DOUT\(0) & \HEX|HEX3|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(0) & !\HEX|HEX3|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N12
\HEX|HEX3|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX3|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( \HEX|HEX3|REG4BITS|DOUT\(1) & ( (\HEX|HEX3|REG4BITS|DOUT\(2) & \HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( \HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( 
-- (\HEX|HEX3|REG4BITS|DOUT\(2) & !\HEX|HEX3|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX3|REG4BITS|DOUT\(3) & ( !\HEX|HEX3|REG4BITS|DOUT\(1) & ( !\HEX|HEX3|REG4BITS|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100000011000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX3|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX3|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: FF_X36_Y1_N13
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~3_combout\,
	ena => \CPU|UC1|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X37_Y1_N30
\DECODER|DECINT|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|DECINT|Equal7~1_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~2_combout\ & \CPU|UC1|Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \DECODER|DECINT|Equal7~1_combout\);

-- Location: FF_X37_Y1_N35
\HEX|HEX2|REG4BITS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX2|REG4BITS|DOUT\(2));

-- Location: MLABCELL_X37_Y1_N15
\HEX|HEX2|REG4BITS|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|REG4BITS|DOUT[3]~feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \HEX|HEX2|REG4BITS|DOUT[3]~feeder_combout\);

-- Location: FF_X37_Y1_N17
\HEX|HEX2|REG4BITS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \HEX|HEX2|REG4BITS|DOUT[3]~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX2|REG4BITS|DOUT\(3));

-- Location: MLABCELL_X37_Y1_N12
\HEX|HEX2|REG4BITS|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|REG4BITS|DOUT[0]~feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|REG4BITS|DOUT[0]~feeder_combout\);

-- Location: FF_X37_Y1_N14
\HEX|HEX2|REG4BITS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \HEX|HEX2|REG4BITS|DOUT[0]~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX2|REG4BITS|DOUT\(0));

-- Location: FF_X37_Y1_N32
\HEX|HEX2|REG4BITS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX2|REG4BITS|DOUT\(1));

-- Location: MLABCELL_X37_Y1_N39
\HEX|HEX2|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(1) & ( (!\HEX|HEX2|REG4BITS|DOUT\(2) & (\HEX|HEX2|REG4BITS|DOUT\(3) & \HEX|HEX2|REG4BITS|DOUT\(0))) ) ) # ( !\HEX|HEX2|REG4BITS|DOUT\(1) & ( (!\HEX|HEX2|REG4BITS|DOUT\(2) & 
-- (!\HEX|HEX2|REG4BITS|DOUT\(3) & \HEX|HEX2|REG4BITS|DOUT\(0))) # (\HEX|HEX2|REG4BITS|DOUT\(2) & (!\HEX|HEX2|REG4BITS|DOUT\(3) $ (\HEX|HEX2|REG4BITS|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y1_N42
\HEX|HEX2|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(1) & (\HEX|HEX2|REG4BITS|DOUT\(2) & !\HEX|HEX2|REG4BITS|DOUT\(3))) # (\HEX|HEX2|REG4BITS|DOUT\(1) & ((\HEX|HEX2|REG4BITS|DOUT\(3)))) ) ) # ( 
-- !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (\HEX|HEX2|REG4BITS|DOUT\(2) & ((\HEX|HEX2|REG4BITS|DOUT\(3)) # (\HEX|HEX2|REG4BITS|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y1_N24
\HEX|HEX2|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( (\HEX|HEX2|REG4BITS|DOUT\(1) & (\HEX|HEX2|REG4BITS|DOUT\(2) & \HEX|HEX2|REG4BITS|DOUT\(3))) ) ) # ( !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(2) & 
-- (\HEX|HEX2|REG4BITS|DOUT\(1) & !\HEX|HEX2|REG4BITS|DOUT\(3))) # (\HEX|HEX2|REG4BITS|DOUT\(2) & ((\HEX|HEX2|REG4BITS|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y1_N18
\HEX|HEX2|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(1) & (!\HEX|HEX2|REG4BITS|DOUT\(2) & !\HEX|HEX2|REG4BITS|DOUT\(3))) # (\HEX|HEX2|REG4BITS|DOUT\(1) & (\HEX|HEX2|REG4BITS|DOUT\(2))) ) ) # ( 
-- !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(1) & (\HEX|HEX2|REG4BITS|DOUT\(2) & !\HEX|HEX2|REG4BITS|DOUT\(3))) # (\HEX|HEX2|REG4BITS|DOUT\(1) & (!\HEX|HEX2|REG4BITS|DOUT\(2) & \HEX|HEX2|REG4BITS|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y1_N48
\HEX|HEX2|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(3)) # ((!\HEX|HEX2|REG4BITS|DOUT\(1) & !\HEX|HEX2|REG4BITS|DOUT\(2))) ) ) # ( !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(1) & 
-- (\HEX|HEX2|REG4BITS|DOUT\(2) & !\HEX|HEX2|REG4BITS|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y1_N54
\HEX|HEX2|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( !\HEX|HEX2|REG4BITS|DOUT\(3) $ (((!\HEX|HEX2|REG4BITS|DOUT\(1) & \HEX|HEX2|REG4BITS|DOUT\(2)))) ) ) # ( !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (\HEX|HEX2|REG4BITS|DOUT\(1) & 
-- (!\HEX|HEX2|REG4BITS|DOUT\(2) & !\HEX|HEX2|REG4BITS|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y1_N0
\HEX|HEX2|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX2|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(3) & (!\HEX|HEX2|REG4BITS|DOUT\(1) $ (\HEX|HEX2|REG4BITS|DOUT\(2)))) ) ) # ( !\HEX|HEX2|REG4BITS|DOUT\(0) & ( (!\HEX|HEX2|REG4BITS|DOUT\(1) & 
-- (!\HEX|HEX2|REG4BITS|DOUT\(2) $ (\HEX|HEX2|REG4BITS|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX2|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX2|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N57
\DECODER|DECINT|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|DECINT|Equal7~2_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~10_combout\ & (\ROM1|memROM~1_combout\ & \CPU|UC1|Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|DECINT|Equal7~2_combout\);

-- Location: FF_X35_Y2_N55
\HEX|HEX1|REG4BITS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX1|REG4BITS|DOUT\(3));

-- Location: FF_X36_Y2_N2
\HEX|HEX1|REG4BITS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX1|REG4BITS|DOUT\(0));

-- Location: FF_X35_Y2_N10
\HEX|HEX1|REG4BITS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX1|REG4BITS|DOUT\(1));

-- Location: FF_X35_Y2_N59
\HEX|HEX1|REG4BITS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX1|REG4BITS|DOUT\(2));

-- Location: LABCELL_X40_Y2_N27
\HEX|HEX1|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(2) & ( (!\HEX|HEX1|REG4BITS|DOUT\(1) & (!\HEX|HEX1|REG4BITS|DOUT\(3) $ (\HEX|HEX1|REG4BITS|DOUT\(0)))) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(2) & ( (\HEX|HEX1|REG4BITS|DOUT\(0) & 
-- (!\HEX|HEX1|REG4BITS|DOUT\(3) $ (\HEX|HEX1|REG4BITS|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	datab => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N42
\HEX|HEX1|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(0) & ( \HEX|HEX1|REG4BITS|DOUT\(1) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(0) & ( (!\HEX|HEX1|REG4BITS|DOUT\(1) & 
-- \HEX|HEX1|REG4BITS|DOUT\(2)) ) ) ) # ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(0) & ( \HEX|HEX1|REG4BITS|DOUT\(2) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(0) & ( (\HEX|HEX1|REG4BITS|DOUT\(1) & 
-- \HEX|HEX1|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N51
\HEX|HEX1|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(1) & ( \HEX|HEX1|REG4BITS|DOUT\(2) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(1) & ( (!\HEX|HEX1|REG4BITS|DOUT\(2) & 
-- !\HEX|HEX1|REG4BITS|DOUT\(0)) ) ) ) # ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(1) & ( (\HEX|HEX1|REG4BITS|DOUT\(2) & !\HEX|HEX1|REG4BITS|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N24
\HEX|HEX1|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(2) & ( (!\HEX|HEX1|REG4BITS|DOUT\(0) & (!\HEX|HEX1|REG4BITS|DOUT\(3) & !\HEX|HEX1|REG4BITS|DOUT\(1))) # (\HEX|HEX1|REG4BITS|DOUT\(0) & ((\HEX|HEX1|REG4BITS|DOUT\(1)))) ) ) # ( 
-- !\HEX|HEX1|REG4BITS|DOUT\(2) & ( (!\HEX|HEX1|REG4BITS|DOUT\(3) & (\HEX|HEX1|REG4BITS|DOUT\(0) & !\HEX|HEX1|REG4BITS|DOUT\(1))) # (\HEX|HEX1|REG4BITS|DOUT\(3) & (!\HEX|HEX1|REG4BITS|DOUT\(0) & \HEX|HEX1|REG4BITS|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	datab => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N33
\HEX|HEX1|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(1) & ( \HEX|HEX1|REG4BITS|DOUT\(0) ) ) ) # ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(1) & ( (!\HEX|HEX1|REG4BITS|DOUT\(2) & 
-- \HEX|HEX1|REG4BITS|DOUT\(0)) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(1) & ( (\HEX|HEX1|REG4BITS|DOUT\(0)) # (\HEX|HEX1|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000010100000101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	datae => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N36
\HEX|HEX1|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(0) & ( (!\HEX|HEX1|REG4BITS|DOUT\(1) & \HEX|HEX1|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( \HEX|HEX1|REG4BITS|DOUT\(0) & ( 
-- (!\HEX|HEX1|REG4BITS|DOUT\(2)) # (\HEX|HEX1|REG4BITS|DOUT\(1)) ) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(3) & ( !\HEX|HEX1|REG4BITS|DOUT\(0) & ( (\HEX|HEX1|REG4BITS|DOUT\(1) & !\HEX|HEX1|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N57
\HEX|HEX1|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX1|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \HEX|HEX1|REG4BITS|DOUT\(2) & ( (!\HEX|HEX1|REG4BITS|DOUT\(1) & (!\HEX|HEX1|REG4BITS|DOUT\(0) & \HEX|HEX1|REG4BITS|DOUT\(3))) # (\HEX|HEX1|REG4BITS|DOUT\(1) & (\HEX|HEX1|REG4BITS|DOUT\(0) & 
-- !\HEX|HEX1|REG4BITS|DOUT\(3))) ) ) # ( !\HEX|HEX1|REG4BITS|DOUT\(2) & ( (!\HEX|HEX1|REG4BITS|DOUT\(1) & !\HEX|HEX1|REG4BITS|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000101101000000000010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(0),
	datad => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX1|REG4BITS|ALT_INV_DOUT\(2),
	combout => \HEX|HEX1|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y2_N48
\DECODER|DECINT|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|DECINT|Equal7~3_combout\ = ( !\ROM1|memROM~5_combout\ & ( \CPU|UC1|Equal6~1_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \CPU|UC1|ALT_INV_Equal6~1_combout\,
	combout => \DECODER|DECINT|Equal7~3_combout\);

-- Location: FF_X35_Y2_N23
\HEX|HEX0|REG4BITS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX0|REG4BITS|DOUT\(1));

-- Location: FF_X39_Y2_N25
\HEX|HEX0|REG4BITS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX0|REG4BITS|DOUT\(2));

-- Location: LABCELL_X39_Y2_N21
\HEX|HEX0|REG4BITS|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|REG4BITS|DOUT[3]~feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \HEX|HEX0|REG4BITS|DOUT[3]~feeder_combout\);

-- Location: FF_X39_Y2_N22
\HEX|HEX0|REG4BITS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \HEX|HEX0|REG4BITS|DOUT[3]~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX0|REG4BITS|DOUT\(3));

-- Location: LABCELL_X39_Y2_N39
\HEX|HEX0|REG4BITS|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|REG4BITS|DOUT[0]~feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|REG4BITS|DOUT[0]~feeder_combout\);

-- Location: FF_X39_Y2_N40
\HEX|HEX0|REG4BITS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \HEX|HEX0|REG4BITS|DOUT[0]~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX|HEX0|REG4BITS|DOUT\(0));

-- Location: LABCELL_X40_Y2_N0
\HEX|HEX0|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & (!\HEX|HEX0|REG4BITS|DOUT\(2) $ (\HEX|HEX0|REG4BITS|DOUT\(3)))) # (\HEX|HEX0|REG4BITS|DOUT\(1) & (!\HEX|HEX0|REG4BITS|DOUT\(2) & 
-- \HEX|HEX0|REG4BITS|DOUT\(3))) ) ) # ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & (\HEX|HEX0|REG4BITS|DOUT\(2) & !\HEX|HEX0|REG4BITS|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010001000011001101000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N3
\HEX|HEX0|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & (\HEX|HEX0|REG4BITS|DOUT\(2) & !\HEX|HEX0|REG4BITS|DOUT\(3))) # (\HEX|HEX0|REG4BITS|DOUT\(1) & ((\HEX|HEX0|REG4BITS|DOUT\(3)))) ) ) # ( 
-- !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (\HEX|HEX0|REG4BITS|DOUT\(2) & ((\HEX|HEX0|REG4BITS|DOUT\(3)) # (\HEX|HEX0|REG4BITS|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datad => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N54
\HEX|HEX0|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( (\HEX|HEX0|REG4BITS|DOUT\(2) & (\HEX|HEX0|REG4BITS|DOUT\(3) & \HEX|HEX0|REG4BITS|DOUT\(1))) ) ) # ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(2) & 
-- (!\HEX|HEX0|REG4BITS|DOUT\(3) & \HEX|HEX0|REG4BITS|DOUT\(1))) # (\HEX|HEX0|REG4BITS|DOUT\(2) & (\HEX|HEX0|REG4BITS|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	datad => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N9
\HEX|HEX0|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(2) & (!\HEX|HEX0|REG4BITS|DOUT\(3) & !\HEX|HEX0|REG4BITS|DOUT\(1))) # (\HEX|HEX0|REG4BITS|DOUT\(2) & ((\HEX|HEX0|REG4BITS|DOUT\(1)))) ) ) # ( 
-- !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(3) & (\HEX|HEX0|REG4BITS|DOUT\(2) & !\HEX|HEX0|REG4BITS|DOUT\(1))) # (\HEX|HEX0|REG4BITS|DOUT\(3) & (!\HEX|HEX0|REG4BITS|DOUT\(2) & \HEX|HEX0|REG4BITS|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N15
\HEX|HEX0|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(3) & ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & !\HEX|HEX0|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX0|REG4BITS|DOUT\(3) & ( \HEX|HEX0|REG4BITS|DOUT\(0) ) ) 
-- # ( !\HEX|HEX0|REG4BITS|DOUT\(3) & ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & \HEX|HEX0|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N6
\HEX|HEX0|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( !\HEX|HEX0|REG4BITS|DOUT\(3) $ (((\HEX|HEX0|REG4BITS|DOUT\(2) & !\HEX|HEX0|REG4BITS|DOUT\(1)))) ) ) # ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(2) & 
-- (!\HEX|HEX0|REG4BITS|DOUT\(3) & \HEX|HEX0|REG4BITS|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datac => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	datad => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N21
\HEX|HEX0|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX|HEX0|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( !\HEX|HEX0|REG4BITS|DOUT\(3) & ( \HEX|HEX0|REG4BITS|DOUT\(0) & ( !\HEX|HEX0|REG4BITS|DOUT\(1) $ (\HEX|HEX0|REG4BITS|DOUT\(2)) ) ) ) # ( \HEX|HEX0|REG4BITS|DOUT\(3) & ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( 
-- (!\HEX|HEX0|REG4BITS|DOUT\(1) & \HEX|HEX0|REG4BITS|DOUT\(2)) ) ) ) # ( !\HEX|HEX0|REG4BITS|DOUT\(3) & ( !\HEX|HEX0|REG4BITS|DOUT\(0) & ( (!\HEX|HEX0|REG4BITS|DOUT\(1) & !\HEX|HEX0|REG4BITS|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110011000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(1),
	datac => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(2),
	datae => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(3),
	dataf => \HEX|HEX0|REG4BITS|ALT_INV_DOUT\(0),
	combout => \HEX|HEX0|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: FF_X35_Y2_N34
\LED1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED1|DOUT~q\);

-- Location: MLABCELL_X37_Y1_N9
\LED2|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED2|DOUT~feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \LED2|DOUT~feeder_combout\);

-- Location: FF_X37_Y1_N11
\LED2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LED2|DOUT~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED2|DOUT~q\);

-- Location: LABCELL_X39_Y2_N33
\LED8|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED8|DOUT[0]~feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \LED8|DOUT[0]~feeder_combout\);

-- Location: FF_X39_Y2_N34
\LED8|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LED8|DOUT[0]~feeder_combout\,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(0));

-- Location: FF_X35_Y2_N16
\LED8|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(1));

-- Location: FF_X35_Y2_N38
\LED8|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(2));

-- Location: FF_X35_Y2_N29
\LED8|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(3));

-- Location: FF_X35_Y2_N19
\LED8|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(4));

-- Location: FF_X36_Y1_N31
\LED8|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(5));

-- Location: FF_X36_Y1_N59
\LED8|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(6));

-- Location: FF_X36_Y1_N56
\LED8|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \DECODER|DECINT|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|DOUT\(7));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X20_Y11_N0
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


