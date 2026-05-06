-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/28/2026 20:42:57"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalProject IS
    PORT (
	Tx_pin : OUT std_logic;
	CLK : IN std_logic;
	KEY0 : IN std_logic
	);
END FinalProject;

-- Design Ports Information
-- Tx_pin	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FinalProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Tx_pin : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Tx_pin~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[0]~32_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[0]~32_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[15]~34_combout\ : std_logic;
SIGNAL \inst|uart_inst|busy~feeder_combout\ : std_logic;
SIGNAL \inst|uart_inst|busy~q\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~97_combout\ : std_logic;
SIGNAL \inst|send_state.IDLE~feeder_combout\ : std_logic;
SIGNAL \inst|send_state.IDLE~q\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~96_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~95_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~94_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~93_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~92_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add1~86_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add1~87_combout\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|Add1~88_combout\ : std_logic;
SIGNAL \inst|Add1~21\ : std_logic;
SIGNAL \inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|Add1~89_combout\ : std_logic;
SIGNAL \inst|Add1~23\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|Add1~90_combout\ : std_logic;
SIGNAL \inst|Add1~25\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|Add1~82_combout\ : std_logic;
SIGNAL \inst|Add1~27\ : std_logic;
SIGNAL \inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|Add1~83_combout\ : std_logic;
SIGNAL \inst|Add1~29\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|Add1~84_combout\ : std_logic;
SIGNAL \inst|Add1~31\ : std_logic;
SIGNAL \inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|Add1~85_combout\ : std_logic;
SIGNAL \inst|Add1~33\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|Add1~91_combout\ : std_logic;
SIGNAL \inst|Add1~35\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|Add1~76_combout\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add1~75_combout\ : std_logic;
SIGNAL \inst|Add1~39\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|Add1~77_combout\ : std_logic;
SIGNAL \inst|Add1~41\ : std_logic;
SIGNAL \inst|Add1~42_combout\ : std_logic;
SIGNAL \inst|Add1~78_combout\ : std_logic;
SIGNAL \inst|Add1~43\ : std_logic;
SIGNAL \inst|Add1~45\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|Add1~80_combout\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|Add1~81_combout\ : std_logic;
SIGNAL \inst|Add1~49\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|Add1~74_combout\ : std_logic;
SIGNAL \inst|Add1~51\ : std_logic;
SIGNAL \inst|Add1~52_combout\ : std_logic;
SIGNAL \inst|Add1~72_combout\ : std_logic;
SIGNAL \inst|Add1~53\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|Add1~68_combout\ : std_logic;
SIGNAL \inst|Add1~55\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|Add1~69_combout\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|Add1~70_combout\ : std_logic;
SIGNAL \inst|Add1~59\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|Add1~71_combout\ : std_logic;
SIGNAL \inst|Add1~61\ : std_logic;
SIGNAL \inst|Add1~62_combout\ : std_logic;
SIGNAL \inst|Add1~73_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Add1~63\ : std_logic;
SIGNAL \inst|Add1~64_combout\ : std_logic;
SIGNAL \inst|Add1~99_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|Add1~79_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|LessThan1~7_combout\ : std_logic;
SIGNAL \inst|LessThan1~8_combout\ : std_logic;
SIGNAL \inst|LessThan1~9_combout\ : std_logic;
SIGNAL \inst|Add1~65\ : std_logic;
SIGNAL \inst|Add1~66_combout\ : std_logic;
SIGNAL \inst|Add1~98_combout\ : std_logic;
SIGNAL \inst|LessThan1~10_combout\ : std_logic;
SIGNAL \inst|send_state~14_combout\ : std_logic;
SIGNAL \inst|Selector46~1_combout\ : std_logic;
SIGNAL \inst|Selector46~2_combout\ : std_logic;
SIGNAL \inst|send_state.SEND_STX~q\ : std_logic;
SIGNAL \inst|send_state.SEND_WAIT~q\ : std_logic;
SIGNAL \inst|Selector46~0_combout\ : std_logic;
SIGNAL \inst|Selector48~0_combout\ : std_logic;
SIGNAL \inst|Selector48~1_combout\ : std_logic;
SIGNAL \inst|send_state.SEND_ETX~q\ : std_logic;
SIGNAL \inst|Selector49~0_combout\ : std_logic;
SIGNAL \inst|send_state.WAIT_GAP~q\ : std_logic;
SIGNAL \inst|index[3]~1_combout\ : std_logic;
SIGNAL \inst|index[3]~0_combout\ : std_logic;
SIGNAL \inst|index[3]~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|index[3]~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|send_state.SEND_BODY~q\ : std_logic;
SIGNAL \inst|Selector58~0_combout\ : std_logic;
SIGNAL \inst|Selector58~1_combout\ : std_logic;
SIGNAL \inst|uart_start~q\ : std_logic;
SIGNAL \inst|uart_inst|counter[15]~35_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[0]~33\ : std_logic;
SIGNAL \inst|uart_inst|counter[1]~36_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[1]~37\ : std_logic;
SIGNAL \inst|uart_inst|counter[2]~38_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[2]~39\ : std_logic;
SIGNAL \inst|uart_inst|counter[3]~40_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[3]~41\ : std_logic;
SIGNAL \inst|uart_inst|counter[4]~42_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[4]~43\ : std_logic;
SIGNAL \inst|uart_inst|counter[5]~44_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[5]~45\ : std_logic;
SIGNAL \inst|uart_inst|counter[6]~46_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[6]~47\ : std_logic;
SIGNAL \inst|uart_inst|counter[7]~48_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[7]~49\ : std_logic;
SIGNAL \inst|uart_inst|counter[8]~50_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[8]~51\ : std_logic;
SIGNAL \inst|uart_inst|counter[9]~52_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[9]~53\ : std_logic;
SIGNAL \inst|uart_inst|counter[10]~54_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[10]~55\ : std_logic;
SIGNAL \inst|uart_inst|counter[11]~56_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[11]~57\ : std_logic;
SIGNAL \inst|uart_inst|counter[12]~58_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[12]~59\ : std_logic;
SIGNAL \inst|uart_inst|counter[13]~60_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[13]~61\ : std_logic;
SIGNAL \inst|uart_inst|counter[14]~62_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[14]~63\ : std_logic;
SIGNAL \inst|uart_inst|counter[15]~64_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[15]~65\ : std_logic;
SIGNAL \inst|uart_inst|counter[16]~66_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[16]~67\ : std_logic;
SIGNAL \inst|uart_inst|counter[17]~68_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[17]~69\ : std_logic;
SIGNAL \inst|uart_inst|counter[18]~70_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[18]~71\ : std_logic;
SIGNAL \inst|uart_inst|counter[19]~72_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[19]~73\ : std_logic;
SIGNAL \inst|uart_inst|counter[20]~74_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[20]~75\ : std_logic;
SIGNAL \inst|uart_inst|counter[21]~76_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[21]~77\ : std_logic;
SIGNAL \inst|uart_inst|counter[22]~78_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[22]~79\ : std_logic;
SIGNAL \inst|uart_inst|counter[23]~80_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[23]~81\ : std_logic;
SIGNAL \inst|uart_inst|counter[24]~82_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[24]~83\ : std_logic;
SIGNAL \inst|uart_inst|counter[25]~84_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[25]~85\ : std_logic;
SIGNAL \inst|uart_inst|counter[26]~86_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[26]~87\ : std_logic;
SIGNAL \inst|uart_inst|counter[27]~88_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[27]~89\ : std_logic;
SIGNAL \inst|uart_inst|counter[28]~90_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[28]~91\ : std_logic;
SIGNAL \inst|uart_inst|counter[29]~92_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[29]~93\ : std_logic;
SIGNAL \inst|uart_inst|counter[30]~94_combout\ : std_logic;
SIGNAL \inst|uart_inst|counter[30]~95\ : std_logic;
SIGNAL \inst|uart_inst|counter[31]~96_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[0]~33\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[1]~35_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index~34_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[1]~36\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[2]~37_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[2]~38\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[3]~39_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[3]~40\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[4]~41_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[4]~42\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[5]~43_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[5]~44\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[6]~45_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[6]~46\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[7]~47_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[7]~48\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[8]~49_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[8]~50\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[9]~51_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[9]~52\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[10]~53_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[10]~54\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[11]~55_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[11]~56\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[12]~57_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[12]~58\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[13]~59_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[13]~60\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[14]~61_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[14]~62\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[15]~63_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[15]~64\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[16]~65_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[16]~66\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[17]~67_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[17]~68\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[18]~69_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[18]~70\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[19]~71_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[19]~72\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[20]~73_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[20]~74\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[21]~75_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[21]~76\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[22]~77_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[22]~78\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[23]~79_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[23]~80\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[24]~81_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[24]~82\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[25]~83_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[25]~84\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[26]~85_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[26]~86\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[27]~87_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[27]~88\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[28]~89_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[28]~90\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[29]~91_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[29]~92\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[30]~93_combout\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[30]~94\ : std_logic;
SIGNAL \inst|uart_inst|bit_index[31]~95_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~8_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~7_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~9_combout\ : std_logic;
SIGNAL \inst|uart_inst|Equal1~10_combout\ : std_logic;
SIGNAL \inst|uart_inst|state~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|state~q\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[8]~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~3_combout\ : std_logic;
SIGNAL \inst|mode.SHOW_DECRYPT~feeder_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \inst|key0_sync1~0_combout\ : std_logic;
SIGNAL \inst|key0_sync1~q\ : std_logic;
SIGNAL \inst|key0_sync2~feeder_combout\ : std_logic;
SIGNAL \inst|key0_sync2~q\ : std_logic;
SIGNAL \inst|key0_last~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|mode.SHOW_DECRYPT~q\ : std_logic;
SIGNAL \inst|mode.SHOW_PLAIN~0_combout\ : std_logic;
SIGNAL \inst|mode.SHOW_PLAIN~q\ : std_logic;
SIGNAL \inst|mode.SHOW_ENCRYPT~0_combout\ : std_logic;
SIGNAL \inst|mode.SHOW_ENCRYPT~q\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|Selector53~1_combout\ : std_logic;
SIGNAL \inst|Selector57~0_combout\ : std_logic;
SIGNAL \inst|Selector55~1_combout\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|Selector53~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[5]~4_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|Selector51~1_combout\ : std_logic;
SIGNAL \inst|Selector51~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[7]~7_combout\ : std_logic;
SIGNAL \inst|Selector52~1_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[6]~5_combout\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|uart_data[3]~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[4]~6_combout\ : std_logic;
SIGNAL \inst|uart_inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Selector56~0_combout\ : std_logic;
SIGNAL \inst|uart_data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[2]~1_combout\ : std_logic;
SIGNAL \inst|Selector55~2_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|Selector55~0_combout\ : std_logic;
SIGNAL \inst|Selector55~3_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[3]~3_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Selector57~1_combout\ : std_logic;
SIGNAL \inst|Selector57~2_combout\ : std_logic;
SIGNAL \inst|Selector57~3_combout\ : std_logic;
SIGNAL \inst|Selector57~4_combout\ : std_logic;
SIGNAL \inst|uart_inst|shift_reg[1]~2_combout\ : std_logic;
SIGNAL \inst|uart_inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|uart_inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~4_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~5_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~feeder_combout\ : std_logic;
SIGNAL \inst|uart_inst|tx~q\ : std_logic;
SIGNAL \inst|uart_inst|bit_index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|uart_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|uart_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|uart_inst|shift_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|gap_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_send_state.WAIT_GAP~q\ : std_logic;
SIGNAL \inst|uart_inst|ALT_INV_busy~q\ : std_logic;
SIGNAL \inst|ALT_INV_send_state.SEND_BODY~q\ : std_logic;
SIGNAL \inst|uart_inst|ALT_INV_state~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Tx_pin <= ww_Tx_pin;
ww_CLK <= CLK;
ww_KEY0 <= KEY0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_send_state.WAIT_GAP~q\ <= NOT \inst|send_state.WAIT_GAP~q\;
\inst|uart_inst|ALT_INV_busy~q\ <= NOT \inst|uart_inst|busy~q\;
\inst|ALT_INV_send_state.SEND_BODY~q\ <= NOT \inst|send_state.SEND_BODY~q\;
\inst|uart_inst|ALT_INV_state~q\ <= NOT \inst|uart_inst|state~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y0_N16
\Tx_pin~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|uart_inst|tx~q\,
	devoe => ww_devoe,
	o => \Tx_pin~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X38_Y29_N0
\inst|uart_inst|bit_index[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[0]~32_combout\ = \inst|uart_inst|bit_index\(0) $ (VCC)
-- \inst|uart_inst|bit_index[0]~33\ = CARRY(\inst|uart_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(0),
	datad => VCC,
	combout => \inst|uart_inst|bit_index[0]~32_combout\,
	cout => \inst|uart_inst|bit_index[0]~33\);

-- Location: LCCOMB_X36_Y29_N0
\inst|uart_inst|counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[0]~32_combout\ = \inst|uart_inst|counter\(0) $ (VCC)
-- \inst|uart_inst|counter[0]~33\ = CARRY(\inst|uart_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(0),
	datad => VCC,
	combout => \inst|uart_inst|counter[0]~32_combout\,
	cout => \inst|uart_inst|counter[0]~33\);

-- Location: LCCOMB_X37_Y29_N28
\inst|uart_inst|counter[15]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[15]~34_combout\ = (!\inst|uart_inst|Equal0~10_combout\) # (!\inst|uart_inst|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_inst|state~q\,
	datad => \inst|uart_inst|Equal0~10_combout\,
	combout => \inst|uart_inst|counter[15]~34_combout\);

-- Location: LCCOMB_X40_Y29_N16
\inst|uart_inst|busy~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|busy~feeder_combout\ = \inst|uart_inst|counter[15]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_inst|counter[15]~35_combout\,
	combout => \inst|uart_inst|busy~feeder_combout\);

-- Location: FF_X40_Y29_N17
\inst|uart_inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|busy~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|busy~q\);

-- Location: LCCOMB_X40_Y31_N28
\inst|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\inst|send_state.SEND_BODY~q\ & !\inst|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_BODY~q\,
	datac => \inst|index\(0),
	combout => \inst|Selector11~0_combout\);

-- Location: LCCOMB_X41_Y33_N0
\inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = \inst|gap_counter\(0) $ (VCC)
-- \inst|Add1~5\ = CARRY(\inst|gap_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(0),
	datad => VCC,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X40_Y33_N6
\inst|Add1~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~97_combout\ = (\inst|Add1~4_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~97_combout\);

-- Location: LCCOMB_X40_Y32_N6
\inst|send_state.IDLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|send_state.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|send_state.IDLE~feeder_combout\);

-- Location: FF_X40_Y32_N7
\inst|send_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|send_state.IDLE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.IDLE~q\);

-- Location: LCCOMB_X40_Y32_N2
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|send_state.WAIT_GAP~q\) # (!\inst|send_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.IDLE~q\,
	datad => \inst|send_state.WAIT_GAP~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: FF_X41_Y33_N7
\inst|gap_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~97_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(0));

-- Location: LCCOMB_X41_Y33_N2
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|gap_counter\(1) & (!\inst|Add1~5\)) # (!\inst|gap_counter\(1) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|gap_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(1),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X40_Y33_N0
\inst|Add1~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~96_combout\ = (\inst|Add1~6_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~6_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~96_combout\);

-- Location: FF_X41_Y33_N19
\inst|gap_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~96_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(1));

-- Location: LCCOMB_X41_Y33_N4
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|gap_counter\(2) & (\inst|Add1~7\ $ (GND))) # (!\inst|gap_counter\(2) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|gap_counter\(2) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(2),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X42_Y33_N14
\inst|Add1~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~95_combout\ = (\inst|Add1~8_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~8_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~95_combout\);

-- Location: FF_X41_Y33_N23
\inst|gap_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~95_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(2));

-- Location: LCCOMB_X41_Y33_N6
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|gap_counter\(3) & (!\inst|Add1~9\)) # (!\inst|gap_counter\(3) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|gap_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(3),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X42_Y33_N8
\inst|Add1~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~94_combout\ = (\inst|Add1~10_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~10_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~94_combout\);

-- Location: FF_X41_Y33_N31
\inst|gap_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~94_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(3));

-- Location: LCCOMB_X41_Y33_N8
\inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|gap_counter\(4) & (\inst|Add1~11\ $ (GND))) # (!\inst|gap_counter\(4) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|gap_counter\(4) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(4),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X40_Y33_N26
\inst|Add1~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~93_combout\ = (\inst|Add1~12_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~12_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~93_combout\);

-- Location: FF_X41_Y33_N13
\inst|gap_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~93_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(4));

-- Location: LCCOMB_X41_Y33_N10
\inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|gap_counter\(5) & (!\inst|Add1~13\)) # (!\inst|gap_counter\(5) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|gap_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(5),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X40_Y33_N16
\inst|Add1~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~92_combout\ = (\inst|Add1~14_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~14_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~92_combout\);

-- Location: FF_X41_Y33_N25
\inst|gap_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Add1~92_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	sload => VCC,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(5));

-- Location: LCCOMB_X41_Y33_N12
\inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|gap_counter\(6) & (\inst|Add1~15\ $ (GND))) # (!\inst|gap_counter\(6) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|gap_counter\(6) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(6),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X42_Y33_N20
\inst|Add1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~86_combout\ = (\inst|Add1~16_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~16_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~86_combout\);

-- Location: FF_X42_Y33_N21
\inst|gap_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~86_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(6));

-- Location: LCCOMB_X41_Y33_N14
\inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|gap_counter\(7) & (!\inst|Add1~17\)) # (!\inst|gap_counter\(7) & ((\inst|Add1~17\) # (GND)))
-- \inst|Add1~19\ = CARRY((!\inst|Add1~17\) # (!\inst|gap_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(7),
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: LCCOMB_X42_Y33_N6
\inst|Add1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~87_combout\ = (\inst|Add1~18_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~18_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~87_combout\);

-- Location: FF_X42_Y33_N7
\inst|gap_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~87_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(7));

-- Location: LCCOMB_X41_Y33_N16
\inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\inst|gap_counter\(8) & (\inst|Add1~19\ $ (GND))) # (!\inst|gap_counter\(8) & (!\inst|Add1~19\ & VCC))
-- \inst|Add1~21\ = CARRY((\inst|gap_counter\(8) & !\inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(8),
	datad => VCC,
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\,
	cout => \inst|Add1~21\);

-- Location: LCCOMB_X42_Y33_N12
\inst|Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~88_combout\ = (\inst|Add1~20_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~20_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~88_combout\);

-- Location: FF_X42_Y33_N13
\inst|gap_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~88_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(8));

-- Location: LCCOMB_X41_Y33_N18
\inst|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~22_combout\ = (\inst|gap_counter\(9) & (!\inst|Add1~21\)) # (!\inst|gap_counter\(9) & ((\inst|Add1~21\) # (GND)))
-- \inst|Add1~23\ = CARRY((!\inst|Add1~21\) # (!\inst|gap_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(9),
	datad => VCC,
	cin => \inst|Add1~21\,
	combout => \inst|Add1~22_combout\,
	cout => \inst|Add1~23\);

-- Location: LCCOMB_X42_Y33_N22
\inst|Add1~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~89_combout\ = (\inst|Add1~22_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~22_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~89_combout\);

-- Location: FF_X42_Y33_N23
\inst|gap_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~89_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(9));

-- Location: LCCOMB_X41_Y33_N20
\inst|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\inst|gap_counter\(10) & (\inst|Add1~23\ $ (GND))) # (!\inst|gap_counter\(10) & (!\inst|Add1~23\ & VCC))
-- \inst|Add1~25\ = CARRY((\inst|gap_counter\(10) & !\inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(10),
	datad => VCC,
	cin => \inst|Add1~23\,
	combout => \inst|Add1~24_combout\,
	cout => \inst|Add1~25\);

-- Location: LCCOMB_X42_Y33_N16
\inst|Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~90_combout\ = (\inst|Add1~24_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~24_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~90_combout\);

-- Location: FF_X42_Y33_N17
\inst|gap_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~90_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(10));

-- Location: LCCOMB_X41_Y33_N22
\inst|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\inst|gap_counter\(11) & (!\inst|Add1~25\)) # (!\inst|gap_counter\(11) & ((\inst|Add1~25\) # (GND)))
-- \inst|Add1~27\ = CARRY((!\inst|Add1~25\) # (!\inst|gap_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(11),
	datad => VCC,
	cin => \inst|Add1~25\,
	combout => \inst|Add1~26_combout\,
	cout => \inst|Add1~27\);

-- Location: LCCOMB_X42_Y33_N24
\inst|Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~82_combout\ = (\inst|Add1~26_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~26_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~82_combout\);

-- Location: FF_X42_Y33_N25
\inst|gap_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~82_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(11));

-- Location: LCCOMB_X41_Y33_N24
\inst|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~28_combout\ = (\inst|gap_counter\(12) & (\inst|Add1~27\ $ (GND))) # (!\inst|gap_counter\(12) & (!\inst|Add1~27\ & VCC))
-- \inst|Add1~29\ = CARRY((\inst|gap_counter\(12) & !\inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(12),
	datad => VCC,
	cin => \inst|Add1~27\,
	combout => \inst|Add1~28_combout\,
	cout => \inst|Add1~29\);

-- Location: LCCOMB_X42_Y33_N10
\inst|Add1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~83_combout\ = (\inst|Add1~28_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~28_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~83_combout\);

-- Location: FF_X42_Y33_N11
\inst|gap_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~83_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(12));

-- Location: LCCOMB_X41_Y33_N26
\inst|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\inst|gap_counter\(13) & (!\inst|Add1~29\)) # (!\inst|gap_counter\(13) & ((\inst|Add1~29\) # (GND)))
-- \inst|Add1~31\ = CARRY((!\inst|Add1~29\) # (!\inst|gap_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(13),
	datad => VCC,
	cin => \inst|Add1~29\,
	combout => \inst|Add1~30_combout\,
	cout => \inst|Add1~31\);

-- Location: LCCOMB_X42_Y33_N4
\inst|Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~84_combout\ = (\inst|Add1~30_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~30_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~84_combout\);

-- Location: FF_X42_Y33_N5
\inst|gap_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~84_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(13));

-- Location: LCCOMB_X41_Y33_N28
\inst|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~32_combout\ = (\inst|gap_counter\(14) & (\inst|Add1~31\ $ (GND))) # (!\inst|gap_counter\(14) & (!\inst|Add1~31\ & VCC))
-- \inst|Add1~33\ = CARRY((\inst|gap_counter\(14) & !\inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(14),
	datad => VCC,
	cin => \inst|Add1~31\,
	combout => \inst|Add1~32_combout\,
	cout => \inst|Add1~33\);

-- Location: LCCOMB_X42_Y33_N18
\inst|Add1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~85_combout\ = (\inst|Add1~32_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|Add1~32_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~85_combout\);

-- Location: FF_X42_Y33_N19
\inst|gap_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~85_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(14));

-- Location: LCCOMB_X41_Y33_N30
\inst|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\inst|gap_counter\(15) & (!\inst|Add1~33\)) # (!\inst|gap_counter\(15) & ((\inst|Add1~33\) # (GND)))
-- \inst|Add1~35\ = CARRY((!\inst|Add1~33\) # (!\inst|gap_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(15),
	datad => VCC,
	cin => \inst|Add1~33\,
	combout => \inst|Add1~34_combout\,
	cout => \inst|Add1~35\);

-- Location: LCCOMB_X40_Y33_N22
\inst|Add1~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~91_combout\ = (\inst|Add1~34_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~34_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~91_combout\);

-- Location: FF_X40_Y33_N23
\inst|gap_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~91_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(15));

-- Location: LCCOMB_X41_Y32_N0
\inst|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|gap_counter\(16) & (\inst|Add1~35\ $ (GND))) # (!\inst|gap_counter\(16) & (!\inst|Add1~35\ & VCC))
-- \inst|Add1~37\ = CARRY((\inst|gap_counter\(16) & !\inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(16),
	datad => VCC,
	cin => \inst|Add1~35\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X40_Y33_N30
\inst|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~76_combout\ = (\inst|Add1~36_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~9_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|Add1~36_combout\,
	combout => \inst|Add1~76_combout\);

-- Location: FF_X40_Y33_N31
\inst|gap_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~76_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(16));

-- Location: LCCOMB_X41_Y32_N2
\inst|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|gap_counter\(17) & (!\inst|Add1~37\)) # (!\inst|gap_counter\(17) & ((\inst|Add1~37\) # (GND)))
-- \inst|Add1~39\ = CARRY((!\inst|Add1~37\) # (!\inst|gap_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(17),
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~38_combout\,
	cout => \inst|Add1~39\);

-- Location: LCCOMB_X40_Y33_N28
\inst|Add1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~75_combout\ = (\inst|Add1~38_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~9_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|Add1~38_combout\,
	combout => \inst|Add1~75_combout\);

-- Location: FF_X40_Y33_N29
\inst|gap_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~75_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(17));

-- Location: LCCOMB_X41_Y32_N4
\inst|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\inst|gap_counter\(18) & (\inst|Add1~39\ $ (GND))) # (!\inst|gap_counter\(18) & (!\inst|Add1~39\ & VCC))
-- \inst|Add1~41\ = CARRY((\inst|gap_counter\(18) & !\inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(18),
	datad => VCC,
	cin => \inst|Add1~39\,
	combout => \inst|Add1~40_combout\,
	cout => \inst|Add1~41\);

-- Location: LCCOMB_X40_Y33_N4
\inst|Add1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~77_combout\ = (\inst|Add1~40_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~9_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|Add1~40_combout\,
	combout => \inst|Add1~77_combout\);

-- Location: FF_X40_Y33_N5
\inst|gap_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~77_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(18));

-- Location: LCCOMB_X41_Y32_N6
\inst|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~42_combout\ = (\inst|gap_counter\(19) & (!\inst|Add1~41\)) # (!\inst|gap_counter\(19) & ((\inst|Add1~41\) # (GND)))
-- \inst|Add1~43\ = CARRY((!\inst|Add1~41\) # (!\inst|gap_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(19),
	datad => VCC,
	cin => \inst|Add1~41\,
	combout => \inst|Add1~42_combout\,
	cout => \inst|Add1~43\);

-- Location: LCCOMB_X40_Y33_N18
\inst|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~78_combout\ = (\inst|Add1~42_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~9_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|Add1~42_combout\,
	combout => \inst|Add1~78_combout\);

-- Location: FF_X40_Y33_N19
\inst|gap_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~78_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(19));

-- Location: LCCOMB_X41_Y32_N8
\inst|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|gap_counter\(20) & (\inst|Add1~43\ $ (GND))) # (!\inst|gap_counter\(20) & (!\inst|Add1~43\ & VCC))
-- \inst|Add1~45\ = CARRY((\inst|gap_counter\(20) & !\inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(20),
	datad => VCC,
	cin => \inst|Add1~43\,
	combout => \inst|Add1~44_combout\,
	cout => \inst|Add1~45\);

-- Location: LCCOMB_X41_Y32_N10
\inst|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\inst|gap_counter\(21) & (!\inst|Add1~45\)) # (!\inst|gap_counter\(21) & ((\inst|Add1~45\) # (GND)))
-- \inst|Add1~47\ = CARRY((!\inst|Add1~45\) # (!\inst|gap_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(21),
	datad => VCC,
	cin => \inst|Add1~45\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: LCCOMB_X40_Y33_N14
\inst|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~80_combout\ = (\inst|Add1~46_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~46_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~80_combout\);

-- Location: FF_X40_Y33_N15
\inst|gap_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~80_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(21));

-- Location: LCCOMB_X41_Y32_N12
\inst|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|gap_counter\(22) & (\inst|Add1~47\ $ (GND))) # (!\inst|gap_counter\(22) & (!\inst|Add1~47\ & VCC))
-- \inst|Add1~49\ = CARRY((\inst|gap_counter\(22) & !\inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(22),
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~48_combout\,
	cout => \inst|Add1~49\);

-- Location: LCCOMB_X40_Y33_N24
\inst|Add1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~81_combout\ = (\inst|Add1~48_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~1_combout\) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Add1~48_combout\,
	datad => \inst|LessThan1~9_combout\,
	combout => \inst|Add1~81_combout\);

-- Location: FF_X40_Y33_N25
\inst|gap_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~81_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(22));

-- Location: LCCOMB_X41_Y32_N14
\inst|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|gap_counter\(23) & (!\inst|Add1~49\)) # (!\inst|gap_counter\(23) & ((\inst|Add1~49\) # (GND)))
-- \inst|Add1~51\ = CARRY((!\inst|Add1~49\) # (!\inst|gap_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(23),
	datad => VCC,
	cin => \inst|Add1~49\,
	combout => \inst|Add1~50_combout\,
	cout => \inst|Add1~51\);

-- Location: LCCOMB_X40_Y32_N12
\inst|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~74_combout\ = (\inst|Add1~50_combout\ & ((\inst|LessThan1~9_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~9_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|Add1~50_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|Add1~74_combout\);

-- Location: FF_X40_Y32_N13
\inst|gap_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~74_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(23));

-- Location: LCCOMB_X41_Y32_N16
\inst|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~52_combout\ = (\inst|gap_counter\(24) & (\inst|Add1~51\ $ (GND))) # (!\inst|gap_counter\(24) & (!\inst|Add1~51\ & VCC))
-- \inst|Add1~53\ = CARRY((\inst|gap_counter\(24) & !\inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(24),
	datad => VCC,
	cin => \inst|Add1~51\,
	combout => \inst|Add1~52_combout\,
	cout => \inst|Add1~53\);

-- Location: LCCOMB_X40_Y32_N26
\inst|Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~72_combout\ = (\inst|Add1~52_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~52_combout\,
	combout => \inst|Add1~72_combout\);

-- Location: FF_X40_Y32_N27
\inst|gap_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~72_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(24));

-- Location: LCCOMB_X41_Y32_N18
\inst|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|gap_counter\(25) & (!\inst|Add1~53\)) # (!\inst|gap_counter\(25) & ((\inst|Add1~53\) # (GND)))
-- \inst|Add1~55\ = CARRY((!\inst|Add1~53\) # (!\inst|gap_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(25),
	datad => VCC,
	cin => \inst|Add1~53\,
	combout => \inst|Add1~54_combout\,
	cout => \inst|Add1~55\);

-- Location: LCCOMB_X40_Y32_N14
\inst|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~68_combout\ = (\inst|Add1~54_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~54_combout\,
	combout => \inst|Add1~68_combout\);

-- Location: FF_X40_Y32_N15
\inst|gap_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~68_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(25));

-- Location: LCCOMB_X41_Y32_N20
\inst|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|gap_counter\(26) & (\inst|Add1~55\ $ (GND))) # (!\inst|gap_counter\(26) & (!\inst|Add1~55\ & VCC))
-- \inst|Add1~57\ = CARRY((\inst|gap_counter\(26) & !\inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(26),
	datad => VCC,
	cin => \inst|Add1~55\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: LCCOMB_X40_Y32_N16
\inst|Add1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~69_combout\ = (\inst|Add1~56_combout\ & ((\inst|LessThan1~9_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~9_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|Add1~56_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|Add1~69_combout\);

-- Location: FF_X40_Y32_N17
\inst|gap_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~69_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(26));

-- Location: LCCOMB_X41_Y32_N22
\inst|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\inst|gap_counter\(27) & (!\inst|Add1~57\)) # (!\inst|gap_counter\(27) & ((\inst|Add1~57\) # (GND)))
-- \inst|Add1~59\ = CARRY((!\inst|Add1~57\) # (!\inst|gap_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(27),
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~58_combout\,
	cout => \inst|Add1~59\);

-- Location: LCCOMB_X40_Y32_N22
\inst|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~70_combout\ = (\inst|Add1~58_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~58_combout\,
	combout => \inst|Add1~70_combout\);

-- Location: FF_X40_Y32_N23
\inst|gap_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~70_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(27));

-- Location: LCCOMB_X41_Y32_N24
\inst|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = (\inst|gap_counter\(28) & (\inst|Add1~59\ $ (GND))) # (!\inst|gap_counter\(28) & (!\inst|Add1~59\ & VCC))
-- \inst|Add1~61\ = CARRY((\inst|gap_counter\(28) & !\inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(28),
	datad => VCC,
	cin => \inst|Add1~59\,
	combout => \inst|Add1~60_combout\,
	cout => \inst|Add1~61\);

-- Location: LCCOMB_X40_Y32_N4
\inst|Add1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~71_combout\ = (\inst|Add1~60_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~60_combout\,
	combout => \inst|Add1~71_combout\);

-- Location: FF_X40_Y32_N5
\inst|gap_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~71_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(28));

-- Location: LCCOMB_X41_Y32_N26
\inst|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~62_combout\ = (\inst|gap_counter\(29) & (!\inst|Add1~61\)) # (!\inst|gap_counter\(29) & ((\inst|Add1~61\) # (GND)))
-- \inst|Add1~63\ = CARRY((!\inst|Add1~61\) # (!\inst|gap_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(29),
	datad => VCC,
	cin => \inst|Add1~61\,
	combout => \inst|Add1~62_combout\,
	cout => \inst|Add1~63\);

-- Location: LCCOMB_X40_Y32_N20
\inst|Add1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~73_combout\ = (\inst|Add1~62_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~62_combout\,
	combout => \inst|Add1~73_combout\);

-- Location: FF_X40_Y32_N21
\inst|gap_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~73_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(29));

-- Location: LCCOMB_X40_Y32_N8
\inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|gap_counter\(27) & (!\inst|gap_counter\(28) & (!\inst|gap_counter\(25) & !\inst|gap_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(27),
	datab => \inst|gap_counter\(28),
	datac => \inst|gap_counter\(25),
	datad => \inst|gap_counter\(26),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y32_N28
\inst|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~64_combout\ = (\inst|gap_counter\(30) & (\inst|Add1~63\ $ (GND))) # (!\inst|gap_counter\(30) & (!\inst|Add1~63\ & VCC))
-- \inst|Add1~65\ = CARRY((\inst|gap_counter\(30) & !\inst|Add1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(30),
	datad => VCC,
	cin => \inst|Add1~63\,
	combout => \inst|Add1~64_combout\,
	cout => \inst|Add1~65\);

-- Location: LCCOMB_X40_Y32_N10
\inst|Add1~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~99_combout\ = (\inst|Add1~64_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|gap_counter\(31)) # (\inst|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|Add1~64_combout\,
	combout => \inst|Add1~99_combout\);

-- Location: FF_X40_Y32_N11
\inst|gap_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~99_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(30));

-- Location: LCCOMB_X40_Y32_N18
\inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|gap_counter\(24) & (!\inst|gap_counter\(29) & (\inst|LessThan1~0_combout\ & !\inst|gap_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(24),
	datab => \inst|gap_counter\(29),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|gap_counter\(30),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y33_N20
\inst|Add1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~79_combout\ = (\inst|Add1~44_combout\ & ((\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(31),
	datab => \inst|LessThan1~9_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|Add1~44_combout\,
	combout => \inst|Add1~79_combout\);

-- Location: FF_X40_Y33_N21
\inst|gap_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~79_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(20));

-- Location: LCCOMB_X40_Y33_N8
\inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (((!\inst|gap_counter\(16) & !\inst|gap_counter\(17))) # (!\inst|gap_counter\(19))) # (!\inst|gap_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(16),
	datab => \inst|gap_counter\(17),
	datac => \inst|gap_counter\(18),
	datad => \inst|gap_counter\(19),
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X40_Y33_N10
\inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (((\inst|LessThan1~3_combout\) # (!\inst|gap_counter\(22))) # (!\inst|gap_counter\(21))) # (!\inst|gap_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(20),
	datab => \inst|gap_counter\(21),
	datac => \inst|LessThan1~3_combout\,
	datad => \inst|gap_counter\(22),
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X40_Y32_N0
\inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (!\inst|gap_counter\(23) & (!\inst|gap_counter\(29) & (\inst|LessThan1~0_combout\ & !\inst|gap_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(23),
	datab => \inst|gap_counter\(29),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|gap_counter\(30),
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X42_Y33_N30
\inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (((!\inst|gap_counter\(14)) # (!\inst|gap_counter\(13))) # (!\inst|gap_counter\(11))) # (!\inst|gap_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(12),
	datab => \inst|gap_counter\(11),
	datac => \inst|gap_counter\(13),
	datad => \inst|gap_counter\(14),
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X42_Y33_N28
\inst|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = (!\inst|gap_counter\(8) & (!\inst|gap_counter\(6) & (!\inst|gap_counter\(9) & !\inst|gap_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|gap_counter\(8),
	datab => \inst|gap_counter\(6),
	datac => \inst|gap_counter\(9),
	datad => \inst|gap_counter\(7),
	combout => \inst|LessThan1~6_combout\);

-- Location: LCCOMB_X42_Y33_N2
\inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_combout\ = (\inst|LessThan1~5_combout\) # ((!\inst|gap_counter\(10) & \inst|LessThan1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(10),
	datac => \inst|LessThan1~5_combout\,
	datad => \inst|LessThan1~6_combout\,
	combout => \inst|LessThan1~7_combout\);

-- Location: LCCOMB_X40_Y33_N12
\inst|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~8_combout\ = (!\inst|gap_counter\(15) & !\inst|gap_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|gap_counter\(15),
	datad => \inst|gap_counter\(17),
	combout => \inst|LessThan1~8_combout\);

-- Location: LCCOMB_X40_Y33_N2
\inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_combout\ = (\inst|LessThan1~2_combout\ & ((\inst|LessThan1~4_combout\) # ((\inst|LessThan1~7_combout\ & \inst|LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~4_combout\,
	datab => \inst|LessThan1~2_combout\,
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|LessThan1~8_combout\,
	combout => \inst|LessThan1~9_combout\);

-- Location: LCCOMB_X41_Y32_N30
\inst|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~66_combout\ = \inst|Add1~65\ $ (\inst|gap_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|gap_counter\(31),
	cin => \inst|Add1~65\,
	combout => \inst|Add1~66_combout\);

-- Location: LCCOMB_X40_Y32_N24
\inst|Add1~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~98_combout\ = (\inst|Add1~66_combout\ & ((\inst|LessThan1~9_combout\) # ((\inst|LessThan1~1_combout\) # (\inst|gap_counter\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~9_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|gap_counter\(31),
	datad => \inst|Add1~66_combout\,
	combout => \inst|Add1~98_combout\);

-- Location: FF_X40_Y32_N25
\inst|gap_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~98_combout\,
	sclr => \inst|ALT_INV_send_state.WAIT_GAP~q\,
	ena => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|gap_counter\(31));

-- Location: LCCOMB_X40_Y32_N30
\inst|LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~10_combout\ = (\inst|gap_counter\(31)) # ((\inst|LessThan1~9_combout\) # (\inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|gap_counter\(31),
	datac => \inst|LessThan1~9_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~10_combout\);

-- Location: LCCOMB_X40_Y31_N12
\inst|send_state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|send_state~14_combout\ = (!\inst|LessThan0~0_combout\ & (\inst|send_state.SEND_BODY~q\ & !\inst|uart_inst|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datac => \inst|send_state.SEND_BODY~q\,
	datad => \inst|uart_inst|busy~q\,
	combout => \inst|send_state~14_combout\);

-- Location: LCCOMB_X40_Y31_N2
\inst|Selector46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector46~1_combout\ = ((!\inst|Selector46~0_combout\ & (\inst|send_state.SEND_STX~q\ & !\inst|send_state~14_combout\))) # (!\inst|send_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector46~0_combout\,
	datab => \inst|send_state.SEND_STX~q\,
	datac => \inst|send_state.IDLE~q\,
	datad => \inst|send_state~14_combout\,
	combout => \inst|Selector46~1_combout\);

-- Location: LCCOMB_X40_Y31_N10
\inst|Selector46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector46~2_combout\ = (\inst|Selector46~1_combout\) # ((\inst|send_state.WAIT_GAP~q\ & !\inst|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.WAIT_GAP~q\,
	datac => \inst|LessThan1~10_combout\,
	datad => \inst|Selector46~1_combout\,
	combout => \inst|Selector46~2_combout\);

-- Location: FF_X40_Y31_N11
\inst|send_state.SEND_STX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector46~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.SEND_STX~q\);

-- Location: FF_X39_Y31_N11
\inst|send_state.SEND_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|send_state.SEND_STX~q\,
	sload => VCC,
	ena => \inst|uart_inst|ALT_INV_busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.SEND_WAIT~q\);

-- Location: LCCOMB_X40_Y31_N6
\inst|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector46~0_combout\ = (!\inst|uart_inst|busy~q\ & ((\inst|send_state.SEND_STX~q\) # ((\inst|send_state.SEND_ETX~q\) # (\inst|send_state.SEND_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_STX~q\,
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_ETX~q\,
	datad => \inst|send_state.SEND_WAIT~q\,
	combout => \inst|Selector46~0_combout\);

-- Location: LCCOMB_X40_Y31_N24
\inst|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector48~0_combout\ = (\inst|send_state~14_combout\) # ((\inst|send_state.SEND_ETX~q\ & (!\inst|Selector46~0_combout\ & \inst|send_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_ETX~q\,
	datab => \inst|Selector46~0_combout\,
	datac => \inst|send_state.IDLE~q\,
	datad => \inst|send_state~14_combout\,
	combout => \inst|Selector48~0_combout\);

-- Location: LCCOMB_X40_Y31_N26
\inst|Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector48~1_combout\ = (\inst|Selector48~0_combout\ & ((\inst|LessThan1~10_combout\) # (!\inst|send_state.WAIT_GAP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.WAIT_GAP~q\,
	datac => \inst|LessThan1~10_combout\,
	datad => \inst|Selector48~0_combout\,
	combout => \inst|Selector48~1_combout\);

-- Location: FF_X40_Y31_N27
\inst|send_state.SEND_ETX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.SEND_ETX~q\);

-- Location: LCCOMB_X40_Y32_N28
\inst|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector49~0_combout\ = (\inst|send_state.SEND_ETX~q\ & (((\inst|send_state.WAIT_GAP~q\ & \inst|LessThan1~10_combout\)) # (!\inst|uart_inst|busy~q\))) # (!\inst|send_state.SEND_ETX~q\ & (((\inst|send_state.WAIT_GAP~q\ & 
-- \inst|LessThan1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_ETX~q\,
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.WAIT_GAP~q\,
	datad => \inst|LessThan1~10_combout\,
	combout => \inst|Selector49~0_combout\);

-- Location: FF_X40_Y32_N29
\inst|send_state.WAIT_GAP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.WAIT_GAP~q\);

-- Location: LCCOMB_X40_Y31_N14
\inst|index[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[3]~1_combout\ = (\inst|send_state.SEND_STX~q\) # ((\inst|send_state.SEND_ETX~q\) # ((\inst|send_state.SEND_WAIT~q\ & \inst|uart_inst|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_WAIT~q\,
	datab => \inst|send_state.SEND_STX~q\,
	datac => \inst|send_state.SEND_ETX~q\,
	datad => \inst|uart_inst|busy~q\,
	combout => \inst|index[3]~1_combout\);

-- Location: LCCOMB_X40_Y31_N0
\inst|index[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[3]~0_combout\ = (\inst|send_state.SEND_BODY~q\ & ((\inst|uart_inst|busy~q\) # (!\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_BODY~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|index[3]~0_combout\);

-- Location: LCCOMB_X40_Y31_N16
\inst|index[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[3]~2_combout\ = (!\inst|send_state.WAIT_GAP~q\ & (!\inst|index[3]~1_combout\ & !\inst|index[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.WAIT_GAP~q\,
	datac => \inst|index[3]~1_combout\,
	datad => \inst|index[3]~0_combout\,
	combout => \inst|index[3]~2_combout\);

-- Location: FF_X40_Y31_N29
\inst|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector11~0_combout\,
	ena => \inst|index[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(0));

-- Location: LCCOMB_X40_Y31_N8
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|index\(1) $ (\inst|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Add0~0_combout\);

-- Location: FF_X40_Y31_N9
\inst|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	sclr => \inst|ALT_INV_send_state.SEND_BODY~q\,
	ena => \inst|index[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(1));

-- Location: LCCOMB_X40_Y31_N30
\inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \inst|index\(2) $ (((\inst|index\(1) & \inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(1),
	datac => \inst|index\(2),
	datad => \inst|index\(0),
	combout => \inst|Add0~1_combout\);

-- Location: FF_X40_Y31_N31
\inst|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~1_combout\,
	sclr => \inst|ALT_INV_send_state.SEND_BODY~q\,
	ena => \inst|index[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(2));

-- Location: LCCOMB_X39_Y31_N30
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \inst|index\(3) $ (((\inst|index\(2) & (\inst|index\(1) & \inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|index\(3),
	datad => \inst|index\(0),
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X39_Y31_N4
\inst|index[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[3]~3_combout\ = (\inst|index[3]~2_combout\ & (\inst|Add0~2_combout\ & (\inst|send_state.SEND_BODY~q\))) # (!\inst|index[3]~2_combout\ & (((\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|send_state.SEND_BODY~q\,
	datac => \inst|index\(3),
	datad => \inst|index[3]~2_combout\,
	combout => \inst|index[3]~3_combout\);

-- Location: FF_X39_Y31_N5
\inst|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(3));

-- Location: LCCOMB_X39_Y31_N14
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|index\(2) & ((!\inst|index\(0)) # (!\inst|index\(1))))) # (!\inst|index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y31_N22
\inst|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (\inst|uart_inst|busy~q\ & (((\inst|send_state.SEND_BODY~q\)))) # (!\inst|uart_inst|busy~q\ & ((\inst|send_state.SEND_WAIT~q\) # ((\inst|LessThan0~0_combout\ & \inst|send_state.SEND_BODY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_BODY~q\,
	datad => \inst|send_state.SEND_WAIT~q\,
	combout => \inst|Selector47~0_combout\);

-- Location: FF_X40_Y31_N23
\inst|send_state.SEND_BODY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_state.SEND_BODY~q\);

-- Location: LCCOMB_X40_Y31_N4
\inst|Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector58~0_combout\ = (!\inst|uart_inst|busy~q\ & ((\inst|send_state.SEND_ETX~q\) # ((\inst|send_state.SEND_BODY~q\ & \inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_BODY~q\,
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_ETX~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|Selector58~0_combout\);

-- Location: LCCOMB_X40_Y31_N20
\inst|Selector58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector58~1_combout\ = (\inst|Selector58~0_combout\) # ((!\inst|uart_inst|busy~q\ & \inst|send_state.SEND_STX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|Selector58~0_combout\,
	datad => \inst|send_state.SEND_STX~q\,
	combout => \inst|Selector58~1_combout\);

-- Location: FF_X40_Y31_N21
\inst|uart_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_start~q\);

-- Location: LCCOMB_X40_Y29_N30
\inst|uart_inst|counter[15]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[15]~35_combout\ = (\inst|uart_inst|state~q\) # (\inst|uart_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_inst|state~q\,
	datad => \inst|uart_start~q\,
	combout => \inst|uart_inst|counter[15]~35_combout\);

-- Location: FF_X36_Y29_N1
\inst|uart_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[0]~32_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(0));

-- Location: LCCOMB_X36_Y29_N2
\inst|uart_inst|counter[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[1]~36_combout\ = (\inst|uart_inst|counter\(1) & (!\inst|uart_inst|counter[0]~33\)) # (!\inst|uart_inst|counter\(1) & ((\inst|uart_inst|counter[0]~33\) # (GND)))
-- \inst|uart_inst|counter[1]~37\ = CARRY((!\inst|uart_inst|counter[0]~33\) # (!\inst|uart_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(1),
	datad => VCC,
	cin => \inst|uart_inst|counter[0]~33\,
	combout => \inst|uart_inst|counter[1]~36_combout\,
	cout => \inst|uart_inst|counter[1]~37\);

-- Location: FF_X36_Y29_N3
\inst|uart_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[1]~36_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(1));

-- Location: LCCOMB_X36_Y29_N4
\inst|uart_inst|counter[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[2]~38_combout\ = (\inst|uart_inst|counter\(2) & (\inst|uart_inst|counter[1]~37\ $ (GND))) # (!\inst|uart_inst|counter\(2) & (!\inst|uart_inst|counter[1]~37\ & VCC))
-- \inst|uart_inst|counter[2]~39\ = CARRY((\inst|uart_inst|counter\(2) & !\inst|uart_inst|counter[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(2),
	datad => VCC,
	cin => \inst|uart_inst|counter[1]~37\,
	combout => \inst|uart_inst|counter[2]~38_combout\,
	cout => \inst|uart_inst|counter[2]~39\);

-- Location: FF_X36_Y29_N5
\inst|uart_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[2]~38_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(2));

-- Location: LCCOMB_X36_Y29_N6
\inst|uart_inst|counter[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[3]~40_combout\ = (\inst|uart_inst|counter\(3) & (!\inst|uart_inst|counter[2]~39\)) # (!\inst|uart_inst|counter\(3) & ((\inst|uart_inst|counter[2]~39\) # (GND)))
-- \inst|uart_inst|counter[3]~41\ = CARRY((!\inst|uart_inst|counter[2]~39\) # (!\inst|uart_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(3),
	datad => VCC,
	cin => \inst|uart_inst|counter[2]~39\,
	combout => \inst|uart_inst|counter[3]~40_combout\,
	cout => \inst|uart_inst|counter[3]~41\);

-- Location: FF_X36_Y29_N7
\inst|uart_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[3]~40_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(3));

-- Location: LCCOMB_X36_Y29_N8
\inst|uart_inst|counter[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[4]~42_combout\ = (\inst|uart_inst|counter\(4) & (\inst|uart_inst|counter[3]~41\ $ (GND))) # (!\inst|uart_inst|counter\(4) & (!\inst|uart_inst|counter[3]~41\ & VCC))
-- \inst|uart_inst|counter[4]~43\ = CARRY((\inst|uart_inst|counter\(4) & !\inst|uart_inst|counter[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(4),
	datad => VCC,
	cin => \inst|uart_inst|counter[3]~41\,
	combout => \inst|uart_inst|counter[4]~42_combout\,
	cout => \inst|uart_inst|counter[4]~43\);

-- Location: FF_X36_Y29_N9
\inst|uart_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[4]~42_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(4));

-- Location: LCCOMB_X36_Y29_N10
\inst|uart_inst|counter[5]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[5]~44_combout\ = (\inst|uart_inst|counter\(5) & (!\inst|uart_inst|counter[4]~43\)) # (!\inst|uart_inst|counter\(5) & ((\inst|uart_inst|counter[4]~43\) # (GND)))
-- \inst|uart_inst|counter[5]~45\ = CARRY((!\inst|uart_inst|counter[4]~43\) # (!\inst|uart_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(5),
	datad => VCC,
	cin => \inst|uart_inst|counter[4]~43\,
	combout => \inst|uart_inst|counter[5]~44_combout\,
	cout => \inst|uart_inst|counter[5]~45\);

-- Location: FF_X36_Y29_N11
\inst|uart_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[5]~44_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(5));

-- Location: LCCOMB_X36_Y29_N12
\inst|uart_inst|counter[6]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[6]~46_combout\ = (\inst|uart_inst|counter\(6) & (\inst|uart_inst|counter[5]~45\ $ (GND))) # (!\inst|uart_inst|counter\(6) & (!\inst|uart_inst|counter[5]~45\ & VCC))
-- \inst|uart_inst|counter[6]~47\ = CARRY((\inst|uart_inst|counter\(6) & !\inst|uart_inst|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(6),
	datad => VCC,
	cin => \inst|uart_inst|counter[5]~45\,
	combout => \inst|uart_inst|counter[6]~46_combout\,
	cout => \inst|uart_inst|counter[6]~47\);

-- Location: FF_X36_Y29_N13
\inst|uart_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[6]~46_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(6));

-- Location: LCCOMB_X36_Y29_N14
\inst|uart_inst|counter[7]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[7]~48_combout\ = (\inst|uart_inst|counter\(7) & (!\inst|uart_inst|counter[6]~47\)) # (!\inst|uart_inst|counter\(7) & ((\inst|uart_inst|counter[6]~47\) # (GND)))
-- \inst|uart_inst|counter[7]~49\ = CARRY((!\inst|uart_inst|counter[6]~47\) # (!\inst|uart_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(7),
	datad => VCC,
	cin => \inst|uart_inst|counter[6]~47\,
	combout => \inst|uart_inst|counter[7]~48_combout\,
	cout => \inst|uart_inst|counter[7]~49\);

-- Location: FF_X36_Y29_N15
\inst|uart_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[7]~48_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(7));

-- Location: LCCOMB_X36_Y29_N16
\inst|uart_inst|counter[8]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[8]~50_combout\ = (\inst|uart_inst|counter\(8) & (\inst|uart_inst|counter[7]~49\ $ (GND))) # (!\inst|uart_inst|counter\(8) & (!\inst|uart_inst|counter[7]~49\ & VCC))
-- \inst|uart_inst|counter[8]~51\ = CARRY((\inst|uart_inst|counter\(8) & !\inst|uart_inst|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(8),
	datad => VCC,
	cin => \inst|uart_inst|counter[7]~49\,
	combout => \inst|uart_inst|counter[8]~50_combout\,
	cout => \inst|uart_inst|counter[8]~51\);

-- Location: FF_X35_Y29_N17
\inst|uart_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[8]~50_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(8));

-- Location: LCCOMB_X36_Y29_N18
\inst|uart_inst|counter[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[9]~52_combout\ = (\inst|uart_inst|counter\(9) & (!\inst|uart_inst|counter[8]~51\)) # (!\inst|uart_inst|counter\(9) & ((\inst|uart_inst|counter[8]~51\) # (GND)))
-- \inst|uart_inst|counter[9]~53\ = CARRY((!\inst|uart_inst|counter[8]~51\) # (!\inst|uart_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(9),
	datad => VCC,
	cin => \inst|uart_inst|counter[8]~51\,
	combout => \inst|uart_inst|counter[9]~52_combout\,
	cout => \inst|uart_inst|counter[9]~53\);

-- Location: FF_X35_Y29_N31
\inst|uart_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[9]~52_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(9));

-- Location: LCCOMB_X36_Y29_N20
\inst|uart_inst|counter[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[10]~54_combout\ = (\inst|uart_inst|counter\(10) & (\inst|uart_inst|counter[9]~53\ $ (GND))) # (!\inst|uart_inst|counter\(10) & (!\inst|uart_inst|counter[9]~53\ & VCC))
-- \inst|uart_inst|counter[10]~55\ = CARRY((\inst|uart_inst|counter\(10) & !\inst|uart_inst|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(10),
	datad => VCC,
	cin => \inst|uart_inst|counter[9]~53\,
	combout => \inst|uart_inst|counter[10]~54_combout\,
	cout => \inst|uart_inst|counter[10]~55\);

-- Location: FF_X35_Y29_N23
\inst|uart_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[10]~54_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(10));

-- Location: LCCOMB_X36_Y29_N22
\inst|uart_inst|counter[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[11]~56_combout\ = (\inst|uart_inst|counter\(11) & (!\inst|uart_inst|counter[10]~55\)) # (!\inst|uart_inst|counter\(11) & ((\inst|uart_inst|counter[10]~55\) # (GND)))
-- \inst|uart_inst|counter[11]~57\ = CARRY((!\inst|uart_inst|counter[10]~55\) # (!\inst|uart_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(11),
	datad => VCC,
	cin => \inst|uart_inst|counter[10]~55\,
	combout => \inst|uart_inst|counter[11]~56_combout\,
	cout => \inst|uart_inst|counter[11]~57\);

-- Location: FF_X35_Y29_N13
\inst|uart_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[11]~56_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(11));

-- Location: LCCOMB_X36_Y29_N24
\inst|uart_inst|counter[12]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[12]~58_combout\ = (\inst|uart_inst|counter\(12) & (\inst|uart_inst|counter[11]~57\ $ (GND))) # (!\inst|uart_inst|counter\(12) & (!\inst|uart_inst|counter[11]~57\ & VCC))
-- \inst|uart_inst|counter[12]~59\ = CARRY((\inst|uart_inst|counter\(12) & !\inst|uart_inst|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(12),
	datad => VCC,
	cin => \inst|uart_inst|counter[11]~57\,
	combout => \inst|uart_inst|counter[12]~58_combout\,
	cout => \inst|uart_inst|counter[12]~59\);

-- Location: FF_X36_Y29_N25
\inst|uart_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[12]~58_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(12));

-- Location: LCCOMB_X36_Y29_N26
\inst|uart_inst|counter[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[13]~60_combout\ = (\inst|uart_inst|counter\(13) & (!\inst|uart_inst|counter[12]~59\)) # (!\inst|uart_inst|counter\(13) & ((\inst|uart_inst|counter[12]~59\) # (GND)))
-- \inst|uart_inst|counter[13]~61\ = CARRY((!\inst|uart_inst|counter[12]~59\) # (!\inst|uart_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(13),
	datad => VCC,
	cin => \inst|uart_inst|counter[12]~59\,
	combout => \inst|uart_inst|counter[13]~60_combout\,
	cout => \inst|uart_inst|counter[13]~61\);

-- Location: FF_X36_Y29_N27
\inst|uart_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[13]~60_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(13));

-- Location: LCCOMB_X36_Y29_N28
\inst|uart_inst|counter[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[14]~62_combout\ = (\inst|uart_inst|counter\(14) & (\inst|uart_inst|counter[13]~61\ $ (GND))) # (!\inst|uart_inst|counter\(14) & (!\inst|uart_inst|counter[13]~61\ & VCC))
-- \inst|uart_inst|counter[14]~63\ = CARRY((\inst|uart_inst|counter\(14) & !\inst|uart_inst|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(14),
	datad => VCC,
	cin => \inst|uart_inst|counter[13]~61\,
	combout => \inst|uart_inst|counter[14]~62_combout\,
	cout => \inst|uart_inst|counter[14]~63\);

-- Location: FF_X36_Y29_N29
\inst|uart_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[14]~62_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(14));

-- Location: LCCOMB_X36_Y29_N30
\inst|uart_inst|counter[15]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[15]~64_combout\ = (\inst|uart_inst|counter\(15) & (!\inst|uart_inst|counter[14]~63\)) # (!\inst|uart_inst|counter\(15) & ((\inst|uart_inst|counter[14]~63\) # (GND)))
-- \inst|uart_inst|counter[15]~65\ = CARRY((!\inst|uart_inst|counter[14]~63\) # (!\inst|uart_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(15),
	datad => VCC,
	cin => \inst|uart_inst|counter[14]~63\,
	combout => \inst|uart_inst|counter[15]~64_combout\,
	cout => \inst|uart_inst|counter[15]~65\);

-- Location: FF_X36_Y29_N31
\inst|uart_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[15]~64_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(15));

-- Location: LCCOMB_X36_Y28_N0
\inst|uart_inst|counter[16]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[16]~66_combout\ = (\inst|uart_inst|counter\(16) & (\inst|uart_inst|counter[15]~65\ $ (GND))) # (!\inst|uart_inst|counter\(16) & (!\inst|uart_inst|counter[15]~65\ & VCC))
-- \inst|uart_inst|counter[16]~67\ = CARRY((\inst|uart_inst|counter\(16) & !\inst|uart_inst|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(16),
	datad => VCC,
	cin => \inst|uart_inst|counter[15]~65\,
	combout => \inst|uart_inst|counter[16]~66_combout\,
	cout => \inst|uart_inst|counter[16]~67\);

-- Location: FF_X37_Y28_N29
\inst|uart_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[16]~66_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(16));

-- Location: LCCOMB_X36_Y28_N2
\inst|uart_inst|counter[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[17]~68_combout\ = (\inst|uart_inst|counter\(17) & (!\inst|uart_inst|counter[16]~67\)) # (!\inst|uart_inst|counter\(17) & ((\inst|uart_inst|counter[16]~67\) # (GND)))
-- \inst|uart_inst|counter[17]~69\ = CARRY((!\inst|uart_inst|counter[16]~67\) # (!\inst|uart_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(17),
	datad => VCC,
	cin => \inst|uart_inst|counter[16]~67\,
	combout => \inst|uart_inst|counter[17]~68_combout\,
	cout => \inst|uart_inst|counter[17]~69\);

-- Location: FF_X37_Y28_N7
\inst|uart_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[17]~68_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(17));

-- Location: LCCOMB_X36_Y28_N4
\inst|uart_inst|counter[18]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[18]~70_combout\ = (\inst|uart_inst|counter\(18) & (\inst|uart_inst|counter[17]~69\ $ (GND))) # (!\inst|uart_inst|counter\(18) & (!\inst|uart_inst|counter[17]~69\ & VCC))
-- \inst|uart_inst|counter[18]~71\ = CARRY((\inst|uart_inst|counter\(18) & !\inst|uart_inst|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(18),
	datad => VCC,
	cin => \inst|uart_inst|counter[17]~69\,
	combout => \inst|uart_inst|counter[18]~70_combout\,
	cout => \inst|uart_inst|counter[18]~71\);

-- Location: FF_X37_Y28_N21
\inst|uart_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[18]~70_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(18));

-- Location: LCCOMB_X36_Y28_N6
\inst|uart_inst|counter[19]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[19]~72_combout\ = (\inst|uart_inst|counter\(19) & (!\inst|uart_inst|counter[18]~71\)) # (!\inst|uart_inst|counter\(19) & ((\inst|uart_inst|counter[18]~71\) # (GND)))
-- \inst|uart_inst|counter[19]~73\ = CARRY((!\inst|uart_inst|counter[18]~71\) # (!\inst|uart_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(19),
	datad => VCC,
	cin => \inst|uart_inst|counter[18]~71\,
	combout => \inst|uart_inst|counter[19]~72_combout\,
	cout => \inst|uart_inst|counter[19]~73\);

-- Location: FF_X37_Y28_N31
\inst|uart_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|uart_inst|counter[19]~72_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	sload => VCC,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(19));

-- Location: LCCOMB_X36_Y28_N8
\inst|uart_inst|counter[20]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[20]~74_combout\ = (\inst|uart_inst|counter\(20) & (\inst|uart_inst|counter[19]~73\ $ (GND))) # (!\inst|uart_inst|counter\(20) & (!\inst|uart_inst|counter[19]~73\ & VCC))
-- \inst|uart_inst|counter[20]~75\ = CARRY((\inst|uart_inst|counter\(20) & !\inst|uart_inst|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(20),
	datad => VCC,
	cin => \inst|uart_inst|counter[19]~73\,
	combout => \inst|uart_inst|counter[20]~74_combout\,
	cout => \inst|uart_inst|counter[20]~75\);

-- Location: FF_X36_Y28_N9
\inst|uart_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[20]~74_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(20));

-- Location: LCCOMB_X36_Y28_N10
\inst|uart_inst|counter[21]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[21]~76_combout\ = (\inst|uart_inst|counter\(21) & (!\inst|uart_inst|counter[20]~75\)) # (!\inst|uart_inst|counter\(21) & ((\inst|uart_inst|counter[20]~75\) # (GND)))
-- \inst|uart_inst|counter[21]~77\ = CARRY((!\inst|uart_inst|counter[20]~75\) # (!\inst|uart_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(21),
	datad => VCC,
	cin => \inst|uart_inst|counter[20]~75\,
	combout => \inst|uart_inst|counter[21]~76_combout\,
	cout => \inst|uart_inst|counter[21]~77\);

-- Location: FF_X36_Y28_N11
\inst|uart_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[21]~76_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(21));

-- Location: LCCOMB_X36_Y28_N12
\inst|uart_inst|counter[22]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[22]~78_combout\ = (\inst|uart_inst|counter\(22) & (\inst|uart_inst|counter[21]~77\ $ (GND))) # (!\inst|uart_inst|counter\(22) & (!\inst|uart_inst|counter[21]~77\ & VCC))
-- \inst|uart_inst|counter[22]~79\ = CARRY((\inst|uart_inst|counter\(22) & !\inst|uart_inst|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(22),
	datad => VCC,
	cin => \inst|uart_inst|counter[21]~77\,
	combout => \inst|uart_inst|counter[22]~78_combout\,
	cout => \inst|uart_inst|counter[22]~79\);

-- Location: FF_X36_Y28_N13
\inst|uart_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[22]~78_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(22));

-- Location: LCCOMB_X37_Y29_N8
\inst|uart_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~6_combout\ = (\inst|uart_inst|counter\(21)) # (\inst|uart_inst|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_inst|counter\(21),
	datad => \inst|uart_inst|counter\(20),
	combout => \inst|uart_inst|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y28_N14
\inst|uart_inst|counter[23]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[23]~80_combout\ = (\inst|uart_inst|counter\(23) & (!\inst|uart_inst|counter[22]~79\)) # (!\inst|uart_inst|counter\(23) & ((\inst|uart_inst|counter[22]~79\) # (GND)))
-- \inst|uart_inst|counter[23]~81\ = CARRY((!\inst|uart_inst|counter[22]~79\) # (!\inst|uart_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(23),
	datad => VCC,
	cin => \inst|uart_inst|counter[22]~79\,
	combout => \inst|uart_inst|counter[23]~80_combout\,
	cout => \inst|uart_inst|counter[23]~81\);

-- Location: FF_X36_Y28_N15
\inst|uart_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[23]~80_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(23));

-- Location: LCCOMB_X37_Y28_N24
\inst|uart_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~5_combout\ = (\inst|uart_inst|counter\(17)) # ((\inst|uart_inst|counter\(18)) # ((\inst|uart_inst|counter\(19)) # (\inst|uart_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(17),
	datab => \inst|uart_inst|counter\(18),
	datac => \inst|uart_inst|counter\(19),
	datad => \inst|uart_inst|counter\(16),
	combout => \inst|uart_inst|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y29_N10
\inst|uart_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~7_combout\ = (\inst|uart_inst|counter\(22)) # ((\inst|uart_inst|Equal0~6_combout\) # ((\inst|uart_inst|counter\(23)) # (\inst|uart_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(22),
	datab => \inst|uart_inst|Equal0~6_combout\,
	datac => \inst|uart_inst|counter\(23),
	datad => \inst|uart_inst|Equal0~5_combout\,
	combout => \inst|uart_inst|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y28_N16
\inst|uart_inst|counter[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[24]~82_combout\ = (\inst|uart_inst|counter\(24) & (\inst|uart_inst|counter[23]~81\ $ (GND))) # (!\inst|uart_inst|counter\(24) & (!\inst|uart_inst|counter[23]~81\ & VCC))
-- \inst|uart_inst|counter[24]~83\ = CARRY((\inst|uart_inst|counter\(24) & !\inst|uart_inst|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(24),
	datad => VCC,
	cin => \inst|uart_inst|counter[23]~81\,
	combout => \inst|uart_inst|counter[24]~82_combout\,
	cout => \inst|uart_inst|counter[24]~83\);

-- Location: FF_X36_Y28_N17
\inst|uart_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[24]~82_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(24));

-- Location: LCCOMB_X36_Y28_N18
\inst|uart_inst|counter[25]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[25]~84_combout\ = (\inst|uart_inst|counter\(25) & (!\inst|uart_inst|counter[24]~83\)) # (!\inst|uart_inst|counter\(25) & ((\inst|uart_inst|counter[24]~83\) # (GND)))
-- \inst|uart_inst|counter[25]~85\ = CARRY((!\inst|uart_inst|counter[24]~83\) # (!\inst|uart_inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(25),
	datad => VCC,
	cin => \inst|uart_inst|counter[24]~83\,
	combout => \inst|uart_inst|counter[25]~84_combout\,
	cout => \inst|uart_inst|counter[25]~85\);

-- Location: FF_X36_Y28_N19
\inst|uart_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[25]~84_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(25));

-- Location: LCCOMB_X36_Y28_N20
\inst|uart_inst|counter[26]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[26]~86_combout\ = (\inst|uart_inst|counter\(26) & (\inst|uart_inst|counter[25]~85\ $ (GND))) # (!\inst|uart_inst|counter\(26) & (!\inst|uart_inst|counter[25]~85\ & VCC))
-- \inst|uart_inst|counter[26]~87\ = CARRY((\inst|uart_inst|counter\(26) & !\inst|uart_inst|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(26),
	datad => VCC,
	cin => \inst|uart_inst|counter[25]~85\,
	combout => \inst|uart_inst|counter[26]~86_combout\,
	cout => \inst|uart_inst|counter[26]~87\);

-- Location: FF_X36_Y28_N21
\inst|uart_inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[26]~86_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(26));

-- Location: LCCOMB_X36_Y28_N22
\inst|uart_inst|counter[27]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[27]~88_combout\ = (\inst|uart_inst|counter\(27) & (!\inst|uart_inst|counter[26]~87\)) # (!\inst|uart_inst|counter\(27) & ((\inst|uart_inst|counter[26]~87\) # (GND)))
-- \inst|uart_inst|counter[27]~89\ = CARRY((!\inst|uart_inst|counter[26]~87\) # (!\inst|uart_inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(27),
	datad => VCC,
	cin => \inst|uart_inst|counter[26]~87\,
	combout => \inst|uart_inst|counter[27]~88_combout\,
	cout => \inst|uart_inst|counter[27]~89\);

-- Location: FF_X36_Y28_N23
\inst|uart_inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[27]~88_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(27));

-- Location: LCCOMB_X37_Y28_N14
\inst|uart_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~8_combout\ = (\inst|uart_inst|counter\(24)) # ((\inst|uart_inst|counter\(25)) # ((\inst|uart_inst|counter\(27)) # (\inst|uart_inst|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(24),
	datab => \inst|uart_inst|counter\(25),
	datac => \inst|uart_inst|counter\(27),
	datad => \inst|uart_inst|counter\(26),
	combout => \inst|uart_inst|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y28_N24
\inst|uart_inst|counter[28]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[28]~90_combout\ = (\inst|uart_inst|counter\(28) & (\inst|uart_inst|counter[27]~89\ $ (GND))) # (!\inst|uart_inst|counter\(28) & (!\inst|uart_inst|counter[27]~89\ & VCC))
-- \inst|uart_inst|counter[28]~91\ = CARRY((\inst|uart_inst|counter\(28) & !\inst|uart_inst|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(28),
	datad => VCC,
	cin => \inst|uart_inst|counter[27]~89\,
	combout => \inst|uart_inst|counter[28]~90_combout\,
	cout => \inst|uart_inst|counter[28]~91\);

-- Location: FF_X36_Y28_N25
\inst|uart_inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[28]~90_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(28));

-- Location: LCCOMB_X36_Y28_N26
\inst|uart_inst|counter[29]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[29]~92_combout\ = (\inst|uart_inst|counter\(29) & (!\inst|uart_inst|counter[28]~91\)) # (!\inst|uart_inst|counter\(29) & ((\inst|uart_inst|counter[28]~91\) # (GND)))
-- \inst|uart_inst|counter[29]~93\ = CARRY((!\inst|uart_inst|counter[28]~91\) # (!\inst|uart_inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(29),
	datad => VCC,
	cin => \inst|uart_inst|counter[28]~91\,
	combout => \inst|uart_inst|counter[29]~92_combout\,
	cout => \inst|uart_inst|counter[29]~93\);

-- Location: FF_X36_Y28_N27
\inst|uart_inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[29]~92_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(29));

-- Location: LCCOMB_X36_Y28_N28
\inst|uart_inst|counter[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[30]~94_combout\ = (\inst|uart_inst|counter\(30) & (\inst|uart_inst|counter[29]~93\ $ (GND))) # (!\inst|uart_inst|counter\(30) & (!\inst|uart_inst|counter[29]~93\ & VCC))
-- \inst|uart_inst|counter[30]~95\ = CARRY((\inst|uart_inst|counter\(30) & !\inst|uart_inst|counter[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|counter\(30),
	datad => VCC,
	cin => \inst|uart_inst|counter[29]~93\,
	combout => \inst|uart_inst|counter[30]~94_combout\,
	cout => \inst|uart_inst|counter[30]~95\);

-- Location: FF_X36_Y28_N29
\inst|uart_inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[30]~94_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(30));

-- Location: LCCOMB_X36_Y28_N30
\inst|uart_inst|counter[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|counter[31]~96_combout\ = \inst|uart_inst|counter\(31) $ (\inst|uart_inst|counter[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(31),
	cin => \inst|uart_inst|counter[30]~95\,
	combout => \inst|uart_inst|counter[31]~96_combout\);

-- Location: FF_X36_Y28_N31
\inst|uart_inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|counter[31]~96_combout\,
	sclr => \inst|uart_inst|counter[15]~34_combout\,
	ena => \inst|uart_inst|counter[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|counter\(31));

-- Location: LCCOMB_X37_Y28_N16
\inst|uart_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~9_combout\ = (\inst|uart_inst|counter\(31)) # ((\inst|uart_inst|counter\(28)) # ((\inst|uart_inst|counter\(29)) # (\inst|uart_inst|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(31),
	datab => \inst|uart_inst|counter\(28),
	datac => \inst|uart_inst|counter\(29),
	datad => \inst|uart_inst|counter\(30),
	combout => \inst|uart_inst|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y29_N12
\inst|uart_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~0_combout\ = (\inst|uart_inst|counter\(0)) # (((\inst|uart_inst|counter\(2)) # (\inst|uart_inst|counter\(1))) # (!\inst|uart_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(0),
	datab => \inst|uart_inst|counter\(3),
	datac => \inst|uart_inst|counter\(2),
	datad => \inst|uart_inst|counter\(1),
	combout => \inst|uart_inst|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y29_N24
\inst|uart_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~3_combout\ = (\inst|uart_inst|counter\(13)) # ((\inst|uart_inst|counter\(14)) # ((\inst|uart_inst|counter\(15)) # (!\inst|uart_inst|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(13),
	datab => \inst|uart_inst|counter\(14),
	datac => \inst|uart_inst|counter\(12),
	datad => \inst|uart_inst|counter\(15),
	combout => \inst|uart_inst|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y29_N14
\inst|uart_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~1_combout\ = (\inst|uart_inst|counter\(7)) # (((\inst|uart_inst|counter\(5)) # (!\inst|uart_inst|counter\(6))) # (!\inst|uart_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(7),
	datab => \inst|uart_inst|counter\(4),
	datac => \inst|uart_inst|counter\(5),
	datad => \inst|uart_inst|counter\(6),
	combout => \inst|uart_inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y29_N24
\inst|uart_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~2_combout\ = (\inst|uart_inst|counter\(9)) # ((\inst|uart_inst|counter\(8)) # ((\inst|uart_inst|counter\(11)) # (!\inst|uart_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|counter\(9),
	datab => \inst|uart_inst|counter\(8),
	datac => \inst|uart_inst|counter\(10),
	datad => \inst|uart_inst|counter\(11),
	combout => \inst|uart_inst|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y29_N2
\inst|uart_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~4_combout\ = (\inst|uart_inst|Equal0~0_combout\) # ((\inst|uart_inst|Equal0~3_combout\) # ((\inst|uart_inst|Equal0~1_combout\) # (\inst|uart_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|Equal0~0_combout\,
	datab => \inst|uart_inst|Equal0~3_combout\,
	datac => \inst|uart_inst|Equal0~1_combout\,
	datad => \inst|uart_inst|Equal0~2_combout\,
	combout => \inst|uart_inst|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y29_N0
\inst|uart_inst|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal0~10_combout\ = (\inst|uart_inst|Equal0~7_combout\) # ((\inst|uart_inst|Equal0~8_combout\) # ((\inst|uart_inst|Equal0~9_combout\) # (\inst|uart_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|Equal0~7_combout\,
	datab => \inst|uart_inst|Equal0~8_combout\,
	datac => \inst|uart_inst|Equal0~9_combout\,
	datad => \inst|uart_inst|Equal0~4_combout\,
	combout => \inst|uart_inst|Equal0~10_combout\);

-- Location: LCCOMB_X38_Y29_N2
\inst|uart_inst|bit_index[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[1]~35_combout\ = (\inst|uart_inst|bit_index\(1) & (!\inst|uart_inst|bit_index[0]~33\)) # (!\inst|uart_inst|bit_index\(1) & ((\inst|uart_inst|bit_index[0]~33\) # (GND)))
-- \inst|uart_inst|bit_index[1]~36\ = CARRY((!\inst|uart_inst|bit_index[0]~33\) # (!\inst|uart_inst|bit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(1),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[0]~33\,
	combout => \inst|uart_inst|bit_index[1]~35_combout\,
	cout => \inst|uart_inst|bit_index[1]~36\);

-- Location: LCCOMB_X37_Y29_N30
\inst|uart_inst|bit_index~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index~34_combout\ = (\inst|uart_inst|state~q\ & (!\inst|uart_inst|Equal0~10_combout\ & ((!\inst|uart_inst|Equal1~10_combout\)))) # (!\inst|uart_inst|state~q\ & (((\inst|uart_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|state~q\,
	datab => \inst|uart_inst|Equal0~10_combout\,
	datac => \inst|uart_start~q\,
	datad => \inst|uart_inst|Equal1~10_combout\,
	combout => \inst|uart_inst|bit_index~34_combout\);

-- Location: FF_X38_Y29_N3
\inst|uart_inst|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[1]~35_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(1));

-- Location: LCCOMB_X38_Y29_N4
\inst|uart_inst|bit_index[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[2]~37_combout\ = (\inst|uart_inst|bit_index\(2) & (\inst|uart_inst|bit_index[1]~36\ $ (GND))) # (!\inst|uart_inst|bit_index\(2) & (!\inst|uart_inst|bit_index[1]~36\ & VCC))
-- \inst|uart_inst|bit_index[2]~38\ = CARRY((\inst|uart_inst|bit_index\(2) & !\inst|uart_inst|bit_index[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(2),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[1]~36\,
	combout => \inst|uart_inst|bit_index[2]~37_combout\,
	cout => \inst|uart_inst|bit_index[2]~38\);

-- Location: FF_X38_Y29_N5
\inst|uart_inst|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[2]~37_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(2));

-- Location: LCCOMB_X38_Y29_N6
\inst|uart_inst|bit_index[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[3]~39_combout\ = (\inst|uart_inst|bit_index\(3) & (!\inst|uart_inst|bit_index[2]~38\)) # (!\inst|uart_inst|bit_index\(3) & ((\inst|uart_inst|bit_index[2]~38\) # (GND)))
-- \inst|uart_inst|bit_index[3]~40\ = CARRY((!\inst|uart_inst|bit_index[2]~38\) # (!\inst|uart_inst|bit_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(3),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[2]~38\,
	combout => \inst|uart_inst|bit_index[3]~39_combout\,
	cout => \inst|uart_inst|bit_index[3]~40\);

-- Location: FF_X38_Y29_N7
\inst|uart_inst|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[3]~39_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(3));

-- Location: LCCOMB_X38_Y29_N8
\inst|uart_inst|bit_index[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[4]~41_combout\ = (\inst|uart_inst|bit_index\(4) & (\inst|uart_inst|bit_index[3]~40\ $ (GND))) # (!\inst|uart_inst|bit_index\(4) & (!\inst|uart_inst|bit_index[3]~40\ & VCC))
-- \inst|uart_inst|bit_index[4]~42\ = CARRY((\inst|uart_inst|bit_index\(4) & !\inst|uart_inst|bit_index[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(4),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[3]~40\,
	combout => \inst|uart_inst|bit_index[4]~41_combout\,
	cout => \inst|uart_inst|bit_index[4]~42\);

-- Location: FF_X38_Y29_N9
\inst|uart_inst|bit_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[4]~41_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(4));

-- Location: LCCOMB_X38_Y29_N10
\inst|uart_inst|bit_index[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[5]~43_combout\ = (\inst|uart_inst|bit_index\(5) & (!\inst|uart_inst|bit_index[4]~42\)) # (!\inst|uart_inst|bit_index\(5) & ((\inst|uart_inst|bit_index[4]~42\) # (GND)))
-- \inst|uart_inst|bit_index[5]~44\ = CARRY((!\inst|uart_inst|bit_index[4]~42\) # (!\inst|uart_inst|bit_index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(5),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[4]~42\,
	combout => \inst|uart_inst|bit_index[5]~43_combout\,
	cout => \inst|uart_inst|bit_index[5]~44\);

-- Location: FF_X38_Y29_N11
\inst|uart_inst|bit_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[5]~43_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(5));

-- Location: LCCOMB_X38_Y29_N12
\inst|uart_inst|bit_index[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[6]~45_combout\ = (\inst|uart_inst|bit_index\(6) & (\inst|uart_inst|bit_index[5]~44\ $ (GND))) # (!\inst|uart_inst|bit_index\(6) & (!\inst|uart_inst|bit_index[5]~44\ & VCC))
-- \inst|uart_inst|bit_index[6]~46\ = CARRY((\inst|uart_inst|bit_index\(6) & !\inst|uart_inst|bit_index[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(6),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[5]~44\,
	combout => \inst|uart_inst|bit_index[6]~45_combout\,
	cout => \inst|uart_inst|bit_index[6]~46\);

-- Location: FF_X38_Y29_N13
\inst|uart_inst|bit_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[6]~45_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(6));

-- Location: LCCOMB_X38_Y29_N14
\inst|uart_inst|bit_index[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[7]~47_combout\ = (\inst|uart_inst|bit_index\(7) & (!\inst|uart_inst|bit_index[6]~46\)) # (!\inst|uart_inst|bit_index\(7) & ((\inst|uart_inst|bit_index[6]~46\) # (GND)))
-- \inst|uart_inst|bit_index[7]~48\ = CARRY((!\inst|uart_inst|bit_index[6]~46\) # (!\inst|uart_inst|bit_index\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(7),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[6]~46\,
	combout => \inst|uart_inst|bit_index[7]~47_combout\,
	cout => \inst|uart_inst|bit_index[7]~48\);

-- Location: FF_X38_Y29_N15
\inst|uart_inst|bit_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[7]~47_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(7));

-- Location: LCCOMB_X38_Y29_N16
\inst|uart_inst|bit_index[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[8]~49_combout\ = (\inst|uart_inst|bit_index\(8) & (\inst|uart_inst|bit_index[7]~48\ $ (GND))) # (!\inst|uart_inst|bit_index\(8) & (!\inst|uart_inst|bit_index[7]~48\ & VCC))
-- \inst|uart_inst|bit_index[8]~50\ = CARRY((\inst|uart_inst|bit_index\(8) & !\inst|uart_inst|bit_index[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(8),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[7]~48\,
	combout => \inst|uart_inst|bit_index[8]~49_combout\,
	cout => \inst|uart_inst|bit_index[8]~50\);

-- Location: FF_X38_Y29_N17
\inst|uart_inst|bit_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[8]~49_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(8));

-- Location: LCCOMB_X38_Y29_N18
\inst|uart_inst|bit_index[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[9]~51_combout\ = (\inst|uart_inst|bit_index\(9) & (!\inst|uart_inst|bit_index[8]~50\)) # (!\inst|uart_inst|bit_index\(9) & ((\inst|uart_inst|bit_index[8]~50\) # (GND)))
-- \inst|uart_inst|bit_index[9]~52\ = CARRY((!\inst|uart_inst|bit_index[8]~50\) # (!\inst|uart_inst|bit_index\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(9),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[8]~50\,
	combout => \inst|uart_inst|bit_index[9]~51_combout\,
	cout => \inst|uart_inst|bit_index[9]~52\);

-- Location: FF_X38_Y29_N19
\inst|uart_inst|bit_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[9]~51_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(9));

-- Location: LCCOMB_X38_Y29_N20
\inst|uart_inst|bit_index[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[10]~53_combout\ = (\inst|uart_inst|bit_index\(10) & (\inst|uart_inst|bit_index[9]~52\ $ (GND))) # (!\inst|uart_inst|bit_index\(10) & (!\inst|uart_inst|bit_index[9]~52\ & VCC))
-- \inst|uart_inst|bit_index[10]~54\ = CARRY((\inst|uart_inst|bit_index\(10) & !\inst|uart_inst|bit_index[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(10),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[9]~52\,
	combout => \inst|uart_inst|bit_index[10]~53_combout\,
	cout => \inst|uart_inst|bit_index[10]~54\);

-- Location: FF_X38_Y29_N21
\inst|uart_inst|bit_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[10]~53_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(10));

-- Location: LCCOMB_X38_Y29_N22
\inst|uart_inst|bit_index[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[11]~55_combout\ = (\inst|uart_inst|bit_index\(11) & (!\inst|uart_inst|bit_index[10]~54\)) # (!\inst|uart_inst|bit_index\(11) & ((\inst|uart_inst|bit_index[10]~54\) # (GND)))
-- \inst|uart_inst|bit_index[11]~56\ = CARRY((!\inst|uart_inst|bit_index[10]~54\) # (!\inst|uart_inst|bit_index\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(11),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[10]~54\,
	combout => \inst|uart_inst|bit_index[11]~55_combout\,
	cout => \inst|uart_inst|bit_index[11]~56\);

-- Location: FF_X38_Y29_N23
\inst|uart_inst|bit_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[11]~55_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(11));

-- Location: LCCOMB_X39_Y29_N10
\inst|uart_inst|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~3_combout\ = (!\inst|uart_inst|bit_index\(8) & (!\inst|uart_inst|bit_index\(11) & (!\inst|uart_inst|bit_index\(10) & !\inst|uart_inst|bit_index\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(8),
	datab => \inst|uart_inst|bit_index\(11),
	datac => \inst|uart_inst|bit_index\(10),
	datad => \inst|uart_inst|bit_index\(9),
	combout => \inst|uart_inst|Equal1~3_combout\);

-- Location: LCCOMB_X39_Y29_N4
\inst|uart_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~0_combout\ = (\inst|uart_inst|bit_index\(3) & (!\inst|uart_inst|bit_index\(2) & !\inst|uart_inst|bit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(3),
	datac => \inst|uart_inst|bit_index\(2),
	datad => \inst|uart_inst|bit_index\(1),
	combout => \inst|uart_inst|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y29_N18
\inst|uart_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~1_combout\ = (!\inst|uart_inst|bit_index\(4) & (!\inst|uart_inst|bit_index\(7) & (!\inst|uart_inst|bit_index\(6) & !\inst|uart_inst|bit_index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(4),
	datab => \inst|uart_inst|bit_index\(7),
	datac => \inst|uart_inst|bit_index\(6),
	datad => \inst|uart_inst|bit_index\(5),
	combout => \inst|uart_inst|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y29_N20
\inst|uart_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~2_combout\ = (\inst|uart_inst|bit_index\(0) & (\inst|uart_inst|Equal1~0_combout\ & \inst|uart_inst|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(0),
	datac => \inst|uart_inst|Equal1~0_combout\,
	datad => \inst|uart_inst|Equal1~1_combout\,
	combout => \inst|uart_inst|Equal1~2_combout\);

-- Location: LCCOMB_X38_Y29_N24
\inst|uart_inst|bit_index[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[12]~57_combout\ = (\inst|uart_inst|bit_index\(12) & (\inst|uart_inst|bit_index[11]~56\ $ (GND))) # (!\inst|uart_inst|bit_index\(12) & (!\inst|uart_inst|bit_index[11]~56\ & VCC))
-- \inst|uart_inst|bit_index[12]~58\ = CARRY((\inst|uart_inst|bit_index\(12) & !\inst|uart_inst|bit_index[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(12),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[11]~56\,
	combout => \inst|uart_inst|bit_index[12]~57_combout\,
	cout => \inst|uart_inst|bit_index[12]~58\);

-- Location: FF_X38_Y29_N25
\inst|uart_inst|bit_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[12]~57_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(12));

-- Location: LCCOMB_X38_Y29_N26
\inst|uart_inst|bit_index[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[13]~59_combout\ = (\inst|uart_inst|bit_index\(13) & (!\inst|uart_inst|bit_index[12]~58\)) # (!\inst|uart_inst|bit_index\(13) & ((\inst|uart_inst|bit_index[12]~58\) # (GND)))
-- \inst|uart_inst|bit_index[13]~60\ = CARRY((!\inst|uart_inst|bit_index[12]~58\) # (!\inst|uart_inst|bit_index\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(13),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[12]~58\,
	combout => \inst|uart_inst|bit_index[13]~59_combout\,
	cout => \inst|uart_inst|bit_index[13]~60\);

-- Location: FF_X38_Y29_N27
\inst|uart_inst|bit_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[13]~59_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(13));

-- Location: LCCOMB_X38_Y29_N28
\inst|uart_inst|bit_index[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[14]~61_combout\ = (\inst|uart_inst|bit_index\(14) & (\inst|uart_inst|bit_index[13]~60\ $ (GND))) # (!\inst|uart_inst|bit_index\(14) & (!\inst|uart_inst|bit_index[13]~60\ & VCC))
-- \inst|uart_inst|bit_index[14]~62\ = CARRY((\inst|uart_inst|bit_index\(14) & !\inst|uart_inst|bit_index[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(14),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[13]~60\,
	combout => \inst|uart_inst|bit_index[14]~61_combout\,
	cout => \inst|uart_inst|bit_index[14]~62\);

-- Location: FF_X38_Y29_N29
\inst|uart_inst|bit_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[14]~61_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(14));

-- Location: LCCOMB_X38_Y29_N30
\inst|uart_inst|bit_index[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[15]~63_combout\ = (\inst|uart_inst|bit_index\(15) & (!\inst|uart_inst|bit_index[14]~62\)) # (!\inst|uart_inst|bit_index\(15) & ((\inst|uart_inst|bit_index[14]~62\) # (GND)))
-- \inst|uart_inst|bit_index[15]~64\ = CARRY((!\inst|uart_inst|bit_index[14]~62\) # (!\inst|uart_inst|bit_index\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(15),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[14]~62\,
	combout => \inst|uart_inst|bit_index[15]~63_combout\,
	cout => \inst|uart_inst|bit_index[15]~64\);

-- Location: FF_X38_Y29_N31
\inst|uart_inst|bit_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[15]~63_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(15));

-- Location: LCCOMB_X37_Y29_N4
\inst|uart_inst|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~4_combout\ = (!\inst|uart_inst|bit_index\(13) & (!\inst|uart_inst|bit_index\(12) & (!\inst|uart_inst|bit_index\(15) & !\inst|uart_inst|bit_index\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(13),
	datab => \inst|uart_inst|bit_index\(12),
	datac => \inst|uart_inst|bit_index\(15),
	datad => \inst|uart_inst|bit_index\(14),
	combout => \inst|uart_inst|Equal1~4_combout\);

-- Location: LCCOMB_X38_Y28_N0
\inst|uart_inst|bit_index[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[16]~65_combout\ = (\inst|uart_inst|bit_index\(16) & (\inst|uart_inst|bit_index[15]~64\ $ (GND))) # (!\inst|uart_inst|bit_index\(16) & (!\inst|uart_inst|bit_index[15]~64\ & VCC))
-- \inst|uart_inst|bit_index[16]~66\ = CARRY((\inst|uart_inst|bit_index\(16) & !\inst|uart_inst|bit_index[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(16),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[15]~64\,
	combout => \inst|uart_inst|bit_index[16]~65_combout\,
	cout => \inst|uart_inst|bit_index[16]~66\);

-- Location: FF_X38_Y28_N1
\inst|uart_inst|bit_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[16]~65_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(16));

-- Location: LCCOMB_X38_Y28_N2
\inst|uart_inst|bit_index[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[17]~67_combout\ = (\inst|uart_inst|bit_index\(17) & (!\inst|uart_inst|bit_index[16]~66\)) # (!\inst|uart_inst|bit_index\(17) & ((\inst|uart_inst|bit_index[16]~66\) # (GND)))
-- \inst|uart_inst|bit_index[17]~68\ = CARRY((!\inst|uart_inst|bit_index[16]~66\) # (!\inst|uart_inst|bit_index\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(17),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[16]~66\,
	combout => \inst|uart_inst|bit_index[17]~67_combout\,
	cout => \inst|uart_inst|bit_index[17]~68\);

-- Location: FF_X38_Y28_N3
\inst|uart_inst|bit_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[17]~67_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(17));

-- Location: LCCOMB_X38_Y28_N4
\inst|uart_inst|bit_index[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[18]~69_combout\ = (\inst|uart_inst|bit_index\(18) & (\inst|uart_inst|bit_index[17]~68\ $ (GND))) # (!\inst|uart_inst|bit_index\(18) & (!\inst|uart_inst|bit_index[17]~68\ & VCC))
-- \inst|uart_inst|bit_index[18]~70\ = CARRY((\inst|uart_inst|bit_index\(18) & !\inst|uart_inst|bit_index[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(18),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[17]~68\,
	combout => \inst|uart_inst|bit_index[18]~69_combout\,
	cout => \inst|uart_inst|bit_index[18]~70\);

-- Location: FF_X38_Y28_N5
\inst|uart_inst|bit_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[18]~69_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(18));

-- Location: LCCOMB_X38_Y28_N6
\inst|uart_inst|bit_index[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[19]~71_combout\ = (\inst|uart_inst|bit_index\(19) & (!\inst|uart_inst|bit_index[18]~70\)) # (!\inst|uart_inst|bit_index\(19) & ((\inst|uart_inst|bit_index[18]~70\) # (GND)))
-- \inst|uart_inst|bit_index[19]~72\ = CARRY((!\inst|uart_inst|bit_index[18]~70\) # (!\inst|uart_inst|bit_index\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(19),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[18]~70\,
	combout => \inst|uart_inst|bit_index[19]~71_combout\,
	cout => \inst|uart_inst|bit_index[19]~72\);

-- Location: FF_X38_Y28_N7
\inst|uart_inst|bit_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[19]~71_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(19));

-- Location: LCCOMB_X38_Y28_N8
\inst|uart_inst|bit_index[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[20]~73_combout\ = (\inst|uart_inst|bit_index\(20) & (\inst|uart_inst|bit_index[19]~72\ $ (GND))) # (!\inst|uart_inst|bit_index\(20) & (!\inst|uart_inst|bit_index[19]~72\ & VCC))
-- \inst|uart_inst|bit_index[20]~74\ = CARRY((\inst|uart_inst|bit_index\(20) & !\inst|uart_inst|bit_index[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(20),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[19]~72\,
	combout => \inst|uart_inst|bit_index[20]~73_combout\,
	cout => \inst|uart_inst|bit_index[20]~74\);

-- Location: FF_X38_Y28_N9
\inst|uart_inst|bit_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[20]~73_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(20));

-- Location: LCCOMB_X38_Y28_N10
\inst|uart_inst|bit_index[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[21]~75_combout\ = (\inst|uart_inst|bit_index\(21) & (!\inst|uart_inst|bit_index[20]~74\)) # (!\inst|uart_inst|bit_index\(21) & ((\inst|uart_inst|bit_index[20]~74\) # (GND)))
-- \inst|uart_inst|bit_index[21]~76\ = CARRY((!\inst|uart_inst|bit_index[20]~74\) # (!\inst|uart_inst|bit_index\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(21),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[20]~74\,
	combout => \inst|uart_inst|bit_index[21]~75_combout\,
	cout => \inst|uart_inst|bit_index[21]~76\);

-- Location: FF_X38_Y28_N11
\inst|uart_inst|bit_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[21]~75_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(21));

-- Location: LCCOMB_X38_Y28_N12
\inst|uart_inst|bit_index[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[22]~77_combout\ = (\inst|uart_inst|bit_index\(22) & (\inst|uart_inst|bit_index[21]~76\ $ (GND))) # (!\inst|uart_inst|bit_index\(22) & (!\inst|uart_inst|bit_index[21]~76\ & VCC))
-- \inst|uart_inst|bit_index[22]~78\ = CARRY((\inst|uart_inst|bit_index\(22) & !\inst|uart_inst|bit_index[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(22),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[21]~76\,
	combout => \inst|uart_inst|bit_index[22]~77_combout\,
	cout => \inst|uart_inst|bit_index[22]~78\);

-- Location: FF_X38_Y28_N13
\inst|uart_inst|bit_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[22]~77_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(22));

-- Location: LCCOMB_X38_Y28_N14
\inst|uart_inst|bit_index[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[23]~79_combout\ = (\inst|uart_inst|bit_index\(23) & (!\inst|uart_inst|bit_index[22]~78\)) # (!\inst|uart_inst|bit_index\(23) & ((\inst|uart_inst|bit_index[22]~78\) # (GND)))
-- \inst|uart_inst|bit_index[23]~80\ = CARRY((!\inst|uart_inst|bit_index[22]~78\) # (!\inst|uart_inst|bit_index\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(23),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[22]~78\,
	combout => \inst|uart_inst|bit_index[23]~79_combout\,
	cout => \inst|uart_inst|bit_index[23]~80\);

-- Location: FF_X38_Y28_N15
\inst|uart_inst|bit_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[23]~79_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(23));

-- Location: LCCOMB_X37_Y28_N8
\inst|uart_inst|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~6_combout\ = (!\inst|uart_inst|bit_index\(20) & (!\inst|uart_inst|bit_index\(21) & (!\inst|uart_inst|bit_index\(23) & !\inst|uart_inst|bit_index\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(20),
	datab => \inst|uart_inst|bit_index\(21),
	datac => \inst|uart_inst|bit_index\(23),
	datad => \inst|uart_inst|bit_index\(22),
	combout => \inst|uart_inst|Equal1~6_combout\);

-- Location: LCCOMB_X38_Y28_N16
\inst|uart_inst|bit_index[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[24]~81_combout\ = (\inst|uart_inst|bit_index\(24) & (\inst|uart_inst|bit_index[23]~80\ $ (GND))) # (!\inst|uart_inst|bit_index\(24) & (!\inst|uart_inst|bit_index[23]~80\ & VCC))
-- \inst|uart_inst|bit_index[24]~82\ = CARRY((\inst|uart_inst|bit_index\(24) & !\inst|uart_inst|bit_index[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(24),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[23]~80\,
	combout => \inst|uart_inst|bit_index[24]~81_combout\,
	cout => \inst|uart_inst|bit_index[24]~82\);

-- Location: FF_X38_Y28_N17
\inst|uart_inst|bit_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[24]~81_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(24));

-- Location: LCCOMB_X38_Y28_N18
\inst|uart_inst|bit_index[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[25]~83_combout\ = (\inst|uart_inst|bit_index\(25) & (!\inst|uart_inst|bit_index[24]~82\)) # (!\inst|uart_inst|bit_index\(25) & ((\inst|uart_inst|bit_index[24]~82\) # (GND)))
-- \inst|uart_inst|bit_index[25]~84\ = CARRY((!\inst|uart_inst|bit_index[24]~82\) # (!\inst|uart_inst|bit_index\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(25),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[24]~82\,
	combout => \inst|uart_inst|bit_index[25]~83_combout\,
	cout => \inst|uart_inst|bit_index[25]~84\);

-- Location: FF_X38_Y28_N19
\inst|uart_inst|bit_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[25]~83_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(25));

-- Location: LCCOMB_X38_Y28_N20
\inst|uart_inst|bit_index[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[26]~85_combout\ = (\inst|uart_inst|bit_index\(26) & (\inst|uart_inst|bit_index[25]~84\ $ (GND))) # (!\inst|uart_inst|bit_index\(26) & (!\inst|uart_inst|bit_index[25]~84\ & VCC))
-- \inst|uart_inst|bit_index[26]~86\ = CARRY((\inst|uart_inst|bit_index\(26) & !\inst|uart_inst|bit_index[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(26),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[25]~84\,
	combout => \inst|uart_inst|bit_index[26]~85_combout\,
	cout => \inst|uart_inst|bit_index[26]~86\);

-- Location: FF_X38_Y28_N21
\inst|uart_inst|bit_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[26]~85_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(26));

-- Location: LCCOMB_X38_Y28_N22
\inst|uart_inst|bit_index[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[27]~87_combout\ = (\inst|uart_inst|bit_index\(27) & (!\inst|uart_inst|bit_index[26]~86\)) # (!\inst|uart_inst|bit_index\(27) & ((\inst|uart_inst|bit_index[26]~86\) # (GND)))
-- \inst|uart_inst|bit_index[27]~88\ = CARRY((!\inst|uart_inst|bit_index[26]~86\) # (!\inst|uart_inst|bit_index\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(27),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[26]~86\,
	combout => \inst|uart_inst|bit_index[27]~87_combout\,
	cout => \inst|uart_inst|bit_index[27]~88\);

-- Location: FF_X38_Y28_N23
\inst|uart_inst|bit_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[27]~87_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(27));

-- Location: LCCOMB_X38_Y28_N24
\inst|uart_inst|bit_index[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[28]~89_combout\ = (\inst|uart_inst|bit_index\(28) & (\inst|uart_inst|bit_index[27]~88\ $ (GND))) # (!\inst|uart_inst|bit_index\(28) & (!\inst|uart_inst|bit_index[27]~88\ & VCC))
-- \inst|uart_inst|bit_index[28]~90\ = CARRY((\inst|uart_inst|bit_index\(28) & !\inst|uart_inst|bit_index[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(28),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[27]~88\,
	combout => \inst|uart_inst|bit_index[28]~89_combout\,
	cout => \inst|uart_inst|bit_index[28]~90\);

-- Location: FF_X38_Y28_N25
\inst|uart_inst|bit_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[28]~89_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(28));

-- Location: LCCOMB_X38_Y28_N26
\inst|uart_inst|bit_index[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[29]~91_combout\ = (\inst|uart_inst|bit_index\(29) & (!\inst|uart_inst|bit_index[28]~90\)) # (!\inst|uart_inst|bit_index\(29) & ((\inst|uart_inst|bit_index[28]~90\) # (GND)))
-- \inst|uart_inst|bit_index[29]~92\ = CARRY((!\inst|uart_inst|bit_index[28]~90\) # (!\inst|uart_inst|bit_index\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(29),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[28]~90\,
	combout => \inst|uart_inst|bit_index[29]~91_combout\,
	cout => \inst|uart_inst|bit_index[29]~92\);

-- Location: FF_X38_Y28_N27
\inst|uart_inst|bit_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[29]~91_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(29));

-- Location: LCCOMB_X38_Y28_N28
\inst|uart_inst|bit_index[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[30]~93_combout\ = (\inst|uart_inst|bit_index\(30) & (\inst|uart_inst|bit_index[29]~92\ $ (GND))) # (!\inst|uart_inst|bit_index\(30) & (!\inst|uart_inst|bit_index[29]~92\ & VCC))
-- \inst|uart_inst|bit_index[30]~94\ = CARRY((\inst|uart_inst|bit_index\(30) & !\inst|uart_inst|bit_index[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(30),
	datad => VCC,
	cin => \inst|uart_inst|bit_index[29]~92\,
	combout => \inst|uart_inst|bit_index[30]~93_combout\,
	cout => \inst|uart_inst|bit_index[30]~94\);

-- Location: FF_X38_Y28_N29
\inst|uart_inst|bit_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[30]~93_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(30));

-- Location: LCCOMB_X38_Y28_N30
\inst|uart_inst|bit_index[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|bit_index[31]~95_combout\ = \inst|uart_inst|bit_index\(31) $ (\inst|uart_inst|bit_index[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(31),
	cin => \inst|uart_inst|bit_index[30]~94\,
	combout => \inst|uart_inst|bit_index[31]~95_combout\);

-- Location: FF_X38_Y28_N31
\inst|uart_inst|bit_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[31]~95_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(31));

-- Location: LCCOMB_X37_Y28_N0
\inst|uart_inst|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~8_combout\ = (!\inst|uart_inst|bit_index\(28) & (!\inst|uart_inst|bit_index\(29) & (!\inst|uart_inst|bit_index\(31) & !\inst|uart_inst|bit_index\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(28),
	datab => \inst|uart_inst|bit_index\(29),
	datac => \inst|uart_inst|bit_index\(31),
	datad => \inst|uart_inst|bit_index\(30),
	combout => \inst|uart_inst|Equal1~8_combout\);

-- Location: LCCOMB_X37_Y28_N22
\inst|uart_inst|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~7_combout\ = (!\inst|uart_inst|bit_index\(26) & (!\inst|uart_inst|bit_index\(25) & (!\inst|uart_inst|bit_index\(27) & !\inst|uart_inst|bit_index\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(26),
	datab => \inst|uart_inst|bit_index\(25),
	datac => \inst|uart_inst|bit_index\(27),
	datad => \inst|uart_inst|bit_index\(24),
	combout => \inst|uart_inst|Equal1~7_combout\);

-- Location: LCCOMB_X37_Y28_N26
\inst|uart_inst|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~5_combout\ = (!\inst|uart_inst|bit_index\(18) & (!\inst|uart_inst|bit_index\(16) & (!\inst|uart_inst|bit_index\(17) & !\inst|uart_inst|bit_index\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(18),
	datab => \inst|uart_inst|bit_index\(16),
	datac => \inst|uart_inst|bit_index\(17),
	datad => \inst|uart_inst|bit_index\(19),
	combout => \inst|uart_inst|Equal1~5_combout\);

-- Location: LCCOMB_X37_Y29_N18
\inst|uart_inst|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~9_combout\ = (\inst|uart_inst|Equal1~6_combout\ & (\inst|uart_inst|Equal1~8_combout\ & (\inst|uart_inst|Equal1~7_combout\ & \inst|uart_inst|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|Equal1~6_combout\,
	datab => \inst|uart_inst|Equal1~8_combout\,
	datac => \inst|uart_inst|Equal1~7_combout\,
	datad => \inst|uart_inst|Equal1~5_combout\,
	combout => \inst|uart_inst|Equal1~9_combout\);

-- Location: LCCOMB_X37_Y29_N16
\inst|uart_inst|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Equal1~10_combout\ = (\inst|uart_inst|Equal1~3_combout\ & (\inst|uart_inst|Equal1~2_combout\ & (\inst|uart_inst|Equal1~4_combout\ & \inst|uart_inst|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|Equal1~3_combout\,
	datab => \inst|uart_inst|Equal1~2_combout\,
	datac => \inst|uart_inst|Equal1~4_combout\,
	datad => \inst|uart_inst|Equal1~9_combout\,
	combout => \inst|uart_inst|Equal1~10_combout\);

-- Location: LCCOMB_X37_Y29_N26
\inst|uart_inst|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|state~0_combout\ = (\inst|uart_inst|Equal0~10_combout\) # (!\inst|uart_inst|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|Equal0~10_combout\,
	datad => \inst|uart_inst|Equal1~10_combout\,
	combout => \inst|uart_inst|state~0_combout\);

-- Location: FF_X37_Y29_N27
\inst|uart_inst|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|state~0_combout\,
	asdata => \inst|uart_start~q\,
	sload => \inst|uart_inst|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|state~q\);

-- Location: FF_X38_Y29_N1
\inst|uart_inst|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|bit_index[0]~32_combout\,
	sclr => \inst|uart_inst|ALT_INV_state~q\,
	ena => \inst|uart_inst|bit_index~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|bit_index\(0));

-- Location: LCCOMB_X39_Y29_N16
\inst|uart_inst|shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|uart_inst|shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y29_N24
\inst|uart_inst|shift_reg[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[8]~0_combout\ = (!\inst|uart_inst|state~q\ & \inst|uart_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_inst|state~q\,
	datad => \inst|uart_start~q\,
	combout => \inst|uart_inst|shift_reg[8]~0_combout\);

-- Location: FF_X39_Y29_N17
\inst|uart_inst|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[0]~feeder_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(0));

-- Location: LCCOMB_X39_Y29_N6
\inst|uart_inst|tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|tx~2_combout\ = (\inst|uart_inst|bit_index\(0)) # (!\inst|uart_inst|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(0),
	datad => \inst|uart_inst|shift_reg\(0),
	combout => \inst|uart_inst|tx~2_combout\);

-- Location: LCCOMB_X37_Y29_N22
\inst|uart_inst|tx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|tx~3_combout\ = (\inst|uart_inst|Equal0~10_combout\ & (((\inst|uart_inst|tx~q\)))) # (!\inst|uart_inst|Equal0~10_combout\ & (\inst|uart_inst|tx~2_combout\ & ((\inst|uart_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|tx~2_combout\,
	datab => \inst|uart_inst|tx~q\,
	datac => \inst|uart_inst|Equal1~0_combout\,
	datad => \inst|uart_inst|Equal0~10_combout\,
	combout => \inst|uart_inst|tx~3_combout\);

-- Location: LCCOMB_X42_Y35_N28
\inst|mode.SHOW_DECRYPT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mode.SHOW_DECRYPT~feeder_combout\ = \inst|mode.SHOW_ENCRYPT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mode.SHOW_ENCRYPT~q\,
	combout => \inst|mode.SHOW_DECRYPT~feeder_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LCCOMB_X42_Y35_N18
\inst|key0_sync1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|key0_sync1~0_combout\ = !\KEY0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	combout => \inst|key0_sync1~0_combout\);

-- Location: FF_X42_Y35_N19
\inst|key0_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|key0_sync1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_sync1~q\);

-- Location: LCCOMB_X42_Y35_N24
\inst|key0_sync2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|key0_sync2~feeder_combout\ = \inst|key0_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|key0_sync1~q\,
	combout => \inst|key0_sync2~feeder_combout\);

-- Location: FF_X42_Y35_N25
\inst|key0_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|key0_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_sync2~q\);

-- Location: FF_X42_Y35_N31
\inst|key0_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|key0_sync2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_last~q\);

-- Location: LCCOMB_X42_Y35_N30
\inst|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (!\inst|key0_last~q\ & \inst|key0_sync2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|key0_last~q\,
	datad => \inst|key0_sync2~q\,
	combout => \inst|process_1~0_combout\);

-- Location: FF_X42_Y35_N29
\inst|mode.SHOW_DECRYPT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mode.SHOW_DECRYPT~feeder_combout\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mode.SHOW_DECRYPT~q\);

-- Location: LCCOMB_X42_Y35_N10
\inst|mode.SHOW_PLAIN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mode.SHOW_PLAIN~0_combout\ = !\inst|mode.SHOW_DECRYPT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mode.SHOW_DECRYPT~q\,
	combout => \inst|mode.SHOW_PLAIN~0_combout\);

-- Location: FF_X42_Y35_N11
\inst|mode.SHOW_PLAIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mode.SHOW_PLAIN~0_combout\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mode.SHOW_PLAIN~q\);

-- Location: LCCOMB_X42_Y35_N20
\inst|mode.SHOW_ENCRYPT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mode.SHOW_ENCRYPT~0_combout\ = !\inst|mode.SHOW_PLAIN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mode.SHOW_PLAIN~q\,
	combout => \inst|mode.SHOW_ENCRYPT~0_combout\);

-- Location: FF_X42_Y35_N21
\inst|mode.SHOW_ENCRYPT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mode.SHOW_ENCRYPT~0_combout\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mode.SHOW_ENCRYPT~q\);

-- Location: LCCOMB_X38_Y31_N22
\inst|Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|index\(3) & ((\inst|index\(2) & ((\inst|mode.SHOW_ENCRYPT~q\))) # (!\inst|index\(2) & (!\inst|index\(1))))) # (!\inst|index\(3) & (\inst|index\(2) & (\inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(2),
	datac => \inst|index\(1),
	datad => \inst|mode.SHOW_ENCRYPT~q\,
	combout => \inst|Selector53~0_combout\);

-- Location: LCCOMB_X38_Y31_N16
\inst|Selector53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector53~1_combout\ = \inst|mode.SHOW_ENCRYPT~q\ $ (((!\inst|index\(0) & \inst|Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(0),
	datac => \inst|Selector53~0_combout\,
	datad => \inst|mode.SHOW_ENCRYPT~q\,
	combout => \inst|Selector53~1_combout\);

-- Location: LCCOMB_X39_Y31_N8
\inst|Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~0_combout\ = (!\inst|uart_inst|busy~q\ & (\inst|LessThan0~0_combout\ & \inst|send_state.SEND_BODY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|send_state.SEND_BODY~q\,
	combout => \inst|Selector57~0_combout\);

-- Location: LCCOMB_X40_Y31_N18
\inst|Selector55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~1_combout\ = (\inst|uart_inst|busy~q\ & ((\inst|send_state.SEND_ETX~q\) # (\inst|send_state.SEND_STX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_ETX~q\,
	datad => \inst|send_state.SEND_STX~q\,
	combout => \inst|Selector55~1_combout\);

-- Location: LCCOMB_X39_Y31_N2
\inst|Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|WideOr2~0_combout\) # ((\inst|index[3]~0_combout\) # ((\inst|send_state.SEND_WAIT~q\) # (\inst|Selector55~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|index[3]~0_combout\,
	datac => \inst|send_state.SEND_WAIT~q\,
	datad => \inst|Selector55~1_combout\,
	combout => \inst|Selector52~0_combout\);

-- Location: LCCOMB_X39_Y31_N28
\inst|Selector53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector53~2_combout\ = (\inst|Selector53~1_combout\ & ((\inst|Selector57~0_combout\) # ((\inst|uart_data\(4) & \inst|Selector52~0_combout\)))) # (!\inst|Selector53~1_combout\ & (((\inst|uart_data\(4) & \inst|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector53~1_combout\,
	datab => \inst|Selector57~0_combout\,
	datac => \inst|uart_data\(4),
	datad => \inst|Selector52~0_combout\,
	combout => \inst|Selector53~2_combout\);

-- Location: FF_X39_Y31_N29
\inst|uart_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector53~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(4));

-- Location: LCCOMB_X39_Y29_N26
\inst|uart_inst|shift_reg[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[5]~4_combout\ = !\inst|uart_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_data\(4),
	combout => \inst|uart_inst|shift_reg[5]~4_combout\);

-- Location: FF_X39_Y29_N27
\inst|uart_inst|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[5]~4_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(5));

-- Location: LCCOMB_X38_Y31_N10
\inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\inst|index\(1) & (\inst|index\(2) & \inst|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datad => \inst|index\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y31_N24
\inst|Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|uart_data\(6) & ((\inst|send_state.SEND_WAIT~q\) # ((\inst|Selector55~1_combout\) # (\inst|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_WAIT~q\,
	datab => \inst|Selector55~1_combout\,
	datac => \inst|uart_data\(6),
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|Selector51~0_combout\);

-- Location: LCCOMB_X38_Y31_N12
\inst|Selector51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector51~1_combout\ = (\inst|Selector51~0_combout\) # ((\inst|Selector57~0_combout\ & (\inst|Mux0~0_combout\ $ (!\inst|mode.SHOW_ENCRYPT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|mode.SHOW_ENCRYPT~q\,
	datac => \inst|Selector57~0_combout\,
	datad => \inst|Selector51~0_combout\,
	combout => \inst|Selector51~1_combout\);

-- Location: LCCOMB_X39_Y31_N26
\inst|Selector51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector51~2_combout\ = (\inst|Selector51~1_combout\) # ((\inst|index[3]~0_combout\ & \inst|uart_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index[3]~0_combout\,
	datac => \inst|uart_data\(6),
	datad => \inst|Selector51~1_combout\,
	combout => \inst|Selector51~2_combout\);

-- Location: FF_X39_Y31_N27
\inst|uart_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector51~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(6));

-- Location: LCCOMB_X40_Y29_N18
\inst|uart_inst|shift_reg[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[7]~7_combout\ = !\inst|uart_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_data\(6),
	combout => \inst|uart_inst|shift_reg[7]~7_combout\);

-- Location: FF_X40_Y29_N19
\inst|uart_inst|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[7]~7_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(7));

-- Location: LCCOMB_X38_Y31_N6
\inst|Selector52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector52~1_combout\ = (\inst|Mux0~0_combout\ & ((\inst|Selector57~0_combout\) # ((\inst|uart_data\(5) & \inst|Selector52~0_combout\)))) # (!\inst|Mux0~0_combout\ & (((\inst|uart_data\(5) & \inst|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|Selector57~0_combout\,
	datac => \inst|uart_data\(5),
	datad => \inst|Selector52~0_combout\,
	combout => \inst|Selector52~1_combout\);

-- Location: FF_X38_Y31_N7
\inst|uart_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(5));

-- Location: LCCOMB_X39_Y29_N8
\inst|uart_inst|shift_reg[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[6]~5_combout\ = !\inst|uart_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_data\(5),
	combout => \inst|uart_inst|shift_reg[6]~5_combout\);

-- Location: FF_X39_Y29_N9
\inst|uart_inst|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[6]~5_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(6));

-- Location: LCCOMB_X38_Y31_N8
\inst|Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|index\(2) & ((\inst|index\(1) $ (!\inst|index\(0))))) # (!\inst|index\(2) & (\inst|index\(3) $ (((\inst|index\(1)) # (!\inst|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(2),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Selector54~0_combout\);

-- Location: LCCOMB_X39_Y31_N22
\inst|uart_data[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_data[3]~0_combout\ = (\inst|Selector57~0_combout\) # ((!\inst|uart_inst|busy~q\ & ((\inst|send_state.SEND_STX~q\) # (\inst|send_state.SEND_ETX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|busy~q\,
	datab => \inst|send_state.SEND_STX~q\,
	datac => \inst|Selector57~0_combout\,
	datad => \inst|send_state.SEND_ETX~q\,
	combout => \inst|uart_data[3]~0_combout\);

-- Location: FF_X38_Y31_N9
\inst|uart_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector54~0_combout\,
	sclr => \inst|ALT_INV_send_state.SEND_BODY~q\,
	ena => \inst|uart_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(3));

-- Location: LCCOMB_X39_Y29_N30
\inst|uart_inst|shift_reg[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[4]~6_combout\ = !\inst|uart_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_data\(3),
	combout => \inst|uart_inst|shift_reg[4]~6_combout\);

-- Location: FF_X39_Y29_N31
\inst|uart_inst|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[4]~6_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(4));

-- Location: LCCOMB_X39_Y29_N0
\inst|uart_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Mux0~2_combout\ = (\inst|uart_inst|bit_index\(0) & (((\inst|uart_inst|bit_index\(1))))) # (!\inst|uart_inst|bit_index\(0) & ((\inst|uart_inst|bit_index\(1) & (!\inst|uart_inst|shift_reg\(6))) # (!\inst|uart_inst|bit_index\(1) & 
-- ((!\inst|uart_inst|shift_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(0),
	datab => \inst|uart_inst|shift_reg\(6),
	datac => \inst|uart_inst|shift_reg\(4),
	datad => \inst|uart_inst|bit_index\(1),
	combout => \inst|uart_inst|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y29_N14
\inst|uart_inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Mux0~3_combout\ = (\inst|uart_inst|bit_index\(0) & ((\inst|uart_inst|Mux0~2_combout\ & ((!\inst|uart_inst|shift_reg\(7)))) # (!\inst|uart_inst|Mux0~2_combout\ & (!\inst|uart_inst|shift_reg\(5))))) # (!\inst|uart_inst|bit_index\(0) & 
-- (((\inst|uart_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|shift_reg\(5),
	datab => \inst|uart_inst|shift_reg\(7),
	datac => \inst|uart_inst|bit_index\(0),
	datad => \inst|uart_inst|Mux0~2_combout\,
	combout => \inst|uart_inst|Mux0~3_combout\);

-- Location: LCCOMB_X38_Y31_N4
\inst|Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector56~0_combout\ = (\inst|index\(1) & (((\inst|index\(2))))) # (!\inst|index\(1) & (!\inst|index\(0) & ((\inst|index\(3)) # (\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(2),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Selector56~0_combout\);

-- Location: LCCOMB_X37_Y31_N28
\inst|uart_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_data[1]~feeder_combout\ = \inst|Selector56~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector56~0_combout\,
	combout => \inst|uart_data[1]~feeder_combout\);

-- Location: FF_X37_Y31_N29
\inst|uart_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_data[1]~feeder_combout\,
	asdata => VCC,
	sload => \inst|ALT_INV_send_state.SEND_BODY~q\,
	ena => \inst|uart_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(1));

-- Location: LCCOMB_X40_Y29_N0
\inst|uart_inst|shift_reg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[2]~1_combout\ = !\inst|uart_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_data\(1),
	combout => \inst|uart_inst|shift_reg[2]~1_combout\);

-- Location: FF_X40_Y29_N1
\inst|uart_inst|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[2]~1_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(2));

-- Location: LCCOMB_X39_Y31_N12
\inst|Selector55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~2_combout\ = (\inst|uart_data\(2) & ((\inst|send_state.SEND_WAIT~q\) # ((\inst|Selector55~1_combout\) # (\inst|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_state.SEND_WAIT~q\,
	datab => \inst|Selector55~1_combout\,
	datac => \inst|uart_data\(2),
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|Selector55~2_combout\);

-- Location: LCCOMB_X38_Y31_N20
\inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = \inst|mode.SHOW_ENCRYPT~q\ $ (((\inst|index\(1)) # (\inst|index\(2) $ (\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datac => \inst|index\(0),
	datad => \inst|mode.SHOW_ENCRYPT~q\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X39_Y31_N18
\inst|Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~0_combout\ = (\inst|uart_data\(2) & (\inst|send_state.SEND_BODY~q\ & ((\inst|uart_inst|busy~q\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_data\(2),
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|send_state.SEND_BODY~q\,
	combout => \inst|Selector55~0_combout\);

-- Location: LCCOMB_X39_Y31_N6
\inst|Selector55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~3_combout\ = (\inst|Selector55~2_combout\) # ((\inst|Selector55~0_combout\) # ((\inst|Selector5~0_combout\ & \inst|Selector57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector55~2_combout\,
	datab => \inst|Selector5~0_combout\,
	datac => \inst|Selector57~0_combout\,
	datad => \inst|Selector55~0_combout\,
	combout => \inst|Selector55~3_combout\);

-- Location: FF_X39_Y31_N7
\inst|uart_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector55~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(2));

-- Location: LCCOMB_X39_Y29_N22
\inst|uart_inst|shift_reg[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[3]~3_combout\ = !\inst|uart_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_data\(2),
	combout => \inst|uart_inst|shift_reg[3]~3_combout\);

-- Location: FF_X39_Y29_N23
\inst|uart_inst|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[3]~3_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(3));

-- Location: LCCOMB_X38_Y31_N14
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\inst|index\(3) & (\inst|index\(2) $ (((!\inst|index\(1) & \inst|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(2),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y31_N0
\inst|Selector57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~1_combout\ = (\inst|uart_inst|busy~q\ & (\inst|uart_data\(0) & ((\inst|send_state.SEND_STX~q\) # (\inst|send_state.SEND_ETX~q\)))) # (!\inst|uart_inst|busy~q\ & (((\inst|send_state.SEND_ETX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_data\(0),
	datab => \inst|uart_inst|busy~q\,
	datac => \inst|send_state.SEND_STX~q\,
	datad => \inst|send_state.SEND_ETX~q\,
	combout => \inst|Selector57~1_combout\);

-- Location: LCCOMB_X39_Y31_N10
\inst|Selector57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~2_combout\ = (\inst|Selector57~1_combout\) # ((\inst|uart_data\(0) & ((\inst|WideOr2~0_combout\) # (\inst|send_state.SEND_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector57~1_combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|send_state.SEND_WAIT~q\,
	datad => \inst|uart_data\(0),
	combout => \inst|Selector57~2_combout\);

-- Location: LCCOMB_X39_Y31_N16
\inst|Selector57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~3_combout\ = (\inst|Selector57~2_combout\) # ((\inst|Selector57~0_combout\ & (\inst|Mux6~0_combout\ $ (\inst|mode.SHOW_ENCRYPT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datab => \inst|mode.SHOW_ENCRYPT~q\,
	datac => \inst|Selector57~0_combout\,
	datad => \inst|Selector57~2_combout\,
	combout => \inst|Selector57~3_combout\);

-- Location: LCCOMB_X39_Y31_N20
\inst|Selector57~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~4_combout\ = (\inst|Selector57~3_combout\) # ((\inst|index[3]~0_combout\ & \inst|uart_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index[3]~0_combout\,
	datac => \inst|uart_data\(0),
	datad => \inst|Selector57~3_combout\,
	combout => \inst|Selector57~4_combout\);

-- Location: FF_X39_Y31_N21
\inst|uart_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector57~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_data\(0));

-- Location: LCCOMB_X39_Y29_N2
\inst|uart_inst|shift_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|shift_reg[1]~2_combout\ = !\inst|uart_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_data\(0),
	combout => \inst|uart_inst|shift_reg[1]~2_combout\);

-- Location: FF_X39_Y29_N3
\inst|uart_inst|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|shift_reg[1]~2_combout\,
	ena => \inst|uart_inst|shift_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|shift_reg\(1));

-- Location: LCCOMB_X39_Y29_N28
\inst|uart_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Mux0~0_combout\ = (\inst|uart_inst|bit_index\(1) & (((\inst|uart_inst|bit_index\(0))))) # (!\inst|uart_inst|bit_index\(1) & ((\inst|uart_inst|bit_index\(0) & ((!\inst|uart_inst|shift_reg\(1)))) # (!\inst|uart_inst|bit_index\(0) & 
-- (!\inst|uart_inst|shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(1),
	datab => \inst|uart_inst|shift_reg\(0),
	datac => \inst|uart_inst|bit_index\(0),
	datad => \inst|uart_inst|shift_reg\(1),
	combout => \inst|uart_inst|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y29_N12
\inst|uart_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|Mux0~1_combout\ = (\inst|uart_inst|bit_index\(1) & ((\inst|uart_inst|Mux0~0_combout\ & ((!\inst|uart_inst|shift_reg\(3)))) # (!\inst|uart_inst|Mux0~0_combout\ & (!\inst|uart_inst|shift_reg\(2))))) # (!\inst|uart_inst|bit_index\(1) & 
-- (((\inst|uart_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|bit_index\(1),
	datab => \inst|uart_inst|shift_reg\(2),
	datac => \inst|uart_inst|shift_reg\(3),
	datad => \inst|uart_inst|Mux0~0_combout\,
	combout => \inst|uart_inst|Mux0~1_combout\);

-- Location: LCCOMB_X39_Y29_N24
\inst|uart_inst|tx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|tx~4_combout\ = (\inst|uart_inst|bit_index\(2) & (\inst|uart_inst|Mux0~3_combout\)) # (!\inst|uart_inst|bit_index\(2) & ((\inst|uart_inst|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_inst|bit_index\(2),
	datac => \inst|uart_inst|Mux0~3_combout\,
	datad => \inst|uart_inst|Mux0~1_combout\,
	combout => \inst|uart_inst|tx~4_combout\);

-- Location: LCCOMB_X37_Y29_N6
\inst|uart_inst|tx~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|tx~5_combout\ = (\inst|uart_inst|tx~3_combout\) # ((!\inst|uart_inst|Equal0~10_combout\ & (!\inst|uart_inst|bit_index\(3) & \inst|uart_inst|tx~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_inst|tx~3_combout\,
	datab => \inst|uart_inst|Equal0~10_combout\,
	datac => \inst|uart_inst|bit_index\(3),
	datad => \inst|uart_inst|tx~4_combout\,
	combout => \inst|uart_inst|tx~5_combout\);

-- Location: LCCOMB_X37_Y29_N20
\inst|uart_inst|tx~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|uart_inst|tx~feeder_combout\ = \inst|uart_inst|tx~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_inst|tx~5_combout\,
	combout => \inst|uart_inst|tx~feeder_combout\);

-- Location: FF_X37_Y29_N21
\inst|uart_inst|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|uart_inst|tx~feeder_combout\,
	asdata => VCC,
	sload => \inst|uart_inst|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_inst|tx~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Tx_pin <= \Tx_pin~output_o\;
END structure;


