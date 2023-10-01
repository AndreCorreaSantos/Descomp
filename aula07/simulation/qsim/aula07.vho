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

-- DATE "09/29/2023 15:01:08"

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
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
	);
END aula07;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|UC1|saida~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|UC1|saida~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|UC1|saida~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|UC1|saida~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \CPU|UC1|saida[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~36_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|ZF1|DOUT~q\ : std_logic;
SIGNAL \CPU|UC1|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|REGRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|REGRET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|ZF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|UC1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|ULA1|ALT_INV_Add0~33_combout\ <= NOT \CPU|ULA1|Add0~33_combout\;
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|ULA1|ALT_INV_Add0~32_combout\ <= NOT \CPU|ULA1|Add0~32_combout\;
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA1|Equal1~0_combout\;
\CPU|ZF1|ALT_INV_DOUT~4_combout\ <= NOT \CPU|ZF1|DOUT~4_combout\;
\CPU|ZF1|ALT_INV_DOUT~3_combout\ <= NOT \CPU|ZF1|DOUT~3_combout\;
\CPU|ULA1|ALT_INV_saida[0]~2_combout\ <= NOT \CPU|ULA1|saida[0]~2_combout\;
\CPU|ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|ULA1|saida[1]~1_combout\;
\CPU|ZF1|ALT_INV_DOUT~2_combout\ <= NOT \CPU|ZF1|DOUT~2_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[3]~0_combout\;
\CPU|UC1|ALT_INV_saida~3_combout\ <= NOT \CPU|UC1|saida~3_combout\;
\CPU|ZF1|ALT_INV_DOUT~1_combout\ <= NOT \CPU|ZF1|DOUT~1_combout\;
\CPU|ZF1|ALT_INV_DOUT~0_combout\ <= NOT \CPU|ZF1|DOUT~0_combout\;
\CPU|ULA1|ALT_INV_saida[7]~0_combout\ <= NOT \CPU|ULA1|saida[7]~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\CPU|REGRET|ALT_INV_DOUT\(8) <= NOT \CPU|REGRET|DOUT\(8);
\CPU|REGRET|ALT_INV_DOUT\(7) <= NOT \CPU|REGRET|DOUT\(7);
\CPU|REGRET|ALT_INV_DOUT\(6) <= NOT \CPU|REGRET|DOUT\(6);
\CPU|REGRET|ALT_INV_DOUT\(5) <= NOT \CPU|REGRET|DOUT\(5);
\CPU|REGRET|ALT_INV_DOUT\(4) <= NOT \CPU|REGRET|DOUT\(4);
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\CPU|REGRET|ALT_INV_DOUT\(3) <= NOT \CPU|REGRET|DOUT\(3);
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\CPU|REGRET|ALT_INV_DOUT\(2) <= NOT \CPU|REGRET|DOUT\(2);
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\CPU|REGRET|ALT_INV_DOUT\(1) <= NOT \CPU|REGRET|DOUT\(1);
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \CPU|MUX_PC|saida_MUX[4]~0_combout\;
\CPU|UC1|ALT_INV_saida~2_combout\ <= NOT \CPU|UC1|saida~2_combout\;
\CPU|ZF1|ALT_INV_DOUT~q\ <= NOT \CPU|ZF1|DOUT~q\;
\CPU|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|PC|DOUT[0]~0_combout\;
\CPU|UC1|ALT_INV_saida~1_combout\ <= NOT \CPU|UC1|saida~1_combout\;
\CPU|UC1|ALT_INV_Equal4~0_combout\ <= NOT \CPU|UC1|Equal4~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|UC1|ALT_INV_saida~0_combout\ <= NOT \CPU|UC1|saida~0_combout\;
\CPU|REGRET|ALT_INV_DOUT\(0) <= NOT \CPU|REGRET|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y18_N45
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X0_Y18_N79
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y19_N5
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y19_N56
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y18_N62
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: LABCELL_X2_Y19_N30
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

-- Location: LABCELL_X2_Y19_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X5_Y19_N45
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X5_Y19_N36
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X5_Y19_N15
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011111010110100101111111110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y19_N15
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X4_Y19_N17
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X5_Y19_N25
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X5_Y19_N22
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X2_Y19_N36
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

-- Location: LABCELL_X2_Y19_N39
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

-- Location: LABCELL_X2_Y19_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X2_Y19_N44
\CPU|REGRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(4));

-- Location: MLABCELL_X4_Y19_N18
\CPU|MUX_PC|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~5_combout\ = ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|UC1|saida~1_combout\) # (\CPU|REGRET|DOUT\(4)) ) ) ) # ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( 
-- !\CPU|incrementaPC|Add0~17_sumout\ & ( (\CPU|UC1|saida~1_combout\ & \CPU|REGRET|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|UC1|ALT_INV_saida~1_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(4),
	datae => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~5_combout\);

-- Location: FF_X4_Y19_N19
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X2_Y19_N48
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

-- Location: FF_X2_Y19_N49
\CPU|REGRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(6));

-- Location: MLABCELL_X4_Y19_N6
\CPU|MUX_PC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~7_combout\ = ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|UC1|saida~1_combout\) # (\CPU|REGRET|DOUT\(6)) ) ) ) # ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( 
-- !\CPU|incrementaPC|Add0~25_sumout\ & ( (\CPU|UC1|saida~1_combout\ & \CPU|REGRET|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|UC1|ALT_INV_saida~1_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(6),
	datae => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~7_combout\);

-- Location: FF_X4_Y19_N8
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X2_Y19_N51
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

-- Location: FF_X2_Y19_N52
\CPU|REGRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(7));

-- Location: MLABCELL_X4_Y19_N15
\CPU|MUX_PC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~8_combout\ = ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|UC1|saida~1_combout\) # (\CPU|REGRET|DOUT\(7)) ) ) ) # ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( 
-- !\CPU|incrementaPC|Add0~29_sumout\ & ( (\CPU|REGRET|DOUT\(7) & \CPU|UC1|saida~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGRET|ALT_INV_DOUT\(7),
	datac => \CPU|UC1|ALT_INV_saida~1_combout\,
	datae => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~8_combout\);

-- Location: FF_X4_Y19_N16
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X4_Y19_N20
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X4_Y19_N58
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X4_Y19_N7
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y19_N24
\CPU|UC1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida~0_combout\ = ( !\CPU|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \CPU|UC1|saida~0_combout\);

-- Location: LABCELL_X7_Y19_N3
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~7_combout\ & ( \CPU|UC1|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|UC1|ALT_INV_saida~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X7_Y19_N12
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|UC1|saida~0_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \CPU|UC1|ALT_INV_saida~0_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X7_Y19_N54
\CPU|UC1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida~1_combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & !\CPU|PC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|UC1|saida~1_combout\);

-- Location: FF_X2_Y19_N47
\CPU|REGRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(5));

-- Location: LABCELL_X5_Y19_N24
\CPU|MUX_PC|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~6_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (\CPU|MUX_PC|saida_MUX[4]~0_combout\ & ((!\CPU|UC1|saida~1_combout\) # (\CPU|REGRET|DOUT\(5)))) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( 
-- (\CPU|MUX_PC|saida_MUX[4]~0_combout\ & (\CPU|UC1|saida~1_combout\ & \CPU|REGRET|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \CPU|UC1|ALT_INV_saida~1_combout\,
	datad => \CPU|REGRET|ALT_INV_DOUT\(5),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~6_combout\);

-- Location: FF_X5_Y19_N26
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X5_Y19_N51
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X4_Y19_N36
\CPU|UC1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida~2_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|UC1|saida~2_combout\);

-- Location: FF_X2_Y19_N35
\CPU|REGRET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(1));

-- Location: LABCELL_X7_Y19_N0
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|UC1|saida~0_combout\ & ( (((\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(0)) ) ) # ( !\CPU|UC1|saida~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110101111111110111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|UC1|ALT_INV_saida~0_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X5_Y19_N18
\CPU|MUX_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~2_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (((!\ROM1|memROM~10_combout\)) # (\CPU|MUX_PC|saida_MUX[4]~0_combout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REGRET|DOUT\(1))))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (!\CPU|MUX_PC|saida_MUX[4]~0_combout\ & ((!\ROM1|memROM~10_combout\)))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REGRET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110100000101100011010000010110101111001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~2_combout\);

-- Location: FF_X5_Y19_N20
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y19_N3
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X2_Y19_N54
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

-- Location: FF_X2_Y19_N55
\CPU|REGRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(8));

-- Location: MLABCELL_X4_Y19_N57
\CPU|MUX_PC|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~9_combout\ = ( \CPU|PC|DOUT[0]~0_combout\ & ( \CPU|incrementaPC|Add0~33_sumout\ & ( \CPU|REGRET|DOUT\(8) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( \CPU|incrementaPC|Add0~33_sumout\ & ( ((\ROM1|memROM~13_combout\ & 
-- \CPU|UC1|saida~0_combout\)) # (\CPU|MUX_PC|saida_MUX[4]~0_combout\) ) ) ) # ( \CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|incrementaPC|Add0~33_sumout\ & ( \CPU|REGRET|DOUT\(8) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|incrementaPC|Add0~33_sumout\ & ( 
-- (\ROM1|memROM~13_combout\ & (\CPU|UC1|saida~0_combout\ & !\CPU|MUX_PC|saida_MUX[4]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000001100110011001100000101111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|REGRET|ALT_INV_DOUT\(8),
	datac => \CPU|UC1|ALT_INV_saida~0_combout\,
	datad => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~9_combout\);

-- Location: FF_X4_Y19_N59
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X7_Y19_N45
\CPU|ZF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & \ROM1|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|ZF1|DOUT~0_combout\);

-- Location: LABCELL_X7_Y19_N30
\CPU|ZF1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~1_combout\ = ( \CPU|ZF1|DOUT~q\ & ( !\CPU|ZF1|DOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ZF1|ALT_INV_DOUT~0_combout\,
	dataf => \CPU|ZF1|ALT_INV_DOUT~q\,
	combout => \CPU|ZF1|DOUT~1_combout\);

-- Location: MLABCELL_X4_Y19_N30
\CPU|ULA1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~0_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~7_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|ULA1|saida[7]~0_combout\);

-- Location: LABCELL_X7_Y19_N48
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|UC1|saida~0_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\CPU|UC1|saida~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100101111111001110010111111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|UC1|ALT_INV_saida~0_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X5_Y19_N0
\CPU|UC1|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida~3_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~0_combout\ & ( (((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\)) # (\CPU|PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|UC1|saida~3_combout\);

-- Location: MLABCELL_X4_Y19_N51
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0)) ) ) ) # ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)) ) ) 
-- ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000111111110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X5_Y19_N12
\CPU|MUX_ULA|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\CPU|UC1|saida~3_combout\ & \CPU|UC1|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|UC1|ALT_INV_saida~3_combout\,
	datad => \CPU|UC1|ALT_INV_saida~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~0_combout\);

-- Location: LABCELL_X5_Y19_N48
\CPU|ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~4_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( (!\ROM1|memROM~11_combout\) # (\CPU|UC1|saida~3_combout\) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( (!\ROM1|memROM~11_combout\ & !\CPU|UC1|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|UC1|ALT_INV_saida~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|saida[2]~4_combout\);

-- Location: MLABCELL_X4_Y19_N24
\CPU|UC1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|saida[5]~4_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~7_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~7_combout\ & ((\ROM1|memROM~3_combout\) # (\ROM1|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|UC1|saida[5]~4_combout\);

-- Location: FF_X5_Y19_N49
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~4_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: LABCELL_X7_Y19_N51
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( !\CPU|UC1|saida~3_combout\ & ( !\ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \CPU|UC1|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: MLABCELL_X4_Y19_N45
\CPU|ULA1|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~2_combout\ = ( \CPU|UC1|saida~0_combout\ & ( !\CPU|UC1|saida~3_combout\ & ( \ROM1|memROM~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|UC1|ALT_INV_saida~0_combout\,
	dataf => \CPU|UC1|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[0]~2_combout\);

-- Location: LABCELL_X6_Y19_N27
\CPU|ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~33_combout\ = ( \CPU|UC1|saida~3_combout\ ) # ( !\CPU|UC1|saida~3_combout\ & ( (!\CPU|UC1|saida~0_combout\) # (!\ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|UC1|ALT_INV_saida~0_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|UC1|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|Add0~33_combout\);

-- Location: LABCELL_X5_Y19_N33
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~7_combout\) # (\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X6_Y19_N30
\CPU|ULA1|Add0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~36_cout\ = CARRY(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~36_cout\);

-- Location: LABCELL_X6_Y19_N33
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|ULA1|Add0~33_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~36_cout\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|ULA1|Add0~33_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~36_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA|ALT_INV_DOUT\(0),
	datad => \CPU|ULA1|ALT_INV_Add0~33_combout\,
	cin => \CPU|ULA1|Add0~36_cout\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X5_Y19_N42
\CPU|ULA1|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~7_combout\ = ( \CPU|ULA1|Add0~17_sumout\ & ( (\CPU|UC1|saida~3_combout\) # (\CPU|ULA1|saida[0]~2_combout\) ) ) # ( !\CPU|ULA1|Add0~17_sumout\ & ( \CPU|ULA1|saida[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_saida[0]~2_combout\,
	datac => \CPU|UC1|ALT_INV_saida~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[0]~7_combout\);

-- Location: FF_X5_Y19_N43
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~7_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X6_Y19_N36
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (\ROM1|memROM~10_combout\) # (\CPU|UC1|saida~3_combout\) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (\ROM1|memROM~10_combout\) # (\CPU|UC1|saida~3_combout\) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|UC1|ALT_INV_saida~3_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X7_Y19_N33
\CPU|ULA1|saida[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~6_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( (\CPU|UC1|saida~3_combout\) # (\CPU|ULA1|saida[1]~1_combout\) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( \CPU|ULA1|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datab => \CPU|UC1|ALT_INV_saida~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[1]~6_combout\);

-- Location: FF_X7_Y19_N35
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~6_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: LABCELL_X6_Y19_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (\ROM1|memROM~11_combout\) # (\CPU|UC1|saida~3_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (\ROM1|memROM~11_combout\) # (\CPU|UC1|saida~3_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|UC1|ALT_INV_saida~3_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X5_Y19_N39
\CPU|ULA1|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~5_combout\ = ( \CPU|MUX_ULA|saida_MUX[3]~0_combout\ ) # ( !\CPU|MUX_ULA|saida_MUX[3]~0_combout\ & ( (\CPU|ULA1|Add0~9_sumout\ & \CPU|UC1|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|UC1|ALT_INV_saida~3_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~0_combout\,
	combout => \CPU|ULA1|saida[3]~5_combout\);

-- Location: FF_X5_Y19_N40
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~5_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: LABCELL_X6_Y19_N21
\CPU|ULA1|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~32_combout\ = ( \CPU|UC1|saida~3_combout\ ) # ( !\CPU|UC1|saida~3_combout\ & ( (!\CPU|UC1|saida~0_combout\) # (!\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|UC1|ALT_INV_saida~0_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|UC1|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|Add0~32_combout\);

-- Location: LABCELL_X6_Y19_N42
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|ULA1|Add0~32_combout\ ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|ULA1|Add0~32_combout\ ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA|ALT_INV_DOUT\(3),
	datad => \CPU|ULA1|ALT_INV_Add0~32_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X6_Y19_N18
\CPU|ZF1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~2_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( (\ROM1|memROM~11_combout\ & (!\CPU|UC1|saida~3_combout\ & !\CPU|MUX_ULA|saida_MUX[3]~0_combout\)) ) ) # ( !\CPU|ULA1|Add0~9_sumout\ & ( (!\CPU|MUX_ULA|saida_MUX[3]~0_combout\ & 
-- ((!\CPU|UC1|saida~3_combout\ & (\ROM1|memROM~11_combout\)) # (\CPU|UC1|saida~3_combout\ & ((!\CPU|ULA1|Add0~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001000000011100000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU|UC1|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ZF1|DOUT~2_combout\);

-- Location: LABCELL_X6_Y19_N6
\CPU|ZF1|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( \CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|ULA1|saida[1]~1_combout\ & (!\CPU|ULA1|saida[0]~2_combout\ & (\CPU|ZF1|DOUT~0_combout\ & !\CPU|UC1|saida~3_combout\))) ) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( 
-- \CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|ULA1|saida[1]~1_combout\ & (!\CPU|ULA1|saida[0]~2_combout\ & (\CPU|ZF1|DOUT~0_combout\ & !\CPU|UC1|saida~3_combout\))) ) ) ) # ( \CPU|ULA1|Add0~13_sumout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( 
-- (!\CPU|ULA1|saida[1]~1_combout\ & (!\CPU|ULA1|saida[0]~2_combout\ & (\CPU|ZF1|DOUT~0_combout\ & !\CPU|UC1|saida~3_combout\))) ) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|ULA1|saida[1]~1_combout\ & 
-- (!\CPU|ULA1|saida[0]~2_combout\ & \CPU|ZF1|DOUT~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[0]~2_combout\,
	datac => \CPU|ZF1|ALT_INV_DOUT~0_combout\,
	datad => \CPU|UC1|ALT_INV_saida~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ZF1|DOUT~3_combout\);

-- Location: LABCELL_X7_Y19_N15
\CPU|ULA1|saida[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~3_combout\ = ( \CPU|ULA1|Add0~1_sumout\ & ( !\CPU|ULA1|saida[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[7]~3_combout\);

-- Location: FF_X7_Y19_N16
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~3_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: LABCELL_X6_Y19_N45
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (((!\ROM1|memROM~4_combout\) # (\CPU|ULA1|Equal1~0_combout\)) # (\CPU|PC|DOUT\(8))) # (\ROM1|memROM~2_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~30\ = CARRY(( (((!\ROM1|memROM~4_combout\) # (\CPU|ULA1|Equal1~0_combout\)) # (\CPU|PC|DOUT\(8))) # (\ROM1|memROM~2_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~29_sumout\,
	cout => \CPU|ULA1|Add0~30\);

-- Location: LABCELL_X7_Y19_N9
\CPU|ULA1|saida[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~10_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( !\CPU|ULA1|saida[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[4]~10_combout\);

-- Location: FF_X7_Y19_N11
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~10_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: LABCELL_X6_Y19_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~30\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~30\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X7_Y19_N27
\CPU|ULA1|saida[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~9_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( !\CPU|ULA1|saida[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[5]~9_combout\);

-- Location: FF_X7_Y19_N28
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~9_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: LABCELL_X6_Y19_N51
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~26\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X7_Y19_N36
\CPU|ULA1|saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~8_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( !\CPU|ULA1|saida[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|saida[6]~8_combout\);

-- Location: FF_X7_Y19_N37
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~8_combout\,
	ena => \CPU|UC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: LABCELL_X6_Y19_N54
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( ((!\ROM1|memROM~4_combout\) # ((\CPU|ULA1|Equal1~0_combout\) # (\ROM1|memROM~2_combout\))) # (\CPU|PC|DOUT\(8)) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~1_sumout\);

-- Location: LABCELL_X6_Y19_N12
\CPU|ZF1|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~4_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( !\CPU|ULA1|saida[7]~0_combout\ ) ) # ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|ULA1|saida[7]~0_combout\ & ((\CPU|ULA1|Add0~29_sumout\) # (\CPU|ULA1|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ZF1|DOUT~4_combout\);

-- Location: LABCELL_X6_Y19_N0
\CPU|ZF1|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ZF1|DOUT~5_combout\ = ( \CPU|ULA1|Add0~1_sumout\ & ( \CPU|ZF1|DOUT~4_combout\ & ( \CPU|ZF1|DOUT~1_combout\ ) ) ) # ( !\CPU|ULA1|Add0~1_sumout\ & ( \CPU|ZF1|DOUT~4_combout\ & ( \CPU|ZF1|DOUT~1_combout\ ) ) ) # ( \CPU|ULA1|Add0~1_sumout\ & ( 
-- !\CPU|ZF1|DOUT~4_combout\ & ( ((\CPU|ULA1|saida[7]~0_combout\ & (\CPU|ZF1|DOUT~2_combout\ & \CPU|ZF1|DOUT~3_combout\))) # (\CPU|ZF1|DOUT~1_combout\) ) ) ) # ( !\CPU|ULA1|Add0~1_sumout\ & ( !\CPU|ZF1|DOUT~4_combout\ & ( ((\CPU|ZF1|DOUT~2_combout\ & 
-- \CPU|ZF1|DOUT~3_combout\)) # (\CPU|ZF1|DOUT~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ZF1|ALT_INV_DOUT~1_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[7]~0_combout\,
	datac => \CPU|ZF1|ALT_INV_DOUT~2_combout\,
	datad => \CPU|ZF1|ALT_INV_DOUT~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \CPU|ZF1|ALT_INV_DOUT~4_combout\,
	combout => \CPU|ZF1|DOUT~5_combout\);

-- Location: FF_X6_Y19_N1
\CPU|ZF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ZF1|DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ZF1|DOUT~q\);

-- Location: LABCELL_X7_Y19_N39
\CPU|UC1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC1|Equal4~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|UC1|Equal4~0_combout\);

-- Location: LABCELL_X7_Y19_N21
\CPU|MUX_PC|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~0_combout\ = ( !\CPU|UC1|saida~2_combout\ & ( \CPU|UC1|Equal4~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\CPU|ZF1|DOUT~q\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) ) ) # ( !\CPU|UC1|saida~2_combout\ & ( !\CPU|UC1|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|ZF1|ALT_INV_DOUT~q\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \CPU|UC1|ALT_INV_saida~2_combout\,
	dataf => \CPU|UC1|ALT_INV_Equal4~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~0_combout\);

-- Location: FF_X2_Y19_N40
\CPU|REGRET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(3));

-- Location: LABCELL_X5_Y19_N54
\CPU|MUX_PC|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~4_combout\ = ( \CPU|PC|DOUT[0]~0_combout\ & ( \CPU|incrementaPC|Add0~13_sumout\ & ( \CPU|REGRET|DOUT\(3) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( \CPU|incrementaPC|Add0~13_sumout\ & ( ((\ROM1|memROM~12_combout\ & 
-- \CPU|UC1|saida~0_combout\)) # (\CPU|MUX_PC|saida_MUX[4]~0_combout\) ) ) ) # ( \CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|incrementaPC|Add0~13_sumout\ & ( \CPU|REGRET|DOUT\(3) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|incrementaPC|Add0~13_sumout\ & ( 
-- (!\CPU|MUX_PC|saida_MUX[4]~0_combout\ & (\ROM1|memROM~12_combout\ & \CPU|UC1|saida~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010001100110011001101010101010111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|REGRET|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU|UC1|ALT_INV_saida~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[3]~4_combout\);

-- Location: FF_X5_Y19_N56
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X5_Y19_N30
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y19_N24
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X7_Y19_N6
\CPU|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~0_combout\ = ( \CPU|UC1|Equal4~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \CPU|UC1|saida~1_combout\)) ) ) # ( !\CPU|UC1|Equal4~0_combout\ & ( \CPU|UC1|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|UC1|ALT_INV_saida~1_combout\,
	dataf => \CPU|UC1|ALT_INV_Equal4~0_combout\,
	combout => \CPU|PC|DOUT[0]~0_combout\);

-- Location: FF_X2_Y19_N37
\CPU|REGRET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(2));

-- Location: LABCELL_X5_Y19_N21
\CPU|MUX_PC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~3_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (((!\ROM1|memROM~11_combout\)) # (\CPU|MUX_PC|saida_MUX[4]~0_combout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REGRET|DOUT\(2))))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (!\CPU|MUX_PC|saida_MUX[4]~0_combout\ & ((!\ROM1|memROM~11_combout\)))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REGRET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110100000101100011010000010110101111001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~3_combout\);

-- Location: FF_X5_Y19_N23
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X5_Y19_N19
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X5_Y19_N27
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X2_Y19_N32
\CPU|REGRET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|UC1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(0));

-- Location: LABCELL_X5_Y19_N6
\CPU|MUX_PC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~1_combout\ = ( \CPU|PC|DOUT[0]~0_combout\ & ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|REGRET|DOUT\(0) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( \CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|incrementaPC|Add0~1_sumout\ ) ) ) # 
-- ( \CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( \CPU|REGRET|DOUT\(0) ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[4]~0_combout\ & ( (\ROM1|memROM~9_combout\ & \CPU|UC1|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011110000111100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|UC1|ALT_INV_saida~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \CPU|MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~1_combout\);

-- Location: FF_X5_Y19_N8
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: IOIBUF_X24_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X40_Y0_N92
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X50_Y45_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X21_Y18_N0
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


