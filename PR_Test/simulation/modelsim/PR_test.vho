-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/05/2015 22:54:54"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	PR_test_top IS
    PORT (
	PR1_button : IN std_logic;
	dir_switch_1 : IN std_logic;
	dir_switch_2 : IN std_logic;
	system_clock : IN std_logic;
	PR_reset_button : IN std_logic;
	PR_done_led : OUT std_logic;
	PR_error_led : OUT std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	disp_hex0 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex1 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex2 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex3 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex4 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END PR_test_top;

-- Design Ports Information
-- PR_done_led	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR_error_led	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR_reset_button	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR1_button	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_switch_1	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_clock	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_switch_2	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PR_test_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PR1_button : std_logic;
SIGNAL ww_dir_switch_1 : std_logic;
SIGNAL ww_dir_switch_2 : std_logic;
SIGNAL ww_system_clock : std_logic;
SIGNAL ww_PR_reset_button : std_logic;
SIGNAL ww_PR_done_led : std_logic;
SIGNAL ww_PR_error_led : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PR_reset_button~input_o\ : std_logic;
SIGNAL \PR1_button~input_o\ : std_logic;
SIGNAL \dir_switch_1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \system_clock~input_o\ : std_logic;
SIGNAL \system_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \dir_switch_2~input_o\ : std_logic;
SIGNAL \freeze_region_inst|dir_sync~q\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \ticker_inst|Add0~105_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~106\ : std_logic;
SIGNAL \ticker_inst|Add0~61_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~62\ : std_logic;
SIGNAL \ticker_inst|Add0~65_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~66\ : std_logic;
SIGNAL \ticker_inst|Add0~69_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~70\ : std_logic;
SIGNAL \ticker_inst|Add0~77_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~78\ : std_logic;
SIGNAL \ticker_inst|Add0~73_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~74\ : std_logic;
SIGNAL \ticker_inst|Add0~45_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~46\ : std_logic;
SIGNAL \ticker_inst|Add0~53_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~54\ : std_logic;
SIGNAL \ticker_inst|Add0~57_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~58\ : std_logic;
SIGNAL \ticker_inst|Add0~49_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~50\ : std_logic;
SIGNAL \ticker_inst|Add0~81_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~82\ : std_logic;
SIGNAL \ticker_inst|Add0~85_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~86\ : std_logic;
SIGNAL \ticker_inst|Add0~89_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~90\ : std_logic;
SIGNAL \ticker_inst|Add0~93_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~94\ : std_logic;
SIGNAL \ticker_inst|Add0~33_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~34\ : std_logic;
SIGNAL \ticker_inst|Add0~37_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~38\ : std_logic;
SIGNAL \ticker_inst|Add0~41_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~42\ : std_logic;
SIGNAL \ticker_inst|Add0~97_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~98\ : std_logic;
SIGNAL \ticker_inst|Add0~29_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~30\ : std_logic;
SIGNAL \ticker_inst|Add0~17_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~18\ : std_logic;
SIGNAL \ticker_inst|Add0~25_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~26\ : std_logic;
SIGNAL \ticker_inst|Add0~22\ : std_logic;
SIGNAL \ticker_inst|Add0~13_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~14\ : std_logic;
SIGNAL \ticker_inst|Add0~5_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~6\ : std_logic;
SIGNAL \ticker_inst|Add0~9_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~10\ : std_logic;
SIGNAL \ticker_inst|Add0~109_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~110\ : std_logic;
SIGNAL \ticker_inst|Add0~101_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~102\ : std_logic;
SIGNAL \ticker_inst|Add0~1_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~2\ : std_logic;
SIGNAL \ticker_inst|Add0~113_sumout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~17_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~18_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~4_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~23_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~24_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~25_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~26_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~27_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~28_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~29_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~30_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[0]~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~15_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~34_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~32_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~33_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~7_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~35_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~9_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~10_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~31_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[0]~4_combout\ : std_logic;
SIGNAL \ticker_inst|count[4]~0_combout\ : std_logic;
SIGNAL \ticker_inst|Add0~21_sumout\ : std_logic;
SIGNAL \ticker_inst|process_0~21_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~19_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~20_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~4_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~22_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~13_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~11_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~12_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~14_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~16_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~5_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~8_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[0]~5_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~36_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~37_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~6_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~7_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~40_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~38_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~8_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~39_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~41_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~8_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~9_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~10_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~10_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~4_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~3_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~4_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~5_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~3_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~11_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~11_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~12_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex3~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~5_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex3~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4[3]~feeder_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~6_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex5~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~42_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[0]~11_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex5~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|ALT_INV_LessThan7~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[0]~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~42_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex2~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~41_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~40_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~39_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~38_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~37_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~36_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[0]~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~35_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~34_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~33_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~32_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~31_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[0]~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~30_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~29_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~28_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~27_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~26_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~25_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~24_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~23_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~22_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~21_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~20_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~19_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~18_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~17_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~16_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~15_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~14_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~13_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~12_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|ALT_INV_dir_sync~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ticker_inst|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\ : std_logic;

BEGIN

ww_PR1_button <= PR1_button;
ww_dir_switch_1 <= dir_switch_1;
ww_dir_switch_2 <= dir_switch_2;
ww_system_clock <= system_clock;
ww_PR_reset_button <= PR_reset_button;
PR_done_led <= ww_PR_done_led;
PR_error_led <= ww_PR_error_led;
LED <= ww_LED;
disp_hex0 <= ww_disp_hex0;
disp_hex1 <= ww_disp_hex1;
disp_hex2 <= ww_disp_hex2;
disp_hex3 <= ww_disp_hex3;
disp_hex4 <= ww_disp_hex4;
disp_hex5 <= ww_disp_hex5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ticker_inst|ALT_INV_LessThan7~6_combout\ <= NOT \ticker_inst|LessThan7~6_combout\;
\ticker_inst|ALT_INV_LessThan7~5_combout\ <= NOT \ticker_inst|LessThan7~5_combout\;
\ticker_inst|ALT_INV_disp_hex0[0]~11_combout\ <= NOT \ticker_inst|disp_hex0[0]~11_combout\;
\ticker_inst|ALT_INV_process_0~42_combout\ <= NOT \ticker_inst|process_0~42_combout\;
\ticker_inst|ALT_INV_disp_hex1~6_combout\ <= NOT \ticker_inst|disp_hex1~6_combout\;
\ticker_inst|ALT_INV_LessThan0~12_combout\ <= NOT \ticker_inst|LessThan0~12_combout\;
\ticker_inst|ALT_INV_LessThan0~11_combout\ <= NOT \ticker_inst|LessThan0~11_combout\;
\ticker_inst|ALT_INV_LessThan1~11_combout\ <= NOT \ticker_inst|LessThan1~11_combout\;
\ticker_inst|ALT_INV_LessThan0~10_combout\ <= NOT \ticker_inst|LessThan0~10_combout\;
\ticker_inst|ALT_INV_LessThan0~9_combout\ <= NOT \ticker_inst|LessThan0~9_combout\;
\ticker_inst|ALT_INV_disp_hex2~0_combout\ <= NOT \ticker_inst|disp_hex2~0_combout\;
\ticker_inst|ALT_INV_disp_hex1~2_combout\ <= NOT \ticker_inst|disp_hex1~2_combout\;
\ticker_inst|ALT_INV_LessThan2~4_combout\ <= NOT \ticker_inst|LessThan2~4_combout\;
\ticker_inst|ALT_INV_disp_hex1~0_combout\ <= NOT \ticker_inst|disp_hex1~0_combout\;
\ticker_inst|ALT_INV_LessThan0~8_combout\ <= NOT \ticker_inst|LessThan0~8_combout\;
\ticker_inst|ALT_INV_LessThan1~10_combout\ <= NOT \ticker_inst|LessThan1~10_combout\;
\ticker_inst|ALT_INV_LessThan1~9_combout\ <= NOT \ticker_inst|LessThan1~9_combout\;
\ticker_inst|ALT_INV_LessThan0~7_combout\ <= NOT \ticker_inst|LessThan0~7_combout\;
\ticker_inst|ALT_INV_disp_hex0~9_combout\ <= NOT \ticker_inst|disp_hex0~9_combout\;
\ticker_inst|ALT_INV_process_0~41_combout\ <= NOT \ticker_inst|process_0~41_combout\;
\ticker_inst|ALT_INV_process_0~40_combout\ <= NOT \ticker_inst|process_0~40_combout\;
\ticker_inst|ALT_INV_LessThan10~8_combout\ <= NOT \ticker_inst|LessThan10~8_combout\;
\ticker_inst|ALT_INV_LessThan10~7_combout\ <= NOT \ticker_inst|LessThan10~7_combout\;
\ticker_inst|ALT_INV_LessThan10~6_combout\ <= NOT \ticker_inst|LessThan10~6_combout\;
\ticker_inst|ALT_INV_LessThan10~5_combout\ <= NOT \ticker_inst|LessThan10~5_combout\;
\ticker_inst|ALT_INV_LessThan0~6_combout\ <= NOT \ticker_inst|LessThan0~6_combout\;
\ticker_inst|ALT_INV_process_0~39_combout\ <= NOT \ticker_inst|process_0~39_combout\;
\ticker_inst|ALT_INV_process_0~38_combout\ <= NOT \ticker_inst|process_0~38_combout\;
\ticker_inst|ALT_INV_disp_hex0~7_combout\ <= NOT \ticker_inst|disp_hex0~7_combout\;
\ticker_inst|ALT_INV_process_0~37_combout\ <= NOT \ticker_inst|process_0~37_combout\;
\ticker_inst|ALT_INV_process_0~36_combout\ <= NOT \ticker_inst|process_0~36_combout\;
\ticker_inst|ALT_INV_LessThan11~7_combout\ <= NOT \ticker_inst|LessThan11~7_combout\;
\ticker_inst|ALT_INV_LessThan11~6_combout\ <= NOT \ticker_inst|LessThan11~6_combout\;
\ticker_inst|ALT_INV_LessThan11~5_combout\ <= NOT \ticker_inst|LessThan11~5_combout\;
\ticker_inst|ALT_INV_LessThan11~4_combout\ <= NOT \ticker_inst|LessThan11~4_combout\;
\ticker_inst|ALT_INV_LessThan11~3_combout\ <= NOT \ticker_inst|LessThan11~3_combout\;
\ticker_inst|ALT_INV_LessThan11~2_combout\ <= NOT \ticker_inst|LessThan11~2_combout\;
\ticker_inst|ALT_INV_disp_hex0[0]~4_combout\ <= NOT \ticker_inst|disp_hex0[0]~4_combout\;
\ticker_inst|ALT_INV_process_0~35_combout\ <= NOT \ticker_inst|process_0~35_combout\;
\ticker_inst|ALT_INV_LessThan4~7_combout\ <= NOT \ticker_inst|LessThan4~7_combout\;
\ticker_inst|ALT_INV_LessThan4~6_combout\ <= NOT \ticker_inst|LessThan4~6_combout\;
\ticker_inst|ALT_INV_LessThan4~5_combout\ <= NOT \ticker_inst|LessThan4~5_combout\;
\ticker_inst|ALT_INV_process_0~34_combout\ <= NOT \ticker_inst|process_0~34_combout\;
\ticker_inst|ALT_INV_LessThan3~6_combout\ <= NOT \ticker_inst|LessThan3~6_combout\;
\ticker_inst|ALT_INV_LessThan3~5_combout\ <= NOT \ticker_inst|LessThan3~5_combout\;
\ticker_inst|ALT_INV_LessThan3~4_combout\ <= NOT \ticker_inst|LessThan3~4_combout\;
\ticker_inst|ALT_INV_LessThan11~1_combout\ <= NOT \ticker_inst|LessThan11~1_combout\;
\ticker_inst|ALT_INV_process_0~33_combout\ <= NOT \ticker_inst|process_0~33_combout\;
\ticker_inst|ALT_INV_LessThan5~6_combout\ <= NOT \ticker_inst|LessThan5~6_combout\;
\ticker_inst|ALT_INV_process_0~32_combout\ <= NOT \ticker_inst|process_0~32_combout\;
\ticker_inst|ALT_INV_LessThan5~5_combout\ <= NOT \ticker_inst|LessThan5~5_combout\;
\ticker_inst|ALT_INV_process_0~31_combout\ <= NOT \ticker_inst|process_0~31_combout\;
\ticker_inst|ALT_INV_disp_hex0[0]~3_combout\ <= NOT \ticker_inst|disp_hex0[0]~3_combout\;
\ticker_inst|ALT_INV_process_0~30_combout\ <= NOT \ticker_inst|process_0~30_combout\;
\ticker_inst|ALT_INV_process_0~29_combout\ <= NOT \ticker_inst|process_0~29_combout\;
\ticker_inst|ALT_INV_LessThan10~4_combout\ <= NOT \ticker_inst|LessThan10~4_combout\;
\ticker_inst|ALT_INV_LessThan10~3_combout\ <= NOT \ticker_inst|LessThan10~3_combout\;
\ticker_inst|ALT_INV_LessThan10~2_combout\ <= NOT \ticker_inst|LessThan10~2_combout\;
\ticker_inst|ALT_INV_LessThan10~1_combout\ <= NOT \ticker_inst|LessThan10~1_combout\;
\ticker_inst|ALT_INV_LessThan10~0_combout\ <= NOT \ticker_inst|LessThan10~0_combout\;
\ticker_inst|ALT_INV_process_0~28_combout\ <= NOT \ticker_inst|process_0~28_combout\;
\ticker_inst|ALT_INV_LessThan9~6_combout\ <= NOT \ticker_inst|LessThan9~6_combout\;
\ticker_inst|ALT_INV_LessThan9~5_combout\ <= NOT \ticker_inst|LessThan9~5_combout\;
\ticker_inst|ALT_INV_LessThan9~4_combout\ <= NOT \ticker_inst|LessThan9~4_combout\;
\ticker_inst|ALT_INV_LessThan9~3_combout\ <= NOT \ticker_inst|LessThan9~3_combout\;
\ticker_inst|ALT_INV_process_0~27_combout\ <= NOT \ticker_inst|process_0~27_combout\;
\ticker_inst|ALT_INV_LessThan1~8_combout\ <= NOT \ticker_inst|LessThan1~8_combout\;
\ticker_inst|ALT_INV_LessThan9~2_combout\ <= NOT \ticker_inst|LessThan9~2_combout\;
\ticker_inst|ALT_INV_process_0~26_combout\ <= NOT \ticker_inst|process_0~26_combout\;
\ticker_inst|ALT_INV_process_0~25_combout\ <= NOT \ticker_inst|process_0~25_combout\;
\ticker_inst|ALT_INV_process_0~24_combout\ <= NOT \ticker_inst|process_0~24_combout\;
\ticker_inst|ALT_INV_LessThan7~4_combout\ <= NOT \ticker_inst|LessThan7~4_combout\;
\ticker_inst|ALT_INV_process_0~23_combout\ <= NOT \ticker_inst|process_0~23_combout\;
\ticker_inst|ALT_INV_LessThan5~4_combout\ <= NOT \ticker_inst|LessThan5~4_combout\;
\ticker_inst|ALT_INV_process_0~22_combout\ <= NOT \ticker_inst|process_0~22_combout\;
\ticker_inst|ALT_INV_process_0~21_combout\ <= NOT \ticker_inst|process_0~21_combout\;
\ticker_inst|ALT_INV_LessThan4~4_combout\ <= NOT \ticker_inst|LessThan4~4_combout\;
\ticker_inst|ALT_INV_LessThan4~3_combout\ <= NOT \ticker_inst|LessThan4~3_combout\;
\ticker_inst|ALT_INV_LessThan4~2_combout\ <= NOT \ticker_inst|LessThan4~2_combout\;
\ticker_inst|ALT_INV_LessThan4~1_combout\ <= NOT \ticker_inst|LessThan4~1_combout\;
\ticker_inst|ALT_INV_LessThan4~0_combout\ <= NOT \ticker_inst|LessThan4~0_combout\;
\ticker_inst|ALT_INV_process_0~20_combout\ <= NOT \ticker_inst|process_0~20_combout\;
\ticker_inst|ALT_INV_LessThan3~3_combout\ <= NOT \ticker_inst|LessThan3~3_combout\;
\ticker_inst|ALT_INV_LessThan3~2_combout\ <= NOT \ticker_inst|LessThan3~2_combout\;
\ticker_inst|ALT_INV_LessThan3~1_combout\ <= NOT \ticker_inst|LessThan3~1_combout\;
\ticker_inst|ALT_INV_LessThan11~0_combout\ <= NOT \ticker_inst|LessThan11~0_combout\;
\ticker_inst|ALT_INV_process_0~19_combout\ <= NOT \ticker_inst|process_0~19_combout\;
\ticker_inst|ALT_INV_disp_hex0~1_combout\ <= NOT \ticker_inst|disp_hex0~1_combout\;
\ticker_inst|ALT_INV_LessThan0~5_combout\ <= NOT \ticker_inst|LessThan0~5_combout\;
\ticker_inst|ALT_INV_LessThan0~4_combout\ <= NOT \ticker_inst|LessThan0~4_combout\;
\ticker_inst|ALT_INV_process_0~18_combout\ <= NOT \ticker_inst|process_0~18_combout\;
\ticker_inst|ALT_INV_LessThan2~3_combout\ <= NOT \ticker_inst|LessThan2~3_combout\;
\ticker_inst|ALT_INV_process_0~17_combout\ <= NOT \ticker_inst|process_0~17_combout\;
\ticker_inst|ALT_INV_LessThan3~0_combout\ <= NOT \ticker_inst|LessThan3~0_combout\;
\ticker_inst|ALT_INV_LessThan2~2_combout\ <= NOT \ticker_inst|LessThan2~2_combout\;
\ticker_inst|ALT_INV_LessThan2~1_combout\ <= NOT \ticker_inst|LessThan2~1_combout\;
\ticker_inst|ALT_INV_LessThan2~0_combout\ <= NOT \ticker_inst|LessThan2~0_combout\;
\ticker_inst|ALT_INV_disp_hex0~0_combout\ <= NOT \ticker_inst|disp_hex0~0_combout\;
\ticker_inst|ALT_INV_LessThan1~7_combout\ <= NOT \ticker_inst|LessThan1~7_combout\;
\ticker_inst|ALT_INV_LessThan1~6_combout\ <= NOT \ticker_inst|LessThan1~6_combout\;
\ticker_inst|ALT_INV_LessThan1~5_combout\ <= NOT \ticker_inst|LessThan1~5_combout\;
\ticker_inst|ALT_INV_LessThan1~4_combout\ <= NOT \ticker_inst|LessThan1~4_combout\;
\ticker_inst|ALT_INV_LessThan1~3_combout\ <= NOT \ticker_inst|LessThan1~3_combout\;
\ticker_inst|ALT_INV_LessThan1~2_combout\ <= NOT \ticker_inst|LessThan1~2_combout\;
\ticker_inst|ALT_INV_LessThan1~1_combout\ <= NOT \ticker_inst|LessThan1~1_combout\;
\ticker_inst|ALT_INV_LessThan0~3_combout\ <= NOT \ticker_inst|LessThan0~3_combout\;
\ticker_inst|ALT_INV_LessThan1~0_combout\ <= NOT \ticker_inst|LessThan1~0_combout\;
\ticker_inst|ALT_INV_LessThan0~2_combout\ <= NOT \ticker_inst|LessThan0~2_combout\;
\ticker_inst|ALT_INV_LessThan0~1_combout\ <= NOT \ticker_inst|LessThan0~1_combout\;
\ticker_inst|ALT_INV_LessThan0~0_combout\ <= NOT \ticker_inst|LessThan0~0_combout\;
\ticker_inst|ALT_INV_process_0~16_combout\ <= NOT \ticker_inst|process_0~16_combout\;
\ticker_inst|ALT_INV_process_0~15_combout\ <= NOT \ticker_inst|process_0~15_combout\;
\ticker_inst|ALT_INV_process_0~14_combout\ <= NOT \ticker_inst|process_0~14_combout\;
\ticker_inst|ALT_INV_LessThan5~3_combout\ <= NOT \ticker_inst|LessThan5~3_combout\;
\ticker_inst|ALT_INV_LessThan5~2_combout\ <= NOT \ticker_inst|LessThan5~2_combout\;
\ticker_inst|ALT_INV_LessThan5~1_combout\ <= NOT \ticker_inst|LessThan5~1_combout\;
\ticker_inst|ALT_INV_LessThan5~0_combout\ <= NOT \ticker_inst|LessThan5~0_combout\;
\ticker_inst|ALT_INV_process_0~13_combout\ <= NOT \ticker_inst|process_0~13_combout\;
\ticker_inst|ALT_INV_process_0~12_combout\ <= NOT \ticker_inst|process_0~12_combout\;
\ticker_inst|ALT_INV_process_0~11_combout\ <= NOT \ticker_inst|process_0~11_combout\;
\ticker_inst|ALT_INV_process_0~10_combout\ <= NOT \ticker_inst|process_0~10_combout\;
\ticker_inst|ALT_INV_process_0~9_combout\ <= NOT \ticker_inst|process_0~9_combout\;
\ticker_inst|ALT_INV_process_0~8_combout\ <= NOT \ticker_inst|process_0~8_combout\;
\ticker_inst|ALT_INV_process_0~7_combout\ <= NOT \ticker_inst|process_0~7_combout\;
\ticker_inst|ALT_INV_process_0~6_combout\ <= NOT \ticker_inst|process_0~6_combout\;
\ticker_inst|ALT_INV_process_0~5_combout\ <= NOT \ticker_inst|process_0~5_combout\;
\ticker_inst|ALT_INV_LessThan7~3_combout\ <= NOT \ticker_inst|LessThan7~3_combout\;
\ticker_inst|ALT_INV_LessThan7~2_combout\ <= NOT \ticker_inst|LessThan7~2_combout\;
\ticker_inst|ALT_INV_LessThan7~1_combout\ <= NOT \ticker_inst|LessThan7~1_combout\;
\ticker_inst|ALT_INV_LessThan7~0_combout\ <= NOT \ticker_inst|LessThan7~0_combout\;
\ticker_inst|ALT_INV_process_0~4_combout\ <= NOT \ticker_inst|process_0~4_combout\;
\ticker_inst|ALT_INV_process_0~3_combout\ <= NOT \ticker_inst|process_0~3_combout\;
\ticker_inst|ALT_INV_LessThan9~1_combout\ <= NOT \ticker_inst|LessThan9~1_combout\;
\ticker_inst|ALT_INV_process_0~2_combout\ <= NOT \ticker_inst|process_0~2_combout\;
\ticker_inst|ALT_INV_LessThan9~0_combout\ <= NOT \ticker_inst|LessThan9~0_combout\;
\ticker_inst|ALT_INV_process_0~1_combout\ <= NOT \ticker_inst|process_0~1_combout\;
\ticker_inst|ALT_INV_process_0~0_combout\ <= NOT \ticker_inst|process_0~0_combout\;
\freeze_region_inst|ALT_INV_dir_sync~q\ <= NOT \freeze_region_inst|dir_sync~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~5_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~4_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\;
\ticker_inst|ALT_INV_count\(28) <= NOT \ticker_inst|count\(28);
\ticker_inst|ALT_INV_count\(25) <= NOT \ticker_inst|count\(25);
\ticker_inst|ALT_INV_count\(0) <= NOT \ticker_inst|count\(0);
\ticker_inst|ALT_INV_count\(26) <= NOT \ticker_inst|count\(26);
\ticker_inst|ALT_INV_count\(17) <= NOT \ticker_inst|count\(17);
\ticker_inst|ALT_INV_count\(13) <= NOT \ticker_inst|count\(13);
\ticker_inst|ALT_INV_count\(12) <= NOT \ticker_inst|count\(12);
\ticker_inst|ALT_INV_count\(11) <= NOT \ticker_inst|count\(11);
\ticker_inst|ALT_INV_count\(10) <= NOT \ticker_inst|count\(10);
\ticker_inst|ALT_INV_count\(4) <= NOT \ticker_inst|count\(4);
\ticker_inst|ALT_INV_count\(5) <= NOT \ticker_inst|count\(5);
\ticker_inst|ALT_INV_count\(3) <= NOT \ticker_inst|count\(3);
\ticker_inst|ALT_INV_count\(2) <= NOT \ticker_inst|count\(2);
\ticker_inst|ALT_INV_count\(1) <= NOT \ticker_inst|count\(1);
\ticker_inst|ALT_INV_count\(8) <= NOT \ticker_inst|count\(8);
\ticker_inst|ALT_INV_count\(7) <= NOT \ticker_inst|count\(7);
\ticker_inst|ALT_INV_count\(9) <= NOT \ticker_inst|count\(9);
\ticker_inst|ALT_INV_count\(6) <= NOT \ticker_inst|count\(6);
\ticker_inst|ALT_INV_count\(16) <= NOT \ticker_inst|count\(16);
\ticker_inst|ALT_INV_count\(15) <= NOT \ticker_inst|count\(15);
\ticker_inst|ALT_INV_count\(14) <= NOT \ticker_inst|count\(14);
\ticker_inst|ALT_INV_count\(18) <= NOT \ticker_inst|count\(18);
\ticker_inst|ALT_INV_count\(20) <= NOT \ticker_inst|count\(20);
\ticker_inst|ALT_INV_count\(21) <= NOT \ticker_inst|count\(21);
\ticker_inst|ALT_INV_count\(19) <= NOT \ticker_inst|count\(19);
\ticker_inst|ALT_INV_count\(22) <= NOT \ticker_inst|count\(22);
\ticker_inst|ALT_INV_count\(24) <= NOT \ticker_inst|count\(24);
\ticker_inst|ALT_INV_count\(23) <= NOT \ticker_inst|count\(23);
\ticker_inst|ALT_INV_count\(27) <= NOT \ticker_inst|count\(27);
\ticker_inst|ALT_INV_Add0~113_sumout\ <= NOT \ticker_inst|Add0~113_sumout\;
\ticker_inst|ALT_INV_Add0~109_sumout\ <= NOT \ticker_inst|Add0~109_sumout\;
\ticker_inst|ALT_INV_Add0~105_sumout\ <= NOT \ticker_inst|Add0~105_sumout\;
\ticker_inst|ALT_INV_Add0~101_sumout\ <= NOT \ticker_inst|Add0~101_sumout\;
\ticker_inst|ALT_INV_Add0~97_sumout\ <= NOT \ticker_inst|Add0~97_sumout\;
\ticker_inst|ALT_INV_Add0~93_sumout\ <= NOT \ticker_inst|Add0~93_sumout\;
\ticker_inst|ALT_INV_Add0~89_sumout\ <= NOT \ticker_inst|Add0~89_sumout\;
\ticker_inst|ALT_INV_Add0~85_sumout\ <= NOT \ticker_inst|Add0~85_sumout\;
\ticker_inst|ALT_INV_Add0~81_sumout\ <= NOT \ticker_inst|Add0~81_sumout\;
\ticker_inst|ALT_INV_Add0~77_sumout\ <= NOT \ticker_inst|Add0~77_sumout\;
\ticker_inst|ALT_INV_Add0~73_sumout\ <= NOT \ticker_inst|Add0~73_sumout\;
\ticker_inst|ALT_INV_Add0~69_sumout\ <= NOT \ticker_inst|Add0~69_sumout\;
\ticker_inst|ALT_INV_Add0~65_sumout\ <= NOT \ticker_inst|Add0~65_sumout\;
\ticker_inst|ALT_INV_Add0~61_sumout\ <= NOT \ticker_inst|Add0~61_sumout\;
\ticker_inst|ALT_INV_Add0~57_sumout\ <= NOT \ticker_inst|Add0~57_sumout\;
\ticker_inst|ALT_INV_Add0~53_sumout\ <= NOT \ticker_inst|Add0~53_sumout\;
\ticker_inst|ALT_INV_Add0~49_sumout\ <= NOT \ticker_inst|Add0~49_sumout\;
\ticker_inst|ALT_INV_Add0~45_sumout\ <= NOT \ticker_inst|Add0~45_sumout\;
\ticker_inst|ALT_INV_Add0~41_sumout\ <= NOT \ticker_inst|Add0~41_sumout\;
\ticker_inst|ALT_INV_Add0~37_sumout\ <= NOT \ticker_inst|Add0~37_sumout\;
\ticker_inst|ALT_INV_Add0~33_sumout\ <= NOT \ticker_inst|Add0~33_sumout\;
\ticker_inst|ALT_INV_Add0~29_sumout\ <= NOT \ticker_inst|Add0~29_sumout\;
\ticker_inst|ALT_INV_Add0~25_sumout\ <= NOT \ticker_inst|Add0~25_sumout\;
\ticker_inst|ALT_INV_Add0~21_sumout\ <= NOT \ticker_inst|Add0~21_sumout\;
\ticker_inst|ALT_INV_Add0~17_sumout\ <= NOT \ticker_inst|Add0~17_sumout\;
\ticker_inst|ALT_INV_Add0~13_sumout\ <= NOT \ticker_inst|Add0~13_sumout\;
\ticker_inst|ALT_INV_Add0~9_sumout\ <= NOT \ticker_inst|Add0~9_sumout\;
\ticker_inst|ALT_INV_Add0~5_sumout\ <= NOT \ticker_inst|Add0~5_sumout\;
\ticker_inst|ALT_INV_Add0~1_sumout\ <= NOT \ticker_inst|Add0~1_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\;

-- Location: IOOBUF_X89_Y8_N5
\PR_done_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PR_done_led);

-- Location: IOOBUF_X89_Y6_N22
\PR_error_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PR_error_led);

-- Location: IOOBUF_X89_Y6_N5
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X84_Y0_N2
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X80_Y0_N19
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X60_Y0_N19
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X80_Y0_N2
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(0),
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X60_Y0_N2
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(1),
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X52_Y0_N19
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(2),
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X52_Y0_N2
\LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(3),
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X89_Y8_N39
\disp_hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\disp_hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\disp_hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(2),
	devoe => ww_devoe,
	o => ww_disp_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\disp_hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(3),
	devoe => ww_devoe,
	o => ww_disp_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\disp_hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(4),
	devoe => ww_devoe,
	o => ww_disp_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\disp_hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\disp_hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(6),
	devoe => ww_devoe,
	o => ww_disp_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\disp_hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\disp_hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\disp_hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(2),
	devoe => ww_devoe,
	o => ww_disp_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\disp_hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(3),
	devoe => ww_devoe,
	o => ww_disp_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\disp_hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(4),
	devoe => ww_devoe,
	o => ww_disp_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\disp_hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\disp_hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(6),
	devoe => ww_devoe,
	o => ww_disp_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\disp_hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\disp_hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\disp_hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(2),
	devoe => ww_devoe,
	o => ww_disp_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\disp_hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(3),
	devoe => ww_devoe,
	o => ww_disp_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\disp_hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(4),
	devoe => ww_devoe,
	o => ww_disp_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\disp_hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\disp_hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(6),
	devoe => ww_devoe,
	o => ww_disp_hex2(6));

-- Location: IOOBUF_X89_Y16_N5
\disp_hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(0));

-- Location: IOOBUF_X89_Y16_N22
\disp_hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(1));

-- Location: IOOBUF_X89_Y4_N45
\disp_hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(2),
	devoe => ww_devoe,
	o => ww_disp_hex3(2));

-- Location: IOOBUF_X89_Y4_N62
\disp_hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(3),
	devoe => ww_devoe,
	o => ww_disp_hex3(3));

-- Location: IOOBUF_X89_Y21_N39
\disp_hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(4),
	devoe => ww_devoe,
	o => ww_disp_hex3(4));

-- Location: IOOBUF_X89_Y11_N62
\disp_hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(5));

-- Location: IOOBUF_X89_Y9_N5
\disp_hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(6),
	devoe => ww_devoe,
	o => ww_disp_hex3(6));

-- Location: IOOBUF_X89_Y11_N45
\disp_hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(0));

-- Location: IOOBUF_X89_Y13_N5
\disp_hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(1));

-- Location: IOOBUF_X89_Y13_N22
\disp_hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(2),
	devoe => ww_devoe,
	o => ww_disp_hex4(2));

-- Location: IOOBUF_X89_Y8_N22
\disp_hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(3),
	devoe => ww_devoe,
	o => ww_disp_hex4(3));

-- Location: IOOBUF_X89_Y15_N22
\disp_hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(4),
	devoe => ww_devoe,
	o => ww_disp_hex4(4));

-- Location: IOOBUF_X89_Y15_N5
\disp_hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(5));

-- Location: IOOBUF_X89_Y20_N45
\disp_hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(6),
	devoe => ww_devoe,
	o => ww_disp_hex4(6));

-- Location: IOOBUF_X89_Y20_N62
\disp_hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(0));

-- Location: IOOBUF_X89_Y21_N56
\disp_hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(1));

-- Location: IOOBUF_X89_Y25_N22
\disp_hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(2),
	devoe => ww_devoe,
	o => ww_disp_hex5(2));

-- Location: IOOBUF_X89_Y23_N22
\disp_hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(3),
	devoe => ww_devoe,
	o => ww_disp_hex5(3));

-- Location: IOOBUF_X89_Y9_N56
\disp_hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(4),
	devoe => ww_devoe,
	o => ww_disp_hex5(4));

-- Location: IOOBUF_X89_Y23_N5
\disp_hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(5));

-- Location: IOOBUF_X89_Y9_N39
\disp_hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(6),
	devoe => ww_devoe,
	o => ww_disp_hex5(6));

-- Location: IOIBUF_X32_Y0_N1
\system_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_system_clock,
	o => \system_clock~input_o\);

-- Location: CLKCTRL_G6
\system_clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \system_clock~input_o\,
	outclk => \system_clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X51_Y2_N30
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\,
	cin => GND,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\);

-- Location: LABCELL_X51_Y1_N51
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\);

-- Location: LABCELL_X51_Y2_N0
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\) # (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\);

-- Location: LABCELL_X51_Y2_N9
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ & 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\);

-- Location: LABCELL_X51_Y2_N24
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ & ((\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\))) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\);

-- Location: LABCELL_X51_Y2_N18
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\) # 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\))) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111000000000011111111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\);

-- Location: LABCELL_X50_Y2_N42
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\) # (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\);

-- Location: LABCELL_X50_Y2_N6
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ((\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000011100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~4_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\);

-- Location: FF_X51_Y2_N32
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\);

-- Location: LABCELL_X51_Y2_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\);

-- Location: FF_X51_Y2_N35
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\);

-- Location: LABCELL_X51_Y2_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\);

-- Location: FF_X51_Y2_N38
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\);

-- Location: LABCELL_X51_Y2_N39
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\);

-- Location: FF_X51_Y2_N41
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\);

-- Location: LABCELL_X51_Y2_N42
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\);

-- Location: FF_X51_Y2_N44
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\);

-- Location: LABCELL_X51_Y2_N45
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\);

-- Location: FF_X51_Y2_N47
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\);

-- Location: LABCELL_X51_Y2_N48
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\);

-- Location: FF_X51_Y2_N50
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\);

-- Location: LABCELL_X51_Y2_N51
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\);

-- Location: FF_X51_Y2_N53
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\);

-- Location: LABCELL_X51_Y2_N54
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~78\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\);

-- Location: FF_X51_Y2_N56
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\);

-- Location: LABCELL_X51_Y2_N57
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\);

-- Location: FF_X51_Y2_N59
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\);

-- Location: LABCELL_X51_Y1_N0
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\);

-- Location: FF_X51_Y1_N2
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\);

-- Location: LABCELL_X51_Y1_N3
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\);

-- Location: FF_X51_Y1_N4
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\);

-- Location: LABCELL_X51_Y1_N6
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\);

-- Location: FF_X51_Y1_N7
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\);

-- Location: LABCELL_X51_Y1_N9
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\);

-- Location: FF_X51_Y1_N11
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\);

-- Location: LABCELL_X51_Y1_N12
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\);

-- Location: FF_X51_Y1_N13
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\);

-- Location: LABCELL_X51_Y1_N15
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\);

-- Location: FF_X51_Y1_N17
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\);

-- Location: LABCELL_X51_Y1_N18
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\);

-- Location: FF_X51_Y1_N20
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\);

-- Location: LABCELL_X51_Y1_N21
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\);

-- Location: FF_X51_Y1_N23
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\);

-- Location: LABCELL_X51_Y1_N24
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\);

-- Location: FF_X51_Y1_N26
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\);

-- Location: LABCELL_X51_Y1_N27
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\);

-- Location: FF_X51_Y1_N29
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\);

-- Location: LABCELL_X51_Y1_N30
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\);

-- Location: FF_X51_Y1_N31
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\);

-- Location: LABCELL_X51_Y1_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\);

-- Location: FF_X51_Y1_N35
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\);

-- Location: LABCELL_X51_Y1_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\);

-- Location: FF_X51_Y1_N37
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\);

-- Location: LABCELL_X51_Y1_N39
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\);

-- Location: FF_X51_Y1_N40
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\);

-- Location: LABCELL_X51_Y1_N42
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\);

-- Location: FF_X51_Y1_N44
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\);

-- Location: LABCELL_X51_Y1_N45
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\);

-- Location: FF_X51_Y1_N47
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\);

-- Location: LABCELL_X51_Y2_N6
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ & 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\);

-- Location: LABCELL_X51_Y2_N15
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ & ((\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\))) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\);

-- Location: LABCELL_X50_Y2_N48
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\) # 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\))) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111000000000011111111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\);

-- Location: LABCELL_X50_Y2_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\) # (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\);

-- Location: LABCELL_X50_Y2_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\)) ) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\)) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\) ) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001010000010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\);

-- Location: LABCELL_X50_Y2_N15
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~5_combout\,
	combout => \rtl~4_combout\);

-- Location: FF_X50_Y2_N40
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \rtl~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(0));

-- Location: IOIBUF_X16_Y0_N1
\dir_switch_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_switch_2,
	o => \dir_switch_2~input_o\);

-- Location: FF_X50_Y2_N13
\freeze_region_inst|dir_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \dir_switch_2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|dir_sync~q\);

-- Location: LABCELL_X50_Y2_N54
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( \freeze_region_inst|dir_sync~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ ) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( \freeze_region_inst|dir_sync~q\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( !\freeze_region_inst|dir_sync~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\ ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ & ( !\freeze_region_inst|dir_sync~q\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111110000000011001100111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~5_combout\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \freeze_region_inst|ALT_INV_dir_sync~q\,
	combout => \rtl~5_combout\);

-- Location: FF_X50_Y2_N31
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \rtl~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(1));

-- Location: FF_X50_Y2_N55
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(2));

-- Location: FF_X50_Y2_N16
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(3));

-- Location: FF_X87_Y14_N53
\ticker_inst|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~1_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(27));

-- Location: MLABCELL_X87_Y15_N0
\ticker_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~105_sumout\ = SUM(( \ticker_inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \ticker_inst|Add0~106\ = CARRY(( \ticker_inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \ticker_inst|Add0~105_sumout\,
	cout => \ticker_inst|Add0~106\);

-- Location: FF_X87_Y15_N35
\ticker_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~105_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(0));

-- Location: MLABCELL_X87_Y15_N3
\ticker_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~61_sumout\ = SUM(( \ticker_inst|count\(1) ) + ( GND ) + ( \ticker_inst|Add0~106\ ))
-- \ticker_inst|Add0~62\ = CARRY(( \ticker_inst|count\(1) ) + ( GND ) + ( \ticker_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(1),
	cin => \ticker_inst|Add0~106\,
	sumout => \ticker_inst|Add0~61_sumout\,
	cout => \ticker_inst|Add0~62\);

-- Location: FF_X87_Y15_N47
\ticker_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~61_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(1));

-- Location: MLABCELL_X87_Y15_N6
\ticker_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~65_sumout\ = SUM(( \ticker_inst|count\(2) ) + ( GND ) + ( \ticker_inst|Add0~62\ ))
-- \ticker_inst|Add0~66\ = CARRY(( \ticker_inst|count\(2) ) + ( GND ) + ( \ticker_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(2),
	cin => \ticker_inst|Add0~62\,
	sumout => \ticker_inst|Add0~65_sumout\,
	cout => \ticker_inst|Add0~66\);

-- Location: FF_X87_Y15_N52
\ticker_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~65_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(2));

-- Location: MLABCELL_X87_Y15_N9
\ticker_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~69_sumout\ = SUM(( \ticker_inst|count\(3) ) + ( GND ) + ( \ticker_inst|Add0~66\ ))
-- \ticker_inst|Add0~70\ = CARRY(( \ticker_inst|count\(3) ) + ( GND ) + ( \ticker_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(3),
	cin => \ticker_inst|Add0~66\,
	sumout => \ticker_inst|Add0~69_sumout\,
	cout => \ticker_inst|Add0~70\);

-- Location: FF_X87_Y15_N41
\ticker_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~69_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(3));

-- Location: MLABCELL_X87_Y15_N12
\ticker_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~77_sumout\ = SUM(( \ticker_inst|count\(4) ) + ( GND ) + ( \ticker_inst|Add0~70\ ))
-- \ticker_inst|Add0~78\ = CARRY(( \ticker_inst|count\(4) ) + ( GND ) + ( \ticker_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(4),
	cin => \ticker_inst|Add0~70\,
	sumout => \ticker_inst|Add0~77_sumout\,
	cout => \ticker_inst|Add0~78\);

-- Location: FF_X87_Y15_N55
\ticker_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~77_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(4));

-- Location: MLABCELL_X87_Y15_N15
\ticker_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~73_sumout\ = SUM(( \ticker_inst|count\(5) ) + ( GND ) + ( \ticker_inst|Add0~78\ ))
-- \ticker_inst|Add0~74\ = CARRY(( \ticker_inst|count\(5) ) + ( GND ) + ( \ticker_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(5),
	cin => \ticker_inst|Add0~78\,
	sumout => \ticker_inst|Add0~73_sumout\,
	cout => \ticker_inst|Add0~74\);

-- Location: FF_X87_Y15_N59
\ticker_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~73_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(5));

-- Location: MLABCELL_X87_Y15_N18
\ticker_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~45_sumout\ = SUM(( \ticker_inst|count\(6) ) + ( GND ) + ( \ticker_inst|Add0~74\ ))
-- \ticker_inst|Add0~46\ = CARRY(( \ticker_inst|count\(6) ) + ( GND ) + ( \ticker_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(6),
	cin => \ticker_inst|Add0~74\,
	sumout => \ticker_inst|Add0~45_sumout\,
	cout => \ticker_inst|Add0~46\);

-- Location: FF_X87_Y15_N38
\ticker_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~45_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(6));

-- Location: MLABCELL_X87_Y15_N21
\ticker_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~53_sumout\ = SUM(( \ticker_inst|count\(7) ) + ( GND ) + ( \ticker_inst|Add0~46\ ))
-- \ticker_inst|Add0~54\ = CARRY(( \ticker_inst|count\(7) ) + ( GND ) + ( \ticker_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(7),
	cin => \ticker_inst|Add0~46\,
	sumout => \ticker_inst|Add0~53_sumout\,
	cout => \ticker_inst|Add0~54\);

-- Location: FF_X87_Y15_N49
\ticker_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~53_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(7));

-- Location: MLABCELL_X87_Y15_N24
\ticker_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~57_sumout\ = SUM(( \ticker_inst|count\(8) ) + ( GND ) + ( \ticker_inst|Add0~54\ ))
-- \ticker_inst|Add0~58\ = CARRY(( \ticker_inst|count\(8) ) + ( GND ) + ( \ticker_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(8),
	cin => \ticker_inst|Add0~54\,
	sumout => \ticker_inst|Add0~57_sumout\,
	cout => \ticker_inst|Add0~58\);

-- Location: FF_X87_Y15_N44
\ticker_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~57_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(8));

-- Location: MLABCELL_X87_Y15_N27
\ticker_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~49_sumout\ = SUM(( \ticker_inst|count\(9) ) + ( GND ) + ( \ticker_inst|Add0~58\ ))
-- \ticker_inst|Add0~50\ = CARRY(( \ticker_inst|count\(9) ) + ( GND ) + ( \ticker_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(9),
	cin => \ticker_inst|Add0~58\,
	sumout => \ticker_inst|Add0~49_sumout\,
	cout => \ticker_inst|Add0~50\);

-- Location: FF_X87_Y15_N32
\ticker_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|Add0~49_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(9));

-- Location: MLABCELL_X87_Y14_N0
\ticker_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~81_sumout\ = SUM(( \ticker_inst|count\(10) ) + ( GND ) + ( \ticker_inst|Add0~50\ ))
-- \ticker_inst|Add0~82\ = CARRY(( \ticker_inst|count\(10) ) + ( GND ) + ( \ticker_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(10),
	cin => \ticker_inst|Add0~50\,
	sumout => \ticker_inst|Add0~81_sumout\,
	cout => \ticker_inst|Add0~82\);

-- Location: FF_X87_Y14_N2
\ticker_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~81_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(10));

-- Location: MLABCELL_X87_Y14_N3
\ticker_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~85_sumout\ = SUM(( \ticker_inst|count\(11) ) + ( GND ) + ( \ticker_inst|Add0~82\ ))
-- \ticker_inst|Add0~86\ = CARRY(( \ticker_inst|count\(11) ) + ( GND ) + ( \ticker_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(11),
	cin => \ticker_inst|Add0~82\,
	sumout => \ticker_inst|Add0~85_sumout\,
	cout => \ticker_inst|Add0~86\);

-- Location: FF_X87_Y14_N5
\ticker_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~85_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(11));

-- Location: MLABCELL_X87_Y14_N6
\ticker_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~89_sumout\ = SUM(( \ticker_inst|count\(12) ) + ( GND ) + ( \ticker_inst|Add0~86\ ))
-- \ticker_inst|Add0~90\ = CARRY(( \ticker_inst|count\(12) ) + ( GND ) + ( \ticker_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(12),
	cin => \ticker_inst|Add0~86\,
	sumout => \ticker_inst|Add0~89_sumout\,
	cout => \ticker_inst|Add0~90\);

-- Location: FF_X87_Y14_N8
\ticker_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~89_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(12));

-- Location: MLABCELL_X87_Y14_N9
\ticker_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~93_sumout\ = SUM(( \ticker_inst|count\(13) ) + ( GND ) + ( \ticker_inst|Add0~90\ ))
-- \ticker_inst|Add0~94\ = CARRY(( \ticker_inst|count\(13) ) + ( GND ) + ( \ticker_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(13),
	cin => \ticker_inst|Add0~90\,
	sumout => \ticker_inst|Add0~93_sumout\,
	cout => \ticker_inst|Add0~94\);

-- Location: FF_X87_Y14_N11
\ticker_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~93_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(13));

-- Location: MLABCELL_X87_Y14_N12
\ticker_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~33_sumout\ = SUM(( \ticker_inst|count\(14) ) + ( GND ) + ( \ticker_inst|Add0~94\ ))
-- \ticker_inst|Add0~34\ = CARRY(( \ticker_inst|count\(14) ) + ( GND ) + ( \ticker_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(14),
	cin => \ticker_inst|Add0~94\,
	sumout => \ticker_inst|Add0~33_sumout\,
	cout => \ticker_inst|Add0~34\);

-- Location: FF_X87_Y14_N14
\ticker_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~33_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(14));

-- Location: MLABCELL_X87_Y14_N15
\ticker_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~37_sumout\ = SUM(( \ticker_inst|count\(15) ) + ( GND ) + ( \ticker_inst|Add0~34\ ))
-- \ticker_inst|Add0~38\ = CARRY(( \ticker_inst|count\(15) ) + ( GND ) + ( \ticker_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(15),
	cin => \ticker_inst|Add0~34\,
	sumout => \ticker_inst|Add0~37_sumout\,
	cout => \ticker_inst|Add0~38\);

-- Location: FF_X87_Y14_N17
\ticker_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~37_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(15));

-- Location: MLABCELL_X87_Y14_N18
\ticker_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~41_sumout\ = SUM(( \ticker_inst|count\(16) ) + ( GND ) + ( \ticker_inst|Add0~38\ ))
-- \ticker_inst|Add0~42\ = CARRY(( \ticker_inst|count\(16) ) + ( GND ) + ( \ticker_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(16),
	cin => \ticker_inst|Add0~38\,
	sumout => \ticker_inst|Add0~41_sumout\,
	cout => \ticker_inst|Add0~42\);

-- Location: FF_X87_Y14_N20
\ticker_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~41_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(16));

-- Location: MLABCELL_X87_Y14_N21
\ticker_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~97_sumout\ = SUM(( \ticker_inst|count\(17) ) + ( GND ) + ( \ticker_inst|Add0~42\ ))
-- \ticker_inst|Add0~98\ = CARRY(( \ticker_inst|count\(17) ) + ( GND ) + ( \ticker_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(17),
	cin => \ticker_inst|Add0~42\,
	sumout => \ticker_inst|Add0~97_sumout\,
	cout => \ticker_inst|Add0~98\);

-- Location: FF_X87_Y14_N23
\ticker_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~97_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(17));

-- Location: MLABCELL_X87_Y14_N24
\ticker_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~29_sumout\ = SUM(( \ticker_inst|count\(18) ) + ( GND ) + ( \ticker_inst|Add0~98\ ))
-- \ticker_inst|Add0~30\ = CARRY(( \ticker_inst|count\(18) ) + ( GND ) + ( \ticker_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(18),
	cin => \ticker_inst|Add0~98\,
	sumout => \ticker_inst|Add0~29_sumout\,
	cout => \ticker_inst|Add0~30\);

-- Location: FF_X87_Y14_N26
\ticker_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~29_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(18));

-- Location: MLABCELL_X87_Y14_N27
\ticker_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~17_sumout\ = SUM(( \ticker_inst|count\(19) ) + ( GND ) + ( \ticker_inst|Add0~30\ ))
-- \ticker_inst|Add0~18\ = CARRY(( \ticker_inst|count\(19) ) + ( GND ) + ( \ticker_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(19),
	cin => \ticker_inst|Add0~30\,
	sumout => \ticker_inst|Add0~17_sumout\,
	cout => \ticker_inst|Add0~18\);

-- Location: FF_X87_Y14_N29
\ticker_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~17_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(19));

-- Location: MLABCELL_X87_Y14_N30
\ticker_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~25_sumout\ = SUM(( \ticker_inst|count\(20) ) + ( GND ) + ( \ticker_inst|Add0~18\ ))
-- \ticker_inst|Add0~26\ = CARRY(( \ticker_inst|count\(20) ) + ( GND ) + ( \ticker_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(20),
	cin => \ticker_inst|Add0~18\,
	sumout => \ticker_inst|Add0~25_sumout\,
	cout => \ticker_inst|Add0~26\);

-- Location: FF_X87_Y14_N32
\ticker_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~25_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(20));

-- Location: MLABCELL_X87_Y14_N33
\ticker_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~21_sumout\ = SUM(( \ticker_inst|count\(21) ) + ( GND ) + ( \ticker_inst|Add0~26\ ))
-- \ticker_inst|Add0~22\ = CARRY(( \ticker_inst|count\(21) ) + ( GND ) + ( \ticker_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(21),
	cin => \ticker_inst|Add0~26\,
	sumout => \ticker_inst|Add0~21_sumout\,
	cout => \ticker_inst|Add0~22\);

-- Location: MLABCELL_X87_Y14_N36
\ticker_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~13_sumout\ = SUM(( \ticker_inst|count\(22) ) + ( GND ) + ( \ticker_inst|Add0~22\ ))
-- \ticker_inst|Add0~14\ = CARRY(( \ticker_inst|count\(22) ) + ( GND ) + ( \ticker_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(22),
	cin => \ticker_inst|Add0~22\,
	sumout => \ticker_inst|Add0~13_sumout\,
	cout => \ticker_inst|Add0~14\);

-- Location: FF_X87_Y14_N38
\ticker_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~13_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(22));

-- Location: MLABCELL_X87_Y14_N39
\ticker_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~5_sumout\ = SUM(( \ticker_inst|count\(23) ) + ( GND ) + ( \ticker_inst|Add0~14\ ))
-- \ticker_inst|Add0~6\ = CARRY(( \ticker_inst|count\(23) ) + ( GND ) + ( \ticker_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(23),
	cin => \ticker_inst|Add0~14\,
	sumout => \ticker_inst|Add0~5_sumout\,
	cout => \ticker_inst|Add0~6\);

-- Location: FF_X87_Y14_N41
\ticker_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~5_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(23));

-- Location: MLABCELL_X87_Y14_N42
\ticker_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~9_sumout\ = SUM(( \ticker_inst|count\(24) ) + ( GND ) + ( \ticker_inst|Add0~6\ ))
-- \ticker_inst|Add0~10\ = CARRY(( \ticker_inst|count\(24) ) + ( GND ) + ( \ticker_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(24),
	cin => \ticker_inst|Add0~6\,
	sumout => \ticker_inst|Add0~9_sumout\,
	cout => \ticker_inst|Add0~10\);

-- Location: FF_X87_Y14_N44
\ticker_inst|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~9_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(24));

-- Location: MLABCELL_X87_Y14_N45
\ticker_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~109_sumout\ = SUM(( \ticker_inst|count\(25) ) + ( GND ) + ( \ticker_inst|Add0~10\ ))
-- \ticker_inst|Add0~110\ = CARRY(( \ticker_inst|count\(25) ) + ( GND ) + ( \ticker_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(25),
	cin => \ticker_inst|Add0~10\,
	sumout => \ticker_inst|Add0~109_sumout\,
	cout => \ticker_inst|Add0~110\);

-- Location: FF_X87_Y14_N47
\ticker_inst|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~109_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(25));

-- Location: MLABCELL_X87_Y14_N48
\ticker_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~101_sumout\ = SUM(( \ticker_inst|count\(26) ) + ( GND ) + ( \ticker_inst|Add0~110\ ))
-- \ticker_inst|Add0~102\ = CARRY(( \ticker_inst|count\(26) ) + ( GND ) + ( \ticker_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(26),
	cin => \ticker_inst|Add0~110\,
	sumout => \ticker_inst|Add0~101_sumout\,
	cout => \ticker_inst|Add0~102\);

-- Location: FF_X87_Y14_N50
\ticker_inst|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~101_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(26));

-- Location: MLABCELL_X87_Y14_N51
\ticker_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~1_sumout\ = SUM(( \ticker_inst|count\(27) ) + ( GND ) + ( \ticker_inst|Add0~102\ ))
-- \ticker_inst|Add0~2\ = CARRY(( \ticker_inst|count\(27) ) + ( GND ) + ( \ticker_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(27),
	cin => \ticker_inst|Add0~102\,
	sumout => \ticker_inst|Add0~1_sumout\,
	cout => \ticker_inst|Add0~2\);

-- Location: FF_X87_Y14_N56
\ticker_inst|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~113_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(28));

-- Location: MLABCELL_X87_Y14_N54
\ticker_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~113_sumout\ = SUM(( \ticker_inst|count\(28) ) + ( GND ) + ( \ticker_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(28),
	cin => \ticker_inst|Add0~2\,
	sumout => \ticker_inst|Add0~113_sumout\);

-- Location: LABCELL_X88_Y14_N15
\ticker_inst|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~1_combout\ = ( !\ticker_inst|Add0~105_sumout\ & ( !\ticker_inst|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~61_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~105_sumout\,
	combout => \ticker_inst|LessThan11~1_combout\);

-- Location: LABCELL_X88_Y14_N24
\ticker_inst|LessThan11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~2_combout\ = ( \ticker_inst|Add0~65_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~65_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( 
-- \ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & (((!\ticker_inst|LessThan11~1_combout\) # (\ticker_inst|Add0~77_sumout\)) # (\ticker_inst|Add0~69_sumout\))) ) ) ) # ( !\ticker_inst|Add0~65_sumout\ & ( 
-- !\ticker_inst|Add0~73_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & ((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000011010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan11~1_combout\,
	datac => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~65_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan11~2_combout\);

-- Location: LABCELL_X88_Y14_N57
\ticker_inst|LessThan11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~3_combout\ = ( \ticker_inst|Add0~37_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~97_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~97_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~37_sumout\,
	combout => \ticker_inst|LessThan11~3_combout\);

-- Location: LABCELL_X88_Y14_N45
\ticker_inst|LessThan11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~4_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~89_sumout\ & (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~97_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan11~4_combout\);

-- Location: MLABCELL_X87_Y15_N33
\ticker_inst|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~0_combout\ = ( !\ticker_inst|Add0~49_sumout\ & ( (!\ticker_inst|Add0~81_sumout\ & (!\ticker_inst|Add0~57_sumout\ & (!\ticker_inst|Add0~53_sumout\ & !\ticker_inst|Add0~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan10~0_combout\);

-- Location: LABCELL_X88_Y14_N36
\ticker_inst|LessThan11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~5_combout\ = ( \ticker_inst|LessThan11~4_combout\ & ( \ticker_inst|LessThan10~0_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|LessThan11~2_combout\ & 
-- !\ticker_inst|LessThan11~3_combout\))) ) ) ) # ( !\ticker_inst|LessThan11~4_combout\ & ( \ticker_inst|LessThan10~0_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|LessThan11~3_combout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan11~4_combout\ & ( !\ticker_inst|LessThan10~0_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|LessThan11~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000010001000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan11~2_combout\,
	datad => \ticker_inst|ALT_INV_LessThan11~3_combout\,
	datae => \ticker_inst|ALT_INV_LessThan11~4_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~0_combout\,
	combout => \ticker_inst|LessThan11~5_combout\);

-- Location: LABCELL_X88_Y14_N12
\ticker_inst|LessThan11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~6_combout\ = ( \ticker_inst|Add0~1_sumout\ & ( (\ticker_inst|Add0~9_sumout\ & (\ticker_inst|Add0~109_sumout\ & \ticker_inst|Add0~101_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|LessThan11~6_combout\);

-- Location: LABCELL_X88_Y14_N48
\ticker_inst|LessThan11~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~7_combout\ = ( \ticker_inst|LessThan11~5_combout\ & ( \ticker_inst|LessThan11~6_combout\ & ( ((\ticker_inst|Add0~13_sumout\ & \ticker_inst|Add0~21_sumout\)) # (\ticker_inst|Add0~5_sumout\) ) ) ) # ( 
-- !\ticker_inst|LessThan11~5_combout\ & ( \ticker_inst|LessThan11~6_combout\ & ( ((\ticker_inst|Add0~13_sumout\ & ((\ticker_inst|Add0~21_sumout\) # (\ticker_inst|Add0~25_sumout\)))) # (\ticker_inst|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan11~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan11~6_combout\,
	combout => \ticker_inst|LessThan11~7_combout\);

-- Location: MLABCELL_X87_Y13_N33
\ticker_inst|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~0_combout\ = ( \ticker_inst|Add0~25_sumout\ & ( \ticker_inst|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~25_sumout\,
	combout => \ticker_inst|LessThan3~0_combout\);

-- Location: LABCELL_X88_Y14_N18
\ticker_inst|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~2_combout\ = ( \ticker_inst|Add0~97_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~97_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan2~2_combout\);

-- Location: LABCELL_X88_Y15_N42
\ticker_inst|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~0_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~65_sumout\ & ( (!\ticker_inst|Add0~53_sumout\ & ((!\ticker_inst|Add0~73_sumout\) # ((!\ticker_inst|Add0~77_sumout\ & !\ticker_inst|Add0~69_sumout\)))) ) ) ) # ( 
-- !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) ) ) # ( \ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|Add0~65_sumout\ & ( (!\ticker_inst|Add0~53_sumout\ & ((!\ticker_inst|Add0~77_sumout\) # 
-- (!\ticker_inst|Add0~73_sumout\))) ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001010000011110000111100001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~65_sumout\,
	combout => \ticker_inst|LessThan2~0_combout\);

-- Location: LABCELL_X88_Y15_N6
\ticker_inst|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~1_combout\ = ( \ticker_inst|LessThan2~0_combout\ & ( !\ticker_inst|Add0~89_sumout\ & ( (!\ticker_inst|Add0~85_sumout\ & ((!\ticker_inst|Add0~49_sumout\) # (!\ticker_inst|Add0~81_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan2~0_combout\ & ( !\ticker_inst|Add0~89_sumout\ & ( (!\ticker_inst|Add0~85_sumout\ & ((!\ticker_inst|Add0~81_sumout\) # ((!\ticker_inst|Add0~49_sumout\ & !\ticker_inst|Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan2~0_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~89_sumout\,
	combout => \ticker_inst|LessThan2~1_combout\);

-- Location: MLABCELL_X87_Y13_N30
\ticker_inst|process_0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~17_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~17_combout\);

-- Location: MLABCELL_X87_Y13_N0
\ticker_inst|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~3_combout\ = ( \ticker_inst|LessThan2~1_combout\ & ( \ticker_inst|process_0~17_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|Add0~29_sumout\) # (!\ticker_inst|LessThan3~0_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan2~1_combout\ & ( \ticker_inst|process_0~17_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|LessThan3~0_combout\) # ((!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|LessThan2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101000001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~1_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~17_combout\,
	combout => \ticker_inst|LessThan2~3_combout\);

-- Location: MLABCELL_X84_Y14_N3
\ticker_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~0_combout\ = ( !\ticker_inst|Add0~81_sumout\ & ( !\ticker_inst|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y14_N24
\ticker_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~1_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( ((\ticker_inst|Add0~61_sumout\ & \ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~69_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan0~1_combout\);

-- Location: MLABCELL_X84_Y14_N36
\ticker_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~2_combout\ = ( \ticker_inst|Add0~57_sumout\ & ( \ticker_inst|LessThan0~1_combout\ & ( \ticker_inst|Add0~49_sumout\ ) ) ) # ( !\ticker_inst|Add0~57_sumout\ & ( \ticker_inst|LessThan0~1_combout\ & ( (\ticker_inst|Add0~53_sumout\ & 
-- \ticker_inst|Add0~49_sumout\) ) ) ) # ( \ticker_inst|Add0~57_sumout\ & ( !\ticker_inst|LessThan0~1_combout\ & ( \ticker_inst|Add0~49_sumout\ ) ) ) # ( !\ticker_inst|Add0~57_sumout\ & ( !\ticker_inst|LessThan0~1_combout\ & ( (\ticker_inst|Add0~45_sumout\ & 
-- (\ticker_inst|Add0~53_sumout\ & \ticker_inst|Add0~49_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111111100000000000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~1_combout\,
	combout => \ticker_inst|LessThan0~2_combout\);

-- Location: MLABCELL_X84_Y14_N18
\ticker_inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~0_combout\ = ( \ticker_inst|Add0~33_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~89_sumout\ & (\ticker_inst|Add0~93_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan1~0_combout\);

-- Location: MLABCELL_X84_Y14_N42
\ticker_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~3_combout\ = ( \ticker_inst|LessThan0~2_combout\ & ( \ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~29_sumout\) ) ) ) # ( !\ticker_inst|LessThan0~2_combout\ & ( 
-- \ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~17_sumout\ & (\ticker_inst|Add0~29_sumout\ & ((!\ticker_inst|LessThan0~0_combout\) # (\ticker_inst|Add0~97_sumout\)))) ) ) ) # ( \ticker_inst|LessThan0~2_combout\ & ( 
-- !\ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~29_sumout\)) ) ) ) # ( !\ticker_inst|LessThan0~2_combout\ & ( !\ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~97_sumout\ & 
-- (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~29_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000010110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan0~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~0_combout\,
	combout => \ticker_inst|LessThan0~3_combout\);

-- Location: LABCELL_X88_Y12_N21
\ticker_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~5_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( (!\ticker_inst|Add0~109_sumout\) # ((!\ticker_inst|Add0~5_sumout\ & !\ticker_inst|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|LessThan0~5_combout\);

-- Location: MLABCELL_X87_Y13_N6
\ticker_inst|process_0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~18_combout\ = ( \ticker_inst|Add0~101_sumout\ & ( (\ticker_inst|Add0~9_sumout\) # (\ticker_inst|Add0~109_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|process_0~18_combout\);

-- Location: LABCELL_X88_Y12_N33
\ticker_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~4_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~13_sumout\ & !\ticker_inst|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|LessThan0~4_combout\);

-- Location: MLABCELL_X87_Y13_N24
\ticker_inst|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~7_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~13_sumout\ & (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~9_sumout\))) ) ) # ( !\ticker_inst|Add0~5_sumout\ & ( 
-- !\ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~7_combout\);

-- Location: LABCELL_X88_Y15_N33
\ticker_inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~2_combout\ = ( !\ticker_inst|Add0~69_sumout\ & ( (!\ticker_inst|Add0~65_sumout\) # ((!\ticker_inst|Add0~61_sumout\) # (!\ticker_inst|Add0~105_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~105_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~69_sumout\,
	combout => \ticker_inst|LessThan1~2_combout\);

-- Location: LABCELL_X88_Y15_N36
\ticker_inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~3_combout\ = ( \ticker_inst|Add0~49_sumout\ & ( \ticker_inst|LessThan1~2_combout\ & ( (\ticker_inst|Add0~45_sumout\ & \ticker_inst|Add0~53_sumout\) ) ) ) # ( \ticker_inst|Add0~49_sumout\ & ( !\ticker_inst|LessThan1~2_combout\ & ( 
-- (\ticker_inst|Add0~53_sumout\ & (((\ticker_inst|Add0~77_sumout\ & \ticker_inst|Add0~73_sumout\)) # (\ticker_inst|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000011100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~49_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~2_combout\,
	combout => \ticker_inst|LessThan1~3_combout\);

-- Location: LABCELL_X88_Y14_N42
\ticker_inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~1_combout\ = ( \ticker_inst|Add0~93_sumout\ & ( \ticker_inst|Add0~89_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan1~1_combout\);

-- Location: MLABCELL_X87_Y15_N30
\ticker_inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~4_combout\ = (!\ticker_inst|Add0~81_sumout\ & (!\ticker_inst|Add0~85_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # (!\ticker_inst|Add0~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan1~4_combout\);

-- Location: MLABCELL_X87_Y13_N36
\ticker_inst|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~5_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( \ticker_inst|LessThan1~4_combout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|LessThan1~3_combout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|LessThan1~1_combout\))) ) ) ) # 
-- ( \ticker_inst|Add0~41_sumout\ & ( !\ticker_inst|LessThan1~4_combout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|LessThan1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan1~3_combout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan1~1_combout\,
	datae => \ticker_inst|ALT_INV_Add0~41_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~4_combout\,
	combout => \ticker_inst|LessThan1~5_combout\);

-- Location: LABCELL_X88_Y12_N39
\ticker_inst|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~6_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~6_combout\);

-- Location: MLABCELL_X87_Y13_N18
\ticker_inst|disp_hex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~0_combout\ = ( \ticker_inst|LessThan1~5_combout\ & ( \ticker_inst|LessThan1~6_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~101_sumout\) ) ) ) # ( !\ticker_inst|LessThan1~5_combout\ & ( 
-- \ticker_inst|LessThan1~6_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # ((!\ticker_inst|Add0~97_sumout\ & \ticker_inst|LessThan1~7_combout\)))) ) ) ) # ( \ticker_inst|LessThan1~5_combout\ & ( 
-- !\ticker_inst|LessThan1~6_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # (\ticker_inst|LessThan1~7_combout\))) ) ) ) # ( !\ticker_inst|LessThan1~5_combout\ & ( !\ticker_inst|LessThan1~6_combout\ & ( 
-- (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # (\ticker_inst|LessThan1~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010101110000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan1~7_combout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan1~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~6_combout\,
	combout => \ticker_inst|disp_hex0~0_combout\);

-- Location: MLABCELL_X87_Y13_N48
\ticker_inst|disp_hex0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~1_combout\ = ( \ticker_inst|LessThan0~4_combout\ & ( \ticker_inst|disp_hex0~0_combout\ & ( (\ticker_inst|LessThan0~3_combout\ & !\ticker_inst|LessThan0~5_combout\) ) ) ) # ( !\ticker_inst|LessThan0~4_combout\ & ( 
-- \ticker_inst|disp_hex0~0_combout\ & ( !\ticker_inst|LessThan0~5_combout\ ) ) ) # ( \ticker_inst|LessThan0~4_combout\ & ( !\ticker_inst|disp_hex0~0_combout\ & ( (!\ticker_inst|LessThan2~3_combout\ & (\ticker_inst|LessThan0~3_combout\ & 
-- (!\ticker_inst|LessThan0~5_combout\ & \ticker_inst|process_0~18_combout\))) ) ) ) # ( !\ticker_inst|LessThan0~4_combout\ & ( !\ticker_inst|disp_hex0~0_combout\ & ( (!\ticker_inst|LessThan2~3_combout\ & (!\ticker_inst|LessThan0~5_combout\ & 
-- \ticker_inst|process_0~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000010000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	datac => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	datad => \ticker_inst|ALT_INV_process_0~18_combout\,
	datae => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	combout => \ticker_inst|disp_hex0~1_combout\);

-- Location: LABCELL_X88_Y12_N9
\ticker_inst|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~7_combout\ = ( \ticker_inst|Add0~101_sumout\ & ( (!\ticker_inst|Add0~9_sumout\ & !\ticker_inst|Add0~109_sumout\) ) ) # ( !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|process_0~7_combout\);

-- Location: MLABCELL_X87_Y12_N18
\ticker_inst|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~0_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~97_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|LessThan7~0_combout\);

-- Location: LABCELL_X88_Y15_N54
\ticker_inst|LessThan7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~5_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~77_sumout\) # ((!\ticker_inst|Add0~65_sumout\ & (!\ticker_inst|Add0~105_sumout\ & !\ticker_inst|Add0~61_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~69_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan7~5_combout\);

-- Location: MLABCELL_X87_Y12_N33
\ticker_inst|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~6_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|LessThan7~5_combout\ & ( !\ticker_inst|Add0~81_sumout\ ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|LessThan7~5_combout\ & ( !\ticker_inst|Add0~81_sumout\ ) ) 
-- ) # ( \ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|LessThan7~5_combout\ & ( (!\ticker_inst|Add0~81_sumout\ & ((!\ticker_inst|Add0~49_sumout\) # (!\ticker_inst|Add0~53_sumout\))) ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( 
-- !\ticker_inst|LessThan7~5_combout\ & ( !\ticker_inst|Add0~81_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~5_combout\,
	combout => \ticker_inst|LessThan7~6_combout\);

-- Location: MLABCELL_X87_Y12_N24
\ticker_inst|LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~4_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( \ticker_inst|LessThan7~6_combout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # ((!\ticker_inst|Add0~49_sumout\) # (!\ticker_inst|Add0~85_sumout\)))) ) ) ) # 
-- ( !\ticker_inst|Add0~93_sumout\ & ( !\ticker_inst|LessThan7~6_combout\ & ( (!\ticker_inst|Add0~85_sumout\ & !\ticker_inst|Add0~89_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011111110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~6_combout\,
	combout => \ticker_inst|LessThan7~4_combout\);

-- Location: MLABCELL_X87_Y12_N21
\ticker_inst|LessThan5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~4_combout\ = ( \ticker_inst|Add0~25_sumout\ & ( \ticker_inst|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~25_sumout\,
	combout => \ticker_inst|LessThan5~4_combout\);

-- Location: MLABCELL_X87_Y12_N9
\ticker_inst|process_0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~23_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~13_sumout\ & ((!\ticker_inst|Add0~25_sumout\) # ((!\ticker_inst|Add0~21_sumout\) # (!\ticker_inst|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~23_combout\);

-- Location: MLABCELL_X87_Y12_N54
\ticker_inst|process_0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~24_combout\ = ( \ticker_inst|LessThan5~4_combout\ & ( \ticker_inst|process_0~23_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|Add0~9_sumout\ & ((!\ticker_inst|LessThan7~0_combout\) # 
-- (\ticker_inst|LessThan7~4_combout\)))) ) ) ) # ( !\ticker_inst|LessThan5~4_combout\ & ( \ticker_inst|process_0~23_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & !\ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan7~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan5~4_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~23_combout\,
	combout => \ticker_inst|process_0~24_combout\);

-- Location: LABCELL_X88_Y15_N51
\ticker_inst|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~1_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( (\ticker_inst|Add0~61_sumout\ & \ticker_inst|Add0~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~65_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~69_sumout\,
	combout => \ticker_inst|process_0~1_combout\);

-- Location: LABCELL_X88_Y15_N18
\ticker_inst|process_0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~25_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|process_0~1_combout\ & ( (\ticker_inst|Add0~53_sumout\ & \ticker_inst|Add0~57_sumout\) ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|process_0~1_combout\ & ( 
-- (\ticker_inst|Add0~53_sumout\ & \ticker_inst|Add0~57_sumout\) ) ) ) # ( \ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|process_0~1_combout\ & ( (\ticker_inst|Add0~53_sumout\ & \ticker_inst|Add0~57_sumout\) ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( 
-- !\ticker_inst|process_0~1_combout\ & ( (\ticker_inst|Add0~53_sumout\ & (\ticker_inst|Add0~57_sumout\ & ((\ticker_inst|Add0~73_sumout\) # (\ticker_inst|Add0~77_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~1_combout\,
	combout => \ticker_inst|process_0~25_combout\);

-- Location: LABCELL_X88_Y15_N24
\ticker_inst|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~1_combout\ = ( \ticker_inst|Add0~85_sumout\ & ( (\ticker_inst|Add0~89_sumout\ & (\ticker_inst|Add0~81_sumout\ & \ticker_inst|Add0~93_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan9~1_combout\);

-- Location: LABCELL_X88_Y15_N30
\ticker_inst|process_0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~26_combout\ = ( \ticker_inst|LessThan9~1_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & (!\ticker_inst|Add0~33_sumout\ & !\ticker_inst|process_0~25_combout\)) ) ) # ( !\ticker_inst|LessThan9~1_combout\ & ( 
-- !\ticker_inst|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~25_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	combout => \ticker_inst|process_0~26_combout\);

-- Location: LABCELL_X88_Y15_N3
\ticker_inst|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~2_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan9~2_combout\);

-- Location: LABCELL_X88_Y15_N0
\ticker_inst|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~4_combout\ = ( !\ticker_inst|Add0~21_sumout\ & ( (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~17_sumout\ & ((!\ticker_inst|Add0~97_sumout\) # (!\ticker_inst|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|process_0~4_combout\);

-- Location: LABCELL_X88_Y15_N15
\ticker_inst|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~8_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~8_combout\);

-- Location: LABCELL_X88_Y15_N48
\ticker_inst|process_0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~27_combout\ = ( \ticker_inst|LessThan1~8_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~4_combout\) # ((!\ticker_inst|process_0~26_combout\ & \ticker_inst|LessThan9~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000001000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~26_combout\,
	datac => \ticker_inst|ALT_INV_LessThan9~2_combout\,
	datad => \ticker_inst|ALT_INV_process_0~4_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	combout => \ticker_inst|process_0~27_combout\);

-- Location: LABCELL_X88_Y15_N27
\ticker_inst|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~3_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan9~3_combout\);

-- Location: MLABCELL_X87_Y15_N48
\ticker_inst|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~4_combout\ = ( \ticker_inst|Add0~65_sumout\ & ( (\ticker_inst|Add0~61_sumout\ & (\ticker_inst|Add0~69_sumout\ & \ticker_inst|Add0~105_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~105_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~65_sumout\,
	combout => \ticker_inst|LessThan9~4_combout\);

-- Location: MLABCELL_X87_Y15_N39
\ticker_inst|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~5_combout\ = ( \ticker_inst|Add0~53_sumout\ & ( \ticker_inst|LessThan9~4_combout\ & ( \ticker_inst|Add0~57_sumout\ ) ) ) # ( \ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|LessThan9~4_combout\ & ( (\ticker_inst|Add0~57_sumout\ & 
-- (((\ticker_inst|Add0~45_sumout\) # (\ticker_inst|Add0~73_sumout\)) # (\ticker_inst|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~4_combout\,
	combout => \ticker_inst|LessThan9~5_combout\);

-- Location: LABCELL_X88_Y13_N12
\ticker_inst|LessThan9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~6_combout\ = ( \ticker_inst|LessThan9~5_combout\ & ( \ticker_inst|LessThan9~1_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~41_sumout\)) ) ) ) # ( !\ticker_inst|LessThan9~5_combout\ & 
-- ( \ticker_inst|LessThan9~1_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~29_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan9~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	combout => \ticker_inst|LessThan9~6_combout\);

-- Location: LABCELL_X88_Y13_N54
\ticker_inst|process_0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~28_combout\ = ( \ticker_inst|LessThan9~3_combout\ & ( \ticker_inst|LessThan9~6_combout\ & ( (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|LessThan1~8_combout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan9~3_combout\ & ( \ticker_inst|LessThan9~6_combout\ & ( (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|LessThan1~8_combout\)) ) ) ) # ( \ticker_inst|LessThan9~3_combout\ & ( 
-- !\ticker_inst|LessThan9~6_combout\ & ( (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|LessThan1~8_combout\)) ) ) ) # ( !\ticker_inst|LessThan9~3_combout\ & ( !\ticker_inst|LessThan9~6_combout\ & ( 
-- (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|LessThan1~8_combout\) # (\ticker_inst|process_0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~4_combout\,
	datad => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	datae => \ticker_inst|ALT_INV_LessThan9~3_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~6_combout\,
	combout => \ticker_inst|process_0~28_combout\);

-- Location: LABCELL_X88_Y14_N3
\ticker_inst|LessThan10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~4_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan10~4_combout\);

-- Location: MLABCELL_X87_Y15_N51
\ticker_inst|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~1_combout\ = ( !\ticker_inst|Add0~33_sumout\ & ( (!\ticker_inst|Add0~89_sumout\) # (!\ticker_inst|Add0~93_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan10~1_combout\);

-- Location: MLABCELL_X87_Y15_N54
\ticker_inst|LessThan10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~2_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~33_sumout\ & ( !\ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~33_sumout\ & ( (!\ticker_inst|Add0~45_sumout\) # 
-- ((!\ticker_inst|Add0~65_sumout\ & (!\ticker_inst|Add0~69_sumout\ & !\ticker_inst|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan10~2_combout\);

-- Location: MLABCELL_X87_Y15_N45
\ticker_inst|LessThan10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~3_combout\ = ( !\ticker_inst|LessThan10~2_combout\ & ( \ticker_inst|LessThan10~0_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~41_sumout\ & !\ticker_inst|LessThan10~1_combout\))) ) 
-- ) ) # ( \ticker_inst|LessThan10~2_combout\ & ( !\ticker_inst|LessThan10~0_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~41_sumout\ & !\ticker_inst|LessThan10~1_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan10~2_combout\ & ( !\ticker_inst|LessThan10~0_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~41_sumout\ & !\ticker_inst|LessThan10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan10~1_combout\,
	datae => \ticker_inst|ALT_INV_LessThan10~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~0_combout\,
	combout => \ticker_inst|LessThan10~3_combout\);

-- Location: LABCELL_X88_Y12_N57
\ticker_inst|process_0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~29_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~13_sumout\) # ((!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~29_combout\);

-- Location: LABCELL_X88_Y13_N24
\ticker_inst|process_0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~30_combout\ = ( \ticker_inst|LessThan10~3_combout\ & ( \ticker_inst|process_0~29_combout\ & ( \ticker_inst|Add0~101_sumout\ ) ) ) # ( !\ticker_inst|LessThan10~3_combout\ & ( \ticker_inst|process_0~29_combout\ & ( 
-- \ticker_inst|Add0~101_sumout\ ) ) ) # ( \ticker_inst|LessThan10~3_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~9_sumout\) # (!\ticker_inst|Add0~109_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan10~3_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~9_sumout\) # ((!\ticker_inst|Add0~109_sumout\) # (\ticker_inst|LessThan10~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan10~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan10~3_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~29_combout\,
	combout => \ticker_inst|process_0~30_combout\);

-- Location: LABCELL_X88_Y13_N36
\ticker_inst|disp_hex0[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[0]~3_combout\ = ( \ticker_inst|process_0~28_combout\ & ( \ticker_inst|process_0~30_combout\ & ( (\ticker_inst|process_0~7_combout\ & (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~24_combout\ & 
-- !\ticker_inst|process_0~27_combout\))) ) ) ) # ( !\ticker_inst|process_0~28_combout\ & ( \ticker_inst|process_0~30_combout\ & ( \ticker_inst|Add0~1_sumout\ ) ) ) # ( \ticker_inst|process_0~28_combout\ & ( !\ticker_inst|process_0~30_combout\ & ( 
-- (\ticker_inst|process_0~7_combout\ & (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~24_combout\ & !\ticker_inst|process_0~27_combout\))) ) ) ) # ( !\ticker_inst|process_0~28_combout\ & ( !\ticker_inst|process_0~30_combout\ & ( 
-- (\ticker_inst|process_0~7_combout\ & (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~24_combout\ & !\ticker_inst|process_0~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000110011001100110001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~7_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~24_combout\,
	datad => \ticker_inst|ALT_INV_process_0~27_combout\,
	datae => \ticker_inst|ALT_INV_process_0~28_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~30_combout\,
	combout => \ticker_inst|disp_hex0[0]~3_combout\);

-- Location: MLABCELL_X87_Y13_N9
\ticker_inst|process_0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~15_combout\ = ( \ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) # ( !\ticker_inst|Add0~1_sumout\ & ( (\ticker_inst|Add0~9_sumout\ & (\ticker_inst|Add0~5_sumout\ & \ticker_inst|Add0~109_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|process_0~15_combout\);

-- Location: MLABCELL_X87_Y13_N27
\ticker_inst|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~5_combout\ = ( \ticker_inst|Add0~81_sumout\ & ( \ticker_inst|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan3~5_combout\);

-- Location: MLABCELL_X87_Y13_N12
\ticker_inst|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~4_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|LessThan11~1_combout\ & ( (\ticker_inst|Add0~73_sumout\ & \ticker_inst|Add0~45_sumout\) ) ) ) # ( \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|LessThan11~1_combout\ & ( 
-- (\ticker_inst|Add0~73_sumout\ & \ticker_inst|Add0~45_sumout\) ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|LessThan11~1_combout\ & ( (\ticker_inst|Add0~69_sumout\ & (\ticker_inst|Add0~73_sumout\ & (\ticker_inst|Add0~65_sumout\ & 
-- \ticker_inst|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000011001100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan11~1_combout\,
	combout => \ticker_inst|LessThan3~4_combout\);

-- Location: LABCELL_X88_Y14_N0
\ticker_inst|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~3_combout\ = ( !\ticker_inst|Add0~85_sumout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~81_sumout\) # (!\ticker_inst|Add0~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan3~3_combout\);

-- Location: MLABCELL_X87_Y13_N54
\ticker_inst|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~6_combout\ = ( \ticker_inst|Add0~25_sumout\ & ( \ticker_inst|LessThan3~3_combout\ & ( (\ticker_inst|LessThan3~5_combout\ & (\ticker_inst|Add0~17_sumout\ & ((\ticker_inst|LessThan3~4_combout\) # (\ticker_inst|Add0~53_sumout\)))) ) ) 
-- ) # ( \ticker_inst|Add0~25_sumout\ & ( !\ticker_inst|LessThan3~3_combout\ & ( \ticker_inst|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan3~5_combout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan3~4_combout\,
	datae => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan3~3_combout\,
	combout => \ticker_inst|LessThan3~6_combout\);

-- Location: MLABCELL_X87_Y13_N42
\ticker_inst|process_0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~34_combout\ = ( \ticker_inst|LessThan3~6_combout\ & ( \ticker_inst|process_0~17_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|LessThan2~2_combout\ & ((!\ticker_inst|LessThan3~0_combout\) # 
-- (!\ticker_inst|Add0~29_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan3~6_combout\ & ( \ticker_inst|process_0~17_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|LessThan3~0_combout\) # (!\ticker_inst|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	datae => \ticker_inst|ALT_INV_LessThan3~6_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~17_combout\,
	combout => \ticker_inst|process_0~34_combout\);

-- Location: LABCELL_X85_Y14_N18
\ticker_inst|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~3_combout\ = ( \ticker_inst|Add0~33_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~85_sumout\ & (\ticker_inst|Add0~89_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan5~3_combout\);

-- Location: LABCELL_X85_Y14_N42
\ticker_inst|LessThan5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~5_combout\ = ( \ticker_inst|Add0~17_sumout\ & ( \ticker_inst|Add0~21_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|LessThan5~5_combout\);

-- Location: LABCELL_X88_Y14_N6
\ticker_inst|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~0_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ ) ) ) # ( !\ticker_inst|Add0~69_sumout\ & ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ ) ) ) # ( 
-- \ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ ) ) ) # ( !\ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~77_sumout\ & ( (\ticker_inst|Add0~73_sumout\ & (((\ticker_inst|Add0~105_sumout\ & 
-- \ticker_inst|Add0~61_sumout\)) # (\ticker_inst|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~69_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~77_sumout\,
	combout => \ticker_inst|LessThan5~0_combout\);

-- Location: LABCELL_X85_Y14_N54
\ticker_inst|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~0_combout\ = ( !\ticker_inst|Add0~49_sumout\ & ( (!\ticker_inst|Add0~45_sumout\ & (!\ticker_inst|Add0~53_sumout\ & (!\ticker_inst|Add0~57_sumout\ & !\ticker_inst|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan4~0_combout\);

-- Location: LABCELL_X85_Y14_N39
\ticker_inst|LessThan5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~6_combout\ = ( \ticker_inst|Add0~21_sumout\ & ( (\ticker_inst|Add0~17_sumout\ & ((!\ticker_inst|LessThan4~0_combout\) # (\ticker_inst|LessThan5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan5~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|LessThan5~6_combout\);

-- Location: MLABCELL_X84_Y14_N15
\ticker_inst|process_0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~32_combout\ = ( \ticker_inst|Add0~25_sumout\ & ( \ticker_inst|Add0~21_sumout\ ) ) # ( !\ticker_inst|Add0~25_sumout\ & ( \ticker_inst|Add0~21_sumout\ & ( (\ticker_inst|Add0~17_sumout\ & ((\ticker_inst|Add0~29_sumout\) # 
-- (\ticker_inst|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|process_0~32_combout\);

-- Location: LABCELL_X85_Y14_N12
\ticker_inst|process_0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~33_combout\ = ( !\ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|process_0~32_combout\ & ( (!\ticker_inst|LessThan5~5_combout\ & (!\ticker_inst|Add0~13_sumout\ & ((!\ticker_inst|LessThan5~3_combout\) # 
-- (!\ticker_inst|LessThan5~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan5~3_combout\,
	datab => \ticker_inst|ALT_INV_LessThan5~5_combout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan5~6_combout\,
	datae => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~32_combout\,
	combout => \ticker_inst|process_0~33_combout\);

-- Location: LABCELL_X85_Y14_N0
\ticker_inst|LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~5_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~85_sumout\) # (!\ticker_inst|Add0~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan4~5_combout\);

-- Location: LABCELL_X85_Y14_N30
\ticker_inst|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~1_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~93_sumout\ & ( !\ticker_inst|Add0~73_sumout\ ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~73_sumout\) # 
-- ((!\ticker_inst|Add0~65_sumout\ & (!\ticker_inst|Add0~61_sumout\ & !\ticker_inst|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan4~1_combout\);

-- Location: LABCELL_X85_Y14_N24
\ticker_inst|LessThan4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~6_combout\ = ( !\ticker_inst|LessThan4~5_combout\ & ( \ticker_inst|LessThan4~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & (!\ticker_inst|LessThan4~0_combout\ & \ticker_inst|Add0~37_sumout\))) ) ) ) 
-- # ( !\ticker_inst|LessThan4~5_combout\ & ( !\ticker_inst|LessThan4~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan4~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan4~1_combout\,
	combout => \ticker_inst|LessThan4~6_combout\);

-- Location: LABCELL_X85_Y14_N36
\ticker_inst|LessThan4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~7_combout\ = ( !\ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|Add0~97_sumout\ & !\ticker_inst|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|LessThan4~7_combout\);

-- Location: LABCELL_X85_Y14_N48
\ticker_inst|process_0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~35_combout\ = ( \ticker_inst|Add0~101_sumout\ & ( \ticker_inst|process_0~21_combout\ & ( (!\ticker_inst|Add0~9_sumout\ & (((\ticker_inst|Add0~109_sumout\)))) # (\ticker_inst|Add0~9_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # 
-- ((!\ticker_inst|LessThan4~6_combout\ & \ticker_inst|LessThan4~7_combout\)))) ) ) ) # ( \ticker_inst|Add0~101_sumout\ & ( !\ticker_inst|process_0~21_combout\ & ( (\ticker_inst|Add0~109_sumout\) # (\ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111111100000000000000000011001111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan4~6_combout\,
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan4~7_combout\,
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~21_combout\,
	combout => \ticker_inst|process_0~35_combout\);

-- Location: MLABCELL_X87_Y12_N42
\ticker_inst|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~9_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~57_sumout\ & ((!\ticker_inst|Add0~53_sumout\) # (!\ticker_inst|Add0~45_sumout\))) ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( 
-- \ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~57_sumout\ & ((!\ticker_inst|Add0~53_sumout\) # (!\ticker_inst|Add0~45_sumout\))) ) ) ) # ( \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~57_sumout\ & 
-- ((!\ticker_inst|Add0~53_sumout\) # ((!\ticker_inst|Add0~45_sumout\) # (!\ticker_inst|Add0~69_sumout\)))) ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|process_0~9_combout\);

-- Location: MLABCELL_X87_Y12_N36
\ticker_inst|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~10_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( \ticker_inst|process_0~9_combout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~85_sumout\) # (!\ticker_inst|Add0~81_sumout\))) ) ) ) # ( !\ticker_inst|Add0~93_sumout\ & 
-- ( !\ticker_inst|process_0~9_combout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~85_sumout\) # ((!\ticker_inst|Add0~81_sumout\ & !\ticker_inst|Add0~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000000000000000000011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~9_combout\,
	combout => \ticker_inst|process_0~10_combout\);

-- Location: MLABCELL_X84_Y13_N12
\ticker_inst|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~0_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( !\ticker_inst|Add0~9_sumout\ & ( (!\ticker_inst|Add0~13_sumout\ & ((!\ticker_inst|Add0~17_sumout\) # ((!\ticker_inst|Add0~25_sumout\) # (!\ticker_inst|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~5_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~9_sumout\,
	combout => \ticker_inst|process_0~0_combout\);

-- Location: LABCELL_X88_Y13_N18
\ticker_inst|process_0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~31_combout\ = ( \ticker_inst|LessThan5~4_combout\ & ( \ticker_inst|process_0~0_combout\ & ( (\ticker_inst|LessThan7~0_combout\ & (!\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|process_0~10_combout\ & 
-- \ticker_inst|Add0~109_sumout\))) ) ) ) # ( \ticker_inst|LessThan5~4_combout\ & ( !\ticker_inst|process_0~0_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & \ticker_inst|Add0~109_sumout\) ) ) ) # ( !\ticker_inst|LessThan5~4_combout\ & ( 
-- !\ticker_inst|process_0~0_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & \ticker_inst|Add0~109_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~10_combout\,
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan5~4_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~0_combout\,
	combout => \ticker_inst|process_0~31_combout\);

-- Location: LABCELL_X88_Y13_N30
\ticker_inst|disp_hex0[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[0]~4_combout\ = ( \ticker_inst|process_0~35_combout\ & ( \ticker_inst|process_0~31_combout\ & ( (!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|process_0~34_combout\) ) ) ) # ( \ticker_inst|process_0~35_combout\ & ( 
-- !\ticker_inst|process_0~31_combout\ & ( (!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|process_0~34_combout\) # ((\ticker_inst|process_0~15_combout\ & !\ticker_inst|process_0~33_combout\)))) # (\ticker_inst|Add0~1_sumout\ & 
-- (\ticker_inst|process_0~15_combout\ & ((!\ticker_inst|process_0~33_combout\)))) ) ) ) # ( !\ticker_inst|process_0~35_combout\ & ( !\ticker_inst|process_0~31_combout\ & ( (\ticker_inst|process_0~15_combout\ & !\ticker_inst|process_0~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000101100111010000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~15_combout\,
	datac => \ticker_inst|ALT_INV_process_0~34_combout\,
	datad => \ticker_inst|ALT_INV_process_0~33_combout\,
	datae => \ticker_inst|ALT_INV_process_0~35_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~31_combout\,
	combout => \ticker_inst|disp_hex0[0]~4_combout\);

-- Location: LABCELL_X88_Y13_N0
\ticker_inst|count[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|count[4]~0_combout\ = ( \ticker_inst|disp_hex0[0]~3_combout\ & ( \ticker_inst|disp_hex0[0]~4_combout\ & ( \ticker_inst|Add0~113_sumout\ ) ) ) # ( !\ticker_inst|disp_hex0[0]~3_combout\ & ( \ticker_inst|disp_hex0[0]~4_combout\ & ( 
-- \ticker_inst|Add0~113_sumout\ ) ) ) # ( \ticker_inst|disp_hex0[0]~3_combout\ & ( !\ticker_inst|disp_hex0[0]~4_combout\ & ( \ticker_inst|Add0~113_sumout\ ) ) ) # ( !\ticker_inst|disp_hex0[0]~3_combout\ & ( !\ticker_inst|disp_hex0[0]~4_combout\ & ( 
-- ((\ticker_inst|LessThan11~7_combout\ & ((\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|Add0~1_sumout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100111111001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan11~7_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex0[0]~3_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[0]~4_combout\,
	combout => \ticker_inst|count[4]~0_combout\);

-- Location: FF_X87_Y14_N35
\ticker_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|Add0~21_sumout\,
	sclr => \ticker_inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(21));

-- Location: LABCELL_X85_Y14_N9
\ticker_inst|process_0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~21_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( ((\ticker_inst|Add0~21_sumout\ & ((\ticker_inst|Add0~25_sumout\) # (\ticker_inst|Add0~17_sumout\)))) # (\ticker_inst|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~21_combout\);

-- Location: LABCELL_X88_Y11_N24
\ticker_inst|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~0_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|LessThan11~0_combout\);

-- Location: MLABCELL_X87_Y11_N42
\ticker_inst|process_0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~19_combout\ = ( !\ticker_inst|Add0~21_sumout\ & ( !\ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|Add0~5_sumout\ & !\ticker_inst|Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|process_0~19_combout\);

-- Location: LABCELL_X88_Y15_N12
\ticker_inst|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~1_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( (!\ticker_inst|Add0~77_sumout\ & ((!\ticker_inst|Add0~65_sumout\) # ((!\ticker_inst|Add0~105_sumout\ & !\ticker_inst|Add0~61_sumout\)))) ) ) # ( !\ticker_inst|Add0~69_sumout\ & ( 
-- !\ticker_inst|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000100000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~65_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~69_sumout\,
	combout => \ticker_inst|LessThan3~1_combout\);

-- Location: LABCELL_X85_Y15_N27
\ticker_inst|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~2_combout\ = ( \ticker_inst|Add0~81_sumout\ & ( \ticker_inst|LessThan3~1_combout\ & ( (\ticker_inst|Add0~57_sumout\ & \ticker_inst|Add0~53_sumout\) ) ) ) # ( \ticker_inst|Add0~81_sumout\ & ( !\ticker_inst|LessThan3~1_combout\ & ( 
-- (\ticker_inst|Add0~57_sumout\ & (((\ticker_inst|Add0~45_sumout\ & \ticker_inst|Add0~73_sumout\)) # (\ticker_inst|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan3~1_combout\,
	combout => \ticker_inst|LessThan3~2_combout\);

-- Location: MLABCELL_X87_Y11_N54
\ticker_inst|process_0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~20_combout\ = ( \ticker_inst|LessThan2~2_combout\ & ( \ticker_inst|LessThan3~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~25_sumout\) ) ) ) # ( !\ticker_inst|LessThan2~2_combout\ & ( 
-- \ticker_inst|LessThan3~2_combout\ & ( (\ticker_inst|Add0~29_sumout\ & (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~25_sumout\)) ) ) ) # ( \ticker_inst|LessThan2~2_combout\ & ( !\ticker_inst|LessThan3~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & 
-- (\ticker_inst|Add0~25_sumout\ & ((!\ticker_inst|LessThan3~3_combout\) # (\ticker_inst|Add0~29_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan2~2_combout\ & ( !\ticker_inst|LessThan3~2_combout\ & ( (\ticker_inst|Add0~29_sumout\ & (\ticker_inst|Add0~17_sumout\ 
-- & \ticker_inst|Add0~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000110000000100000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan3~3_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan3~2_combout\,
	combout => \ticker_inst|process_0~20_combout\);

-- Location: MLABCELL_X87_Y11_N48
\ticker_inst|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~3_combout\ = ( !\ticker_inst|Add0~97_sumout\ & ( !\ticker_inst|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~97_sumout\,
	combout => \ticker_inst|LessThan4~3_combout\);

-- Location: MLABCELL_X84_Y14_N33
\ticker_inst|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~2_combout\ = ( \ticker_inst|Add0~33_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~37_sumout\ & (((\ticker_inst|Add0~89_sumout\ & \ticker_inst|Add0~85_sumout\)) # (\ticker_inst|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan4~2_combout\);

-- Location: MLABCELL_X87_Y11_N6
\ticker_inst|LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~4_combout\ = ( \ticker_inst|LessThan4~1_combout\ & ( \ticker_inst|LessThan4~2_combout\ & ( (\ticker_inst|LessThan4~3_combout\ & (!\ticker_inst|Add0~13_sumout\ & (!\ticker_inst|Add0~25_sumout\ & \ticker_inst|LessThan4~0_combout\))) ) 
-- ) ) # ( \ticker_inst|LessThan4~1_combout\ & ( !\ticker_inst|LessThan4~2_combout\ & ( (\ticker_inst|LessThan4~3_combout\ & (!\ticker_inst|Add0~13_sumout\ & !\ticker_inst|Add0~25_sumout\)) ) ) ) # ( !\ticker_inst|LessThan4~1_combout\ & ( 
-- !\ticker_inst|LessThan4~2_combout\ & ( (\ticker_inst|LessThan4~3_combout\ & (!\ticker_inst|Add0~13_sumout\ & !\ticker_inst|Add0~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan4~3_combout\,
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	datae => \ticker_inst|ALT_INV_LessThan4~1_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan4~2_combout\,
	combout => \ticker_inst|LessThan4~4_combout\);

-- Location: MLABCELL_X87_Y11_N18
\ticker_inst|process_0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~22_combout\ = ( \ticker_inst|process_0~20_combout\ & ( \ticker_inst|LessThan4~4_combout\ & ( \ticker_inst|process_0~18_combout\ ) ) ) # ( !\ticker_inst|process_0~20_combout\ & ( \ticker_inst|LessThan4~4_combout\ & ( 
-- (\ticker_inst|process_0~18_combout\ & !\ticker_inst|process_0~19_combout\) ) ) ) # ( \ticker_inst|process_0~20_combout\ & ( !\ticker_inst|LessThan4~4_combout\ & ( (\ticker_inst|process_0~18_combout\ & ((!\ticker_inst|process_0~21_combout\) # 
-- (!\ticker_inst|LessThan11~0_combout\))) ) ) ) # ( !\ticker_inst|process_0~20_combout\ & ( !\ticker_inst|LessThan4~4_combout\ & ( (\ticker_inst|process_0~18_combout\ & (!\ticker_inst|process_0~19_combout\ & ((!\ticker_inst|process_0~21_combout\) # 
-- (!\ticker_inst|LessThan11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000111000001111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~21_combout\,
	datab => \ticker_inst|ALT_INV_LessThan11~0_combout\,
	datac => \ticker_inst|ALT_INV_process_0~18_combout\,
	datad => \ticker_inst|ALT_INV_process_0~19_combout\,
	datae => \ticker_inst|ALT_INV_process_0~20_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan4~4_combout\,
	combout => \ticker_inst|process_0~22_combout\);

-- Location: LABCELL_X88_Y14_N30
\ticker_inst|process_0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~13_combout\ = ( \ticker_inst|Add0~17_sumout\ & ( !\ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|Add0~97_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~17_sumout\ & ( !\ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~25_sumout\) # (!\ticker_inst|Add0~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|process_0~13_combout\);

-- Location: MLABCELL_X87_Y12_N6
\ticker_inst|process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~11_combout\ = ( \ticker_inst|LessThan7~0_combout\ & ( (\ticker_inst|Add0~25_sumout\ & (\ticker_inst|Add0~21_sumout\ & !\ticker_inst|process_0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~10_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	combout => \ticker_inst|process_0~11_combout\);

-- Location: LABCELL_X85_Y14_N57
\ticker_inst|process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~12_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|process_0~12_combout\);

-- Location: LABCELL_X88_Y12_N54
\ticker_inst|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~2_combout\ = ( \ticker_inst|Add0~33_sumout\ & ( (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan5~2_combout\);

-- Location: MLABCELL_X87_Y12_N0
\ticker_inst|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~1_combout\ = ( !\ticker_inst|Add0~81_sumout\ & ( !\ticker_inst|LessThan5~0_combout\ & ( (!\ticker_inst|Add0~57_sumout\ & (!\ticker_inst|Add0~49_sumout\ & (!\ticker_inst|Add0~53_sumout\ & !\ticker_inst|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~0_combout\,
	combout => \ticker_inst|LessThan5~1_combout\);

-- Location: LABCELL_X88_Y12_N0
\ticker_inst|process_0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~14_combout\ = ( !\ticker_inst|Add0~1_sumout\ & ( \ticker_inst|LessThan5~3_combout\ & ( (!\ticker_inst|Add0~17_sumout\) # ((!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|LessThan5~2_combout\ & \ticker_inst|LessThan5~1_combout\))) 
-- ) ) ) # ( !\ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|LessThan5~3_combout\ & ( (!\ticker_inst|LessThan5~2_combout\) # ((!\ticker_inst|Add0~17_sumout\) # (!\ticker_inst|Add0~21_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110000000000000000011111100111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan5~2_combout\,
	datab => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan5~1_combout\,
	datae => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~3_combout\,
	combout => \ticker_inst|process_0~14_combout\);

-- Location: MLABCELL_X87_Y12_N48
\ticker_inst|process_0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~16_combout\ = ( \ticker_inst|process_0~14_combout\ & ( \ticker_inst|process_0~15_combout\ & ( (!\ticker_inst|process_0~13_combout\ & ((!\ticker_inst|process_0~12_combout\) # ((!\ticker_inst|process_0~11_combout\ & 
-- \ticker_inst|process_0~0_combout\)))) ) ) ) # ( !\ticker_inst|process_0~14_combout\ & ( \ticker_inst|process_0~15_combout\ & ( (!\ticker_inst|process_0~12_combout\) # ((!\ticker_inst|process_0~11_combout\ & \ticker_inst|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111001010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~13_combout\,
	datab => \ticker_inst|ALT_INV_process_0~11_combout\,
	datac => \ticker_inst|ALT_INV_process_0~12_combout\,
	datad => \ticker_inst|ALT_INV_process_0~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~14_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~15_combout\,
	combout => \ticker_inst|process_0~16_combout\);

-- Location: LABCELL_X85_Y14_N6
\ticker_inst|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~0_combout\ = ( !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan9~0_combout\);

-- Location: LABCELL_X85_Y13_N30
\ticker_inst|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~2_combout\ = ( \ticker_inst|process_0~1_combout\ & ( \ticker_inst|LessThan9~0_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # (!\ticker_inst|Add0~53_sumout\))) ) ) ) # ( 
-- !\ticker_inst|process_0~1_combout\ & ( \ticker_inst|LessThan9~0_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # ((!\ticker_inst|Add0~45_sumout\) # (!\ticker_inst|Add0~53_sumout\)))) ) ) ) # ( 
-- \ticker_inst|process_0~1_combout\ & ( !\ticker_inst|LessThan9~0_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # (!\ticker_inst|Add0~53_sumout\))) ) ) ) # ( !\ticker_inst|process_0~1_combout\ & ( 
-- !\ticker_inst|LessThan9~0_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # (!\ticker_inst|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101010101010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~1_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~0_combout\,
	combout => \ticker_inst|process_0~2_combout\);

-- Location: LABCELL_X85_Y13_N6
\ticker_inst|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~3_combout\ = ( \ticker_inst|Add0~33_sumout\ & ( \ticker_inst|LessThan9~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) ) # ( !\ticker_inst|Add0~33_sumout\ & ( 
-- \ticker_inst|LessThan9~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~29_sumout\ & (\ticker_inst|Add0~37_sumout\ & !\ticker_inst|process_0~2_combout\))) ) ) ) # ( \ticker_inst|Add0~33_sumout\ & ( !\ticker_inst|LessThan9~1_combout\ & ( 
-- (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000001000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~2_combout\,
	datae => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	combout => \ticker_inst|process_0~3_combout\);

-- Location: MLABCELL_X84_Y13_N42
\ticker_inst|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~6_combout\ = ( \ticker_inst|Add0~101_sumout\ & ( \ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~6_combout\);

-- Location: LABCELL_X88_Y14_N54
\ticker_inst|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~3_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~85_sumout\) # (!\ticker_inst|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan7~3_combout\);

-- Location: MLABCELL_X84_Y14_N57
\ticker_inst|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~1_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~69_sumout\) # ((!\ticker_inst|Add0~61_sumout\ & (!\ticker_inst|Add0~105_sumout\ & !\ticker_inst|Add0~65_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan7~1_combout\);

-- Location: MLABCELL_X84_Y14_N9
\ticker_inst|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~2_combout\ = ( \ticker_inst|Add0~57_sumout\ & ( \ticker_inst|Add0~49_sumout\ & ( \ticker_inst|Add0~85_sumout\ ) ) ) # ( !\ticker_inst|Add0~57_sumout\ & ( \ticker_inst|Add0~49_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & 
-- (\ticker_inst|Add0~85_sumout\ & (!\ticker_inst|LessThan7~1_combout\ & \ticker_inst|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan7~1_combout\,
	datad => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan7~2_combout\);

-- Location: LABCELL_X85_Y13_N0
\ticker_inst|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~5_combout\ = ( \ticker_inst|LessThan7~2_combout\ & ( \ticker_inst|LessThan7~0_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~21_sumout\) # (!\ticker_inst|Add0~25_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan7~2_combout\ & ( \ticker_inst|LessThan7~0_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|Add0~25_sumout\) # (\ticker_inst|LessThan7~3_combout\)))) ) ) ) # ( 
-- \ticker_inst|LessThan7~2_combout\ & ( !\ticker_inst|LessThan7~0_combout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) ) # ( !\ticker_inst|LessThan7~2_combout\ & ( !\ticker_inst|LessThan7~0_combout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111100001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan7~3_combout\,
	datae => \ticker_inst|ALT_INV_LessThan7~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	combout => \ticker_inst|process_0~5_combout\);

-- Location: LABCELL_X85_Y13_N18
\ticker_inst|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~8_combout\ = ( \ticker_inst|process_0~5_combout\ & ( \ticker_inst|process_0~7_combout\ & ( (!\ticker_inst|process_0~0_combout\ & ((!\ticker_inst|process_0~6_combout\) # ((!\ticker_inst|process_0~3_combout\ & 
-- \ticker_inst|process_0~4_combout\)))) ) ) ) # ( !\ticker_inst|process_0~5_combout\ & ( \ticker_inst|process_0~7_combout\ & ( (!\ticker_inst|process_0~6_combout\) # ((!\ticker_inst|process_0~3_combout\ & \ticker_inst|process_0~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100111011101100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~3_combout\,
	datab => \ticker_inst|ALT_INV_process_0~6_combout\,
	datac => \ticker_inst|ALT_INV_process_0~0_combout\,
	datad => \ticker_inst|ALT_INV_process_0~4_combout\,
	datae => \ticker_inst|ALT_INV_process_0~5_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~7_combout\,
	combout => \ticker_inst|process_0~8_combout\);

-- Location: LABCELL_X85_Y13_N51
\ticker_inst|disp_hex0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~2_combout\ = ( \ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|process_0~16_combout\ & ( 
-- !\ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( 
-- !\ticker_inst|process_0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111110000111111111111000011111101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~22_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datac => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex0~2_combout\);

-- Location: LABCELL_X88_Y13_N9
\ticker_inst|disp_hex0[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[0]~5_combout\ = ( \ticker_inst|disp_hex0[0]~3_combout\ & ( \ticker_inst|disp_hex0[0]~4_combout\ ) ) # ( !\ticker_inst|disp_hex0[0]~3_combout\ & ( \ticker_inst|disp_hex0[0]~4_combout\ ) ) # ( \ticker_inst|disp_hex0[0]~3_combout\ & ( 
-- !\ticker_inst|disp_hex0[0]~4_combout\ ) ) # ( !\ticker_inst|disp_hex0[0]~3_combout\ & ( !\ticker_inst|disp_hex0[0]~4_combout\ & ( (((!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|LessThan11~7_combout\)) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datad => \ticker_inst|ALT_INV_LessThan11~7_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex0[0]~3_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[0]~4_combout\,
	combout => \ticker_inst|disp_hex0[0]~5_combout\);

-- Location: FF_X85_Y13_N52
\ticker_inst|disp_hex0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex0~2_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(2));

-- Location: LABCELL_X85_Y13_N12
\ticker_inst|process_0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~36_combout\ = ( \ticker_inst|LessThan1~8_combout\ & ( \ticker_inst|process_0~3_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & \ticker_inst|Add0~109_sumout\) ) ) ) # ( !\ticker_inst|LessThan1~8_combout\ & ( 
-- \ticker_inst|process_0~3_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (\ticker_inst|Add0~109_sumout\)) # (\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~9_sumout\)) ) ) ) # ( \ticker_inst|LessThan1~8_combout\ & ( 
-- !\ticker_inst|process_0~3_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (\ticker_inst|Add0~109_sumout\)) # (\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & \ticker_inst|process_0~4_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan1~8_combout\ & ( !\ticker_inst|process_0~3_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (\ticker_inst|Add0~109_sumout\)) # (\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010001000100110001001100010011000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~4_combout\,
	datae => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~3_combout\,
	combout => \ticker_inst|process_0~36_combout\);

-- Location: LABCELL_X88_Y12_N48
\ticker_inst|process_0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~37_combout\ = ( \ticker_inst|process_0~15_combout\ & ( (!\ticker_inst|process_0~14_combout\) # (!\ticker_inst|process_0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_process_0~14_combout\,
	datad => \ticker_inst|ALT_INV_process_0~13_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~15_combout\,
	combout => \ticker_inst|process_0~37_combout\);

-- Location: LABCELL_X88_Y13_N48
\ticker_inst|disp_hex0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~6_combout\ = ( \ticker_inst|Add0~113_sumout\ & ( \ticker_inst|process_0~37_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( \ticker_inst|process_0~37_combout\ & ( ((!\ticker_inst|process_0~31_combout\) # 
-- ((!\ticker_inst|Add0~1_sumout\) # (!\ticker_inst|process_0~36_combout\))) # (\ticker_inst|process_0~24_combout\) ) ) ) # ( \ticker_inst|Add0~113_sumout\ & ( !\ticker_inst|process_0~37_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( 
-- !\ticker_inst|process_0~37_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # (!\ticker_inst|process_0~36_combout\)) # (\ticker_inst|process_0~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111111111111111111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~24_combout\,
	datab => \ticker_inst|ALT_INV_process_0~31_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~36_combout\,
	datae => \ticker_inst|ALT_INV_Add0~113_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~37_combout\,
	combout => \ticker_inst|disp_hex0~6_combout\);

-- Location: FF_X88_Y13_N50
\ticker_inst|disp_hex0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex0~6_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(3));

-- Location: LABCELL_X85_Y13_N36
\ticker_inst|disp_hex0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~7_combout\ = ( \ticker_inst|Add0~1_sumout\ & ( \ticker_inst|process_0~36_combout\ & ( (!\ticker_inst|process_0~24_combout\) # ((\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~31_combout\ & 
-- !\ticker_inst|process_0~33_combout\))) ) ) ) # ( !\ticker_inst|Add0~1_sumout\ & ( \ticker_inst|process_0~36_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~31_combout\ & !\ticker_inst|process_0~33_combout\)) ) ) ) # ( 
-- \ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|process_0~36_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~31_combout\ & !\ticker_inst|process_0~33_combout\)) ) ) ) # ( !\ticker_inst|Add0~1_sumout\ & ( 
-- !\ticker_inst|process_0~36_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~31_combout\ & !\ticker_inst|process_0~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000001111010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~15_combout\,
	datab => \ticker_inst|ALT_INV_process_0~31_combout\,
	datac => \ticker_inst|ALT_INV_process_0~24_combout\,
	datad => \ticker_inst|ALT_INV_process_0~33_combout\,
	datae => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~36_combout\,
	combout => \ticker_inst|disp_hex0~7_combout\);

-- Location: MLABCELL_X84_Y13_N6
\ticker_inst|process_0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~40_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~9_sumout\ ) ) ) # ( \ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~5_sumout\ & ( (\ticker_inst|Add0~13_sumout\ & 
-- (\ticker_inst|Add0~9_sumout\ & ((\ticker_inst|Add0~25_sumout\) # (\ticker_inst|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~40_combout\);

-- Location: LABCELL_X83_Y13_N24
\ticker_inst|process_0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~38_combout\ = ( !\ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~9_sumout\,
	combout => \ticker_inst|process_0~38_combout\);

-- Location: MLABCELL_X84_Y13_N24
\ticker_inst|LessThan10~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~7_combout\ = ( \ticker_inst|Add0~93_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~37_sumout\ & ((\ticker_inst|Add0~89_sumout\) # (\ticker_inst|Add0~33_sumout\)))) ) ) ) # ( 
-- !\ticker_inst|Add0~93_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~97_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~33_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan10~7_combout\);

-- Location: LABCELL_X83_Y13_N33
\ticker_inst|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~6_combout\ = ( !\ticker_inst|Add0~57_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~53_sumout\,
	combout => \ticker_inst|LessThan0~6_combout\);

-- Location: LABCELL_X85_Y14_N3
\ticker_inst|LessThan10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~5_combout\ = ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) # ( !\ticker_inst|Add0~73_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & (((\ticker_inst|Add0~69_sumout\) # (\ticker_inst|Add0~77_sumout\)) # 
-- (\ticker_inst|Add0~65_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan10~5_combout\);

-- Location: MLABCELL_X84_Y13_N18
\ticker_inst|LessThan10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~6_combout\ = ( \ticker_inst|LessThan0~6_combout\ & ( !\ticker_inst|LessThan10~5_combout\ & ( (!\ticker_inst|Add0~33_sumout\ & (!\ticker_inst|Add0~85_sumout\ & (!\ticker_inst|Add0~81_sumout\ & !\ticker_inst|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan0~6_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~5_combout\,
	combout => \ticker_inst|LessThan10~6_combout\);

-- Location: MLABCELL_X84_Y13_N30
\ticker_inst|LessThan10~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~8_combout\ = ( !\ticker_inst|Add0~21_sumout\ & ( \ticker_inst|LessThan10~6_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & !\ticker_inst|Add0~5_sumout\)) ) ) ) # ( !\ticker_inst|Add0~21_sumout\ & ( 
-- !\ticker_inst|LessThan10~6_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|LessThan10~7_combout\ & !\ticker_inst|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan10~7_combout\,
	datad => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~6_combout\,
	combout => \ticker_inst|LessThan10~8_combout\);

-- Location: MLABCELL_X84_Y13_N48
\ticker_inst|process_0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~39_combout\ = ( !\ticker_inst|LessThan9~3_combout\ & ( \ticker_inst|LessThan9~2_combout\ & ( (\ticker_inst|process_0~4_combout\ & ((!\ticker_inst|LessThan9~1_combout\) # ((!\ticker_inst|LessThan9~5_combout\ & 
-- !\ticker_inst|Add0~49_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan9~3_combout\ & ( !\ticker_inst|LessThan9~2_combout\ & ( \ticker_inst|process_0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010100010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~4_combout\,
	datab => \ticker_inst|ALT_INV_LessThan9~5_combout\,
	datac => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan9~3_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~2_combout\,
	combout => \ticker_inst|process_0~39_combout\);

-- Location: MLABCELL_X84_Y13_N36
\ticker_inst|process_0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~41_combout\ = ( \ticker_inst|LessThan1~8_combout\ & ( \ticker_inst|process_0~39_combout\ & ( (!\ticker_inst|process_0~38_combout\ & (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~40_combout\) # 
-- (\ticker_inst|LessThan10~8_combout\)))) ) ) ) # ( !\ticker_inst|LessThan1~8_combout\ & ( \ticker_inst|process_0~39_combout\ & ( (!\ticker_inst|process_0~38_combout\ & (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~40_combout\) # 
-- (\ticker_inst|LessThan10~8_combout\)))) ) ) ) # ( \ticker_inst|LessThan1~8_combout\ & ( !\ticker_inst|process_0~39_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~40_combout\) # (\ticker_inst|LessThan10~8_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan1~8_combout\ & ( !\ticker_inst|process_0~39_combout\ & ( (!\ticker_inst|process_0~38_combout\ & (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~40_combout\) # (\ticker_inst|LessThan10~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010100000111100001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~40_combout\,
	datab => \ticker_inst|ALT_INV_process_0~38_combout\,
	datac => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan10~8_combout\,
	datae => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~39_combout\,
	combout => \ticker_inst|process_0~41_combout\);

-- Location: LABCELL_X85_Y13_N48
\ticker_inst|disp_hex0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~8_combout\ = ( \ticker_inst|disp_hex0~7_combout\ & ( \ticker_inst|process_0~41_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|disp_hex0~7_combout\ & ( \ticker_inst|process_0~41_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|disp_hex0~7_combout\ & ( 
-- !\ticker_inst|process_0~41_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|disp_hex0~7_combout\ & ( 
-- !\ticker_inst|process_0~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110100001111111111110000111111111101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~22_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_disp_hex0~7_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~41_combout\,
	combout => \ticker_inst|disp_hex0~8_combout\);

-- Location: FF_X85_Y13_N49
\ticker_inst|disp_hex0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex0~8_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(4));

-- Location: LABCELL_X85_Y13_N54
\ticker_inst|disp_hex0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~9_combout\ = ( \ticker_inst|process_0~27_combout\ & ( !\ticker_inst|process_0~28_combout\ & ( (\ticker_inst|Add0~1_sumout\ & \ticker_inst|process_0~30_combout\) ) ) ) # ( !\ticker_inst|process_0~27_combout\ & ( 
-- !\ticker_inst|process_0~28_combout\ & ( (\ticker_inst|Add0~1_sumout\ & (\ticker_inst|process_0~30_combout\ & ((!\ticker_inst|process_0~7_combout\) # (\ticker_inst|process_0~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~7_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~24_combout\,
	datad => \ticker_inst|ALT_INV_process_0~30_combout\,
	datae => \ticker_inst|ALT_INV_process_0~27_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~28_combout\,
	combout => \ticker_inst|disp_hex0~9_combout\);

-- Location: LABCELL_X85_Y13_N24
\ticker_inst|disp_hex0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~10_combout\ = ( \ticker_inst|disp_hex0~9_combout\ & ( \ticker_inst|process_0~16_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|disp_hex0~9_combout\ & ( \ticker_inst|process_0~16_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|disp_hex0~9_combout\ & ( !\ticker_inst|process_0~16_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|process_0~22_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|disp_hex0~9_combout\ & ( !\ticker_inst|process_0~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100110111001111110011011100111111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~22_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex0~9_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~16_combout\,
	combout => \ticker_inst|disp_hex0~10_combout\);

-- Location: FF_X85_Y13_N25
\ticker_inst|disp_hex0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex0~10_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(6));

-- Location: LABCELL_X88_Y12_N6
\ticker_inst|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~7_combout\ = ( \ticker_inst|LessThan0~3_combout\ & ( (\ticker_inst|LessThan0~5_combout\ & (!\ticker_inst|Add0~113_sumout\ & !\ticker_inst|Add0~1_sumout\)) ) ) # ( !\ticker_inst|LessThan0~3_combout\ & ( 
-- (!\ticker_inst|Add0~113_sumout\ & (!\ticker_inst|Add0~1_sumout\ & ((\ticker_inst|LessThan0~4_combout\) # (\ticker_inst|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000010011000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	combout => \ticker_inst|LessThan0~7_combout\);

-- Location: LABCELL_X85_Y11_N12
\ticker_inst|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~8_combout\ = ( !\ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~113_sumout\,
	combout => \ticker_inst|LessThan0~8_combout\);

-- Location: LABCELL_X88_Y12_N18
\ticker_inst|LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~9_combout\ = (\ticker_inst|Add0~5_sumout\ & (((\ticker_inst|Add0~25_sumout\) # (\ticker_inst|Add0~21_sumout\)) # (\ticker_inst|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	combout => \ticker_inst|LessThan1~9_combout\);

-- Location: LABCELL_X88_Y12_N36
\ticker_inst|LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~10_combout\ = ( \ticker_inst|LessThan1~5_combout\ & ( (!\ticker_inst|LessThan1~6_combout\ & (!\ticker_inst|LessThan1~9_combout\ & !\ticker_inst|Add0~9_sumout\)) ) ) # ( !\ticker_inst|LessThan1~5_combout\ & ( 
-- (!\ticker_inst|LessThan1~9_combout\ & (!\ticker_inst|Add0~9_sumout\ & ((!\ticker_inst|Add0~97_sumout\) # (!\ticker_inst|LessThan1~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan1~6_combout\,
	datac => \ticker_inst|ALT_INV_LessThan1~9_combout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~5_combout\,
	combout => \ticker_inst|LessThan1~10_combout\);

-- Location: LABCELL_X88_Y11_N48
\ticker_inst|disp_hex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~0_combout\ = ( \ticker_inst|LessThan2~3_combout\ & ( \ticker_inst|LessThan1~10_combout\ & ( (!\ticker_inst|Add0~101_sumout\) # (!\ticker_inst|LessThan0~8_combout\) ) ) ) # ( !\ticker_inst|LessThan2~3_combout\ & ( 
-- \ticker_inst|LessThan1~10_combout\ & ( ((!\ticker_inst|Add0~101_sumout\) # ((!\ticker_inst|LessThan0~8_combout\) # (\ticker_inst|Add0~9_sumout\))) # (\ticker_inst|Add0~109_sumout\) ) ) ) # ( \ticker_inst|LessThan2~3_combout\ & ( 
-- !\ticker_inst|LessThan1~10_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # ((!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~101_sumout\)) ) ) ) # ( !\ticker_inst|LessThan2~3_combout\ & ( !\ticker_inst|LessThan1~10_combout\ & ( 
-- (!\ticker_inst|LessThan0~8_combout\) # ((!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|Add0~101_sumout\) # (\ticker_inst|Add0~9_sumout\))) # (\ticker_inst|Add0~109_sumout\ & (\ticker_inst|Add0~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110011011111111111000100011111111110111111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~10_combout\,
	combout => \ticker_inst|disp_hex1~0_combout\);

-- Location: LABCELL_X88_Y11_N42
\ticker_inst|disp_hex1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~1_combout\ = ( \ticker_inst|process_0~16_combout\ & ( \ticker_inst|disp_hex1~0_combout\ & ( (\ticker_inst|LessThan0~7_combout\) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( 
-- \ticker_inst|disp_hex1~0_combout\ & ( (((!\ticker_inst|process_0~22_combout\) # (\ticker_inst|LessThan0~7_combout\)) # (\ticker_inst|Add0~113_sumout\)) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( \ticker_inst|process_0~16_combout\ & ( 
-- !\ticker_inst|disp_hex1~0_combout\ ) ) # ( !\ticker_inst|process_0~16_combout\ & ( !\ticker_inst|disp_hex1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	datad => \ticker_inst|ALT_INV_process_0~22_combout\,
	datae => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex1~0_combout\,
	combout => \ticker_inst|disp_hex1~1_combout\);

-- Location: FF_X88_Y11_N43
\ticker_inst|disp_hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex1~1_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(2));

-- Location: MLABCELL_X87_Y11_N0
\ticker_inst|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~4_combout\ = ( \ticker_inst|process_0~18_combout\ & ( \ticker_inst|process_0~19_combout\ & ( (\ticker_inst|LessThan3~0_combout\ & (((!\ticker_inst|LessThan2~1_combout\ & \ticker_inst|LessThan2~2_combout\)) # 
-- (\ticker_inst|Add0~29_sumout\))) ) ) ) # ( \ticker_inst|process_0~18_combout\ & ( !\ticker_inst|process_0~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan2~1_combout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	datad => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~18_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~19_combout\,
	combout => \ticker_inst|LessThan2~4_combout\);

-- Location: MLABCELL_X84_Y13_N54
\ticker_inst|disp_hex1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~2_combout\ = ( \ticker_inst|process_0~11_combout\ & ( \ticker_inst|process_0~15_combout\ & ( (!\ticker_inst|process_0~33_combout\ & (!\ticker_inst|process_0~12_combout\ & !\ticker_inst|Add0~113_sumout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~11_combout\ & ( \ticker_inst|process_0~15_combout\ & ( (!\ticker_inst|process_0~33_combout\ & (!\ticker_inst|Add0~113_sumout\ & ((!\ticker_inst|process_0~12_combout\) # (\ticker_inst|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100010000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~33_combout\,
	datab => \ticker_inst|ALT_INV_process_0~0_combout\,
	datac => \ticker_inst|ALT_INV_process_0~12_combout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~11_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~15_combout\,
	combout => \ticker_inst|disp_hex1~2_combout\);

-- Location: MLABCELL_X87_Y11_N30
\ticker_inst|disp_hex1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~3_combout\ = ( \ticker_inst|LessThan2~4_combout\ & ( \ticker_inst|disp_hex1~2_combout\ & ( ((\ticker_inst|process_0~22_combout\ & \ticker_inst|LessThan0~8_combout\)) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( 
-- !\ticker_inst|LessThan2~4_combout\ & ( \ticker_inst|disp_hex1~2_combout\ & ( ((\ticker_inst|LessThan0~8_combout\ & ((!\ticker_inst|disp_hex0~0_combout\) # (\ticker_inst|process_0~22_combout\)))) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( 
-- \ticker_inst|LessThan2~4_combout\ & ( !\ticker_inst|disp_hex1~2_combout\ ) ) # ( !\ticker_inst|LessThan2~4_combout\ & ( !\ticker_inst|disp_hex1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~22_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datad => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex1~2_combout\,
	combout => \ticker_inst|disp_hex1~3_combout\);

-- Location: FF_X87_Y11_N31
\ticker_inst|disp_hex1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex1~3_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(3));

-- Location: LABCELL_X85_Y13_N42
\ticker_inst|disp_hex1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~4_combout\ = ( \ticker_inst|disp_hex0[0]~4_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) # ( !\ticker_inst|disp_hex0[0]~4_combout\ & ( 
-- (!\ticker_inst|process_0~8_combout\) # ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~8_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[0]~4_combout\,
	combout => \ticker_inst|disp_hex1~4_combout\);

-- Location: FF_X85_Y13_N43
\ticker_inst|disp_hex1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex1~4_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(4));

-- Location: MLABCELL_X87_Y11_N24
\ticker_inst|disp_hex1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~5_combout\ = ( \ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~16_combout\ & ( (((!\ticker_inst|process_0~22_combout\) # (!\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~16_combout\ & ( (((!\ticker_inst|process_0~22_combout\) # (!\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|process_0~8_combout\ & ( !\ticker_inst|process_0~16_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|process_0~22_combout\) # (!\ticker_inst|disp_hex0~1_combout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~8_combout\ & ( !\ticker_inst|process_0~16_combout\ & ( (((!\ticker_inst|process_0~22_combout\) # (!\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111110111011101010111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~22_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_process_0~8_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~16_combout\,
	combout => \ticker_inst|disp_hex1~5_combout\);

-- Location: FF_X87_Y11_N25
\ticker_inst|disp_hex1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex1~5_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(6));

-- Location: LABCELL_X88_Y12_N51
\ticker_inst|disp_hex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~0_combout\ = ( \ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|Add0~113_sumout\ & ((!\ticker_inst|LessThan0~5_combout\) # (\ticker_inst|Add0~1_sumout\))) ) ) # ( !\ticker_inst|LessThan0~3_combout\ & ( 
-- (!\ticker_inst|Add0~113_sumout\ & (((!\ticker_inst|LessThan0~4_combout\ & !\ticker_inst|LessThan0~5_combout\)) # (\ticker_inst|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000110000101100000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	combout => \ticker_inst|disp_hex2~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\ticker_inst|disp_hex2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~1_combout\ = ( \ticker_inst|disp_hex0~0_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (((!\ticker_inst|disp_hex2~0_combout\) # (!\ticker_inst|process_0~35_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|process_0~34_combout\) ) ) ) # ( !\ticker_inst|disp_hex0~0_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (((!\ticker_inst|disp_hex2~0_combout\) # (!\ticker_inst|process_0~35_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|process_0~34_combout\) ) ) ) # ( \ticker_inst|disp_hex0~0_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( (((!\ticker_inst|disp_hex2~0_combout\) # (!\ticker_inst|process_0~35_combout\)) # (\ticker_inst|Add0~1_sumout\)) # 
-- (\ticker_inst|process_0~34_combout\) ) ) ) # ( !\ticker_inst|disp_hex0~0_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # (\ticker_inst|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~34_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	datad => \ticker_inst|ALT_INV_process_0~35_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	combout => \ticker_inst|disp_hex2~1_combout\);

-- Location: FF_X88_Y12_N43
\ticker_inst|disp_hex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex2~1_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(2));

-- Location: LABCELL_X85_Y11_N57
\ticker_inst|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~9_combout\ = ( \ticker_inst|LessThan0~3_combout\ & ( !\ticker_inst|LessThan0~5_combout\ ) ) # ( !\ticker_inst|LessThan0~3_combout\ & ( !\ticker_inst|LessThan0~5_combout\ & ( !\ticker_inst|LessThan0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	datae => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	combout => \ticker_inst|LessThan0~9_combout\);

-- Location: LABCELL_X88_Y11_N36
\ticker_inst|disp_hex2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~2_combout\ = ( \ticker_inst|LessThan0~9_combout\ & ( \ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # ((!\ticker_inst|disp_hex0~0_combout\ & (!\ticker_inst|LessThan2~4_combout\ & 
-- !\ticker_inst|Add0~1_sumout\))) ) ) ) # ( !\ticker_inst|LessThan0~9_combout\ & ( \ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # (!\ticker_inst|Add0~1_sumout\) ) ) ) # ( \ticker_inst|LessThan0~9_combout\ & ( 
-- !\ticker_inst|process_0~22_combout\ ) ) # ( !\ticker_inst|LessThan0~9_combout\ & ( !\ticker_inst|process_0~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datac => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan0~9_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~22_combout\,
	combout => \ticker_inst|disp_hex2~2_combout\);

-- Location: FF_X88_Y11_N37
\ticker_inst|disp_hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex2~2_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(3));

-- Location: LABCELL_X88_Y12_N12
\ticker_inst|disp_hex2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~3_combout\ = ( \ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex2~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~22_combout\ & ( 
-- (!\ticker_inst|disp_hex2~0_combout\) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( \ticker_inst|process_0~16_combout\ & ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex2~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( 
-- !\ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # (((\ticker_inst|disp_hex0~0_combout\) # (\ticker_inst|LessThan2~4_combout\)) # (\ticker_inst|Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101010101010101010111011101110111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~22_combout\,
	combout => \ticker_inst|disp_hex2~3_combout\);

-- Location: FF_X88_Y12_N13
\ticker_inst|disp_hex2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex2~3_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(4));

-- Location: MLABCELL_X84_Y13_N0
\ticker_inst|disp_hex2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~4_combout\ = ( \ticker_inst|LessThan2~4_combout\ & ( \ticker_inst|process_0~22_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~7_combout\)) # (\ticker_inst|LessThan0~8_combout\) ) ) ) # ( 
-- !\ticker_inst|LessThan2~4_combout\ & ( \ticker_inst|process_0~22_combout\ & ( ((!\ticker_inst|LessThan0~8_combout\ & ((!\ticker_inst|disp_hex1~2_combout\))) # (\ticker_inst|LessThan0~8_combout\ & (\ticker_inst|disp_hex0~0_combout\))) # 
-- (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( \ticker_inst|LessThan2~4_combout\ & ( !\ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( !\ticker_inst|LessThan2~4_combout\ & ( 
-- !\ticker_inst|process_0~22_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\ & ((!\ticker_inst|LessThan0~8_combout\) # (\ticker_inst|disp_hex0~0_combout\)))) # (\ticker_inst|LessThan0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011111111111100001111111110110001111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_disp_hex1~2_combout\,
	datad => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~22_combout\,
	combout => \ticker_inst|disp_hex2~4_combout\);

-- Location: FF_X84_Y13_N1
\ticker_inst|disp_hex2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex2~4_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(6));

-- Location: FF_X88_Y11_N49
\ticker_inst|disp_hex3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex1~0_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(2));

-- Location: LABCELL_X88_Y11_N15
\ticker_inst|LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~11_combout\ = ( \ticker_inst|Add0~17_sumout\ & ( \ticker_inst|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~17_sumout\,
	combout => \ticker_inst|LessThan1~11_combout\);

-- Location: LABCELL_X88_Y11_N12
\ticker_inst|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~11_combout\ = ( !\ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|LessThan0~11_combout\);

-- Location: MLABCELL_X84_Y14_N48
\ticker_inst|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~10_combout\ = ( \ticker_inst|LessThan1~1_combout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & ((!\ticker_inst|LessThan0~0_combout\) # (\ticker_inst|LessThan0~2_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan0~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan0~2_combout\,
	datae => \ticker_inst|ALT_INV_LessThan1~1_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan0~10_combout\);

-- Location: LABCELL_X88_Y11_N18
\ticker_inst|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~12_combout\ = ( !\ticker_inst|Add0~9_sumout\ & ( \ticker_inst|LessThan0~10_combout\ & ( (!\ticker_inst|LessThan1~11_combout\ & (!\ticker_inst|Add0~101_sumout\ & \ticker_inst|LessThan0~11_combout\)) ) ) ) # ( 
-- !\ticker_inst|Add0~9_sumout\ & ( !\ticker_inst|LessThan0~10_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (\ticker_inst|LessThan0~11_combout\ & ((!\ticker_inst|Add0~97_sumout\) # (!\ticker_inst|LessThan1~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan1~11_combout\,
	datac => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~11_combout\,
	datae => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~10_combout\,
	combout => \ticker_inst|LessThan0~12_combout\);

-- Location: LABCELL_X88_Y11_N54
\ticker_inst|disp_hex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex3~0_combout\ = ( \ticker_inst|process_0~18_combout\ & ( \ticker_inst|LessThan0~5_combout\ ) ) # ( !\ticker_inst|process_0~18_combout\ & ( \ticker_inst|LessThan0~5_combout\ ) ) # ( \ticker_inst|process_0~18_combout\ & ( 
-- !\ticker_inst|LessThan0~5_combout\ & ( ((!\ticker_inst|LessThan2~3_combout\) # ((!\ticker_inst|LessThan0~8_combout\) # (\ticker_inst|disp_hex0~0_combout\))) # (\ticker_inst|LessThan0~12_combout\) ) ) ) # ( !\ticker_inst|process_0~18_combout\ & ( 
-- !\ticker_inst|LessThan0~5_combout\ & ( ((!\ticker_inst|LessThan0~8_combout\) # (\ticker_inst|disp_hex0~0_combout\)) # (\ticker_inst|LessThan0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~12_combout\,
	datab => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datae => \ticker_inst|ALT_INV_process_0~18_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	combout => \ticker_inst|disp_hex3~0_combout\);

-- Location: FF_X88_Y11_N55
\ticker_inst|disp_hex3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex3~0_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(3));

-- Location: MLABCELL_X87_Y11_N12
\ticker_inst|disp_hex2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~5_combout\ = ( \ticker_inst|process_0~35_combout\ & ( \ticker_inst|Add0~1_sumout\ ) ) # ( !\ticker_inst|process_0~35_combout\ & ( \ticker_inst|Add0~1_sumout\ ) ) # ( \ticker_inst|process_0~35_combout\ & ( 
-- !\ticker_inst|Add0~1_sumout\ & ( ((\ticker_inst|process_0~34_combout\ & ((\ticker_inst|disp_hex0~0_combout\) # (\ticker_inst|LessThan2~4_combout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~35_combout\ & ( 
-- !\ticker_inst|Add0~1_sumout\ & ( ((\ticker_inst|Add0~113_sumout\) # (\ticker_inst|disp_hex0~0_combout\)) # (\ticker_inst|LessThan2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111000001111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_process_0~34_combout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~35_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|disp_hex2~5_combout\);

-- Location: FF_X87_Y11_N13
\ticker_inst|disp_hex3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex2~5_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(4));

-- Location: LABCELL_X88_Y11_N30
\ticker_inst|disp_hex3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex3~1_combout\ = ( \ticker_inst|process_0~34_combout\ & ( \ticker_inst|process_0~35_combout\ ) ) # ( !\ticker_inst|process_0~34_combout\ & ( \ticker_inst|process_0~35_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # 
-- ((!\ticker_inst|disp_hex0~0_combout\ & ((!\ticker_inst|process_0~18_combout\) # (\ticker_inst|LessThan2~3_combout\)))) ) ) ) # ( \ticker_inst|process_0~34_combout\ & ( !\ticker_inst|process_0~35_combout\ ) ) # ( !\ticker_inst|process_0~34_combout\ & ( 
-- !\ticker_inst|process_0~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~18_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datae => \ticker_inst|ALT_INV_process_0~34_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~35_combout\,
	combout => \ticker_inst|disp_hex3~1_combout\);

-- Location: FF_X88_Y11_N31
\ticker_inst|disp_hex3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex3~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(6));

-- Location: LABCELL_X88_Y13_N42
\ticker_inst|disp_hex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~0_combout\ = ( \ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~16_combout\ ) ) # ( !\ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~16_combout\ ) ) # ( \ticker_inst|process_0~8_combout\ & ( 
-- !\ticker_inst|process_0~16_combout\ ) ) # ( !\ticker_inst|process_0~8_combout\ & ( !\ticker_inst|process_0~16_combout\ & ( (((!\ticker_inst|process_0~30_combout\) # (!\ticker_inst|Add0~1_sumout\)) # (\ticker_inst|Add0~113_sumout\)) # 
-- (\ticker_inst|process_0~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~28_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~30_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~8_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~16_combout\,
	combout => \ticker_inst|disp_hex4~0_combout\);

-- Location: FF_X88_Y13_N7
\ticker_inst|disp_hex4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|disp_hex4~0_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	sload => VCC,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(2));

-- Location: LABCELL_X88_Y12_N30
\ticker_inst|disp_hex4[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \ticker_inst|disp_hex4[3]~feeder_combout\);

-- Location: FF_X88_Y12_N31
\ticker_inst|disp_hex4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex4[3]~feeder_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(3));

-- Location: MLABCELL_X87_Y11_N36
\ticker_inst|disp_hex4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~1_combout\ = ( \ticker_inst|disp_hex1~0_combout\ & ( \ticker_inst|process_0~41_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # ((\ticker_inst|process_0~16_combout\) # (\ticker_inst|process_0~8_combout\))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|disp_hex1~0_combout\ & ( !\ticker_inst|process_0~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~8_combout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex1~0_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~41_combout\,
	combout => \ticker_inst|disp_hex4~1_combout\);

-- Location: FF_X87_Y11_N37
\ticker_inst|disp_hex4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex4~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(4));

-- Location: LABCELL_X88_Y12_N27
\ticker_inst|disp_hex1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~6_combout\ = ( \ticker_inst|LessThan1~10_combout\ & ( \ticker_inst|Add0~101_sumout\ & ( ((!\ticker_inst|Add0~9_sumout\ & !\ticker_inst|Add0~109_sumout\)) # (\ticker_inst|LessThan2~3_combout\) ) ) ) # ( 
-- !\ticker_inst|LessThan1~10_combout\ & ( \ticker_inst|Add0~101_sumout\ & ( ((!\ticker_inst|Add0~9_sumout\ & !\ticker_inst|Add0~109_sumout\)) # (\ticker_inst|LessThan2~3_combout\) ) ) ) # ( !\ticker_inst|LessThan1~10_combout\ & ( 
-- !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|Add0~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011011101010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan1~10_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|disp_hex1~6_combout\);

-- Location: MLABCELL_X87_Y12_N12
\ticker_inst|disp_hex4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~2_combout\ = ( \ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~41_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # ((!\ticker_inst|disp_hex1~6_combout\) # (\ticker_inst|Add0~1_sumout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~8_combout\ & ( \ticker_inst|process_0~41_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # ((!\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|disp_hex1~6_combout\)) # (\ticker_inst|Add0~1_sumout\ & 
-- ((\ticker_inst|process_0~16_combout\)))) ) ) ) # ( \ticker_inst|process_0~8_combout\ & ( !\ticker_inst|process_0~41_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # ((!\ticker_inst|disp_hex1~6_combout\) # (\ticker_inst|Add0~1_sumout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~8_combout\ & ( !\ticker_inst|process_0~41_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # ((!\ticker_inst|disp_hex1~6_combout\) # (\ticker_inst|Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111101010111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex1~6_combout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	datae => \ticker_inst|ALT_INV_process_0~8_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~41_combout\,
	combout => \ticker_inst|disp_hex4~2_combout\);

-- Location: FF_X87_Y12_N14
\ticker_inst|disp_hex4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex4~2_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(6));

-- Location: LABCELL_X85_Y13_N45
\ticker_inst|disp_hex5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex5~0_combout\ = ( \ticker_inst|process_0~41_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) # ( !\ticker_inst|process_0~41_combout\ & ( 
-- (!\ticker_inst|process_0~8_combout\) # (((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\)) # (\ticker_inst|Add0~113_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111110111111111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~8_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~41_combout\,
	combout => \ticker_inst|disp_hex5~0_combout\);

-- Location: FF_X85_Y13_N46
\ticker_inst|disp_hex5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex5~0_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(2));

-- Location: FF_X88_Y13_N44
\ticker_inst|disp_hex5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex4~0_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(3));

-- Location: LABCELL_X88_Y11_N0
\ticker_inst|process_0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~42_combout\ = ( \ticker_inst|LessThan10~4_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|LessThan10~6_combout\ & (\ticker_inst|Add0~9_sumout\ & 
-- \ticker_inst|LessThan10~7_combout\))) ) ) ) # ( !\ticker_inst|LessThan10~4_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~109_sumout\ & \ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan10~6_combout\,
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan10~7_combout\,
	datae => \ticker_inst|ALT_INV_LessThan10~4_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~29_combout\,
	combout => \ticker_inst|process_0~42_combout\);

-- Location: LABCELL_X88_Y11_N6
\ticker_inst|disp_hex0[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[0]~11_combout\ = ( \ticker_inst|process_0~42_combout\ & ( \ticker_inst|process_0~28_combout\ & ( (!\ticker_inst|process_0~24_combout\ & (!\ticker_inst|process_0~27_combout\ & \ticker_inst|process_0~7_combout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~42_combout\ & ( \ticker_inst|process_0~28_combout\ & ( (!\ticker_inst|process_0~24_combout\ & (!\ticker_inst|process_0~27_combout\ & \ticker_inst|process_0~7_combout\)) ) ) ) # ( \ticker_inst|process_0~42_combout\ & ( 
-- !\ticker_inst|process_0~28_combout\ & ( (!\ticker_inst|process_0~24_combout\ & (!\ticker_inst|process_0~27_combout\ & \ticker_inst|process_0~7_combout\)) ) ) ) # ( !\ticker_inst|process_0~42_combout\ & ( !\ticker_inst|process_0~28_combout\ & ( 
-- ((!\ticker_inst|process_0~24_combout\ & (!\ticker_inst|process_0~27_combout\ & \ticker_inst|process_0~7_combout\))) # (\ticker_inst|Add0~101_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~24_combout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~27_combout\,
	datad => \ticker_inst|ALT_INV_process_0~7_combout\,
	datae => \ticker_inst|ALT_INV_process_0~42_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~28_combout\,
	combout => \ticker_inst|disp_hex0[0]~11_combout\);

-- Location: LABCELL_X88_Y11_N27
\ticker_inst|disp_hex5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex5~1_combout\ = ( \ticker_inst|disp_hex0[0]~11_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) # ( !\ticker_inst|disp_hex0[0]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[0]~11_combout\,
	combout => \ticker_inst|disp_hex5~1_combout\);

-- Location: FF_X88_Y11_N28
\ticker_inst|disp_hex5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	d => \ticker_inst|disp_hex5~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(4));

-- Location: FF_X88_Y13_N58
\ticker_inst|disp_hex5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~inputCLKENA0_outclk\,
	asdata => \ticker_inst|disp_hex0~6_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	sload => VCC,
	ena => \ticker_inst|disp_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(6));

-- Location: IOIBUF_X36_Y0_N1
\PR_reset_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PR_reset_button,
	o => \PR_reset_button~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\PR1_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PR1_button,
	o => \PR1_button~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\dir_switch_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_switch_1,
	o => \dir_switch_1~input_o\);

-- Location: LABCELL_X22_Y26_N0
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


