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

-- DATE "04/30/2026 01:45:27"

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
	KEY1 : IN std_logic;
	Rx_pin : IN std_logic;
	KEY0 : IN std_logic
	);
END FinalProject;

-- Design Ports Information
-- Tx_pin	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rx_pin	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_Rx_pin : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Tx_pin~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[0]~13_combout\ : std_logic;
SIGNAL \inst|index[0]~7_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst|Selector524~0_combout\ : std_logic;
SIGNAL \inst|state.S_TX_WAIT~q\ : std_logic;
SIGNAL \inst|Selector520~0_combout\ : std_logic;
SIGNAL \inst|buf_len[0]~8_combout\ : std_logic;
SIGNAL \Rx_pin~input_o\ : std_logic;
SIGNAL \inst|u_rx|rx_sync[0]~0_combout\ : std_logic;
SIGNAL \inst|u_rx|rx_sync[1]~feeder_combout\ : std_logic;
SIGNAL \inst|u_rx|receiving~0_combout\ : std_logic;
SIGNAL \inst|u_rx|receiving~q\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[6]~14_combout\ : std_logic;
SIGNAL \inst|u_rx|Add1~0_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \inst|u_rx|Add1~1_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[3]~5_combout\ : std_logic;
SIGNAL \inst|u_rx|process_1~0_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[0]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[0]~16\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[1]~17_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[1]~18\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[2]~19_combout\ : std_logic;
SIGNAL \inst|u_rx|receiving~_wirecell_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[2]~20\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[3]~21_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[3]~22\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[4]~23_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[4]~24\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[5]~25_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[5]~26\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[6]~27_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[6]~28\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[7]~29_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[7]~30\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[8]~31_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[8]~32\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[9]~33_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[9]~34\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[10]~35_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[10]~36\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[11]~37_combout\ : std_logic;
SIGNAL \inst|u_rx|Equal0~2_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[11]~38\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[12]~39_combout\ : std_logic;
SIGNAL \inst|u_rx|Equal0~0_combout\ : std_logic;
SIGNAL \inst|u_rx|Equal0~1_combout\ : std_logic;
SIGNAL \inst|u_rx|Equal0~3_combout\ : std_logic;
SIGNAL \inst|u_rx|baud_cnt[6]~13_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[0]~2_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[1]~3_combout\ : std_logic;
SIGNAL \inst|u_rx|ready_reg~0_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \inst|u_rx|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \inst|u_rx|ready_reg~1_combout\ : std_logic;
SIGNAL \inst|u_rx|ready_reg~q\ : std_logic;
SIGNAL \inst|state.S_RECEIVE~2_combout\ : std_logic;
SIGNAL \inst|state.S_RECEIVE~q\ : std_logic;
SIGNAL \inst|buf_len[5]~19\ : std_logic;
SIGNAL \inst|buf_len[6]~20_combout\ : std_logic;
SIGNAL \inst|buf_len[6]~7_combout\ : std_logic;
SIGNAL \inst|buf_len[0]~9\ : std_logic;
SIGNAL \inst|buf_len[1]~10_combout\ : std_logic;
SIGNAL \inst|buf_len[1]~11\ : std_logic;
SIGNAL \inst|buf_len[2]~12_combout\ : std_logic;
SIGNAL \inst|buf_len[2]~13\ : std_logic;
SIGNAL \inst|buf_len[3]~14_combout\ : std_logic;
SIGNAL \inst|buf_len[3]~15\ : std_logic;
SIGNAL \inst|buf_len[4]~16_combout\ : std_logic;
SIGNAL \inst|buf_len[4]~17\ : std_logic;
SIGNAL \inst|buf_len[5]~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~67_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~66_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \inst|key0_sync[0]~0_combout\ : std_logic;
SIGNAL \inst|key0_sync[1]~feeder_combout\ : std_logic;
SIGNAL \inst|key0_sync[2]~feeder_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|key0_edge~q\ : std_logic;
SIGNAL \inst|Selector519~3_combout\ : std_logic;
SIGNAL \inst|Selector521~0_combout\ : std_logic;
SIGNAL \inst|state.S_PROCESS~q\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~12_combout\ : std_logic;
SIGNAL \inst|Selector519~1_combout\ : std_logic;
SIGNAL \inst|Selector519~4_combout\ : std_logic;
SIGNAL \inst|Selector519~5_combout\ : std_logic;
SIGNAL \inst|Selector523~2_combout\ : std_logic;
SIGNAL \inst|state.S_TX_SEND~q\ : std_logic;
SIGNAL \inst|Selector519~2_combout\ : std_logic;
SIGNAL \inst|Selector520~1_combout\ : std_logic;
SIGNAL \inst|Selector520~2_combout\ : std_logic;
SIGNAL \inst|Selector520~3_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Selector522~5_combout\ : std_logic;
SIGNAL \inst|Selector520~4_combout\ : std_logic;
SIGNAL \inst|state.S_WAIT_KEY~q\ : std_logic;
SIGNAL \inst|index[5]~17_combout\ : std_logic;
SIGNAL \inst|index[5]~18_combout\ : std_logic;
SIGNAL \inst|index[5]~19_combout\ : std_logic;
SIGNAL \inst|index[5]~20_combout\ : std_logic;
SIGNAL \inst|index[0]~8\ : std_logic;
SIGNAL \inst|index[1]~9_combout\ : std_logic;
SIGNAL \inst|index[1]~10\ : std_logic;
SIGNAL \inst|index[2]~11_combout\ : std_logic;
SIGNAL \inst|index[2]~12\ : std_logic;
SIGNAL \inst|index[3]~13_combout\ : std_logic;
SIGNAL \inst|index[3]~14\ : std_logic;
SIGNAL \inst|index[4]~15_combout\ : std_logic;
SIGNAL \inst|index[4]~16\ : std_logic;
SIGNAL \inst|index[5]~21_combout\ : std_logic;
SIGNAL \inst|index[5]~22\ : std_logic;
SIGNAL \inst|index[6]~23_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~12_combout\ : std_logic;
SIGNAL \inst|Selector522~4_combout\ : std_logic;
SIGNAL \inst|Selector522~6_combout\ : std_logic;
SIGNAL \inst|state.S_TX_LOAD~q\ : std_logic;
SIGNAL \inst|tx_start~q\ : std_logic;
SIGNAL \inst|u_tx|bit_cnt~0_combout\ : std_logic;
SIGNAL \inst|u_tx|bit_cnt[0]~2_combout\ : std_logic;
SIGNAL \inst|u_tx|bit_cnt[1]~3_combout\ : std_logic;
SIGNAL \inst|u_tx|Add0~1_combout\ : std_logic;
SIGNAL \inst|u_tx|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \inst|u_tx|Add0~0_combout\ : std_logic;
SIGNAL \inst|u_tx|bit_cnt[3]~1_combout\ : std_logic;
SIGNAL \inst|u_tx|Equal1~0_combout\ : std_logic;
SIGNAL \inst|u_tx|busy_reg~0_combout\ : std_logic;
SIGNAL \inst|u_tx|busy_reg~q\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[0]~21_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[0]~22_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[0]~14\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[1]~15_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[1]~16\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[2]~17_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[2]~18\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[3]~19_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[3]~20\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[4]~23_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[4]~24\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[5]~25_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[5]~26\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[6]~27_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[6]~28\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[7]~29_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[7]~30\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[8]~31_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[8]~32\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[9]~33_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[9]~34\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[10]~35_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[10]~36\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[11]~37_combout\ : std_logic;
SIGNAL \inst|u_tx|Equal0~2_combout\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[11]~38\ : std_logic;
SIGNAL \inst|u_tx|baud_cnt[12]~39_combout\ : std_logic;
SIGNAL \inst|u_tx|Equal0~1_combout\ : std_logic;
SIGNAL \inst|u_tx|Equal0~0_combout\ : std_logic;
SIGNAL \inst|u_tx|Equal0~3_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[2]~2_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[1]~3_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|enc_mode~0_combout\ : std_logic;
SIGNAL \inst|enc_mode~q\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~8_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[6]~7_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~5_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[5]~4_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~8_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux1~2_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~7_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[3]~6_combout\ : std_logic;
SIGNAL \inst|u_rx|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux5~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux7~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux7~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux3~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux7~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux7~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux0~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux0~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux0~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux0~6_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux0~5_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux15~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux15~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux3~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux3~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux4~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux4~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux4~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux11~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux15~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux15~3_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux7~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux12~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux12~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux12~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux12~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux5~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux9~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux10~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux11~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux11~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux17~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux17~1_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux22~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux22~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux22~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux20~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux20~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux20~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux19~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux19~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux19~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux16~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux16~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux16~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux16~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux25~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux25~1_combout\ : std_logic;
SIGNAL \inst|Selector3~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux24~1_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Selector0~4_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[7]~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux3~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux1~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux1~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux7~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux7~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux3~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux7~3_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux5~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux5~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux4~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux4~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux14~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux11~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux0~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux0~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux2~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux15~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux13~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux13~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux14~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux14~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux9~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux9~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux23~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux8~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux8~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux10~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux23~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux20~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux19~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux23~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux23~3_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux20~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux20~2_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux18~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux17~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux22~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux19~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~5_combout\ : std_logic;
SIGNAL \inst|Selector0~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][7]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder1~0_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][7]~173_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~130_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][7]~218_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][7]~179_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][7]~q\ : std_logic;
SIGNAL \inst|Decoder1~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~83_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][7]~101_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][7]~182_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][7]~183_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[58][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][7]~109_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][7]~224_combout\ : std_logic;
SIGNAL \inst|Decoder1~2_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][7]~187_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~120_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][7]~221_combout\ : std_logic;
SIGNAL \inst|Decoder1~4_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][7]~184_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][7]~q\ : std_logic;
SIGNAL \inst|Mux16~31_combout\ : std_logic;
SIGNAL \inst|Mux16~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][7]~104_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][7]~226_combout\ : std_logic;
SIGNAL \inst|Decoder1~7_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][7]~193_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[46][7]~86_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][7]~217_combout\ : std_logic;
SIGNAL \inst|Decoder1~3_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][7]~178_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~73_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~68_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][7]~188_combout\ : std_logic;
SIGNAL \inst|Decoder1~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][7]~189_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][7]~q\ : std_logic;
SIGNAL \inst|Decoder1~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][7]~214_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][7]~174_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][7]~q\ : std_logic;
SIGNAL \inst|Mux16~38_combout\ : std_logic;
SIGNAL \inst|Mux16~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~70_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][7]~82_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~84_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~85_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][7]~102_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][7]~103_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~69_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~71_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][7]~91_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][7]~92_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][7]~q\ : std_logic;
SIGNAL \inst|Mux16~35_combout\ : std_logic;
SIGNAL \inst|Mux16~36_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][7]~195_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][7]~90_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[55][7]~198_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][7]~108_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[53][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][7]~79_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][7]~80_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][7]~81_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~94_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][7]~99_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][7]~100_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][7]~q\ : std_logic;
SIGNAL \inst|Mux16~33_combout\ : std_logic;
SIGNAL \inst|Mux16~34_combout\ : std_logic;
SIGNAL \inst|Mux16~37_combout\ : std_logic;
SIGNAL \inst|Mux16~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~175_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][7]~215_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][7]~176_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][7]~225_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][7]~190_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][7]~106_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][7]~219_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][7]~180_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][7]~222_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][7]~185_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][7]~q\ : std_logic;
SIGNAL \inst|Mux16~7_combout\ : std_logic;
SIGNAL \inst|Mux16~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~72_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][7]~191_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][7]~192_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][7]~220_combout\ : std_logic;
SIGNAL \inst|text_buffer[41][7]~181_combout\ : std_logic;
SIGNAL \inst|text_buffer[41][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][7]~223_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][7]~186_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~216_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~177_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][7]~q\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][7]~75_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][7]~77_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][7]~78_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][7]~74_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][7]~76_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][7]~93_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][7]~95_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][7]~96_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][7]~97_combout\ : std_logic;
SIGNAL \inst|text_buffer[32][7]~98_combout\ : std_logic;
SIGNAL \inst|text_buffer[32][7]~q\ : std_logic;
SIGNAL \inst|Mux16~4_combout\ : std_logic;
SIGNAL \inst|Mux16~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][7]~194_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][7]~87_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][7]~196_combout\ : std_logic;
SIGNAL \inst|text_buffer[39][7]~105_combout\ : std_logic;
SIGNAL \inst|text_buffer[39][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[35][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][7]~197_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][7]~107_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][7]~88_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][7]~89_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][7]~q\ : std_logic;
SIGNAL \inst|Mux16~2_combout\ : std_logic;
SIGNAL \inst|Mux16~3_combout\ : std_logic;
SIGNAL \inst|Mux16~6_combout\ : std_logic;
SIGNAL \inst|Mux16~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~116_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][7]~201_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][7]~117_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][7]~205_combout\ : std_logic;
SIGNAL \inst|text_buffer[8][7]~132_combout\ : std_logic;
SIGNAL \inst|text_buffer[8][7]~q\ : std_logic;
SIGNAL \inst|Mux16~20_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~112_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~129_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~115_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~131_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][7]~200_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][7]~113_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][7]~114_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][7]~q\ : std_logic;
SIGNAL \inst|Mux16~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][7]~143_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][7]~142_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][7]~170_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][7]~171_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~139_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][7]~168_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][7]~169_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][7]~145_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][7]~146_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][7]~211_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][7]~144_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][7]~q\ : std_logic;
SIGNAL \inst|Mux16~22_combout\ : std_logic;
SIGNAL \inst|Mux16~23_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][7]~154_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][7]~153_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][7]~155_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][7]~151_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][7]~152_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][7]~160_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][7]~161_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][7]~162_combout\ : std_logic;
SIGNAL \inst|text_buffer[0][7]~163_combout\ : std_logic;
SIGNAL \inst|text_buffer[0][7]~q\ : std_logic;
SIGNAL \inst|Mux16~24_combout\ : std_logic;
SIGNAL \inst|Mux16~25_combout\ : std_logic;
SIGNAL \inst|Mux16~26_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][7]~209_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][7]~137_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][7]~208_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][7]~135_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][7]~136_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~123_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~124_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[12][7]~203_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][7]~125_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][7]~q\ : std_logic;
SIGNAL \inst|Mux16~27_combout\ : std_logic;
SIGNAL \inst|Mux16~28_combout\ : std_logic;
SIGNAL \inst|Mux16~29_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][7]~110_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~121_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][7]~126_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][7]~127_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][7]~210_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][7]~138_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[27][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][7]~118_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][7]~119_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[25][7]~206_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][7]~133_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][7]~q\ : std_logic;
SIGNAL \inst|Mux16~17_combout\ : std_logic;
SIGNAL \inst|Mux16~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][7]~202_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][7]~122_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[30][7]~207_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][7]~134_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[26][7]~199_combout\ : std_logic;
SIGNAL \inst|text_buffer[26][7]~111_combout\ : std_logic;
SIGNAL \inst|text_buffer[26][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][7]~204_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][7]~128_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][7]~q\ : std_logic;
SIGNAL \inst|Mux16~10_combout\ : std_logic;
SIGNAL \inst|Mux16~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][7]~140_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][7]~141_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~147_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~212_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~148_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][7]~158_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][7]~159_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][7]~164_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][7]~165_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][7]~q\ : std_logic;
SIGNAL \inst|Mux16~14_combout\ : std_logic;
SIGNAL \inst|Mux16~15_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][7]~166_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][7]~167_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][7]~213_combout\ : std_logic;
SIGNAL \inst|text_buffer[23][7]~172_combout\ : std_logic;
SIGNAL \inst|text_buffer[23][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][7]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][7]~156_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][7]~157_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][7]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][7]~149_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][7]~150_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][7]~q\ : std_logic;
SIGNAL \inst|Mux16~12_combout\ : std_logic;
SIGNAL \inst|Mux16~13_combout\ : std_logic;
SIGNAL \inst|Mux16~16_combout\ : std_logic;
SIGNAL \inst|Mux16~19_combout\ : std_logic;
SIGNAL \inst|Mux16~30_combout\ : std_logic;
SIGNAL \inst|Mux16~41_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux5~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux5~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux14~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux14~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux14~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux17~2_combout\ : std_logic;
SIGNAL \inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst|Selector4~5_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Selector4~7_combout\ : std_logic;
SIGNAL \inst|Selector4~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][3]~q\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[55][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[39][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][3]~q\ : std_logic;
SIGNAL \inst|Mux20~7_combout\ : std_logic;
SIGNAL \inst|Mux20~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[33][3]~q\ : std_logic;
SIGNAL \inst|Mux20~2_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][3]~q\ : std_logic;
SIGNAL \inst|Mux20~3_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][3]~q\ : std_logic;
SIGNAL \inst|Mux20~4_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][3]~q\ : std_logic;
SIGNAL \inst|Mux20~5_combout\ : std_logic;
SIGNAL \inst|Mux20~6_combout\ : std_logic;
SIGNAL \inst|Mux20~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[45][3]~q\ : std_logic;
SIGNAL \inst|Mux20~38_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[63][3]~q\ : std_logic;
SIGNAL \inst|Mux20~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[59][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][3]~q\ : std_logic;
SIGNAL \inst|Mux20~31_combout\ : std_logic;
SIGNAL \inst|Mux20~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[46][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][3]~q\ : std_logic;
SIGNAL \inst|Mux20~33_combout\ : std_logic;
SIGNAL \inst|Mux20~34_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[58][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][3]~q\ : std_logic;
SIGNAL \inst|Mux20~35_combout\ : std_logic;
SIGNAL \inst|Mux20~36_combout\ : std_logic;
SIGNAL \inst|Mux20~37_combout\ : std_logic;
SIGNAL \inst|Mux20~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[28][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][3]~q\ : std_logic;
SIGNAL \inst|Mux20~10_combout\ : std_logic;
SIGNAL \inst|Mux20~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[30][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][3]~q\ : std_logic;
SIGNAL \inst|Mux20~17_combout\ : std_logic;
SIGNAL \inst|Mux20~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][3]~q\ : std_logic;
SIGNAL \inst|Mux20~14_combout\ : std_logic;
SIGNAL \inst|Mux20~15_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[10][3]~q\ : std_logic;
SIGNAL \inst|Mux20~12_combout\ : std_logic;
SIGNAL \inst|Mux20~13_combout\ : std_logic;
SIGNAL \inst|Mux20~16_combout\ : std_logic;
SIGNAL \inst|Mux20~19_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[21][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][3]~q\ : std_logic;
SIGNAL \inst|Mux20~20_combout\ : std_logic;
SIGNAL \inst|Mux20~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][3]~q\ : std_logic;
SIGNAL \inst|Mux20~27_combout\ : std_logic;
SIGNAL \inst|Mux20~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][3]~q\ : std_logic;
SIGNAL \inst|Mux20~22_combout\ : std_logic;
SIGNAL \inst|Mux20~23_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][3]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][3]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][3]~q\ : std_logic;
SIGNAL \inst|Mux20~24_combout\ : std_logic;
SIGNAL \inst|Mux20~25_combout\ : std_logic;
SIGNAL \inst|Mux20~26_combout\ : std_logic;
SIGNAL \inst|Mux20~29_combout\ : std_logic;
SIGNAL \inst|Mux20~30_combout\ : std_logic;
SIGNAL \inst|Mux20~41_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux1~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux2~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~7_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~5_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~6_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux8~9_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux21~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux21~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux21~2_combout\ : std_logic;
SIGNAL \inst|Selector6~9_combout\ : std_logic;
SIGNAL \inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst|Selector7~5_combout\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|Selector7~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Selector7~3_combout\ : std_logic;
SIGNAL \inst|Selector7~7_combout\ : std_logic;
SIGNAL \inst|Selector7~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[33][0]~q\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[35][0]~q\ : std_logic;
SIGNAL \inst|Mux23~7_combout\ : std_logic;
SIGNAL \inst|Mux23~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][0]~q\ : std_logic;
SIGNAL \inst|Mux23~4_combout\ : std_logic;
SIGNAL \inst|Mux23~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[54][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][0]~q\ : std_logic;
SIGNAL \inst|Mux23~2_combout\ : std_logic;
SIGNAL \inst|Mux23~3_combout\ : std_logic;
SIGNAL \inst|Mux23~6_combout\ : std_logic;
SIGNAL \inst|Mux23~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[45][0]~q\ : std_logic;
SIGNAL \inst|Mux23~38_combout\ : std_logic;
SIGNAL \inst|Mux23~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][0]~q\ : std_logic;
SIGNAL \inst|Mux23~31_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][0]~q\ : std_logic;
SIGNAL \inst|Mux23~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[58][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][0]~q\ : std_logic;
SIGNAL \inst|Mux23~35_combout\ : std_logic;
SIGNAL \inst|Mux23~36_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[59][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][0]~q\ : std_logic;
SIGNAL \inst|Mux23~33_combout\ : std_logic;
SIGNAL \inst|Mux23~34_combout\ : std_logic;
SIGNAL \inst|Mux23~37_combout\ : std_logic;
SIGNAL \inst|Mux23~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[10][0]~q\ : std_logic;
SIGNAL \inst|Mux23~10_combout\ : std_logic;
SIGNAL \inst|Mux23~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[14][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][0]~q\ : std_logic;
SIGNAL \inst|Mux23~17_combout\ : std_logic;
SIGNAL \inst|Mux23~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[12][0]~q\ : std_logic;
SIGNAL \inst|Mux23~12_combout\ : std_logic;
SIGNAL \inst|Mux23~13_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[25][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][0]~q\ : std_logic;
SIGNAL \inst|Mux23~14_combout\ : std_logic;
SIGNAL \inst|Mux23~15_combout\ : std_logic;
SIGNAL \inst|Mux23~16_combout\ : std_logic;
SIGNAL \inst|Mux23~19_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][0]~q\ : std_logic;
SIGNAL \inst|Mux23~20_combout\ : std_logic;
SIGNAL \inst|Mux23~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][0]~q\ : std_logic;
SIGNAL \inst|Mux23~27_combout\ : std_logic;
SIGNAL \inst|Mux23~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[16][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][0]~q\ : std_logic;
SIGNAL \inst|Mux23~24_combout\ : std_logic;
SIGNAL \inst|Mux23~25_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][0]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][0]~q\ : std_logic;
SIGNAL \inst|Mux23~22_combout\ : std_logic;
SIGNAL \inst|Mux23~23_combout\ : std_logic;
SIGNAL \inst|Mux23~26_combout\ : std_logic;
SIGNAL \inst|Mux23~29_combout\ : std_logic;
SIGNAL \inst|Mux23~30_combout\ : std_logic;
SIGNAL \inst|Mux23~41_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux3~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux15~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux15~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux21~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux21~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|Selector2~5_combout\ : std_logic;
SIGNAL \inst|Selector2~4_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][5]~q\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][5]~q\ : std_logic;
SIGNAL \inst|Mux18~7_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][5]~q\ : std_logic;
SIGNAL \inst|Mux18~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[14][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[10][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][5]~q\ : std_logic;
SIGNAL \inst|Mux18~4_combout\ : std_logic;
SIGNAL \inst|Mux18~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][5]~q\ : std_logic;
SIGNAL \inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst|Mux18~3_combout\ : std_logic;
SIGNAL \inst|Mux18~6_combout\ : std_logic;
SIGNAL \inst|Mux18~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[59][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[58][5]~q\ : std_logic;
SIGNAL \inst|Mux18~38_combout\ : std_logic;
SIGNAL \inst|Mux18~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[61][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[57][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[56][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[60][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][5]~q\ : std_logic;
SIGNAL \inst|Mux18~31_combout\ : std_logic;
SIGNAL \inst|Mux18~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[28][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][5]~q\ : std_logic;
SIGNAL \inst|Mux18~35_combout\ : std_logic;
SIGNAL \inst|Mux18~36_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[30][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][5]~q\ : std_logic;
SIGNAL \inst|Mux18~33_combout\ : std_logic;
SIGNAL \inst|Mux18~34_combout\ : std_logic;
SIGNAL \inst|Mux18~37_combout\ : std_logic;
SIGNAL \inst|Mux18~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[55][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[53][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][5]~q\ : std_logic;
SIGNAL \inst|Mux18~17_combout\ : std_logic;
SIGNAL \inst|Mux18~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[50][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][5]~q\ : std_logic;
SIGNAL \inst|Mux18~10_combout\ : std_logic;
SIGNAL \inst|Mux18~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[21][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][5]~q\ : std_logic;
SIGNAL \inst|Mux18~12_combout\ : std_logic;
SIGNAL \inst|Mux18~13_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][5]~q\ : std_logic;
SIGNAL \inst|Mux18~14_combout\ : std_logic;
SIGNAL \inst|Mux18~15_combout\ : std_logic;
SIGNAL \inst|Mux18~16_combout\ : std_logic;
SIGNAL \inst|Mux18~19_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][5]~q\ : std_logic;
SIGNAL \inst|Mux18~27_combout\ : std_logic;
SIGNAL \inst|Mux18~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][5]~q\ : std_logic;
SIGNAL \inst|Mux18~20_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[33][5]~q\ : std_logic;
SIGNAL \inst|Mux18~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][5]~q\ : std_logic;
SIGNAL \inst|Mux18~22_combout\ : std_logic;
SIGNAL \inst|Mux18~23_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][5]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][5]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][5]~q\ : std_logic;
SIGNAL \inst|Mux18~24_combout\ : std_logic;
SIGNAL \inst|Mux18~25_combout\ : std_logic;
SIGNAL \inst|Mux18~26_combout\ : std_logic;
SIGNAL \inst|Mux18~29_combout\ : std_logic;
SIGNAL \inst|Mux18~30_combout\ : std_logic;
SIGNAL \inst|Mux18~41_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux12~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux12~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux12~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux16~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux16~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux26~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux26~1_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[57][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[59][6]~q\ : std_logic;
SIGNAL \inst|Mux17~38_combout\ : std_logic;
SIGNAL \inst|Mux17~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[56][6]~q\ : std_logic;
SIGNAL \inst|Mux17~31_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[62][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[60][6]~q\ : std_logic;
SIGNAL \inst|Mux17~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][6]~q\ : std_logic;
SIGNAL \inst|Mux17~33_combout\ : std_logic;
SIGNAL \inst|Mux17~34_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][6]~q\ : std_logic;
SIGNAL \inst|Mux17~35_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][6]~q\ : std_logic;
SIGNAL \inst|Mux17~36_combout\ : std_logic;
SIGNAL \inst|Mux17~37_combout\ : std_logic;
SIGNAL \inst|Mux17~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][6]~q\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[54][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[50][6]~q\ : std_logic;
SIGNAL \inst|Mux17~7_combout\ : std_logic;
SIGNAL \inst|Mux17~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][6]~q\ : std_logic;
SIGNAL \inst|Mux17~4_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][6]~q\ : std_logic;
SIGNAL \inst|Mux17~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][6]~q\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|Mux17~3_combout\ : std_logic;
SIGNAL \inst|Mux17~6_combout\ : std_logic;
SIGNAL \inst|Mux17~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[28][6]~q\ : std_logic;
SIGNAL \inst|Mux17~17_combout\ : std_logic;
SIGNAL \inst|Mux17~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[25][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][6]~q\ : std_logic;
SIGNAL \inst|Mux17~10_combout\ : std_logic;
SIGNAL \inst|Mux17~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][6]~q\ : std_logic;
SIGNAL \inst|Mux17~14_combout\ : std_logic;
SIGNAL \inst|Mux17~15_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[12][6]~q\ : std_logic;
SIGNAL \inst|Mux17~12_combout\ : std_logic;
SIGNAL \inst|Mux17~13_combout\ : std_logic;
SIGNAL \inst|Mux17~16_combout\ : std_logic;
SIGNAL \inst|Mux17~19_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][6]~q\ : std_logic;
SIGNAL \inst|Mux17~20_combout\ : std_logic;
SIGNAL \inst|Mux17~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][6]~q\ : std_logic;
SIGNAL \inst|Mux17~27_combout\ : std_logic;
SIGNAL \inst|Mux17~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][6]~q\ : std_logic;
SIGNAL \inst|Mux17~24_combout\ : std_logic;
SIGNAL \inst|Mux17~25_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][6]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][6]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][6]~q\ : std_logic;
SIGNAL \inst|Mux17~22_combout\ : std_logic;
SIGNAL \inst|Mux17~23_combout\ : std_logic;
SIGNAL \inst|Mux17~26_combout\ : std_logic;
SIGNAL \inst|Mux17~29_combout\ : std_logic;
SIGNAL \inst|Mux17~30_combout\ : std_logic;
SIGNAL \inst|Mux17~41_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux6~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux6~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux6~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux9~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Selector3~7_combout\ : std_logic;
SIGNAL \inst|u_rx|Decoder0~6_combout\ : std_logic;
SIGNAL \inst|u_rx|shift_reg[4]~5_combout\ : std_logic;
SIGNAL \inst|Selector3~5_combout\ : std_logic;
SIGNAL \inst|Selector3~9_combout\ : std_logic;
SIGNAL \inst|Selector3~6_combout\ : std_logic;
SIGNAL \inst|Selector3~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][4]~q\ : std_logic;
SIGNAL \inst|Mux19~2_combout\ : std_logic;
SIGNAL \inst|Mux19~3_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][4]~q\ : std_logic;
SIGNAL \inst|Mux19~4_combout\ : std_logic;
SIGNAL \inst|Mux19~5_combout\ : std_logic;
SIGNAL \inst|Mux19~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[40][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][4]~q\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[43][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[46][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[46][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][4]~q\ : std_logic;
SIGNAL \inst|Mux19~7_combout\ : std_logic;
SIGNAL \inst|Mux19~8_combout\ : std_logic;
SIGNAL \inst|Mux19~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[60][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][4]~q\ : std_logic;
SIGNAL \inst|Mux19~38_combout\ : std_logic;
SIGNAL \inst|Mux19~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[55][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[53][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][4]~q\ : std_logic;
SIGNAL \inst|Mux19~33_combout\ : std_logic;
SIGNAL \inst|Mux19~34_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][4]~q\ : std_logic;
SIGNAL \inst|Mux19~35_combout\ : std_logic;
SIGNAL \inst|Mux19~36_combout\ : std_logic;
SIGNAL \inst|Mux19~37_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[59][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[56][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[57][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][4]~q\ : std_logic;
SIGNAL \inst|Mux19~31_combout\ : std_logic;
SIGNAL \inst|Mux19~32_combout\ : std_logic;
SIGNAL \inst|Mux19~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[13][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[12][4]~q\ : std_logic;
SIGNAL \inst|Mux19~27_combout\ : std_logic;
SIGNAL \inst|Mux19~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[9][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][4]~q\ : std_logic;
SIGNAL \inst|Mux19~20_combout\ : std_logic;
SIGNAL \inst|Mux19~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][4]~q\ : std_logic;
SIGNAL \inst|Mux19~22_combout\ : std_logic;
SIGNAL \inst|Mux19~23_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[2][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][4]~q\ : std_logic;
SIGNAL \inst|Mux19~24_combout\ : std_logic;
SIGNAL \inst|Mux19~25_combout\ : std_logic;
SIGNAL \inst|Mux19~26_combout\ : std_logic;
SIGNAL \inst|Mux19~29_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[31][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[27][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[27][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[25][4]~q\ : std_logic;
SIGNAL \inst|Mux19~17_combout\ : std_logic;
SIGNAL \inst|Mux19~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[28][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[30][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[26][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][4]~q\ : std_logic;
SIGNAL \inst|Mux19~10_combout\ : std_logic;
SIGNAL \inst|Mux19~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][4]~q\ : std_logic;
SIGNAL \inst|Mux19~12_combout\ : std_logic;
SIGNAL \inst|Mux19~13_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[20][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][4]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][4]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][4]~q\ : std_logic;
SIGNAL \inst|Mux19~14_combout\ : std_logic;
SIGNAL \inst|Mux19~15_combout\ : std_logic;
SIGNAL \inst|Mux19~16_combout\ : std_logic;
SIGNAL \inst|Mux19~19_combout\ : std_logic;
SIGNAL \inst|Mux19~30_combout\ : std_logic;
SIGNAL \inst|Mux19~41_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux6~0_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux22~1_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux18~1_combout\ : std_logic;
SIGNAL \inst|Selector6~4_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux30~1_combout\ : std_logic;
SIGNAL \inst|Selector6~6_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Selector6~5_combout\ : std_logic;
SIGNAL \inst|Selector6~7_combout\ : std_logic;
SIGNAL \inst|Selector6~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[41][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[37][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[33][1]~q\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux22~1_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[47][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[39][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[35][1]~q\ : std_logic;
SIGNAL \inst|Mux22~7_combout\ : std_logic;
SIGNAL \inst|Mux22~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[44][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[36][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[32][1]~q\ : std_logic;
SIGNAL \inst|Mux22~4_combout\ : std_logic;
SIGNAL \inst|Mux22~5_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[42][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[46][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[38][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[34][1]~q\ : std_logic;
SIGNAL \inst|Mux22~2_combout\ : std_logic;
SIGNAL \inst|Mux22~3_combout\ : std_logic;
SIGNAL \inst|Mux22~6_combout\ : std_logic;
SIGNAL \inst|Mux22~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[63][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[55][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[54][1]~q\ : std_logic;
SIGNAL \inst|Mux22~38_combout\ : std_logic;
SIGNAL \inst|Mux22~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[58][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[51][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[50][1]~q\ : std_logic;
SIGNAL \inst|Mux22~31_combout\ : std_logic;
SIGNAL \inst|Mux22~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[57][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[49][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[48][1]~q\ : std_logic;
SIGNAL \inst|Mux22~35_combout\ : std_logic;
SIGNAL \inst|Mux22~36_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[60][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[53][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[53][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[52][1]~q\ : std_logic;
SIGNAL \inst|Mux22~33_combout\ : std_logic;
SIGNAL \inst|Mux22~34_combout\ : std_logic;
SIGNAL \inst|Mux22~37_combout\ : std_logic;
SIGNAL \inst|Mux22~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][1]~q\ : std_logic;
SIGNAL \inst|Mux22~27_combout\ : std_logic;
SIGNAL \inst|Mux22~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[10][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[3][1]~q\ : std_logic;
SIGNAL \inst|Mux22~20_combout\ : std_logic;
SIGNAL \inst|Mux22~21_combout\ : std_logic;
SIGNAL \inst|text_buffer[8][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[8][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[1][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][1]~q\ : std_logic;
SIGNAL \inst|Mux22~24_combout\ : std_logic;
SIGNAL \inst|Mux22~25_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[12][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][1]~q\ : std_logic;
SIGNAL \inst|Mux22~22_combout\ : std_logic;
SIGNAL \inst|Mux22~23_combout\ : std_logic;
SIGNAL \inst|Mux22~26_combout\ : std_logic;
SIGNAL \inst|Mux22~29_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[28][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[22][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][1]~q\ : std_logic;
SIGNAL \inst|Mux22~10_combout\ : std_logic;
SIGNAL \inst|Mux22~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[21][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[23][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[23][1]~q\ : std_logic;
SIGNAL \inst|Mux22~17_combout\ : std_logic;
SIGNAL \inst|Mux22~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[25][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[27][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][1]~q\ : std_logic;
SIGNAL \inst|Mux22~12_combout\ : std_logic;
SIGNAL \inst|Mux22~13_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[24][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][1]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[18][1]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][1]~q\ : std_logic;
SIGNAL \inst|Mux22~14_combout\ : std_logic;
SIGNAL \inst|Mux22~15_combout\ : std_logic;
SIGNAL \inst|Mux22~16_combout\ : std_logic;
SIGNAL \inst|Mux22~19_combout\ : std_logic;
SIGNAL \inst|Mux22~30_combout\ : std_logic;
SIGNAL \inst|Mux22~41_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux1~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux13~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux13~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux13~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux13~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux23~0_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux23~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux23~2_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux23~3_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux29~1_combout\ : std_logic;
SIGNAL \inst|u_spn_dec|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Selector5~5_combout\ : std_logic;
SIGNAL \inst|Selector5~6_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|u_spn|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|Selector5~4_combout\ : std_logic;
SIGNAL \inst|Selector5~7_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[45][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[47][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[15][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[15][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[13][2]~q\ : std_logic;
SIGNAL \inst|Mux21~7_combout\ : std_logic;
SIGNAL \inst|Mux21~8_combout\ : std_logic;
SIGNAL \inst|text_buffer[41][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[41][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[43][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[11][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[11][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[9][2]~q\ : std_logic;
SIGNAL \inst|Mux21~2_combout\ : std_logic;
SIGNAL \inst|Mux21~3_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[40][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[42][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[10][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[10][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[8][2]~q\ : std_logic;
SIGNAL \inst|Mux21~4_combout\ : std_logic;
SIGNAL \inst|Mux21~5_combout\ : std_logic;
SIGNAL \inst|Mux21~6_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[44][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[46][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[14][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[14][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[12][2]~q\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Mux21~1_combout\ : std_logic;
SIGNAL \inst|Mux21~9_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[57][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[61][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[29][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[29][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[25][2]~q\ : std_logic;
SIGNAL \inst|Mux21~31_combout\ : std_logic;
SIGNAL \inst|Mux21~32_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[31][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[27][2]~q\ : std_logic;
SIGNAL \inst|Mux21~38_combout\ : std_logic;
SIGNAL \inst|text_buffer[59][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[63][2]~q\ : std_logic;
SIGNAL \inst|Mux21~39_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[58][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[62][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[30][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[30][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[26][2]~q\ : std_logic;
SIGNAL \inst|Mux21~33_combout\ : std_logic;
SIGNAL \inst|Mux21~34_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[56][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[60][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[28][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[24][2]~q\ : std_logic;
SIGNAL \inst|Mux21~35_combout\ : std_logic;
SIGNAL \inst|Mux21~36_combout\ : std_logic;
SIGNAL \inst|Mux21~37_combout\ : std_logic;
SIGNAL \inst|Mux21~40_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[35][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[7][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[7][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[3][2]~q\ : std_logic;
SIGNAL \inst|Mux21~27_combout\ : std_logic;
SIGNAL \inst|text_buffer[39][2]~q\ : std_logic;
SIGNAL \inst|Mux21~28_combout\ : std_logic;
SIGNAL \inst|text_buffer[32][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[32][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[36][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[4][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[4][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[0][2]~q\ : std_logic;
SIGNAL \inst|Mux21~24_combout\ : std_logic;
SIGNAL \inst|Mux21~25_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[33][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[37][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[5][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[5][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[1][2]~q\ : std_logic;
SIGNAL \inst|Mux21~22_combout\ : std_logic;
SIGNAL \inst|Mux21~23_combout\ : std_logic;
SIGNAL \inst|Mux21~26_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[34][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[38][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[6][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[6][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[2][2]~q\ : std_logic;
SIGNAL \inst|Mux21~20_combout\ : std_logic;
SIGNAL \inst|Mux21~21_combout\ : std_logic;
SIGNAL \inst|Mux21~29_combout\ : std_logic;
SIGNAL \inst|text_buffer[23][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[23][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[22][2]~q\ : std_logic;
SIGNAL \inst|Mux21~17_combout\ : std_logic;
SIGNAL \inst|text_buffer[55][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[54][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[54][2]~q\ : std_logic;
SIGNAL \inst|Mux21~18_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[50][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[51][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[19][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[19][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[18][2]~q\ : std_logic;
SIGNAL \inst|Mux21~10_combout\ : std_logic;
SIGNAL \inst|Mux21~11_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[48][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[49][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[17][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[17][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[16][2]~q\ : std_logic;
SIGNAL \inst|Mux21~14_combout\ : std_logic;
SIGNAL \inst|Mux21~15_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[52][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[53][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[21][2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_buffer[21][2]~q\ : std_logic;
SIGNAL \inst|text_buffer[20][2]~q\ : std_logic;
SIGNAL \inst|Mux21~12_combout\ : std_logic;
SIGNAL \inst|Mux21~13_combout\ : std_logic;
SIGNAL \inst|Mux21~16_combout\ : std_logic;
SIGNAL \inst|Mux21~19_combout\ : std_logic;
SIGNAL \inst|Mux21~30_combout\ : std_logic;
SIGNAL \inst|Mux21~41_combout\ : std_logic;
SIGNAL \inst|tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|tx_data[7]~0_combout\ : std_logic;
SIGNAL \inst|u_tx|shifter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|u_tx|shifter[8]~0_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~1_combout\ : std_logic;
SIGNAL \inst|u_tx|shifter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~0_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~2_combout\ : std_logic;
SIGNAL \inst|u_tx|shifter[5]~feeder_combout\ : std_logic;
SIGNAL \inst|u_tx|Mux0~0_combout\ : std_logic;
SIGNAL \inst|u_tx|shifter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|u_tx|Mux0~1_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~3_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~4_combout\ : std_logic;
SIGNAL \inst|u_tx|tx_reg~q\ : std_logic;
SIGNAL \inst|buf_len\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|u_tx|baud_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|u_tx|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|index\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|u_rx|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|u_tx|shifter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|u_rx|baud_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|u_rx|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|key0_sync\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|u_rx|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|u_rx|rx_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|u_tx|ALT_INV_tx_reg~q\ : std_logic;
SIGNAL \inst|u_tx|ALT_INV_busy_reg~q\ : std_logic;
SIGNAL \inst|u_rx|ALT_INV_receiving~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Tx_pin <= ww_Tx_pin;
ww_CLK <= CLK;
ww_KEY1 <= KEY1;
ww_Rx_pin <= Rx_pin;
ww_KEY0 <= KEY0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|u_tx|ALT_INV_tx_reg~q\ <= NOT \inst|u_tx|tx_reg~q\;
\inst|u_tx|ALT_INV_busy_reg~q\ <= NOT \inst|u_tx|busy_reg~q\;
\inst|u_rx|ALT_INV_receiving~q\ <= NOT \inst|u_rx|receiving~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N16
\Tx_pin~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u_tx|ALT_INV_tx_reg~q\,
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

-- Location: LCCOMB_X43_Y26_N2
\inst|u_tx|baud_cnt[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[0]~13_combout\ = \inst|u_tx|baud_cnt\(0) $ (VCC)
-- \inst|u_tx|baud_cnt[0]~14\ = CARRY(\inst|u_tx|baud_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(0),
	datad => VCC,
	combout => \inst|u_tx|baud_cnt[0]~13_combout\,
	cout => \inst|u_tx|baud_cnt[0]~14\);

-- Location: LCCOMB_X37_Y29_N0
\inst|index[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[0]~7_combout\ = \inst|index\(0) $ (VCC)
-- \inst|index[0]~8\ = CARRY(\inst|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(0),
	datad => VCC,
	combout => \inst|index[0]~7_combout\,
	cout => \inst|index[0]~8\);

-- Location: IOIBUF_X49_Y54_N29
\KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LCCOMB_X42_Y28_N28
\inst|Selector524~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector524~0_combout\ = (\inst|state.S_TX_SEND~q\) # (\inst|state.S_TX_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.S_TX_SEND~q\,
	datac => \inst|state.S_TX_WAIT~q\,
	combout => \inst|Selector524~0_combout\);

-- Location: FF_X42_Y28_N29
\inst|state.S_TX_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector524~0_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|u_tx|ALT_INV_busy_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_TX_WAIT~q\);

-- Location: LCCOMB_X42_Y28_N0
\inst|Selector520~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector520~0_combout\ = (\inst|u_tx|busy_reg~q\) # (!\inst|state.S_TX_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_tx|busy_reg~q\,
	datad => \inst|state.S_TX_WAIT~q\,
	combout => \inst|Selector520~0_combout\);

-- Location: LCCOMB_X42_Y27_N10
\inst|buf_len[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[0]~8_combout\ = \inst|buf_len\(0) $ (VCC)
-- \inst|buf_len[0]~9\ = CARRY(\inst|buf_len\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(0),
	datad => VCC,
	combout => \inst|buf_len[0]~8_combout\,
	cout => \inst|buf_len[0]~9\);

-- Location: IOIBUF_X34_Y0_N22
\Rx_pin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx_pin,
	o => \Rx_pin~input_o\);

-- Location: LCCOMB_X42_Y32_N6
\inst|u_rx|rx_sync[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|rx_sync[0]~0_combout\ = !\Rx_pin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rx_pin~input_o\,
	combout => \inst|u_rx|rx_sync[0]~0_combout\);

-- Location: FF_X42_Y32_N7
\inst|u_rx|rx_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|rx_sync[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|rx_sync\(0));

-- Location: LCCOMB_X42_Y32_N24
\inst|u_rx|rx_sync[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|rx_sync[1]~feeder_combout\ = \inst|u_rx|rx_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|rx_sync\(0),
	combout => \inst|u_rx|rx_sync[1]~feeder_combout\);

-- Location: FF_X42_Y32_N25
\inst|u_rx|rx_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|rx_sync[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|rx_sync\(1));

-- Location: LCCOMB_X42_Y32_N16
\inst|u_rx|receiving~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|receiving~0_combout\ = (\inst|u_rx|receiving~q\ & (!\inst|u_rx|ready_reg~1_combout\)) # (!\inst|u_rx|receiving~q\ & ((\inst|u_rx|rx_sync\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|ready_reg~1_combout\,
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|receiving~q\,
	combout => \inst|u_rx|receiving~0_combout\);

-- Location: FF_X42_Y32_N17
\inst|u_rx|receiving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|receiving~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|receiving~q\);

-- Location: LCCOMB_X43_Y34_N0
\inst|u_rx|baud_cnt[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[6]~14_combout\ = (\inst|u_rx|rx_sync\(1)) # (\inst|u_rx|receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_rx|rx_sync\(1),
	datad => \inst|u_rx|receiving~q\,
	combout => \inst|u_rx|baud_cnt[6]~14_combout\);

-- Location: LCCOMB_X43_Y34_N28
\inst|u_rx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Add1~0_combout\ = \inst|u_rx|bit_cnt\(2) $ (((\inst|u_rx|bit_cnt\(0) & \inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(2),
	datab => \inst|u_rx|bit_cnt\(0),
	datac => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Add1~0_combout\);

-- Location: LCCOMB_X43_Y34_N30
\inst|u_rx|bit_cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[2]~4_combout\ = (\inst|u_rx|bit_cnt[0]~2_combout\ & (((\inst|u_rx|bit_cnt\(2))))) # (!\inst|u_rx|bit_cnt[0]~2_combout\ & (\inst|u_rx|Add1~0_combout\ & ((\inst|u_rx|bit_cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt[0]~2_combout\,
	datab => \inst|u_rx|Add1~0_combout\,
	datac => \inst|u_rx|bit_cnt\(2),
	datad => \inst|u_rx|bit_cnt[0]~1_combout\,
	combout => \inst|u_rx|bit_cnt[2]~4_combout\);

-- Location: FF_X43_Y34_N31
\inst|u_rx|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|bit_cnt\(2));

-- Location: LCCOMB_X43_Y32_N20
\inst|u_rx|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Add1~1_combout\ = \inst|u_rx|bit_cnt\(3) $ (((\inst|u_rx|bit_cnt\(1) & (\inst|u_rx|bit_cnt\(0) & \inst|u_rx|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(1),
	datab => \inst|u_rx|bit_cnt\(3),
	datac => \inst|u_rx|bit_cnt\(0),
	datad => \inst|u_rx|bit_cnt\(2),
	combout => \inst|u_rx|Add1~1_combout\);

-- Location: LCCOMB_X43_Y32_N0
\inst|u_rx|bit_cnt[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[3]~5_combout\ = (\inst|u_rx|bit_cnt[0]~2_combout\ & (((\inst|u_rx|bit_cnt\(3))))) # (!\inst|u_rx|bit_cnt[0]~2_combout\ & (\inst|u_rx|Add1~1_combout\ & ((\inst|u_rx|bit_cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt[0]~2_combout\,
	datab => \inst|u_rx|Add1~1_combout\,
	datac => \inst|u_rx|bit_cnt\(3),
	datad => \inst|u_rx|bit_cnt[0]~1_combout\,
	combout => \inst|u_rx|bit_cnt[3]~5_combout\);

-- Location: FF_X43_Y32_N1
\inst|u_rx|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|bit_cnt[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|bit_cnt\(3));

-- Location: LCCOMB_X43_Y32_N4
\inst|u_rx|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|process_1~0_combout\ = \inst|u_rx|bit_cnt\(3) $ (((\inst|u_rx|bit_cnt\(1)) # ((\inst|u_rx|bit_cnt\(0)) # (\inst|u_rx|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(1),
	datab => \inst|u_rx|bit_cnt\(3),
	datac => \inst|u_rx|bit_cnt\(0),
	datad => \inst|u_rx|bit_cnt\(2),
	combout => \inst|u_rx|process_1~0_combout\);

-- Location: LCCOMB_X42_Y34_N4
\inst|u_rx|baud_cnt[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[0]~15_combout\ = \inst|u_rx|baud_cnt\(0) $ (VCC)
-- \inst|u_rx|baud_cnt[0]~16\ = CARRY(\inst|u_rx|baud_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(0),
	datad => VCC,
	combout => \inst|u_rx|baud_cnt[0]~15_combout\,
	cout => \inst|u_rx|baud_cnt[0]~16\);

-- Location: LCCOMB_X42_Y36_N20
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X42_Y34_N5
\inst|u_rx|baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[0]~15_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(0));

-- Location: LCCOMB_X42_Y34_N6
\inst|u_rx|baud_cnt[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[1]~17_combout\ = (\inst|u_rx|baud_cnt\(1) & (!\inst|u_rx|baud_cnt[0]~16\)) # (!\inst|u_rx|baud_cnt\(1) & ((\inst|u_rx|baud_cnt[0]~16\) # (GND)))
-- \inst|u_rx|baud_cnt[1]~18\ = CARRY((!\inst|u_rx|baud_cnt[0]~16\) # (!\inst|u_rx|baud_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(1),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[0]~16\,
	combout => \inst|u_rx|baud_cnt[1]~17_combout\,
	cout => \inst|u_rx|baud_cnt[1]~18\);

-- Location: FF_X42_Y34_N7
\inst|u_rx|baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[1]~17_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(1));

-- Location: LCCOMB_X42_Y34_N8
\inst|u_rx|baud_cnt[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[2]~19_combout\ = (\inst|u_rx|baud_cnt\(2) & (\inst|u_rx|baud_cnt[1]~18\ $ (GND))) # (!\inst|u_rx|baud_cnt\(2) & (!\inst|u_rx|baud_cnt[1]~18\ & VCC))
-- \inst|u_rx|baud_cnt[2]~20\ = CARRY((\inst|u_rx|baud_cnt\(2) & !\inst|u_rx|baud_cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(2),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[1]~18\,
	combout => \inst|u_rx|baud_cnt[2]~19_combout\,
	cout => \inst|u_rx|baud_cnt[2]~20\);

-- Location: LCCOMB_X43_Y34_N10
\inst|u_rx|receiving~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|receiving~_wirecell_combout\ = !\inst|u_rx|receiving~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|receiving~q\,
	combout => \inst|u_rx|receiving~_wirecell_combout\);

-- Location: FF_X42_Y34_N9
\inst|u_rx|baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[2]~19_combout\,
	asdata => \inst|u_rx|receiving~_wirecell_combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(2));

-- Location: LCCOMB_X42_Y34_N10
\inst|u_rx|baud_cnt[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[3]~21_combout\ = (\inst|u_rx|baud_cnt\(3) & (!\inst|u_rx|baud_cnt[2]~20\)) # (!\inst|u_rx|baud_cnt\(3) & ((\inst|u_rx|baud_cnt[2]~20\) # (GND)))
-- \inst|u_rx|baud_cnt[3]~22\ = CARRY((!\inst|u_rx|baud_cnt[2]~20\) # (!\inst|u_rx|baud_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(3),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[2]~20\,
	combout => \inst|u_rx|baud_cnt[3]~21_combout\,
	cout => \inst|u_rx|baud_cnt[3]~22\);

-- Location: FF_X42_Y34_N11
\inst|u_rx|baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[3]~21_combout\,
	asdata => \inst|u_rx|receiving~_wirecell_combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(3));

-- Location: LCCOMB_X42_Y34_N12
\inst|u_rx|baud_cnt[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[4]~23_combout\ = (\inst|u_rx|baud_cnt\(4) & (\inst|u_rx|baud_cnt[3]~22\ $ (GND))) # (!\inst|u_rx|baud_cnt\(4) & (!\inst|u_rx|baud_cnt[3]~22\ & VCC))
-- \inst|u_rx|baud_cnt[4]~24\ = CARRY((\inst|u_rx|baud_cnt\(4) & !\inst|u_rx|baud_cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(4),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[3]~22\,
	combout => \inst|u_rx|baud_cnt[4]~23_combout\,
	cout => \inst|u_rx|baud_cnt[4]~24\);

-- Location: FF_X42_Y34_N13
\inst|u_rx|baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[4]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(4));

-- Location: LCCOMB_X42_Y34_N14
\inst|u_rx|baud_cnt[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[5]~25_combout\ = (\inst|u_rx|baud_cnt\(5) & (!\inst|u_rx|baud_cnt[4]~24\)) # (!\inst|u_rx|baud_cnt\(5) & ((\inst|u_rx|baud_cnt[4]~24\) # (GND)))
-- \inst|u_rx|baud_cnt[5]~26\ = CARRY((!\inst|u_rx|baud_cnt[4]~24\) # (!\inst|u_rx|baud_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(5),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[4]~24\,
	combout => \inst|u_rx|baud_cnt[5]~25_combout\,
	cout => \inst|u_rx|baud_cnt[5]~26\);

-- Location: FF_X42_Y34_N15
\inst|u_rx|baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[5]~25_combout\,
	asdata => \inst|u_rx|receiving~_wirecell_combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(5));

-- Location: LCCOMB_X42_Y34_N16
\inst|u_rx|baud_cnt[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[6]~27_combout\ = (\inst|u_rx|baud_cnt\(6) & (\inst|u_rx|baud_cnt[5]~26\ $ (GND))) # (!\inst|u_rx|baud_cnt\(6) & (!\inst|u_rx|baud_cnt[5]~26\ & VCC))
-- \inst|u_rx|baud_cnt[6]~28\ = CARRY((\inst|u_rx|baud_cnt\(6) & !\inst|u_rx|baud_cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(6),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[5]~26\,
	combout => \inst|u_rx|baud_cnt[6]~27_combout\,
	cout => \inst|u_rx|baud_cnt[6]~28\);

-- Location: FF_X42_Y34_N17
\inst|u_rx|baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[6]~27_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(6));

-- Location: LCCOMB_X42_Y34_N18
\inst|u_rx|baud_cnt[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[7]~29_combout\ = (\inst|u_rx|baud_cnt\(7) & (!\inst|u_rx|baud_cnt[6]~28\)) # (!\inst|u_rx|baud_cnt\(7) & ((\inst|u_rx|baud_cnt[6]~28\) # (GND)))
-- \inst|u_rx|baud_cnt[7]~30\ = CARRY((!\inst|u_rx|baud_cnt[6]~28\) # (!\inst|u_rx|baud_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(7),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[6]~28\,
	combout => \inst|u_rx|baud_cnt[7]~29_combout\,
	cout => \inst|u_rx|baud_cnt[7]~30\);

-- Location: FF_X42_Y34_N19
\inst|u_rx|baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[7]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(7));

-- Location: LCCOMB_X42_Y34_N20
\inst|u_rx|baud_cnt[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[8]~31_combout\ = (\inst|u_rx|baud_cnt\(8) & (\inst|u_rx|baud_cnt[7]~30\ $ (GND))) # (!\inst|u_rx|baud_cnt\(8) & (!\inst|u_rx|baud_cnt[7]~30\ & VCC))
-- \inst|u_rx|baud_cnt[8]~32\ = CARRY((\inst|u_rx|baud_cnt\(8) & !\inst|u_rx|baud_cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(8),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[7]~30\,
	combout => \inst|u_rx|baud_cnt[8]~31_combout\,
	cout => \inst|u_rx|baud_cnt[8]~32\);

-- Location: FF_X42_Y34_N21
\inst|u_rx|baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[8]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(8));

-- Location: LCCOMB_X42_Y34_N22
\inst|u_rx|baud_cnt[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[9]~33_combout\ = (\inst|u_rx|baud_cnt\(9) & (!\inst|u_rx|baud_cnt[8]~32\)) # (!\inst|u_rx|baud_cnt\(9) & ((\inst|u_rx|baud_cnt[8]~32\) # (GND)))
-- \inst|u_rx|baud_cnt[9]~34\ = CARRY((!\inst|u_rx|baud_cnt[8]~32\) # (!\inst|u_rx|baud_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(9),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[8]~32\,
	combout => \inst|u_rx|baud_cnt[9]~33_combout\,
	cout => \inst|u_rx|baud_cnt[9]~34\);

-- Location: FF_X42_Y34_N23
\inst|u_rx|baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[9]~33_combout\,
	asdata => \inst|u_rx|receiving~_wirecell_combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(9));

-- Location: LCCOMB_X42_Y34_N24
\inst|u_rx|baud_cnt[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[10]~35_combout\ = (\inst|u_rx|baud_cnt\(10) & (\inst|u_rx|baud_cnt[9]~34\ $ (GND))) # (!\inst|u_rx|baud_cnt\(10) & (!\inst|u_rx|baud_cnt[9]~34\ & VCC))
-- \inst|u_rx|baud_cnt[10]~36\ = CARRY((\inst|u_rx|baud_cnt\(10) & !\inst|u_rx|baud_cnt[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|baud_cnt\(10),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[9]~34\,
	combout => \inst|u_rx|baud_cnt[10]~35_combout\,
	cout => \inst|u_rx|baud_cnt[10]~36\);

-- Location: FF_X42_Y34_N25
\inst|u_rx|baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[10]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(10));

-- Location: LCCOMB_X42_Y34_N26
\inst|u_rx|baud_cnt[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[11]~37_combout\ = (\inst|u_rx|baud_cnt\(11) & (!\inst|u_rx|baud_cnt[10]~36\)) # (!\inst|u_rx|baud_cnt\(11) & ((\inst|u_rx|baud_cnt[10]~36\) # (GND)))
-- \inst|u_rx|baud_cnt[11]~38\ = CARRY((!\inst|u_rx|baud_cnt[10]~36\) # (!\inst|u_rx|baud_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(11),
	datad => VCC,
	cin => \inst|u_rx|baud_cnt[10]~36\,
	combout => \inst|u_rx|baud_cnt[11]~37_combout\,
	cout => \inst|u_rx|baud_cnt[11]~38\);

-- Location: FF_X42_Y34_N27
\inst|u_rx|baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[11]~37_combout\,
	asdata => \inst|u_rx|receiving~_wirecell_combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(11));

-- Location: LCCOMB_X42_Y34_N2
\inst|u_rx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Equal0~2_combout\ = (\inst|u_rx|baud_cnt\(11)) # (((\inst|u_rx|baud_cnt\(9)) # (\inst|u_rx|baud_cnt\(8))) # (!\inst|u_rx|baud_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(11),
	datab => \inst|u_rx|baud_cnt\(10),
	datac => \inst|u_rx|baud_cnt\(9),
	datad => \inst|u_rx|baud_cnt\(8),
	combout => \inst|u_rx|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y34_N28
\inst|u_rx|baud_cnt[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[12]~39_combout\ = \inst|u_rx|baud_cnt[11]~38\ $ (!\inst|u_rx|baud_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|baud_cnt\(12),
	cin => \inst|u_rx|baud_cnt[11]~38\,
	combout => \inst|u_rx|baud_cnt[12]~39_combout\);

-- Location: FF_X42_Y34_N29
\inst|u_rx|baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|baud_cnt[12]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst|u_rx|baud_cnt[6]~13_combout\,
	ena => \inst|u_rx|baud_cnt[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|baud_cnt\(12));

-- Location: LCCOMB_X42_Y34_N0
\inst|u_rx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Equal0~0_combout\ = (((\inst|u_rx|baud_cnt\(3)) # (!\inst|u_rx|baud_cnt\(0))) # (!\inst|u_rx|baud_cnt\(2))) # (!\inst|u_rx|baud_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(1),
	datab => \inst|u_rx|baud_cnt\(2),
	datac => \inst|u_rx|baud_cnt\(0),
	datad => \inst|u_rx|baud_cnt\(3),
	combout => \inst|u_rx|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y34_N30
\inst|u_rx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Equal0~1_combout\ = ((\inst|u_rx|baud_cnt\(7)) # ((\inst|u_rx|baud_cnt\(5)) # (!\inst|u_rx|baud_cnt\(6)))) # (!\inst|u_rx|baud_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|baud_cnt\(4),
	datab => \inst|u_rx|baud_cnt\(7),
	datac => \inst|u_rx|baud_cnt\(5),
	datad => \inst|u_rx|baud_cnt\(6),
	combout => \inst|u_rx|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y34_N20
\inst|u_rx|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Equal0~3_combout\ = (\inst|u_rx|Equal0~2_combout\) # (((\inst|u_rx|Equal0~0_combout\) # (\inst|u_rx|Equal0~1_combout\)) # (!\inst|u_rx|baud_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|Equal0~2_combout\,
	datab => \inst|u_rx|baud_cnt\(12),
	datac => \inst|u_rx|Equal0~0_combout\,
	datad => \inst|u_rx|Equal0~1_combout\,
	combout => \inst|u_rx|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y34_N18
\inst|u_rx|baud_cnt[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|baud_cnt[6]~13_combout\ = (!\inst|u_rx|Equal0~3_combout\) # (!\inst|u_rx|receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|receiving~q\,
	datad => \inst|u_rx|Equal0~3_combout\,
	combout => \inst|u_rx|baud_cnt[6]~13_combout\);

-- Location: LCCOMB_X43_Y34_N26
\inst|u_rx|bit_cnt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[0]~2_combout\ = (((\inst|u_rx|bit_cnt[0]~1_combout\ & !\inst|u_rx|process_1~0_combout\)) # (!\inst|u_rx|baud_cnt[6]~13_combout\)) # (!\inst|u_rx|baud_cnt[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt[0]~1_combout\,
	datab => \inst|u_rx|baud_cnt[6]~14_combout\,
	datac => \inst|u_rx|process_1~0_combout\,
	datad => \inst|u_rx|baud_cnt[6]~13_combout\,
	combout => \inst|u_rx|bit_cnt[0]~2_combout\);

-- Location: LCCOMB_X43_Y32_N12
\inst|u_rx|bit_cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[1]~3_combout\ = (\inst|u_rx|bit_cnt[0]~2_combout\ & (((\inst|u_rx|bit_cnt\(1))))) # (!\inst|u_rx|bit_cnt[0]~2_combout\ & (\inst|u_rx|bit_cnt[0]~1_combout\ & (\inst|u_rx|bit_cnt\(1) $ (\inst|u_rx|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt[0]~2_combout\,
	datab => \inst|u_rx|bit_cnt[0]~1_combout\,
	datac => \inst|u_rx|bit_cnt\(1),
	datad => \inst|u_rx|bit_cnt\(0),
	combout => \inst|u_rx|bit_cnt[1]~3_combout\);

-- Location: FF_X43_Y32_N13
\inst|u_rx|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|bit_cnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|bit_cnt\(1));

-- Location: LCCOMB_X43_Y32_N26
\inst|u_rx|ready_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|ready_reg~0_combout\ = (!\inst|u_rx|bit_cnt\(1) & !\inst|u_rx|bit_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(1),
	datad => \inst|u_rx|bit_cnt\(2),
	combout => \inst|u_rx|ready_reg~0_combout\);

-- Location: LCCOMB_X43_Y32_N18
\inst|u_rx|bit_cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[0]~1_combout\ = (\inst|u_rx|receiving~q\ & (((\inst|u_rx|bit_cnt\(3)) # (\inst|u_rx|bit_cnt\(0))) # (!\inst|u_rx|ready_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|ready_reg~0_combout\,
	datab => \inst|u_rx|bit_cnt\(3),
	datac => \inst|u_rx|bit_cnt\(0),
	datad => \inst|u_rx|receiving~q\,
	combout => \inst|u_rx|bit_cnt[0]~1_combout\);

-- Location: LCCOMB_X43_Y34_N8
\inst|u_rx|bit_cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|bit_cnt[0]~0_combout\ = (\inst|u_rx|bit_cnt[0]~1_combout\ & ((!\inst|u_rx|bit_cnt\(0)))) # (!\inst|u_rx|bit_cnt[0]~1_combout\ & (\inst|u_rx|receiving~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|receiving~q\,
	datac => \inst|u_rx|bit_cnt\(0),
	datad => \inst|u_rx|bit_cnt[0]~1_combout\,
	combout => \inst|u_rx|bit_cnt[0]~0_combout\);

-- Location: FF_X43_Y34_N9
\inst|u_rx|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|bit_cnt[0]~0_combout\,
	asdata => \inst|u_rx|bit_cnt\(0),
	sload => \inst|u_rx|bit_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|bit_cnt\(0));

-- Location: LCCOMB_X43_Y32_N30
\inst|u_rx|ready_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|ready_reg~1_combout\ = (\inst|u_rx|bit_cnt\(0) & (\inst|u_rx|bit_cnt\(3) & (\inst|u_rx|ready_reg~0_combout\ & !\inst|u_rx|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(3),
	datac => \inst|u_rx|ready_reg~0_combout\,
	datad => \inst|u_rx|Equal0~3_combout\,
	combout => \inst|u_rx|ready_reg~1_combout\);

-- Location: FF_X42_Y32_N9
\inst|u_rx|ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|u_rx|ready_reg~1_combout\,
	sclr => \inst|u_rx|ALT_INV_receiving~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|ready_reg~q\);

-- Location: LCCOMB_X42_Y28_N24
\inst|state.S_RECEIVE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.S_RECEIVE~2_combout\ = (\inst|state.S_RECEIVE~q\) # ((\inst|Selector519~5_combout\) # ((\inst|u_tx|busy_reg~q\ & \inst|state.S_TX_SEND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|busy_reg~q\,
	datab => \inst|state.S_TX_SEND~q\,
	datac => \inst|state.S_RECEIVE~q\,
	datad => \inst|Selector519~5_combout\,
	combout => \inst|state.S_RECEIVE~2_combout\);

-- Location: FF_X42_Y28_N25
\inst|state.S_RECEIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.S_RECEIVE~2_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_RECEIVE~q\);

-- Location: LCCOMB_X42_Y27_N20
\inst|buf_len[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[5]~18_combout\ = (\inst|buf_len\(5) & (!\inst|buf_len[4]~17\)) # (!\inst|buf_len\(5) & ((\inst|buf_len[4]~17\) # (GND)))
-- \inst|buf_len[5]~19\ = CARRY((!\inst|buf_len[4]~17\) # (!\inst|buf_len\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(5),
	datad => VCC,
	cin => \inst|buf_len[4]~17\,
	combout => \inst|buf_len[5]~18_combout\,
	cout => \inst|buf_len[5]~19\);

-- Location: LCCOMB_X42_Y27_N22
\inst|buf_len[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[6]~20_combout\ = \inst|buf_len\(6) $ (!\inst|buf_len[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(6),
	cin => \inst|buf_len[5]~19\,
	combout => \inst|buf_len[6]~20_combout\);

-- Location: FF_X42_Y27_N23
\inst|buf_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[6]~20_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(6));

-- Location: LCCOMB_X42_Y28_N8
\inst|buf_len[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[6]~7_combout\ = (\inst|u_rx|ready_reg~q\ & (!\inst|buf_len\(6) & ((\inst|state.S_WAIT_KEY~q\) # (!\inst|state.S_RECEIVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|ready_reg~q\,
	datab => \inst|state.S_RECEIVE~q\,
	datac => \inst|state.S_WAIT_KEY~q\,
	datad => \inst|buf_len\(6),
	combout => \inst|buf_len[6]~7_combout\);

-- Location: FF_X42_Y27_N11
\inst|buf_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[0]~8_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(0));

-- Location: LCCOMB_X42_Y27_N12
\inst|buf_len[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[1]~10_combout\ = (\inst|buf_len\(1) & (!\inst|buf_len[0]~9\)) # (!\inst|buf_len\(1) & ((\inst|buf_len[0]~9\) # (GND)))
-- \inst|buf_len[1]~11\ = CARRY((!\inst|buf_len[0]~9\) # (!\inst|buf_len\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datad => VCC,
	cin => \inst|buf_len[0]~9\,
	combout => \inst|buf_len[1]~10_combout\,
	cout => \inst|buf_len[1]~11\);

-- Location: FF_X42_Y27_N13
\inst|buf_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[1]~10_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(1));

-- Location: LCCOMB_X42_Y27_N14
\inst|buf_len[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[2]~12_combout\ = (\inst|buf_len\(2) & (\inst|buf_len[1]~11\ $ (GND))) # (!\inst|buf_len\(2) & (!\inst|buf_len[1]~11\ & VCC))
-- \inst|buf_len[2]~13\ = CARRY((\inst|buf_len\(2) & !\inst|buf_len[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(2),
	datad => VCC,
	cin => \inst|buf_len[1]~11\,
	combout => \inst|buf_len[2]~12_combout\,
	cout => \inst|buf_len[2]~13\);

-- Location: FF_X42_Y27_N15
\inst|buf_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[2]~12_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(2));

-- Location: LCCOMB_X42_Y27_N16
\inst|buf_len[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[3]~14_combout\ = (\inst|buf_len\(3) & (!\inst|buf_len[2]~13\)) # (!\inst|buf_len\(3) & ((\inst|buf_len[2]~13\) # (GND)))
-- \inst|buf_len[3]~15\ = CARRY((!\inst|buf_len[2]~13\) # (!\inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(3),
	datad => VCC,
	cin => \inst|buf_len[2]~13\,
	combout => \inst|buf_len[3]~14_combout\,
	cout => \inst|buf_len[3]~15\);

-- Location: FF_X42_Y27_N17
\inst|buf_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[3]~14_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(3));

-- Location: LCCOMB_X42_Y27_N18
\inst|buf_len[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|buf_len[4]~16_combout\ = (\inst|buf_len\(4) & (\inst|buf_len[3]~15\ $ (GND))) # (!\inst|buf_len\(4) & (!\inst|buf_len[3]~15\ & VCC))
-- \inst|buf_len[4]~17\ = CARRY((\inst|buf_len\(4) & !\inst|buf_len[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(4),
	datad => VCC,
	cin => \inst|buf_len[3]~15\,
	combout => \inst|buf_len[4]~16_combout\,
	cout => \inst|buf_len[4]~17\);

-- Location: FF_X42_Y27_N19
\inst|buf_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[4]~16_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(4));

-- Location: FF_X42_Y27_N21
\inst|buf_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buf_len[5]~18_combout\,
	clrn => \KEY1~input_o\,
	ena => \inst|buf_len[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buf_len\(5));

-- Location: LCCOMB_X39_Y32_N12
\inst|text_buffer[13][7]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~67_combout\ = (!\inst|buf_len\(5) & !\inst|buf_len\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[13][7]~67_combout\);

-- Location: LCCOMB_X41_Y27_N0
\inst|text_buffer[49][7]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][7]~66_combout\ = (!\inst|buf_len\(2) & (!\inst|buf_len\(1) & !\inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(2),
	datac => \inst|buf_len\(1),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[49][7]~66_combout\);

-- Location: LCCOMB_X41_Y27_N2
\inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((\inst|buf_len\(0)) # (\inst|buf_len\(6))) # (!\inst|text_buffer[49][7]~66_combout\)) # (!\inst|text_buffer[13][7]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~67_combout\,
	datab => \inst|text_buffer[49][7]~66_combout\,
	datac => \inst|buf_len\(0),
	datad => \inst|buf_len\(6),
	combout => \inst|LessThan1~0_combout\);

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

-- Location: LCCOMB_X42_Y28_N16
\inst|key0_sync[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|key0_sync[0]~0_combout\ = !\KEY0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY0~input_o\,
	combout => \inst|key0_sync[0]~0_combout\);

-- Location: FF_X42_Y28_N17
\inst|key0_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|key0_sync[0]~0_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_sync\(0));

-- Location: LCCOMB_X42_Y28_N12
\inst|key0_sync[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|key0_sync[1]~feeder_combout\ = \inst|key0_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|key0_sync\(0),
	combout => \inst|key0_sync[1]~feeder_combout\);

-- Location: FF_X42_Y28_N13
\inst|key0_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|key0_sync[1]~feeder_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_sync\(1));

-- Location: LCCOMB_X42_Y28_N30
\inst|key0_sync[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|key0_sync[2]~feeder_combout\ = \inst|key0_sync\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|key0_sync\(1),
	combout => \inst|key0_sync[2]~feeder_combout\);

-- Location: FF_X42_Y28_N31
\inst|key0_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|key0_sync[2]~feeder_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_sync\(2));

-- Location: LCCOMB_X42_Y28_N2
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst|key0_sync\(2) & \inst|key0_sync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|key0_sync\(2),
	datad => \inst|key0_sync\(1),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X42_Y28_N3
\inst|key0_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|process_0~0_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key0_edge~q\);

-- Location: LCCOMB_X41_Y28_N4
\inst|Selector519~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector519~3_combout\ = (\inst|state.S_WAIT_KEY~q\ & (\inst|LessThan1~0_combout\ & \inst|key0_edge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_WAIT_KEY~q\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|key0_edge~q\,
	combout => \inst|Selector519~3_combout\);

-- Location: LCCOMB_X41_Y28_N30
\inst|Selector521~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector521~0_combout\ = (!\inst|Selector519~2_combout\ & ((\inst|Selector519~3_combout\) # ((\inst|state.S_PROCESS~q\ & !\inst|Selector519~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector519~2_combout\,
	datab => \inst|Selector519~3_combout\,
	datac => \inst|state.S_PROCESS~q\,
	datad => \inst|Selector519~5_combout\,
	combout => \inst|Selector521~0_combout\);

-- Location: FF_X41_Y28_N31
\inst|state.S_PROCESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector521~0_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_PROCESS~q\);

-- Location: LCCOMB_X41_Y29_N16
\inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((!\inst|index\(0) & \inst|buf_len\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|buf_len\(0),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X41_Y29_N18
\inst|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst|buf_len\(1) & (\inst|index\(1) & !\inst|LessThan2~1_cout\)) # (!\inst|buf_len\(1) & ((\inst|index\(1)) # (!\inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|index\(1),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X41_Y29_N20
\inst|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst|index\(2) & (\inst|buf_len\(2) & !\inst|LessThan2~3_cout\)) # (!\inst|index\(2) & ((\inst|buf_len\(2)) # (!\inst|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|buf_len\(2),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X41_Y29_N22
\inst|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|buf_len\(3) & (\inst|index\(3) & !\inst|LessThan2~5_cout\)) # (!\inst|buf_len\(3) & ((\inst|index\(3)) # (!\inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|index\(3),
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X41_Y29_N24
\inst|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|index\(4) & (\inst|buf_len\(4) & !\inst|LessThan2~7_cout\)) # (!\inst|index\(4) & ((\inst|buf_len\(4)) # (!\inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|buf_len\(4),
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X41_Y29_N26
\inst|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst|index\(5) & ((!\inst|LessThan2~9_cout\) # (!\inst|buf_len\(5)))) # (!\inst|index\(5) & (!\inst|buf_len\(5) & !\inst|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|buf_len\(5),
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X41_Y29_N28
\inst|LessThan2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~12_combout\ = (\inst|index\(6) & (!\inst|LessThan2~11_cout\ & \inst|buf_len\(6))) # (!\inst|index\(6) & ((\inst|buf_len\(6)) # (!\inst|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(6),
	datad => \inst|buf_len\(6),
	cin => \inst|LessThan2~11_cout\,
	combout => \inst|LessThan2~12_combout\);

-- Location: LCCOMB_X43_Y28_N8
\inst|Selector519~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector519~1_combout\ = (\inst|state.S_PROCESS~q\ & !\inst|LessThan2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.S_PROCESS~q\,
	datad => \inst|LessThan2~12_combout\,
	combout => \inst|Selector519~1_combout\);

-- Location: LCCOMB_X41_Y28_N6
\inst|Selector519~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector519~4_combout\ = ((\inst|Selector519~3_combout\) # ((\inst|state.S_TX_LOAD~q\) # (\inst|Selector519~1_combout\))) # (!\inst|Selector520~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector520~0_combout\,
	datab => \inst|Selector519~3_combout\,
	datac => \inst|state.S_TX_LOAD~q\,
	datad => \inst|Selector519~1_combout\,
	combout => \inst|Selector519~4_combout\);

-- Location: LCCOMB_X41_Y28_N10
\inst|Selector519~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector519~5_combout\ = (\inst|Selector519~4_combout\) # ((!\inst|state.S_TX_WAIT~q\ & (\inst|LessThan1~0_combout\ & !\inst|state.S_RECEIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector519~4_combout\,
	datab => \inst|state.S_TX_WAIT~q\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|state.S_RECEIVE~q\,
	combout => \inst|Selector519~5_combout\);

-- Location: LCCOMB_X42_Y28_N14
\inst|Selector523~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector523~2_combout\ = (\inst|state.S_TX_SEND~q\ & (!\inst|u_tx|busy_reg~q\ & ((\inst|state.S_TX_LOAD~q\) # (!\inst|Selector519~5_combout\)))) # (!\inst|state.S_TX_SEND~q\ & (((\inst|state.S_TX_LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|busy_reg~q\,
	datab => \inst|state.S_TX_LOAD~q\,
	datac => \inst|state.S_TX_SEND~q\,
	datad => \inst|Selector519~5_combout\,
	combout => \inst|Selector523~2_combout\);

-- Location: FF_X42_Y28_N15
\inst|state.S_TX_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector523~2_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_TX_SEND~q\);

-- Location: LCCOMB_X42_Y28_N20
\inst|Selector519~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector519~2_combout\ = (\inst|state.S_TX_SEND~q\ & \inst|u_tx|busy_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.S_TX_SEND~q\,
	datac => \inst|u_tx|busy_reg~q\,
	combout => \inst|Selector519~2_combout\);

-- Location: LCCOMB_X42_Y28_N18
\inst|Selector520~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector520~1_combout\ = ((\inst|key0_edge~q\ & (!\inst|state.S_TX_SEND~q\ & \inst|state.S_WAIT_KEY~q\))) # (!\inst|state.S_RECEIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key0_edge~q\,
	datab => \inst|state.S_TX_SEND~q\,
	datac => \inst|state.S_WAIT_KEY~q\,
	datad => \inst|state.S_RECEIVE~q\,
	combout => \inst|Selector520~1_combout\);

-- Location: LCCOMB_X41_Y28_N22
\inst|Selector520~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector520~2_combout\ = (\inst|Selector519~2_combout\) # ((\inst|Selector519~1_combout\) # ((\inst|Selector520~1_combout\ & \inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector519~2_combout\,
	datab => \inst|Selector520~1_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|Selector519~1_combout\,
	combout => \inst|Selector520~2_combout\);

-- Location: LCCOMB_X41_Y28_N12
\inst|Selector520~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector520~3_combout\ = (\inst|Selector520~2_combout\ & (\inst|LessThan1~0_combout\ & ((!\inst|state.S_RECEIVE~q\)))) # (!\inst|Selector520~2_combout\ & (((\inst|state.S_WAIT_KEY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector520~2_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|state.S_WAIT_KEY~q\,
	datad => \inst|state.S_RECEIVE~q\,
	combout => \inst|Selector520~3_combout\);

-- Location: LCCOMB_X40_Y28_N16
\inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|buf_len\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|buf_len\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X40_Y28_N18
\inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|buf_len\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|buf_len\(1) & (!\inst|Add2~1\))
-- \inst|Add2~3\ = CARRY((!\inst|buf_len\(1) & !\inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X40_Y28_N20
\inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|buf_len\(2) & ((GND) # (!\inst|Add2~3\))) # (!\inst|buf_len\(2) & (\inst|Add2~3\ $ (GND)))
-- \inst|Add2~5\ = CARRY((\inst|buf_len\(2)) # (!\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X40_Y28_N22
\inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|buf_len\(3) & (\inst|Add2~5\ & VCC)) # (!\inst|buf_len\(3) & (!\inst|Add2~5\))
-- \inst|Add2~7\ = CARRY((!\inst|buf_len\(3) & !\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X40_Y28_N24
\inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|buf_len\(4) & ((GND) # (!\inst|Add2~7\))) # (!\inst|buf_len\(4) & (\inst|Add2~7\ $ (GND)))
-- \inst|Add2~9\ = CARRY((\inst|buf_len\(4)) # (!\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X40_Y28_N26
\inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|buf_len\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|buf_len\(5) & (!\inst|Add2~9\))
-- \inst|Add2~11\ = CARRY((!\inst|buf_len\(5) & !\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X40_Y28_N28
\inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|buf_len\(6) & ((GND) # (!\inst|Add2~11\))) # (!\inst|buf_len\(6) & (\inst|Add2~11\ $ (GND)))
-- \inst|Add2~13\ = CARRY((\inst|buf_len\(6)) # (!\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X40_Y28_N30
\inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = !\inst|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X41_Y28_N28
\inst|Selector522~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector522~5_combout\ = (!\inst|Add2~14_combout\ & \inst|LessThan3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~14_combout\,
	datad => \inst|LessThan3~12_combout\,
	combout => \inst|Selector522~5_combout\);

-- Location: LCCOMB_X41_Y28_N26
\inst|Selector520~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector520~4_combout\ = (\inst|Selector520~0_combout\ & (\inst|Selector520~3_combout\ & (!\inst|state.S_TX_LOAD~q\))) # (!\inst|Selector520~0_combout\ & (((!\inst|Selector522~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector520~3_combout\,
	datab => \inst|state.S_TX_LOAD~q\,
	datac => \inst|Selector520~0_combout\,
	datad => \inst|Selector522~5_combout\,
	combout => \inst|Selector520~4_combout\);

-- Location: FF_X41_Y28_N27
\inst|state.S_WAIT_KEY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector520~4_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_WAIT_KEY~q\);

-- Location: LCCOMB_X41_Y28_N24
\inst|index[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[5]~17_combout\ = (\inst|state.S_WAIT_KEY~q\) # ((\inst|state.S_TX_WAIT~q\ & ((!\inst|Selector522~5_combout\))) # (!\inst|state.S_TX_WAIT~q\ & (!\inst|LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_WAIT_KEY~q\,
	datab => \inst|state.S_TX_WAIT~q\,
	datac => \inst|LessThan2~12_combout\,
	datad => \inst|Selector522~5_combout\,
	combout => \inst|index[5]~17_combout\);

-- Location: LCCOMB_X42_Y28_N22
\inst|index[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[5]~18_combout\ = (\inst|state.S_TX_LOAD~q\) # (!\inst|state.S_RECEIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_TX_LOAD~q\,
	datad => \inst|state.S_RECEIVE~q\,
	combout => \inst|index[5]~18_combout\);

-- Location: LCCOMB_X42_Y28_N4
\inst|index[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[5]~19_combout\ = (\inst|state.S_TX_SEND~q\) # ((\inst|index[5]~18_combout\) # ((\inst|u_tx|busy_reg~q\ & \inst|state.S_TX_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|busy_reg~q\,
	datab => \inst|state.S_TX_SEND~q\,
	datac => \inst|index[5]~18_combout\,
	datad => \inst|state.S_TX_WAIT~q\,
	combout => \inst|index[5]~19_combout\);

-- Location: LCCOMB_X41_Y28_N20
\inst|index[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[5]~20_combout\ = (!\inst|index[5]~19_combout\ & (((\inst|LessThan1~0_combout\ & \inst|key0_edge~q\)) # (!\inst|state.S_WAIT_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index[5]~19_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|state.S_WAIT_KEY~q\,
	datad => \inst|key0_edge~q\,
	combout => \inst|index[5]~20_combout\);

-- Location: FF_X37_Y29_N1
\inst|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[0]~7_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(0));

-- Location: LCCOMB_X37_Y29_N2
\inst|index[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[1]~9_combout\ = (\inst|index\(1) & (!\inst|index[0]~8\)) # (!\inst|index\(1) & ((\inst|index[0]~8\) # (GND)))
-- \inst|index[1]~10\ = CARRY((!\inst|index[0]~8\) # (!\inst|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(1),
	datad => VCC,
	cin => \inst|index[0]~8\,
	combout => \inst|index[1]~9_combout\,
	cout => \inst|index[1]~10\);

-- Location: FF_X37_Y29_N3
\inst|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[1]~9_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(1));

-- Location: LCCOMB_X37_Y29_N4
\inst|index[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[2]~11_combout\ = (\inst|index\(2) & (\inst|index[1]~10\ $ (GND))) # (!\inst|index\(2) & (!\inst|index[1]~10\ & VCC))
-- \inst|index[2]~12\ = CARRY((\inst|index\(2) & !\inst|index[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(2),
	datad => VCC,
	cin => \inst|index[1]~10\,
	combout => \inst|index[2]~11_combout\,
	cout => \inst|index[2]~12\);

-- Location: FF_X37_Y29_N5
\inst|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[2]~11_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(2));

-- Location: LCCOMB_X37_Y29_N6
\inst|index[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[3]~13_combout\ = (\inst|index\(3) & (!\inst|index[2]~12\)) # (!\inst|index\(3) & ((\inst|index[2]~12\) # (GND)))
-- \inst|index[3]~14\ = CARRY((!\inst|index[2]~12\) # (!\inst|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datad => VCC,
	cin => \inst|index[2]~12\,
	combout => \inst|index[3]~13_combout\,
	cout => \inst|index[3]~14\);

-- Location: FF_X37_Y29_N7
\inst|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[3]~13_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(3));

-- Location: LCCOMB_X37_Y29_N8
\inst|index[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[4]~15_combout\ = (\inst|index\(4) & (\inst|index[3]~14\ $ (GND))) # (!\inst|index\(4) & (!\inst|index[3]~14\ & VCC))
-- \inst|index[4]~16\ = CARRY((\inst|index\(4) & !\inst|index[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datad => VCC,
	cin => \inst|index[3]~14\,
	combout => \inst|index[4]~15_combout\,
	cout => \inst|index[4]~16\);

-- Location: FF_X37_Y29_N9
\inst|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[4]~15_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(4));

-- Location: LCCOMB_X37_Y29_N10
\inst|index[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[5]~21_combout\ = (\inst|index\(5) & (!\inst|index[4]~16\)) # (!\inst|index\(5) & ((\inst|index[4]~16\) # (GND)))
-- \inst|index[5]~22\ = CARRY((!\inst|index[4]~16\) # (!\inst|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datad => VCC,
	cin => \inst|index[4]~16\,
	combout => \inst|index[5]~21_combout\,
	cout => \inst|index[5]~22\);

-- Location: FF_X37_Y29_N11
\inst|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[5]~21_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(5));

-- Location: LCCOMB_X37_Y29_N12
\inst|index[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|index[6]~23_combout\ = \inst|index\(6) $ (!\inst|index[5]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(6),
	cin => \inst|index[5]~22\,
	combout => \inst|index[6]~23_combout\);

-- Location: FF_X37_Y29_N13
\inst|index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|index[6]~23_combout\,
	clrn => \KEY1~input_o\,
	sclr => \inst|index[5]~17_combout\,
	ena => \inst|index[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(6));

-- Location: LCCOMB_X40_Y28_N0
\inst|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY((!\inst|index\(0) & \inst|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X40_Y28_N2
\inst|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst|Add2~2_combout\ & (\inst|index\(1) & !\inst|LessThan3~1_cout\)) # (!\inst|Add2~2_combout\ & ((\inst|index\(1)) # (!\inst|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|index\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X40_Y28_N4
\inst|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|index\(2) & (\inst|Add2~4_combout\ & !\inst|LessThan3~3_cout\)) # (!\inst|index\(2) & ((\inst|Add2~4_combout\) # (!\inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X40_Y28_N6
\inst|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|Add2~6_combout\ & (\inst|index\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|Add2~6_combout\ & ((\inst|index\(3)) # (!\inst|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|index\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X40_Y28_N8
\inst|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|Add2~8_combout\ & ((!\inst|LessThan3~7_cout\) # (!\inst|index\(4)))) # (!\inst|Add2~8_combout\ & (!\inst|index\(4) & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|index\(4),
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X40_Y28_N10
\inst|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|Add2~10_combout\ & (\inst|index\(5) & !\inst|LessThan3~9_cout\)) # (!\inst|Add2~10_combout\ & ((\inst|index\(5)) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst|index\(5),
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X40_Y28_N12
\inst|LessThan3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~12_combout\ = (\inst|index\(6) & (!\inst|LessThan3~11_cout\ & \inst|Add2~12_combout\)) # (!\inst|index\(6) & ((\inst|Add2~12_combout\) # (!\inst|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(6),
	datad => \inst|Add2~12_combout\,
	cin => \inst|LessThan3~11_cout\,
	combout => \inst|LessThan3~12_combout\);

-- Location: LCCOMB_X41_Y28_N0
\inst|Selector522~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector522~4_combout\ = (\inst|Selector520~2_combout\ & (\inst|Selector520~0_combout\ & (!\inst|state.S_TX_LOAD~q\ & \inst|Selector519~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector520~2_combout\,
	datab => \inst|Selector520~0_combout\,
	datac => \inst|state.S_TX_LOAD~q\,
	datad => \inst|Selector519~1_combout\,
	combout => \inst|Selector522~4_combout\);

-- Location: LCCOMB_X41_Y28_N14
\inst|Selector522~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector522~6_combout\ = (\inst|Selector522~4_combout\) # ((\inst|LessThan3~12_combout\ & (!\inst|Add2~14_combout\ & !\inst|Selector520~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~12_combout\,
	datab => \inst|Add2~14_combout\,
	datac => \inst|Selector520~0_combout\,
	datad => \inst|Selector522~4_combout\,
	combout => \inst|Selector522~6_combout\);

-- Location: FF_X41_Y28_N15
\inst|state.S_TX_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector522~6_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S_TX_LOAD~q\);

-- Location: FF_X41_Y28_N7
\inst|tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.S_TX_LOAD~q\,
	clrn => \KEY1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_start~q\);

-- Location: LCCOMB_X42_Y26_N28
\inst|u_tx|bit_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|bit_cnt~0_combout\ = (\inst|u_tx|busy_reg~q\ & (!\inst|u_tx|Equal0~3_combout\ & ((!\inst|u_tx|Equal1~0_combout\)))) # (!\inst|u_tx|busy_reg~q\ & (((\inst|tx_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Equal0~3_combout\,
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|tx_start~q\,
	datad => \inst|u_tx|Equal1~0_combout\,
	combout => \inst|u_tx|bit_cnt~0_combout\);

-- Location: LCCOMB_X42_Y26_N26
\inst|u_tx|bit_cnt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|bit_cnt[0]~2_combout\ = (\inst|u_tx|bit_cnt\(0) & ((!\inst|u_tx|bit_cnt~0_combout\))) # (!\inst|u_tx|bit_cnt\(0) & (\inst|u_tx|busy_reg~q\ & \inst|u_tx|bit_cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|u_tx|bit_cnt\(0),
	datad => \inst|u_tx|bit_cnt~0_combout\,
	combout => \inst|u_tx|bit_cnt[0]~2_combout\);

-- Location: FF_X42_Y26_N27
\inst|u_tx|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|bit_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|bit_cnt\(0));

-- Location: LCCOMB_X42_Y26_N8
\inst|u_tx|bit_cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|bit_cnt[1]~3_combout\ = (\inst|u_tx|bit_cnt~0_combout\ & (\inst|u_tx|busy_reg~q\ & (\inst|u_tx|bit_cnt\(0) $ (\inst|u_tx|bit_cnt\(1))))) # (!\inst|u_tx|bit_cnt~0_combout\ & (((\inst|u_tx|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|bit_cnt\(0),
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|u_tx|bit_cnt\(1),
	datad => \inst|u_tx|bit_cnt~0_combout\,
	combout => \inst|u_tx|bit_cnt[1]~3_combout\);

-- Location: FF_X42_Y26_N9
\inst|u_tx|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|bit_cnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|bit_cnt\(1));

-- Location: LCCOMB_X42_Y26_N12
\inst|u_tx|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Add0~1_combout\ = \inst|u_tx|bit_cnt\(2) $ (((\inst|u_tx|bit_cnt\(0) & \inst|u_tx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|bit_cnt\(0),
	datab => \inst|u_tx|bit_cnt\(2),
	datac => \inst|u_tx|bit_cnt\(1),
	combout => \inst|u_tx|Add0~1_combout\);

-- Location: LCCOMB_X42_Y26_N18
\inst|u_tx|bit_cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|bit_cnt[2]~4_combout\ = (\inst|u_tx|bit_cnt~0_combout\ & (\inst|u_tx|Add0~1_combout\ & (\inst|u_tx|busy_reg~q\))) # (!\inst|u_tx|bit_cnt~0_combout\ & (((\inst|u_tx|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Add0~1_combout\,
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|u_tx|bit_cnt\(2),
	datad => \inst|u_tx|bit_cnt~0_combout\,
	combout => \inst|u_tx|bit_cnt[2]~4_combout\);

-- Location: FF_X42_Y26_N19
\inst|u_tx|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|bit_cnt\(2));

-- Location: LCCOMB_X42_Y26_N20
\inst|u_tx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Add0~0_combout\ = \inst|u_tx|bit_cnt\(3) $ (((\inst|u_tx|bit_cnt\(0) & (\inst|u_tx|bit_cnt\(2) & \inst|u_tx|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|bit_cnt\(0),
	datab => \inst|u_tx|bit_cnt\(2),
	datac => \inst|u_tx|bit_cnt\(1),
	datad => \inst|u_tx|bit_cnt\(3),
	combout => \inst|u_tx|Add0~0_combout\);

-- Location: LCCOMB_X42_Y26_N24
\inst|u_tx|bit_cnt[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|bit_cnt[3]~1_combout\ = (\inst|u_tx|bit_cnt~0_combout\ & (\inst|u_tx|Add0~0_combout\ & (\inst|u_tx|busy_reg~q\))) # (!\inst|u_tx|bit_cnt~0_combout\ & (((\inst|u_tx|bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Add0~0_combout\,
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|u_tx|bit_cnt\(3),
	datad => \inst|u_tx|bit_cnt~0_combout\,
	combout => \inst|u_tx|bit_cnt[3]~1_combout\);

-- Location: FF_X42_Y26_N25
\inst|u_tx|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|bit_cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|bit_cnt\(3));

-- Location: LCCOMB_X42_Y26_N10
\inst|u_tx|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Equal1~0_combout\ = (\inst|u_tx|bit_cnt\(0) & (!\inst|u_tx|bit_cnt\(2) & (!\inst|u_tx|bit_cnt\(1) & \inst|u_tx|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|bit_cnt\(0),
	datab => \inst|u_tx|bit_cnt\(2),
	datac => \inst|u_tx|bit_cnt\(1),
	datad => \inst|u_tx|bit_cnt\(3),
	combout => \inst|u_tx|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y26_N16
\inst|u_tx|busy_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|busy_reg~0_combout\ = (\inst|u_tx|Equal0~3_combout\) # (!\inst|u_tx|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Equal0~3_combout\,
	datad => \inst|u_tx|Equal1~0_combout\,
	combout => \inst|u_tx|busy_reg~0_combout\);

-- Location: FF_X42_Y26_N17
\inst|u_tx|busy_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|busy_reg~0_combout\,
	asdata => \inst|tx_start~q\,
	sload => \inst|u_tx|ALT_INV_busy_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|busy_reg~q\);

-- Location: LCCOMB_X42_Y26_N22
\inst|u_tx|baud_cnt[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[0]~21_combout\ = (!\inst|u_tx|busy_reg~q\) # (!\inst|u_tx|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_tx|Equal0~3_combout\,
	datad => \inst|u_tx|busy_reg~q\,
	combout => \inst|u_tx|baud_cnt[0]~21_combout\);

-- Location: LCCOMB_X42_Y26_N4
\inst|u_tx|baud_cnt[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[0]~22_combout\ = (\inst|tx_start~q\) # (\inst|u_tx|busy_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tx_start~q\,
	datad => \inst|u_tx|busy_reg~q\,
	combout => \inst|u_tx|baud_cnt[0]~22_combout\);

-- Location: FF_X43_Y26_N3
\inst|u_tx|baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[0]~13_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(0));

-- Location: LCCOMB_X43_Y26_N4
\inst|u_tx|baud_cnt[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[1]~15_combout\ = (\inst|u_tx|baud_cnt\(1) & (!\inst|u_tx|baud_cnt[0]~14\)) # (!\inst|u_tx|baud_cnt\(1) & ((\inst|u_tx|baud_cnt[0]~14\) # (GND)))
-- \inst|u_tx|baud_cnt[1]~16\ = CARRY((!\inst|u_tx|baud_cnt[0]~14\) # (!\inst|u_tx|baud_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(1),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[0]~14\,
	combout => \inst|u_tx|baud_cnt[1]~15_combout\,
	cout => \inst|u_tx|baud_cnt[1]~16\);

-- Location: FF_X43_Y26_N5
\inst|u_tx|baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[1]~15_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(1));

-- Location: LCCOMB_X43_Y26_N6
\inst|u_tx|baud_cnt[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[2]~17_combout\ = (\inst|u_tx|baud_cnt\(2) & (\inst|u_tx|baud_cnt[1]~16\ $ (GND))) # (!\inst|u_tx|baud_cnt\(2) & (!\inst|u_tx|baud_cnt[1]~16\ & VCC))
-- \inst|u_tx|baud_cnt[2]~18\ = CARRY((\inst|u_tx|baud_cnt\(2) & !\inst|u_tx|baud_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(2),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[1]~16\,
	combout => \inst|u_tx|baud_cnt[2]~17_combout\,
	cout => \inst|u_tx|baud_cnt[2]~18\);

-- Location: FF_X43_Y26_N7
\inst|u_tx|baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[2]~17_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(2));

-- Location: LCCOMB_X43_Y26_N8
\inst|u_tx|baud_cnt[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[3]~19_combout\ = (\inst|u_tx|baud_cnt\(3) & (!\inst|u_tx|baud_cnt[2]~18\)) # (!\inst|u_tx|baud_cnt\(3) & ((\inst|u_tx|baud_cnt[2]~18\) # (GND)))
-- \inst|u_tx|baud_cnt[3]~20\ = CARRY((!\inst|u_tx|baud_cnt[2]~18\) # (!\inst|u_tx|baud_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(3),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[2]~18\,
	combout => \inst|u_tx|baud_cnt[3]~19_combout\,
	cout => \inst|u_tx|baud_cnt[3]~20\);

-- Location: FF_X43_Y26_N9
\inst|u_tx|baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[3]~19_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(3));

-- Location: LCCOMB_X43_Y26_N10
\inst|u_tx|baud_cnt[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[4]~23_combout\ = (\inst|u_tx|baud_cnt\(4) & (\inst|u_tx|baud_cnt[3]~20\ $ (GND))) # (!\inst|u_tx|baud_cnt\(4) & (!\inst|u_tx|baud_cnt[3]~20\ & VCC))
-- \inst|u_tx|baud_cnt[4]~24\ = CARRY((\inst|u_tx|baud_cnt\(4) & !\inst|u_tx|baud_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(4),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[3]~20\,
	combout => \inst|u_tx|baud_cnt[4]~23_combout\,
	cout => \inst|u_tx|baud_cnt[4]~24\);

-- Location: FF_X43_Y26_N11
\inst|u_tx|baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[4]~23_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(4));

-- Location: LCCOMB_X43_Y26_N12
\inst|u_tx|baud_cnt[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[5]~25_combout\ = (\inst|u_tx|baud_cnt\(5) & (!\inst|u_tx|baud_cnt[4]~24\)) # (!\inst|u_tx|baud_cnt\(5) & ((\inst|u_tx|baud_cnt[4]~24\) # (GND)))
-- \inst|u_tx|baud_cnt[5]~26\ = CARRY((!\inst|u_tx|baud_cnt[4]~24\) # (!\inst|u_tx|baud_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(5),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[4]~24\,
	combout => \inst|u_tx|baud_cnt[5]~25_combout\,
	cout => \inst|u_tx|baud_cnt[5]~26\);

-- Location: FF_X43_Y26_N13
\inst|u_tx|baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[5]~25_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(5));

-- Location: LCCOMB_X43_Y26_N14
\inst|u_tx|baud_cnt[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[6]~27_combout\ = (\inst|u_tx|baud_cnt\(6) & (\inst|u_tx|baud_cnt[5]~26\ $ (GND))) # (!\inst|u_tx|baud_cnt\(6) & (!\inst|u_tx|baud_cnt[5]~26\ & VCC))
-- \inst|u_tx|baud_cnt[6]~28\ = CARRY((\inst|u_tx|baud_cnt\(6) & !\inst|u_tx|baud_cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(6),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[5]~26\,
	combout => \inst|u_tx|baud_cnt[6]~27_combout\,
	cout => \inst|u_tx|baud_cnt[6]~28\);

-- Location: FF_X43_Y26_N15
\inst|u_tx|baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[6]~27_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(6));

-- Location: LCCOMB_X43_Y26_N16
\inst|u_tx|baud_cnt[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[7]~29_combout\ = (\inst|u_tx|baud_cnt\(7) & (!\inst|u_tx|baud_cnt[6]~28\)) # (!\inst|u_tx|baud_cnt\(7) & ((\inst|u_tx|baud_cnt[6]~28\) # (GND)))
-- \inst|u_tx|baud_cnt[7]~30\ = CARRY((!\inst|u_tx|baud_cnt[6]~28\) # (!\inst|u_tx|baud_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(7),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[6]~28\,
	combout => \inst|u_tx|baud_cnt[7]~29_combout\,
	cout => \inst|u_tx|baud_cnt[7]~30\);

-- Location: FF_X43_Y26_N17
\inst|u_tx|baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[7]~29_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(7));

-- Location: LCCOMB_X43_Y26_N18
\inst|u_tx|baud_cnt[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[8]~31_combout\ = (\inst|u_tx|baud_cnt\(8) & (\inst|u_tx|baud_cnt[7]~30\ $ (GND))) # (!\inst|u_tx|baud_cnt\(8) & (!\inst|u_tx|baud_cnt[7]~30\ & VCC))
-- \inst|u_tx|baud_cnt[8]~32\ = CARRY((\inst|u_tx|baud_cnt\(8) & !\inst|u_tx|baud_cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(8),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[7]~30\,
	combout => \inst|u_tx|baud_cnt[8]~31_combout\,
	cout => \inst|u_tx|baud_cnt[8]~32\);

-- Location: FF_X43_Y26_N19
\inst|u_tx|baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[8]~31_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(8));

-- Location: LCCOMB_X43_Y26_N20
\inst|u_tx|baud_cnt[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[9]~33_combout\ = (\inst|u_tx|baud_cnt\(9) & (!\inst|u_tx|baud_cnt[8]~32\)) # (!\inst|u_tx|baud_cnt\(9) & ((\inst|u_tx|baud_cnt[8]~32\) # (GND)))
-- \inst|u_tx|baud_cnt[9]~34\ = CARRY((!\inst|u_tx|baud_cnt[8]~32\) # (!\inst|u_tx|baud_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(9),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[8]~32\,
	combout => \inst|u_tx|baud_cnt[9]~33_combout\,
	cout => \inst|u_tx|baud_cnt[9]~34\);

-- Location: FF_X43_Y26_N21
\inst|u_tx|baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[9]~33_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(9));

-- Location: LCCOMB_X43_Y26_N22
\inst|u_tx|baud_cnt[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[10]~35_combout\ = (\inst|u_tx|baud_cnt\(10) & (\inst|u_tx|baud_cnt[9]~34\ $ (GND))) # (!\inst|u_tx|baud_cnt\(10) & (!\inst|u_tx|baud_cnt[9]~34\ & VCC))
-- \inst|u_tx|baud_cnt[10]~36\ = CARRY((\inst|u_tx|baud_cnt\(10) & !\inst|u_tx|baud_cnt[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(10),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[9]~34\,
	combout => \inst|u_tx|baud_cnt[10]~35_combout\,
	cout => \inst|u_tx|baud_cnt[10]~36\);

-- Location: FF_X43_Y26_N23
\inst|u_tx|baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[10]~35_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(10));

-- Location: LCCOMB_X43_Y26_N24
\inst|u_tx|baud_cnt[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[11]~37_combout\ = (\inst|u_tx|baud_cnt\(11) & (!\inst|u_tx|baud_cnt[10]~36\)) # (!\inst|u_tx|baud_cnt\(11) & ((\inst|u_tx|baud_cnt[10]~36\) # (GND)))
-- \inst|u_tx|baud_cnt[11]~38\ = CARRY((!\inst|u_tx|baud_cnt[10]~36\) # (!\inst|u_tx|baud_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_tx|baud_cnt\(11),
	datad => VCC,
	cin => \inst|u_tx|baud_cnt[10]~36\,
	combout => \inst|u_tx|baud_cnt[11]~37_combout\,
	cout => \inst|u_tx|baud_cnt[11]~38\);

-- Location: FF_X43_Y26_N25
\inst|u_tx|baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[11]~37_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(11));

-- Location: LCCOMB_X43_Y26_N30
\inst|u_tx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Equal0~2_combout\ = (\inst|u_tx|baud_cnt\(11)) # ((\inst|u_tx|baud_cnt\(9)) # ((\inst|u_tx|baud_cnt\(8)) # (!\inst|u_tx|baud_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(11),
	datab => \inst|u_tx|baud_cnt\(9),
	datac => \inst|u_tx|baud_cnt\(10),
	datad => \inst|u_tx|baud_cnt\(8),
	combout => \inst|u_tx|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y26_N26
\inst|u_tx|baud_cnt[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|baud_cnt[12]~39_combout\ = \inst|u_tx|baud_cnt\(12) $ (!\inst|u_tx|baud_cnt[11]~38\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(12),
	cin => \inst|u_tx|baud_cnt[11]~38\,
	combout => \inst|u_tx|baud_cnt[12]~39_combout\);

-- Location: FF_X43_Y26_N27
\inst|u_tx|baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|baud_cnt[12]~39_combout\,
	sclr => \inst|u_tx|baud_cnt[0]~21_combout\,
	ena => \inst|u_tx|baud_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|baud_cnt\(12));

-- Location: LCCOMB_X43_Y26_N0
\inst|u_tx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Equal0~1_combout\ = (\inst|u_tx|baud_cnt\(5)) # ((\inst|u_tx|baud_cnt\(7)) # ((!\inst|u_tx|baud_cnt\(4)) # (!\inst|u_tx|baud_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(5),
	datab => \inst|u_tx|baud_cnt\(7),
	datac => \inst|u_tx|baud_cnt\(6),
	datad => \inst|u_tx|baud_cnt\(4),
	combout => \inst|u_tx|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y26_N28
\inst|u_tx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Equal0~0_combout\ = ((\inst|u_tx|baud_cnt\(3)) # ((!\inst|u_tx|baud_cnt\(0)) # (!\inst|u_tx|baud_cnt\(1)))) # (!\inst|u_tx|baud_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|baud_cnt\(2),
	datab => \inst|u_tx|baud_cnt\(3),
	datac => \inst|u_tx|baud_cnt\(1),
	datad => \inst|u_tx|baud_cnt\(0),
	combout => \inst|u_tx|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y26_N30
\inst|u_tx|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Equal0~3_combout\ = (\inst|u_tx|Equal0~2_combout\) # (((\inst|u_tx|Equal0~1_combout\) # (\inst|u_tx|Equal0~0_combout\)) # (!\inst|u_tx|baud_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Equal0~2_combout\,
	datab => \inst|u_tx|baud_cnt\(12),
	datac => \inst|u_tx|Equal0~1_combout\,
	datad => \inst|u_tx|Equal0~0_combout\,
	combout => \inst|u_tx|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y32_N8
\inst|u_rx|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~0_combout\ = (\inst|u_rx|bit_cnt[0]~1_combout\ & (\inst|u_rx|process_1~0_combout\ & !\inst|u_rx|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|bit_cnt[0]~1_combout\,
	datac => \inst|u_rx|process_1~0_combout\,
	datad => \inst|u_rx|Equal0~3_combout\,
	combout => \inst|u_rx|Decoder0~0_combout\);

-- Location: LCCOMB_X43_Y32_N24
\inst|u_rx|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~3_combout\ = (\inst|u_rx|bit_cnt\(0) & (!\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & \inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~3_combout\);

-- Location: LCCOMB_X42_Y32_N28
\inst|u_rx|shift_reg[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[2]~2_combout\ = (\inst|u_rx|Decoder0~3_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~3_combout\ & ((\inst|u_rx|shift_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(2),
	datad => \inst|u_rx|Decoder0~3_combout\,
	combout => \inst|u_rx|shift_reg[2]~2_combout\);

-- Location: FF_X42_Y32_N29
\inst|u_rx|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(2));

-- Location: LCCOMB_X42_Y32_N14
\inst|u_rx|data_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[2]~feeder_combout\ = \inst|u_rx|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|shift_reg\(2),
	combout => \inst|u_rx|data_out[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y32_N8
\inst|u_rx|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[7]~0_combout\ = (\inst|u_rx|ready_reg~1_combout\ & \inst|u_rx|receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_rx|ready_reg~1_combout\,
	datad => \inst|u_rx|receiving~q\,
	combout => \inst|u_rx|data_out[7]~0_combout\);

-- Location: FF_X42_Y32_N15
\inst|u_rx|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|data_out[2]~feeder_combout\,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(2));

-- Location: LCCOMB_X43_Y32_N10
\inst|u_rx|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~4_combout\ = (!\inst|u_rx|bit_cnt\(0) & (!\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & \inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~4_combout\);

-- Location: LCCOMB_X42_Y32_N18
\inst|u_rx|shift_reg[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[1]~3_combout\ = (\inst|u_rx|Decoder0~4_combout\ & ((!\inst|u_rx|rx_sync\(1)))) # (!\inst|u_rx|Decoder0~4_combout\ & (\inst|u_rx|shift_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|Decoder0~4_combout\,
	datac => \inst|u_rx|shift_reg\(1),
	datad => \inst|u_rx|rx_sync\(1),
	combout => \inst|u_rx|shift_reg[1]~3_combout\);

-- Location: FF_X42_Y32_N19
\inst|u_rx|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(1));

-- Location: LCCOMB_X42_Y32_N20
\inst|u_rx|data_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[1]~feeder_combout\ = \inst|u_rx|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|shift_reg\(1),
	combout => \inst|u_rx|data_out[1]~feeder_combout\);

-- Location: FF_X42_Y32_N21
\inst|u_rx|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|data_out[1]~feeder_combout\,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(1));

-- Location: LCCOMB_X41_Y28_N2
\inst|enc_mode~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|enc_mode~0_combout\ = \inst|enc_mode~q\ $ (((\inst|state.S_WAIT_KEY~q\ & (\inst|LessThan1~0_combout\ & \inst|key0_edge~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_WAIT_KEY~q\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|enc_mode~q\,
	datad => \inst|key0_edge~q\,
	combout => \inst|enc_mode~0_combout\);

-- Location: FF_X41_Y28_N3
\inst|enc_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|enc_mode~0_combout\,
	clrn => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|enc_mode~q\);

-- Location: LCCOMB_X34_Y28_N6
\inst|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst|enc_mode~q\ & \inst|state.S_PROCESS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|enc_mode~q\,
	datad => \inst|state.S_PROCESS~q\,
	combout => \inst|Selector6~2_combout\);

-- Location: LCCOMB_X43_Y32_N6
\inst|u_rx|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~8_combout\ = (\inst|u_rx|bit_cnt\(0) & (\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & \inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~8_combout\);

-- Location: LCCOMB_X42_Y32_N26
\inst|u_rx|shift_reg[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[6]~7_combout\ = (\inst|u_rx|Decoder0~8_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~8_combout\ & ((\inst|u_rx|shift_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(6),
	datad => \inst|u_rx|Decoder0~8_combout\,
	combout => \inst|u_rx|shift_reg[6]~7_combout\);

-- Location: FF_X42_Y32_N27
\inst|u_rx|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(6));

-- Location: LCCOMB_X42_Y32_N12
\inst|u_rx|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[6]~feeder_combout\ = \inst|u_rx|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_rx|shift_reg\(6),
	combout => \inst|u_rx|data_out[6]~feeder_combout\);

-- Location: FF_X42_Y32_N13
\inst|u_rx|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|data_out[6]~feeder_combout\,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(6));

-- Location: LCCOMB_X35_Y28_N10
\inst|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~3_combout\ = (!\inst|enc_mode~q\ & \inst|state.S_PROCESS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enc_mode~q\,
	datad => \inst|state.S_PROCESS~q\,
	combout => \inst|Selector6~3_combout\);

-- Location: LCCOMB_X43_Y32_N16
\inst|u_rx|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~5_combout\ = (!\inst|u_rx|bit_cnt\(0) & (\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & \inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~5_combout\);

-- Location: LCCOMB_X42_Y32_N4
\inst|u_rx|shift_reg[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[5]~4_combout\ = (\inst|u_rx|Decoder0~5_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~5_combout\ & ((\inst|u_rx|shift_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(5),
	datad => \inst|u_rx|Decoder0~5_combout\,
	combout => \inst|u_rx|shift_reg[5]~4_combout\);

-- Location: FF_X42_Y32_N5
\inst|u_rx|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(5));

-- Location: LCCOMB_X41_Y32_N2
\inst|u_rx|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[5]~feeder_combout\ = \inst|u_rx|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|shift_reg\(5),
	combout => \inst|u_rx|data_out[5]~feeder_combout\);

-- Location: FF_X41_Y32_N3
\inst|u_rx|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|data_out[5]~feeder_combout\,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(5));

-- Location: LCCOMB_X43_Y32_N2
\inst|u_rx|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~1_combout\ = (\inst|u_rx|bit_cnt\(0) & (!\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & !\inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~1_combout\);

-- Location: LCCOMB_X42_Y32_N30
\inst|u_rx|shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[0]~0_combout\ = (\inst|u_rx|Decoder0~1_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~1_combout\ & ((\inst|u_rx|shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(0),
	datad => \inst|u_rx|Decoder0~1_combout\,
	combout => \inst|u_rx|shift_reg[0]~0_combout\);

-- Location: FF_X42_Y32_N31
\inst|u_rx|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(0));

-- Location: FF_X41_Y32_N17
\inst|u_rx|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|u_rx|shift_reg\(0),
	sload => VCC,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(0));

-- Location: LCCOMB_X41_Y32_N16
\inst|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (!\inst|state.S_PROCESS~q\ & \inst|u_rx|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datac => \inst|u_rx|data_out\(0),
	combout => \inst|Selector7~2_combout\);

-- Location: LCCOMB_X37_Y31_N24
\inst|u_spn_dec|Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~8_combout\ = (!\inst|Mux22~41_combout\ & (!\inst|Mux17~41_combout\ & !\inst|Mux19~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn_dec|Mux8~8_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst|u_spn_dec|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux1~2_combout\ = (\inst|Mux19~41_combout\ & (!\inst|Mux18~41_combout\ & \inst|Mux21~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datac => \inst|Mux18~41_combout\,
	datad => \inst|Mux21~41_combout\,
	combout => \inst|u_spn_dec|Mux1~2_combout\);

-- Location: LCCOMB_X43_Y32_N28
\inst|u_rx|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~7_combout\ = (!\inst|u_rx|bit_cnt\(0) & (\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & !\inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~7_combout\);

-- Location: LCCOMB_X42_Y32_N0
\inst|u_rx|shift_reg[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[3]~6_combout\ = (\inst|u_rx|Decoder0~7_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~7_combout\ & ((\inst|u_rx|shift_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(3),
	datad => \inst|u_rx|Decoder0~7_combout\,
	combout => \inst|u_rx|shift_reg[3]~6_combout\);

-- Location: FF_X42_Y32_N1
\inst|u_rx|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(3));

-- Location: LCCOMB_X42_Y32_N10
\inst|u_rx|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|data_out[3]~feeder_combout\ = \inst|u_rx|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u_rx|shift_reg\(3),
	combout => \inst|u_rx|data_out[3]~feeder_combout\);

-- Location: FF_X42_Y32_N11
\inst|u_rx|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|data_out[3]~feeder_combout\,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(3));

-- Location: LCCOMB_X36_Y31_N18
\inst|u_spn_dec|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux5~0_combout\ = (((\inst|Mux20~41_combout\) # (\inst|Mux18~41_combout\)) # (!\inst|Mux19~41_combout\)) # (!\inst|Mux21~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|Mux19~41_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux18~41_combout\,
	combout => \inst|u_spn_dec|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y30_N10
\inst|u_spn_dec|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux7~0_combout\ = (\inst|Mux22~41_combout\ & (!\inst|Mux16~41_combout\ & (\inst|Mux23~41_combout\ & \inst|Mux17~41_combout\))) # (!\inst|Mux22~41_combout\ & (\inst|Mux16~41_combout\ & (!\inst|Mux23~41_combout\ & !\inst|Mux17~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux17~41_combout\,
	combout => \inst|u_spn_dec|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y30_N12
\inst|u_spn_dec|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux7~1_combout\ = (\inst|Mux19~41_combout\ & (\inst|Mux20~41_combout\ & (!\inst|Mux18~41_combout\ & \inst|u_spn_dec|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux20~41_combout\,
	datac => \inst|Mux18~41_combout\,
	datad => \inst|u_spn_dec|Mux7~0_combout\,
	combout => \inst|u_spn_dec|Mux7~1_combout\);

-- Location: LCCOMB_X36_Y30_N8
\inst|u_spn_dec|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux3~0_combout\ = (!\inst|Mux20~41_combout\ & (\inst|Mux17~41_combout\ & (!\inst|Mux16~41_combout\ & \inst|Mux22~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datac => \inst|Mux16~41_combout\,
	datad => \inst|Mux22~41_combout\,
	combout => \inst|u_spn_dec|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y30_N18
\inst|u_spn_dec|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux7~2_combout\ = (\inst|Mux19~41_combout\) # (((!\inst|Mux18~41_combout\) # (!\inst|u_spn_dec|Mux3~0_combout\)) # (!\inst|Mux23~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux23~41_combout\,
	datac => \inst|u_spn_dec|Mux3~0_combout\,
	datad => \inst|Mux18~41_combout\,
	combout => \inst|u_spn_dec|Mux7~2_combout\);

-- Location: LCCOMB_X36_Y30_N22
\inst|u_spn_dec|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux7~3_combout\ = (\inst|u_spn_dec|Mux7~1_combout\) # ((!\inst|Mux21~41_combout\ & \inst|u_spn_dec|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux7~1_combout\,
	datac => \inst|Mux21~41_combout\,
	datad => \inst|u_spn_dec|Mux7~2_combout\,
	combout => \inst|u_spn_dec|Mux7~3_combout\);

-- Location: LCCOMB_X37_Y30_N16
\inst|u_spn_dec|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux0~3_combout\ = (\inst|Mux21~41_combout\ & (\inst|Mux19~41_combout\ & (\inst|Mux20~41_combout\ $ (\inst|Mux23~41_combout\)))) # (!\inst|Mux21~41_combout\ & (\inst|Mux20~41_combout\ & (\inst|Mux23~41_combout\ & !\inst|Mux19~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|Mux20~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn_dec|Mux0~3_combout\);

-- Location: LCCOMB_X37_Y30_N8
\inst|u_spn_dec|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux0~2_combout\ = (\inst|Mux20~41_combout\ & (\inst|Mux23~41_combout\ & (\inst|Mux21~41_combout\ $ (!\inst|Mux19~41_combout\)))) # (!\inst|Mux20~41_combout\ & (\inst|Mux21~41_combout\ & ((\inst|Mux19~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|Mux20~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn_dec|Mux0~2_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst|u_spn_dec|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux0~4_combout\ = (\inst|u_spn_dec|Mux0~2_combout\ & (\inst|Mux16~41_combout\ $ ((!\inst|u_spn_dec|Mux0~3_combout\)))) # (!\inst|u_spn_dec|Mux0~2_combout\ & (((\inst|u_spn_dec|Mux0~3_combout\ & !\inst|Mux17~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~41_combout\,
	datab => \inst|u_spn_dec|Mux0~3_combout\,
	datac => \inst|u_spn_dec|Mux0~2_combout\,
	datad => \inst|Mux17~41_combout\,
	combout => \inst|u_spn_dec|Mux0~4_combout\);

-- Location: LCCOMB_X37_Y30_N18
\inst|u_spn_dec|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux0~6_combout\ = (\inst|Mux22~41_combout\ & (((\inst|Mux17~41_combout\)))) # (!\inst|Mux22~41_combout\ & (!\inst|Mux23~41_combout\ & (\inst|Mux16~41_combout\ & !\inst|Mux17~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|Mux22~41_combout\,
	datad => \inst|Mux17~41_combout\,
	combout => \inst|u_spn_dec|Mux0~6_combout\);

-- Location: LCCOMB_X37_Y30_N0
\inst|u_spn_dec|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux0~5_combout\ = (!\inst|Mux18~41_combout\ & ((!\inst|u_spn_dec|Mux0~6_combout\) # (!\inst|u_spn_dec|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux18~41_combout\,
	datac => \inst|u_spn_dec|Mux0~4_combout\,
	datad => \inst|u_spn_dec|Mux0~6_combout\,
	combout => \inst|u_spn_dec|Mux0~5_combout\);

-- Location: LCCOMB_X35_Y31_N16
\inst|u_spn_dec|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux15~0_combout\ = (\inst|u_spn_dec|Mux6~2_combout\ & (\inst|u_spn_dec|Mux1~3_combout\ & (!\inst|u_spn_dec|Mux7~3_combout\ & \inst|u_spn_dec|Mux0~5_combout\))) # (!\inst|u_spn_dec|Mux6~2_combout\ & (!\inst|u_spn_dec|Mux1~3_combout\ & 
-- (\inst|u_spn_dec|Mux7~3_combout\ & !\inst|u_spn_dec|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux6~2_combout\,
	datab => \inst|u_spn_dec|Mux1~3_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux0~5_combout\,
	combout => \inst|u_spn_dec|Mux15~0_combout\);

-- Location: LCCOMB_X35_Y31_N22
\inst|u_spn_dec|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux15~1_combout\ = (!\inst|Mux17~41_combout\ & (!\inst|Mux20~41_combout\ & (\inst|Mux23~41_combout\ & \inst|u_spn_dec|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~41_combout\,
	datab => \inst|Mux20~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|u_spn_dec|Mux15~0_combout\,
	combout => \inst|u_spn_dec|Mux15~1_combout\);

-- Location: LCCOMB_X36_Y30_N2
\inst|u_spn_dec|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux3~1_combout\ = (!\inst|Mux19~41_combout\ & (!\inst|Mux21~41_combout\ & (\inst|u_spn_dec|Mux3~0_combout\ & \inst|Mux18~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux21~41_combout\,
	datac => \inst|u_spn_dec|Mux3~0_combout\,
	datad => \inst|Mux18~41_combout\,
	combout => \inst|u_spn_dec|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst|u_spn_dec|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux3~2_combout\ = (\inst|u_spn_dec|Mux3~1_combout\) # ((!\inst|Mux23~41_combout\ & ((!\inst|u_spn_dec|Mux1~2_combout\) # (!\inst|u_spn_dec|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux3~0_combout\,
	datab => \inst|Mux23~41_combout\,
	datac => \inst|u_spn_dec|Mux1~2_combout\,
	datad => \inst|u_spn_dec|Mux3~1_combout\,
	combout => \inst|u_spn_dec|Mux3~2_combout\);

-- Location: LCCOMB_X37_Y31_N4
\inst|u_spn_dec|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux4~1_combout\ = (\inst|Mux18~41_combout\ $ (!\inst|Mux21~41_combout\)) # (!\inst|Mux22~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datac => \inst|Mux18~41_combout\,
	datad => \inst|Mux21~41_combout\,
	combout => \inst|u_spn_dec|Mux4~1_combout\);

-- Location: LCCOMB_X36_Y30_N4
\inst|u_spn_dec|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux4~0_combout\ = (\inst|Mux19~41_combout\ & ((\inst|Mux18~41_combout\) # (\inst|Mux16~41_combout\ $ (\inst|Mux23~41_combout\)))) # (!\inst|Mux19~41_combout\ & ((\inst|Mux16~41_combout\) # ((!\inst|Mux18~41_combout\) # 
-- (!\inst|Mux23~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux18~41_combout\,
	combout => \inst|u_spn_dec|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y31_N22
\inst|u_spn_dec|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux4~2_combout\ = (!\inst|Mux20~41_combout\ & (((\inst|u_spn_dec|Mux4~1_combout\) # (\inst|u_spn_dec|Mux4~0_combout\)) # (!\inst|Mux17~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~41_combout\,
	datab => \inst|u_spn_dec|Mux4~1_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|u_spn_dec|Mux4~0_combout\,
	combout => \inst|u_spn_dec|Mux4~2_combout\);

-- Location: LCCOMB_X35_Y31_N6
\inst|u_spn_dec|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux11~0_combout\ = (!\inst|u_spn_dec|Mux4~2_combout\ & (\inst|u_spn_dec|Mux6~2_combout\ & (\inst|u_spn_dec|Mux1~3_combout\ & \inst|u_spn_dec|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux4~2_combout\,
	datab => \inst|u_spn_dec|Mux6~2_combout\,
	datac => \inst|u_spn_dec|Mux1~3_combout\,
	datad => \inst|u_spn_dec|Mux0~5_combout\,
	combout => \inst|u_spn_dec|Mux11~0_combout\);

-- Location: LCCOMB_X35_Y31_N0
\inst|u_spn_dec|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux15~2_combout\ = (((\inst|u_spn_dec|Mux7~3_combout\) # (!\inst|u_spn_dec|Mux11~0_combout\)) # (!\inst|u_spn_dec|Mux3~2_combout\)) # (!\inst|u_spn_dec|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux2~0_combout\,
	datab => \inst|u_spn_dec|Mux3~2_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux11~0_combout\,
	combout => \inst|u_spn_dec|Mux15~2_combout\);

-- Location: LCCOMB_X35_Y31_N12
\inst|u_spn_dec|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux15~3_combout\ = (\inst|u_spn_dec|Mux15~1_combout\) # ((!\inst|u_spn_dec|Mux5~3_combout\ & \inst|u_spn_dec|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~1_combout\,
	datab => \inst|u_spn_dec|Mux5~3_combout\,
	datad => \inst|u_spn_dec|Mux15~2_combout\,
	combout => \inst|u_spn_dec|Mux15~3_combout\);

-- Location: LCCOMB_X37_Y29_N22
\inst|u_spn|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux7~0_combout\ = (!\inst|Mux18~41_combout\ & !\inst|Mux17~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux18~41_combout\,
	datad => \inst|Mux17~41_combout\,
	combout => \inst|u_spn|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y30_N20
\inst|u_spn_dec|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux12~1_combout\ = (\inst|Mux23~41_combout\ & !\inst|Mux16~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux16~41_combout\,
	combout => \inst|u_spn_dec|Mux12~1_combout\);

-- Location: LCCOMB_X36_Y31_N16
\inst|u_spn_dec|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux12~0_combout\ = (\inst|u_spn_dec|Mux0~5_combout\ & (!\inst|u_spn_dec|Mux5~3_combout\ & (\inst|u_spn_dec|Mux2~0_combout\ & \inst|u_spn_dec|Mux3~2_combout\))) # (!\inst|u_spn_dec|Mux0~5_combout\ & (\inst|u_spn_dec|Mux5~3_combout\ & 
-- (!\inst|u_spn_dec|Mux2~0_combout\ & !\inst|u_spn_dec|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux0~5_combout\,
	datab => \inst|u_spn_dec|Mux5~3_combout\,
	datac => \inst|u_spn_dec|Mux2~0_combout\,
	datad => \inst|u_spn_dec|Mux3~2_combout\,
	combout => \inst|u_spn_dec|Mux12~0_combout\);

-- Location: LCCOMB_X36_Y31_N6
\inst|u_spn_dec|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux12~2_combout\ = (\inst|u_spn_dec|Mux7~3_combout\ & (((!\inst|u_spn_dec|Mux12~1_combout\)) # (!\inst|u_spn|Mux7~0_combout\))) # (!\inst|u_spn_dec|Mux7~3_combout\ & (((!\inst|u_spn_dec|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux7~0_combout\,
	datab => \inst|u_spn_dec|Mux12~1_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux12~0_combout\,
	combout => \inst|u_spn_dec|Mux12~2_combout\);

-- Location: LCCOMB_X36_Y31_N0
\inst|u_spn_dec|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux12~3_combout\ = (!\inst|u_spn_dec|Mux4~2_combout\ & (((\inst|u_spn_dec|Mux12~2_combout\) # (!\inst|u_spn_dec|Mux6~2_combout\)) # (!\inst|u_spn_dec|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux1~3_combout\,
	datab => \inst|u_spn_dec|Mux4~2_combout\,
	datac => \inst|u_spn_dec|Mux6~2_combout\,
	datad => \inst|u_spn_dec|Mux12~2_combout\,
	combout => \inst|u_spn_dec|Mux12~3_combout\);

-- Location: LCCOMB_X36_Y31_N4
\inst|u_spn_dec|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux5~1_combout\ = (\inst|Mux21~41_combout\ & (\inst|Mux19~41_combout\ & (\inst|Mux20~41_combout\ & !\inst|Mux18~41_combout\))) # (!\inst|Mux21~41_combout\ & (!\inst|Mux19~41_combout\ & (!\inst|Mux20~41_combout\ & \inst|Mux18~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|Mux19~41_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux18~41_combout\,
	combout => \inst|u_spn_dec|Mux5~1_combout\);

-- Location: LCCOMB_X37_Y31_N6
\inst|u_spn_dec|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~0_combout\ = (\inst|Mux17~41_combout\ & ((\inst|Mux23~41_combout\ & (\inst|u_spn_dec|Mux5~1_combout\)) # (!\inst|Mux23~41_combout\ & ((!\inst|u_spn_dec|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datac => \inst|u_spn_dec|Mux5~1_combout\,
	datad => \inst|u_spn_dec|Mux5~0_combout\,
	combout => \inst|u_spn_dec|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y31_N12
\inst|u_spn_dec|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~1_combout\ = (!\inst|Mux16~41_combout\ & ((\inst|Mux23~41_combout\) # ((\inst|u_spn_dec|Mux3~0_combout\ & \inst|u_spn_dec|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|u_spn_dec|Mux3~0_combout\,
	datad => \inst|u_spn_dec|Mux1~2_combout\,
	combout => \inst|u_spn_dec|Mux8~1_combout\);

-- Location: LCCOMB_X37_Y31_N30
\inst|u_spn_dec|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~2_combout\ = (!\inst|u_spn_dec|Mux3~1_combout\ & (\inst|u_spn_dec|Mux8~1_combout\ & ((!\inst|Mux22~41_combout\) # (!\inst|u_spn_dec|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux8~0_combout\,
	datab => \inst|Mux22~41_combout\,
	datac => \inst|u_spn_dec|Mux3~1_combout\,
	datad => \inst|u_spn_dec|Mux8~1_combout\,
	combout => \inst|u_spn_dec|Mux8~2_combout\);

-- Location: LCCOMB_X37_Y31_N20
\inst|u_spn_dec|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~3_combout\ = (\inst|u_spn_dec|Mux4~2_combout\ & ((\inst|u_spn_dec|Mux7~1_combout\) # ((!\inst|Mux21~41_combout\ & \inst|u_spn_dec|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|u_spn_dec|Mux7~2_combout\,
	datac => \inst|u_spn_dec|Mux4~2_combout\,
	datad => \inst|u_spn_dec|Mux7~1_combout\,
	combout => \inst|u_spn_dec|Mux8~3_combout\);

-- Location: LCCOMB_X37_Y31_N2
\inst|u_spn_dec|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux9~0_combout\ = (!\inst|u_spn_dec|Mux2~0_combout\ & (!\inst|u_spn_dec|Mux0~5_combout\ & (\inst|u_spn_dec|Mux8~2_combout\ & \inst|u_spn_dec|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux2~0_combout\,
	datab => \inst|u_spn_dec|Mux0~5_combout\,
	datac => \inst|u_spn_dec|Mux8~2_combout\,
	datad => \inst|u_spn_dec|Mux8~3_combout\,
	combout => \inst|u_spn_dec|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y31_N10
\inst|u_spn_dec|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux10~0_combout\ = (\inst|u_spn_dec|Mux1~3_combout\) # ((!\inst|u_spn_dec|Mux6~2_combout\ & \inst|u_spn_dec|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux1~3_combout\,
	datac => \inst|u_spn_dec|Mux6~2_combout\,
	datad => \inst|u_spn_dec|Mux9~0_combout\,
	combout => \inst|u_spn_dec|Mux10~0_combout\);

-- Location: LCCOMB_X36_Y30_N26
\inst|u_spn_dec|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux11~1_combout\ = (\inst|u_spn_dec|Mux3~2_combout\ & (!\inst|u_spn_dec|Mux7~3_combout\ & !\inst|u_spn_dec|Mux5~3_combout\)) # (!\inst|u_spn_dec|Mux3~2_combout\ & (\inst|u_spn_dec|Mux7~3_combout\ & \inst|u_spn_dec|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux3~2_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux5~3_combout\,
	combout => \inst|u_spn_dec|Mux11~1_combout\);

-- Location: LCCOMB_X34_Y31_N6
\inst|u_spn_dec|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux11~2_combout\ = (\inst|u_spn_dec|Mux11~1_combout\ & ((\inst|u_spn_dec|Mux11~0_combout\ & ((\inst|u_spn_dec|Mux2~0_combout\))) # (!\inst|u_spn_dec|Mux11~0_combout\ & (\inst|u_spn_dec|Mux7~3_combout\)))) # 
-- (!\inst|u_spn_dec|Mux11~1_combout\ & (\inst|u_spn_dec|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux7~3_combout\,
	datab => \inst|u_spn_dec|Mux2~0_combout\,
	datac => \inst|u_spn_dec|Mux11~1_combout\,
	datad => \inst|u_spn_dec|Mux11~0_combout\,
	combout => \inst|u_spn_dec|Mux11~2_combout\);

-- Location: LCCOMB_X34_Y31_N24
\inst|u_spn_dec|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux17~0_combout\ = (\inst|u_spn_dec|Mux10~0_combout\ & (!\inst|u_spn_dec|Mux13~3_combout\ & !\inst|u_spn_dec|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux10~0_combout\,
	datac => \inst|u_spn_dec|Mux13~3_combout\,
	datad => \inst|u_spn_dec|Mux11~2_combout\,
	combout => \inst|u_spn_dec|Mux17~0_combout\);

-- Location: LCCOMB_X34_Y31_N18
\inst|u_spn_dec|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux17~1_combout\ = (!\inst|u_spn_dec|Mux15~3_combout\ & (\inst|u_spn_dec|Mux8~9_combout\ & (!\inst|u_spn_dec|Mux12~3_combout\ & \inst|u_spn_dec|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux8~9_combout\,
	datac => \inst|u_spn_dec|Mux12~3_combout\,
	datad => \inst|u_spn_dec|Mux17~0_combout\,
	combout => \inst|u_spn_dec|Mux17~1_combout\);

-- Location: LCCOMB_X34_Y31_N12
\inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst|u_spn_dec|Mux9~1_combout\ & (\inst|Selector6~2_combout\ & ((\inst|u_spn_dec|Mux14~2_combout\) # (!\inst|u_spn_dec|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datab => \inst|Selector6~2_combout\,
	datac => \inst|u_spn_dec|Mux14~2_combout\,
	datad => \inst|u_spn_dec|Mux17~1_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y29_N12
\inst|u_spn_dec|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux22~0_combout\ = (\inst|u_spn_dec|Mux9~1_combout\ & (\inst|u_spn_dec|Mux15~3_combout\ & \inst|u_spn_dec|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datac => \inst|u_spn_dec|Mux15~3_combout\,
	datad => \inst|u_spn_dec|Mux14~2_combout\,
	combout => \inst|u_spn_dec|Mux22~0_combout\);

-- Location: LCCOMB_X35_Y29_N10
\inst|u_spn_dec|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux22~1_combout\ = (\inst|u_spn_dec|Mux13~3_combout\ & ((\inst|u_spn_dec|Mux10~0_combout\ & (\inst|u_spn_dec|Mux8~9_combout\ & !\inst|u_spn_dec|Mux12~3_combout\)) # (!\inst|u_spn_dec|Mux10~0_combout\ & (!\inst|u_spn_dec|Mux8~9_combout\ & 
-- \inst|u_spn_dec|Mux12~3_combout\)))) # (!\inst|u_spn_dec|Mux13~3_combout\ & (\inst|u_spn_dec|Mux10~0_combout\ & (\inst|u_spn_dec|Mux8~9_combout\ $ (!\inst|u_spn_dec|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux13~3_combout\,
	datab => \inst|u_spn_dec|Mux10~0_combout\,
	datac => \inst|u_spn_dec|Mux8~9_combout\,
	datad => \inst|u_spn_dec|Mux12~3_combout\,
	combout => \inst|u_spn_dec|Mux22~1_combout\);

-- Location: LCCOMB_X35_Y29_N8
\inst|u_spn_dec|Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux22~2_combout\ = (\inst|u_spn_dec|Mux22~0_combout\ & ((\inst|u_spn_dec|Mux22~1_combout\ & ((!\inst|u_spn_dec|Mux13~3_combout\))) # (!\inst|u_spn_dec|Mux22~1_combout\ & (\inst|u_spn_dec|Mux11~2_combout\)))) # 
-- (!\inst|u_spn_dec|Mux22~0_combout\ & (\inst|u_spn_dec|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux22~0_combout\,
	datab => \inst|u_spn_dec|Mux11~2_combout\,
	datac => \inst|u_spn_dec|Mux13~3_combout\,
	datad => \inst|u_spn_dec|Mux22~1_combout\,
	combout => \inst|u_spn_dec|Mux22~2_combout\);

-- Location: LCCOMB_X35_Y31_N26
\inst|u_spn_dec|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux20~0_combout\ = (\inst|u_spn_dec|Mux10~0_combout\ & (!\inst|u_spn_dec|Mux13~3_combout\ & (!\inst|u_spn_dec|Mux11~2_combout\ & \inst|u_spn_dec|Mux8~9_combout\))) # (!\inst|u_spn_dec|Mux10~0_combout\ & (\inst|u_spn_dec|Mux13~3_combout\ & 
-- (\inst|u_spn_dec|Mux11~2_combout\ & !\inst|u_spn_dec|Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux10~0_combout\,
	datab => \inst|u_spn_dec|Mux13~3_combout\,
	datac => \inst|u_spn_dec|Mux11~2_combout\,
	datad => \inst|u_spn_dec|Mux8~9_combout\,
	combout => \inst|u_spn_dec|Mux20~0_combout\);

-- Location: LCCOMB_X35_Y31_N8
\inst|u_spn_dec|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux20~1_combout\ = (\inst|u_spn_dec|Mux15~3_combout\ & (((\inst|u_spn_dec|Mux20~0_combout\)))) # (!\inst|u_spn_dec|Mux15~3_combout\ & (!\inst|u_spn_dec|Mux8~9_combout\ & ((\inst|u_spn_dec|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux8~9_combout\,
	datac => \inst|u_spn_dec|Mux20~0_combout\,
	datad => \inst|u_spn_dec|Mux17~0_combout\,
	combout => \inst|u_spn_dec|Mux20~1_combout\);

-- Location: LCCOMB_X35_Y31_N30
\inst|u_spn_dec|Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux20~2_combout\ = (\inst|u_spn_dec|Mux12~3_combout\ & (((!\inst|u_spn_dec|Mux14~2_combout\) # (!\inst|u_spn_dec|Mux20~1_combout\)) # (!\inst|u_spn_dec|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datab => \inst|u_spn_dec|Mux12~3_combout\,
	datac => \inst|u_spn_dec|Mux20~1_combout\,
	datad => \inst|u_spn_dec|Mux14~2_combout\,
	combout => \inst|u_spn_dec|Mux20~2_combout\);

-- Location: LCCOMB_X35_Y31_N28
\inst|u_spn_dec|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux19~0_combout\ = (\inst|u_spn_dec|Mux9~1_combout\ & (\inst|u_spn_dec|Mux14~2_combout\ & (\inst|u_spn_dec|Mux12~3_combout\ & !\inst|u_spn_dec|Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datab => \inst|u_spn_dec|Mux14~2_combout\,
	datac => \inst|u_spn_dec|Mux12~3_combout\,
	datad => \inst|u_spn_dec|Mux8~9_combout\,
	combout => \inst|u_spn_dec|Mux19~0_combout\);

-- Location: LCCOMB_X34_Y31_N14
\inst|u_spn_dec|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux19~1_combout\ = (\inst|u_spn_dec|Mux11~2_combout\ & (!\inst|u_spn_dec|Mux10~0_combout\ & (\inst|u_spn_dec|Mux13~3_combout\ & \inst|u_spn_dec|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux11~2_combout\,
	datab => \inst|u_spn_dec|Mux10~0_combout\,
	datac => \inst|u_spn_dec|Mux13~3_combout\,
	datad => \inst|u_spn_dec|Mux19~0_combout\,
	combout => \inst|u_spn_dec|Mux19~1_combout\);

-- Location: LCCOMB_X34_Y31_N8
\inst|u_spn_dec|Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux19~2_combout\ = (\inst|u_spn_dec|Mux19~1_combout\) # ((!\inst|u_spn_dec|Mux15~3_combout\ & ((!\inst|u_spn_dec|Mux17~0_combout\) # (!\inst|u_spn_dec|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux19~0_combout\,
	datac => \inst|u_spn_dec|Mux19~1_combout\,
	datad => \inst|u_spn_dec|Mux17~0_combout\,
	combout => \inst|u_spn_dec|Mux19~2_combout\);

-- Location: LCCOMB_X34_Y29_N22
\inst|u_spn_dec|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux16~0_combout\ = (\inst|u_spn_dec|Mux14~2_combout\ & (\inst|u_spn_dec|Mux15~3_combout\ $ (((\inst|u_spn_dec|Mux12~3_combout\ & !\inst|u_spn_dec|Mux8~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux14~2_combout\,
	datac => \inst|u_spn_dec|Mux12~3_combout\,
	datad => \inst|u_spn_dec|Mux8~9_combout\,
	combout => \inst|u_spn_dec|Mux16~0_combout\);

-- Location: LCCOMB_X35_Y31_N14
\inst|u_spn_dec|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux16~1_combout\ = (!\inst|u_spn_dec|Mux12~3_combout\ & (\inst|u_spn_dec|Mux8~9_combout\ & (\inst|u_spn_dec|Mux15~3_combout\ $ (!\inst|u_spn_dec|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux14~2_combout\,
	datac => \inst|u_spn_dec|Mux12~3_combout\,
	datad => \inst|u_spn_dec|Mux8~9_combout\,
	combout => \inst|u_spn_dec|Mux16~1_combout\);

-- Location: LCCOMB_X34_Y29_N28
\inst|u_spn_dec|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux16~2_combout\ = (\inst|u_spn_dec|Mux9~1_combout\ & (\inst|u_spn_dec|Mux16~0_combout\ & (\inst|u_spn_dec|Mux11~2_combout\ $ (!\inst|u_spn_dec|Mux16~1_combout\)))) # (!\inst|u_spn_dec|Mux9~1_combout\ & (!\inst|u_spn_dec|Mux11~2_combout\ & 
-- (!\inst|u_spn_dec|Mux16~0_combout\ & \inst|u_spn_dec|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux11~2_combout\,
	datab => \inst|u_spn_dec|Mux9~1_combout\,
	datac => \inst|u_spn_dec|Mux16~0_combout\,
	datad => \inst|u_spn_dec|Mux16~1_combout\,
	combout => \inst|u_spn_dec|Mux16~2_combout\);

-- Location: LCCOMB_X34_Y29_N14
\inst|u_spn_dec|Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux16~3_combout\ = (\inst|u_spn_dec|Mux10~0_combout\ & ((\inst|u_spn_dec|Mux13~3_combout\ $ (\inst|u_spn_dec|Mux11~2_combout\)) # (!\inst|u_spn_dec|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux10~0_combout\,
	datab => \inst|u_spn_dec|Mux13~3_combout\,
	datac => \inst|u_spn_dec|Mux11~2_combout\,
	datad => \inst|u_spn_dec|Mux16~2_combout\,
	combout => \inst|u_spn_dec|Mux16~3_combout\);

-- Location: LCCOMB_X35_Y28_N18
\inst|u_spn_dec|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux25~0_combout\ = (\inst|u_spn_dec|Mux19~2_combout\ & (\inst|u_spn_dec|Mux23~3_combout\ & (!\inst|u_spn_dec|Mux16~3_combout\ & !\inst|u_spn_dec|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux19~2_combout\,
	datab => \inst|u_spn_dec|Mux23~3_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|u_spn_dec|Mux21~2_combout\,
	combout => \inst|u_spn_dec|Mux25~0_combout\);

-- Location: LCCOMB_X35_Y28_N24
\inst|u_spn_dec|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux25~1_combout\ = (\inst|u_spn_dec|Mux17~2_combout\ & (\inst|u_spn_dec|Mux20~2_combout\ & \inst|u_spn_dec|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux17~2_combout\,
	datac => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|u_spn_dec|Mux25~0_combout\,
	combout => \inst|u_spn_dec|Mux25~1_combout\);

-- Location: LCCOMB_X35_Y29_N4
\inst|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~4_combout\ = (!\inst|u_spn_dec|Mux21~2_combout\ & \inst|u_spn_dec|Mux19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u_spn_dec|Mux21~2_combout\,
	datad => \inst|u_spn_dec|Mux19~2_combout\,
	combout => \inst|Selector3~4_combout\);

-- Location: LCCOMB_X35_Y29_N30
\inst|u_spn_dec|Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux24~1_combout\ = (\inst|u_spn_dec|Mux16~3_combout\ & (\inst|u_spn_dec|Mux23~3_combout\ & (\inst|Selector3~4_combout\ & !\inst|u_spn_dec|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux16~3_combout\,
	datab => \inst|u_spn_dec|Mux23~3_combout\,
	datac => \inst|Selector3~4_combout\,
	datad => \inst|u_spn_dec|Mux20~2_combout\,
	combout => \inst|u_spn_dec|Mux24~1_combout\);

-- Location: LCCOMB_X35_Y29_N6
\inst|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst|u_spn_dec|Mux18~0_combout\ & (!\inst|u_spn_dec|Mux22~2_combout\ & (\inst|u_spn_dec|Mux17~2_combout\ & \inst|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux17~2_combout\,
	datad => \inst|Selector6~2_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: LCCOMB_X35_Y29_N16
\inst|u_spn_dec|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux24~0_combout\ = (\inst|u_spn_dec|Mux21~2_combout\ & (!\inst|u_spn_dec|Mux16~3_combout\ & (\inst|u_spn_dec|Mux20~2_combout\ & !\inst|u_spn_dec|Mux19~2_combout\))) # (!\inst|u_spn_dec|Mux21~2_combout\ & (\inst|u_spn_dec|Mux19~2_combout\ & 
-- (\inst|u_spn_dec|Mux16~3_combout\ $ (!\inst|u_spn_dec|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux16~3_combout\,
	datab => \inst|u_spn_dec|Mux21~2_combout\,
	datac => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|u_spn_dec|Mux19~2_combout\,
	combout => \inst|u_spn_dec|Mux24~0_combout\);

-- Location: LCCOMB_X35_Y29_N22
\inst|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~4_combout\ = (\inst|Selector0~0_combout\ & (!\inst|u_spn_dec|Mux22~2_combout\ & ((\inst|u_spn_dec|Mux23~3_combout\) # (!\inst|u_spn_dec|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|u_spn_dec|Mux23~3_combout\,
	datac => \inst|u_spn_dec|Mux22~2_combout\,
	datad => \inst|u_spn_dec|Mux24~0_combout\,
	combout => \inst|Selector0~4_combout\);

-- Location: LCCOMB_X43_Y32_N14
\inst|u_rx|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~2_combout\ = (!\inst|u_rx|bit_cnt\(0) & (!\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & !\inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~2_combout\);

-- Location: LCCOMB_X42_Y32_N2
\inst|u_rx|shift_reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[7]~1_combout\ = (\inst|u_rx|Decoder0~2_combout\ & ((!\inst|u_rx|rx_sync\(1)))) # (!\inst|u_rx|Decoder0~2_combout\ & (\inst|u_rx|shift_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|Decoder0~2_combout\,
	datac => \inst|u_rx|shift_reg\(7),
	datad => \inst|u_rx|rx_sync\(1),
	combout => \inst|u_rx|shift_reg[7]~1_combout\);

-- Location: FF_X42_Y32_N3
\inst|u_rx|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(7));

-- Location: FF_X35_Y29_N25
\inst|u_rx|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|u_rx|shift_reg\(7),
	sload => VCC,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(7));

-- Location: LCCOMB_X35_Y30_N18
\inst|u_spn|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux3~0_combout\ = (!\inst|Mux19~41_combout\ & \inst|Mux22~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datad => \inst|Mux22~41_combout\,
	combout => \inst|u_spn|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst|u_spn|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux1~0_combout\ = (!\inst|Mux20~41_combout\ & (!\inst|Mux21~41_combout\ & (\inst|u_spn_dec|Mux12~1_combout\ & \inst|u_spn|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux21~41_combout\,
	datac => \inst|u_spn_dec|Mux12~1_combout\,
	datad => \inst|u_spn|Mux3~0_combout\,
	combout => \inst|u_spn|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y30_N20
\inst|u_spn|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux1~1_combout\ = (\inst|Mux17~41_combout\) # ((!\inst|Mux18~41_combout\ & \inst|u_spn|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux18~41_combout\,
	datac => \inst|Mux17~41_combout\,
	datad => \inst|u_spn|Mux1~0_combout\,
	combout => \inst|u_spn|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y30_N26
\inst|u_spn|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux7~1_combout\ = (!\inst|Mux16~41_combout\ & (!\inst|Mux21~41_combout\ & (\inst|Mux22~41_combout\ $ (\inst|Mux19~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|Mux21~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn|Mux7~1_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst|u_spn|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux7~2_combout\ = (!\inst|Mux20~41_combout\ & (\inst|Mux23~41_combout\ & (\inst|u_spn|Mux7~1_combout\ & \inst|u_spn|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux23~41_combout\,
	datac => \inst|u_spn|Mux7~1_combout\,
	datad => \inst|u_spn|Mux7~0_combout\,
	combout => \inst|u_spn|Mux7~2_combout\);

-- Location: LCCOMB_X35_Y30_N6
\inst|u_spn|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux3~1_combout\ = (!\inst|Mux20~41_combout\ & (!\inst|Mux16~41_combout\ & (!\inst|Mux21~41_combout\ & \inst|u_spn|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|Mux21~41_combout\,
	datad => \inst|u_spn|Mux7~0_combout\,
	combout => \inst|u_spn|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y30_N28
\inst|u_spn|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux7~3_combout\ = (\inst|u_spn|Mux7~2_combout\) # ((!\inst|Mux23~41_combout\ & ((!\inst|u_spn|Mux3~1_combout\) # (!\inst|u_spn|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|u_spn|Mux3~0_combout\,
	datac => \inst|u_spn|Mux7~2_combout\,
	datad => \inst|u_spn|Mux3~1_combout\,
	combout => \inst|u_spn|Mux7~3_combout\);

-- Location: LCCOMB_X35_Y30_N10
\inst|u_spn|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux5~0_combout\ = (!\inst|Mux16~41_combout\ & ((\inst|Mux22~41_combout\ & ((!\inst|Mux23~41_combout\))) # (!\inst|Mux22~41_combout\ & (\inst|Mux19~41_combout\ & \inst|Mux23~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux22~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux16~41_combout\,
	combout => \inst|u_spn|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y30_N8
\inst|u_spn|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux5~1_combout\ = (!\inst|Mux21~41_combout\ & ((\inst|Mux20~41_combout\) # ((!\inst|u_spn|Mux5~0_combout\) # (!\inst|u_spn|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux21~41_combout\,
	datac => \inst|u_spn|Mux7~0_combout\,
	datad => \inst|u_spn|Mux5~0_combout\,
	combout => \inst|u_spn|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y30_N30
\inst|u_spn|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux4~0_combout\ = (!\inst|Mux21~41_combout\ & (!\inst|Mux23~41_combout\ & ((\inst|Mux22~41_combout\) # (\inst|Mux19~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~41_combout\,
	datab => \inst|Mux22~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y30_N0
\inst|u_spn|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux4~1_combout\ = (!\inst|Mux20~41_combout\ & ((\inst|Mux16~41_combout\) # ((!\inst|u_spn|Mux7~0_combout\) # (!\inst|u_spn|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~41_combout\,
	datab => \inst|Mux16~41_combout\,
	datac => \inst|u_spn|Mux4~0_combout\,
	datad => \inst|u_spn|Mux7~0_combout\,
	combout => \inst|u_spn|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst|u_spn|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux14~0_combout\ = (\inst|u_spn|Mux7~3_combout\ & (\inst|u_spn|Mux5~1_combout\ & (!\inst|u_spn|Mux4~1_combout\ & \inst|u_spn|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux7~3_combout\,
	datab => \inst|u_spn|Mux5~1_combout\,
	datac => \inst|u_spn|Mux4~1_combout\,
	datad => \inst|u_spn|Mux12~0_combout\,
	combout => \inst|u_spn|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst|u_spn|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux11~0_combout\ = \inst|u_spn|Mux6~0_combout\ $ (((\inst|u_spn|Mux1~1_combout\) # ((!\inst|u_spn|Mux14~0_combout\) # (!\inst|u_spn|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux6~0_combout\,
	datab => \inst|u_spn|Mux1~1_combout\,
	datac => \inst|u_spn|Mux3~2_combout\,
	datad => \inst|u_spn|Mux14~0_combout\,
	combout => \inst|u_spn|Mux11~0_combout\);

-- Location: LCCOMB_X36_Y30_N28
\inst|u_spn|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux0~0_combout\ = (!\inst|Mux21~41_combout\ & ((\inst|Mux19~41_combout\) # ((\inst|Mux23~41_combout\ & \inst|Mux22~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux21~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|Mux22~41_combout\,
	combout => \inst|u_spn|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y30_N6
\inst|u_spn|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux0~1_combout\ = (!\inst|Mux16~41_combout\ & (((\inst|Mux20~41_combout\) # (!\inst|u_spn|Mux0~0_combout\)) # (!\inst|u_spn|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux7~0_combout\,
	datab => \inst|u_spn|Mux0~0_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux16~41_combout\,
	combout => \inst|u_spn|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst|u_spn|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux2~0_combout\ = (\inst|Mux18~41_combout\) # ((!\inst|Mux17~41_combout\ & \inst|u_spn|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datad => \inst|u_spn|Mux1~0_combout\,
	combout => \inst|u_spn|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y30_N2
\inst|u_spn|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux15~0_combout\ = (\inst|u_spn|Mux0~1_combout\ & (\inst|u_spn|Mux2~0_combout\ & !\inst|u_spn|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn|Mux0~1_combout\,
	datac => \inst|u_spn|Mux2~0_combout\,
	datad => \inst|u_spn|Mux4~1_combout\,
	combout => \inst|u_spn|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y30_N24
\inst|u_spn|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux13~0_combout\ = (\inst|u_spn|Mux5~1_combout\ & ((\inst|u_spn|Mux3~2_combout\ & (!\inst|u_spn|Mux1~1_combout\)) # (!\inst|u_spn|Mux3~2_combout\ & (\inst|u_spn|Mux1~1_combout\ & !\inst|u_spn|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux5~1_combout\,
	datab => \inst|u_spn|Mux3~2_combout\,
	datac => \inst|u_spn|Mux1~1_combout\,
	datad => \inst|u_spn|Mux6~0_combout\,
	combout => \inst|u_spn|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y30_N26
\inst|u_spn|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux13~1_combout\ = (\inst|u_spn|Mux7~3_combout\ & ((!\inst|u_spn|Mux13~0_combout\) # (!\inst|u_spn|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn|Mux7~3_combout\,
	datac => \inst|u_spn|Mux15~0_combout\,
	datad => \inst|u_spn|Mux13~0_combout\,
	combout => \inst|u_spn|Mux13~1_combout\);

-- Location: LCCOMB_X31_Y30_N30
\inst|u_spn|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux14~1_combout\ = (\inst|u_spn|Mux14~0_combout\ & (\inst|u_spn|Mux6~0_combout\ $ (((\inst|u_spn|Mux1~1_combout\) # (\inst|u_spn|Mux3~2_combout\))))) # (!\inst|u_spn|Mux14~0_combout\ & (((!\inst|u_spn|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux6~0_combout\,
	datab => \inst|u_spn|Mux1~1_combout\,
	datac => \inst|u_spn|Mux3~2_combout\,
	datad => \inst|u_spn|Mux14~0_combout\,
	combout => \inst|u_spn|Mux14~1_combout\);

-- Location: LCCOMB_X35_Y30_N2
\inst|u_spn|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux14~2_combout\ = (\inst|Mux22~41_combout\ & (\inst|Mux19~41_combout\ $ (((\inst|Mux23~41_combout\) # (!\inst|u_spn|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux23~41_combout\,
	datac => \inst|Mux22~41_combout\,
	datad => \inst|u_spn|Mux3~1_combout\,
	combout => \inst|u_spn|Mux14~2_combout\);

-- Location: LCCOMB_X35_Y30_N20
\inst|u_spn|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux9~0_combout\ = (!\inst|u_spn|Mux4~1_combout\ & (\inst|u_spn|Mux7~3_combout\ & (\inst|u_spn|Mux5~1_combout\ & !\inst|u_spn|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux4~1_combout\,
	datab => \inst|u_spn|Mux7~3_combout\,
	datac => \inst|u_spn|Mux5~1_combout\,
	datad => \inst|u_spn|Mux1~1_combout\,
	combout => \inst|u_spn|Mux9~0_combout\);

-- Location: LCCOMB_X35_Y30_N14
\inst|u_spn|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux9~1_combout\ = (\inst|u_spn|Mux2~0_combout\ & (((!\inst|u_spn|Mux9~0_combout\) # (!\inst|u_spn|Mux0~1_combout\)) # (!\inst|u_spn|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux2~0_combout\,
	datab => \inst|u_spn|Mux14~2_combout\,
	datac => \inst|u_spn|Mux0~1_combout\,
	datad => \inst|u_spn|Mux9~0_combout\,
	combout => \inst|u_spn|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y30_N10
\inst|u_spn|Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux23~2_combout\ = (!\inst|u_spn|Mux13~1_combout\ & (\inst|u_spn|Mux15~2_combout\ & (\inst|u_spn|Mux14~1_combout\ $ (!\inst|u_spn|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux13~1_combout\,
	datab => \inst|u_spn|Mux14~1_combout\,
	datac => \inst|u_spn|Mux9~1_combout\,
	datad => \inst|u_spn|Mux15~2_combout\,
	combout => \inst|u_spn|Mux23~2_combout\);

-- Location: LCCOMB_X32_Y30_N8
\inst|u_spn|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux8~0_combout\ = (\inst|u_spn|Mux7~3_combout\ & (((!\inst|u_spn|Mux1~1_combout\ & !\inst|u_spn|Mux3~2_combout\)) # (!\inst|u_spn|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux1~1_combout\,
	datab => \inst|u_spn|Mux3~2_combout\,
	datac => \inst|u_spn|Mux7~3_combout\,
	datad => \inst|u_spn|Mux6~0_combout\,
	combout => \inst|u_spn|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y30_N22
\inst|u_spn|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux8~1_combout\ = (\inst|u_spn|Mux5~1_combout\ & ((!\inst|u_spn|Mux15~0_combout\) # (!\inst|u_spn|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux5~1_combout\,
	datac => \inst|u_spn|Mux8~0_combout\,
	datad => \inst|u_spn|Mux15~0_combout\,
	combout => \inst|u_spn|Mux8~1_combout\);

-- Location: LCCOMB_X32_Y30_N20
\inst|u_spn|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux10~0_combout\ = (\inst|u_spn|Mux0~1_combout\ & (((!\inst|u_spn|Mux9~0_combout\) # (!\inst|u_spn|Mux2~0_combout\)) # (!\inst|u_spn|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux14~2_combout\,
	datab => \inst|u_spn|Mux0~1_combout\,
	datac => \inst|u_spn|Mux2~0_combout\,
	datad => \inst|u_spn|Mux9~0_combout\,
	combout => \inst|u_spn|Mux10~0_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst|u_spn|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux23~0_combout\ = (!\inst|u_spn|Mux8~1_combout\ & (\inst|u_spn|Mux12~2_combout\ & \inst|u_spn|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux8~1_combout\,
	datac => \inst|u_spn|Mux12~2_combout\,
	datad => \inst|u_spn|Mux10~0_combout\,
	combout => \inst|u_spn|Mux23~0_combout\);

-- Location: LCCOMB_X32_Y30_N6
\inst|u_spn|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux20~0_combout\ = (\inst|u_spn|Mux10~0_combout\ & (((\inst|u_spn|Mux15~0_combout\ & \inst|u_spn|Mux8~0_combout\)) # (!\inst|u_spn|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux5~1_combout\,
	datab => \inst|u_spn|Mux15~0_combout\,
	datac => \inst|u_spn|Mux8~0_combout\,
	datad => \inst|u_spn|Mux10~0_combout\,
	combout => \inst|u_spn|Mux20~0_combout\);

-- Location: LCCOMB_X32_Y30_N12
\inst|u_spn|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux19~0_combout\ = (!\inst|u_spn|Mux13~1_combout\ & (\inst|u_spn|Mux15~2_combout\ & (\inst|u_spn|Mux12~2_combout\ & \inst|u_spn|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux13~1_combout\,
	datab => \inst|u_spn|Mux15~2_combout\,
	datac => \inst|u_spn|Mux12~2_combout\,
	datad => \inst|u_spn|Mux20~0_combout\,
	combout => \inst|u_spn|Mux19~0_combout\);

-- Location: LCCOMB_X34_Y30_N18
\inst|u_spn|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux23~1_combout\ = (!\inst|u_spn|Mux11~0_combout\ & ((\inst|u_spn|Mux14~1_combout\) # ((\inst|u_spn|Mux9~1_combout\) # (!\inst|u_spn|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux11~0_combout\,
	datab => \inst|u_spn|Mux14~1_combout\,
	datac => \inst|u_spn|Mux9~1_combout\,
	datad => \inst|u_spn|Mux19~0_combout\,
	combout => \inst|u_spn|Mux23~1_combout\);

-- Location: LCCOMB_X34_Y30_N12
\inst|u_spn|Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux23~3_combout\ = (\inst|u_spn|Mux23~1_combout\) # ((\inst|u_spn|Mux11~0_combout\ & (\inst|u_spn|Mux23~2_combout\ & \inst|u_spn|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux11~0_combout\,
	datab => \inst|u_spn|Mux23~2_combout\,
	datac => \inst|u_spn|Mux23~0_combout\,
	datad => \inst|u_spn|Mux23~1_combout\,
	combout => \inst|u_spn|Mux23~3_combout\);

-- Location: LCCOMB_X31_Y30_N4
\inst|u_spn|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux20~1_combout\ = (!\inst|u_spn|Mux11~0_combout\ & (\inst|u_spn|Mux15~2_combout\ & ((\inst|u_spn|Mux14~1_combout\) # (!\inst|u_spn|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux14~1_combout\,
	datab => \inst|u_spn|Mux11~0_combout\,
	datac => \inst|u_spn|Mux15~2_combout\,
	datad => \inst|u_spn|Mux9~1_combout\,
	combout => \inst|u_spn|Mux20~1_combout\);

-- Location: LCCOMB_X31_Y30_N14
\inst|u_spn|Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux20~2_combout\ = (\inst|u_spn|Mux12~2_combout\ & ((\inst|u_spn|Mux13~1_combout\) # ((!\inst|u_spn|Mux20~0_combout\) # (!\inst|u_spn|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux12~2_combout\,
	datab => \inst|u_spn|Mux13~1_combout\,
	datac => \inst|u_spn|Mux20~1_combout\,
	datad => \inst|u_spn|Mux20~0_combout\,
	combout => \inst|u_spn|Mux20~2_combout\);

-- Location: LCCOMB_X31_Y30_N10
\inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|u_spn|Mux16~1_combout\ & (!\inst|u_spn|Mux20~2_combout\ & !\inst|u_spn|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux16~1_combout\,
	datac => \inst|u_spn|Mux20~2_combout\,
	datad => \inst|u_spn|Mux18~1_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X31_Y30_N28
\inst|u_spn|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux18~0_combout\ = (\inst|u_spn|Mux12~2_combout\ & (!\inst|u_spn|Mux13~1_combout\ & (\inst|u_spn|Mux15~2_combout\ & !\inst|u_spn|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux12~2_combout\,
	datab => \inst|u_spn|Mux13~1_combout\,
	datac => \inst|u_spn|Mux15~2_combout\,
	datad => \inst|u_spn|Mux9~1_combout\,
	combout => \inst|u_spn|Mux18~0_combout\);

-- Location: LCCOMB_X31_Y30_N26
\inst|u_spn|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux17~0_combout\ = (\inst|u_spn|Mux10~0_combout\ & (((\inst|u_spn|Mux8~1_combout\) # (!\inst|u_spn|Mux18~0_combout\)) # (!\inst|u_spn|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux22~1_combout\,
	datab => \inst|u_spn|Mux8~1_combout\,
	datac => \inst|u_spn|Mux10~0_combout\,
	datad => \inst|u_spn|Mux18~0_combout\,
	combout => \inst|u_spn|Mux17~0_combout\);

-- Location: LCCOMB_X34_Y30_N22
\inst|u_spn|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux22~0_combout\ = (\inst|u_spn|Mux19~0_combout\ & (\inst|u_spn|Mux14~1_combout\ $ (((\inst|u_spn|Mux11~0_combout\ & !\inst|u_spn|Mux9~1_combout\))))) # (!\inst|u_spn|Mux19~0_combout\ & (((!\inst|u_spn|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux11~0_combout\,
	datab => \inst|u_spn|Mux14~1_combout\,
	datac => \inst|u_spn|Mux9~1_combout\,
	datad => \inst|u_spn|Mux19~0_combout\,
	combout => \inst|u_spn|Mux22~0_combout\);

-- Location: LCCOMB_X34_Y30_N4
\inst|u_spn|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux19~1_combout\ = \inst|u_spn|Mux14~1_combout\ $ (((!\inst|u_spn|Mux9~1_combout\ & (!\inst|u_spn|Mux11~0_combout\ & \inst|u_spn|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux9~1_combout\,
	datab => \inst|u_spn|Mux14~1_combout\,
	datac => \inst|u_spn|Mux11~0_combout\,
	datad => \inst|u_spn|Mux19~0_combout\,
	combout => \inst|u_spn|Mux19~1_combout\);

-- Location: LCCOMB_X34_Y30_N2
\inst|u_spn|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux29~0_combout\ = (\inst|u_spn|Mux21~1_combout\ & ((\inst|u_spn|Mux17~0_combout\ & (\inst|u_spn|Mux22~0_combout\ & !\inst|u_spn|Mux19~1_combout\)) # (!\inst|u_spn|Mux17~0_combout\ & ((\inst|u_spn|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux21~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|u_spn|Mux19~1_combout\,
	combout => \inst|u_spn|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y30_N0
\inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (!\inst|u_spn|Mux23~3_combout\ & (\inst|Selector6~3_combout\ & ((!\inst|u_spn|Mux29~0_combout\) # (!\inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux23~3_combout\,
	datab => \inst|Selector6~3_combout\,
	datac => \inst|Selector5~0_combout\,
	datad => \inst|u_spn|Mux29~0_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X35_Y29_N24
\inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (\inst|Selector0~1_combout\) # ((!\inst|state.S_PROCESS~q\ & \inst|u_rx|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datac => \inst|u_rx|data_out\(7),
	datad => \inst|Selector0~1_combout\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X35_Y29_N20
\inst|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~5_combout\ = (\inst|Selector0~3_combout\) # ((\inst|Selector0~2_combout\) # ((!\inst|u_spn_dec|Mux24~1_combout\ & \inst|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux24~1_combout\,
	datab => \inst|Selector0~3_combout\,
	datac => \inst|Selector0~4_combout\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~5_combout\);

-- Location: LCCOMB_X35_Y29_N0
\inst|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~6_combout\ = (\inst|Selector0~5_combout\) # ((\inst|Selector0~0_combout\ & (\inst|u_spn_dec|Mux22~2_combout\ & !\inst|u_spn_dec|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux25~1_combout\,
	datad => \inst|Selector0~5_combout\,
	combout => \inst|Selector0~6_combout\);

-- Location: LCCOMB_X38_Y25_N10
\inst|text_buffer[57][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[57][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y26_N16
\inst|Decoder1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~0_combout\ = (!\inst|index\(1) & (\inst|LessThan2~12_combout\ & (!\inst|index\(2) & \inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|LessThan2~12_combout\,
	datac => \inst|index\(2),
	datad => \inst|index\(0),
	combout => \inst|Decoder1~0_combout\);

-- Location: LCCOMB_X39_Y27_N4
\inst|text_buffer[57][7]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][7]~173_combout\ = (\inst|index\(4) & (\inst|state.S_PROCESS~q\ & (\inst|index\(3) & \inst|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|index\(3),
	datad => \inst|index\(5),
	combout => \inst|text_buffer[57][7]~173_combout\);

-- Location: LCCOMB_X43_Y27_N12
\inst|text_buffer[9][7]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][7]~130_combout\ = (\inst|buf_len[6]~7_combout\ & (\inst|buf_len\(0) & (\inst|buf_len\(3) & !\inst|buf_len\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len[6]~7_combout\,
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len\(3),
	datad => \inst|buf_len\(1),
	combout => \inst|text_buffer[9][7]~130_combout\);

-- Location: LCCOMB_X40_Y26_N12
\inst|text_buffer[57][7]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][7]~218_combout\ = (\inst|buf_len\(4) & (!\inst|buf_len\(2) & (\inst|text_buffer[9][7]~130_combout\ & \inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(2),
	datac => \inst|text_buffer[9][7]~130_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[57][7]~218_combout\);

-- Location: LCCOMB_X40_Y26_N30
\inst|text_buffer[57][7]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][7]~179_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[57][7]~218_combout\) # ((\inst|Decoder1~0_combout\ & \inst|text_buffer[57][7]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~0_combout\,
	datac => \inst|text_buffer[57][7]~173_combout\,
	datad => \inst|text_buffer[57][7]~218_combout\,
	combout => \inst|text_buffer[57][7]~179_combout\);

-- Location: FF_X38_Y25_N11
\inst|text_buffer[57][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[57][7]~feeder_combout\,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][7]~q\);

-- Location: LCCOMB_X41_Y30_N6
\inst|Decoder1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~6_combout\ = (!\inst|index\(2) & (\inst|index\(0) & (\inst|index\(1) & \inst|LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|index\(1),
	datad => \inst|LessThan2~12_combout\,
	combout => \inst|Decoder1~6_combout\);

-- Location: LCCOMB_X43_Y27_N26
\inst|text_buffer[50][7]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][7]~83_combout\ = (\inst|buf_len\(4) & !\inst|buf_len\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[50][7]~83_combout\);

-- Location: LCCOMB_X42_Y27_N28
\inst|text_buffer[51][7]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[51][7]~101_combout\ = (\inst|buf_len\(1) & (\inst|buf_len[6]~7_combout\ & (\inst|buf_len\(0) & \inst|text_buffer[50][7]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|buf_len[6]~7_combout\,
	datac => \inst|buf_len\(0),
	datad => \inst|text_buffer[50][7]~83_combout\,
	combout => \inst|text_buffer[51][7]~101_combout\);

-- Location: LCCOMB_X40_Y27_N14
\inst|text_buffer[59][7]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[59][7]~182_combout\ = (\inst|buf_len\(5) & (\inst|text_buffer[51][7]~101_combout\ & \inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(5),
	datab => \inst|text_buffer[51][7]~101_combout\,
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[59][7]~182_combout\);

-- Location: LCCOMB_X40_Y27_N18
\inst|text_buffer[59][7]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[59][7]~183_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[59][7]~182_combout\) # ((\inst|Decoder1~6_combout\ & \inst|text_buffer[57][7]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~6_combout\,
	datac => \inst|text_buffer[57][7]~173_combout\,
	datad => \inst|text_buffer[59][7]~182_combout\,
	combout => \inst|text_buffer[59][7]~183_combout\);

-- Location: FF_X39_Y29_N19
\inst|text_buffer[59][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][7]~q\);

-- Location: LCCOMB_X39_Y29_N24
\inst|text_buffer[58][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[58][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y27_N4
\inst|text_buffer[42][7]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][7]~109_combout\ = (\inst|buf_len\(1) & (\inst|buf_len\(3) & (!\inst|buf_len\(0) & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|buf_len\(3),
	datac => \inst|buf_len\(0),
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[42][7]~109_combout\);

-- Location: LCCOMB_X42_Y29_N22
\inst|text_buffer[58][7]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][7]~224_combout\ = (\inst|text_buffer[42][7]~109_combout\ & (\inst|buf_len\(5) & (!\inst|buf_len\(2) & \inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][7]~109_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[58][7]~224_combout\);

-- Location: LCCOMB_X43_Y28_N2
\inst|Decoder1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~2_combout\ = (\inst|index\(1) & (!\inst|index\(2) & (!\inst|index\(0) & \inst|LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datac => \inst|index\(0),
	datad => \inst|LessThan2~12_combout\,
	combout => \inst|Decoder1~2_combout\);

-- Location: LCCOMB_X42_Y29_N14
\inst|text_buffer[58][7]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][7]~187_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[58][7]~224_combout\) # ((\inst|text_buffer[57][7]~173_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[58][7]~224_combout\,
	datab => \inst|text_buffer[57][7]~173_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[58][7]~187_combout\);

-- Location: FF_X39_Y29_N25
\inst|text_buffer[58][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[58][7]~feeder_combout\,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][7]~q\);

-- Location: LCCOMB_X43_Y27_N30
\inst|text_buffer[44][7]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~120_combout\ = (\inst|buf_len[6]~7_combout\ & (!\inst|buf_len\(0) & (\inst|buf_len\(3) & !\inst|buf_len\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len[6]~7_combout\,
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len\(3),
	datad => \inst|buf_len\(1),
	combout => \inst|text_buffer[44][7]~120_combout\);

-- Location: LCCOMB_X40_Y26_N14
\inst|text_buffer[56][7]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[56][7]~221_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (\inst|buf_len\(5) & (\inst|buf_len\(4) & !\inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[56][7]~221_combout\);

-- Location: LCCOMB_X39_Y30_N6
\inst|Decoder1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~4_combout\ = (!\inst|index\(2) & (\inst|LessThan2~12_combout\ & (!\inst|index\(0) & !\inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|LessThan2~12_combout\,
	datac => \inst|index\(0),
	datad => \inst|index\(1),
	combout => \inst|Decoder1~4_combout\);

-- Location: LCCOMB_X40_Y26_N4
\inst|text_buffer[56][7]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[56][7]~184_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[56][7]~221_combout\) # ((\inst|text_buffer[57][7]~173_combout\ & \inst|Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[57][7]~173_combout\,
	datab => \inst|text_buffer[56][7]~221_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~4_combout\,
	combout => \inst|text_buffer[56][7]~184_combout\);

-- Location: FF_X43_Y29_N9
\inst|text_buffer[56][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][7]~q\);

-- Location: LCCOMB_X43_Y29_N8
\inst|Mux16~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~31_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|text_buffer[58][7]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[56][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[58][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[56][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~31_combout\);

-- Location: LCCOMB_X39_Y29_N18
\inst|Mux16~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~32_combout\ = (\inst|index\(0) & ((\inst|Mux16~31_combout\ & ((\inst|text_buffer[59][7]~q\))) # (!\inst|Mux16~31_combout\ & (\inst|text_buffer[57][7]~q\)))) # (!\inst|index\(0) & (((\inst|Mux16~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[57][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[59][7]~q\,
	datad => \inst|Mux16~31_combout\,
	combout => \inst|Mux16~32_combout\);

-- Location: LCCOMB_X42_Y27_N6
\inst|text_buffer[15][7]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][7]~104_combout\ = (\inst|buf_len\(1) & (\inst|buf_len\(0) & (\inst|buf_len\(2) & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[15][7]~104_combout\);

-- Location: LCCOMB_X39_Y27_N14
\inst|text_buffer[63][7]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[63][7]~226_combout\ = (\inst|buf_len\(4) & (\inst|buf_len\(3) & (\inst|text_buffer[15][7]~104_combout\ & \inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[15][7]~104_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[63][7]~226_combout\);

-- Location: LCCOMB_X39_Y30_N20
\inst|Decoder1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~7_combout\ = (\inst|index\(2) & (\inst|LessThan2~12_combout\ & (\inst|index\(0) & \inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|LessThan2~12_combout\,
	datac => \inst|index\(0),
	datad => \inst|index\(1),
	combout => \inst|Decoder1~7_combout\);

-- Location: LCCOMB_X39_Y27_N10
\inst|text_buffer[63][7]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[63][7]~193_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[63][7]~226_combout\) # ((\inst|text_buffer[57][7]~173_combout\ & \inst|Decoder1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[57][7]~173_combout\,
	datac => \inst|text_buffer[63][7]~226_combout\,
	datad => \inst|Decoder1~7_combout\,
	combout => \inst|text_buffer[63][7]~193_combout\);

-- Location: FF_X35_Y29_N1
\inst|text_buffer[63][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector0~6_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][7]~q\);

-- Location: LCCOMB_X42_Y27_N0
\inst|text_buffer[46][7]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][7]~86_combout\ = (\inst|buf_len\(1) & (!\inst|buf_len\(0) & (\inst|buf_len\(2) & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[46][7]~86_combout\);

-- Location: LCCOMB_X39_Y25_N16
\inst|text_buffer[62][7]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[62][7]~217_combout\ = (\inst|buf_len\(4) & (\inst|buf_len\(3) & (\inst|text_buffer[46][7]~86_combout\ & \inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[46][7]~86_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[62][7]~217_combout\);

-- Location: LCCOMB_X39_Y30_N12
\inst|Decoder1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~3_combout\ = (\inst|index\(2) & (\inst|LessThan2~12_combout\ & (!\inst|index\(0) & \inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|LessThan2~12_combout\,
	datac => \inst|index\(0),
	datad => \inst|index\(1),
	combout => \inst|Decoder1~3_combout\);

-- Location: LCCOMB_X39_Y25_N20
\inst|text_buffer[62][7]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[62][7]~178_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[62][7]~217_combout\) # ((\inst|text_buffer[57][7]~173_combout\ & \inst|Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[57][7]~173_combout\,
	datab => \inst|text_buffer[62][7]~217_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~3_combout\,
	combout => \inst|text_buffer[62][7]~178_combout\);

-- Location: FF_X39_Y28_N17
\inst|text_buffer[62][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][7]~q\);

-- Location: LCCOMB_X39_Y27_N0
\inst|text_buffer[61][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[61][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[61][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y27_N20
\inst|text_buffer[13][7]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~73_combout\ = (\inst|buf_len\(2) & (\inst|buf_len\(0) & \inst|buf_len[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[13][7]~73_combout\);

-- Location: LCCOMB_X40_Y26_N24
\inst|text_buffer[49][7]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][7]~68_combout\ = (\inst|buf_len\(4) & \inst|buf_len\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[49][7]~68_combout\);

-- Location: LCCOMB_X39_Y27_N6
\inst|text_buffer[61][7]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[61][7]~188_combout\ = (\inst|text_buffer[13][7]~73_combout\ & (\inst|buf_len\(3) & (\inst|text_buffer[49][7]~68_combout\ & !\inst|buf_len\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~73_combout\,
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[49][7]~68_combout\,
	datad => \inst|buf_len\(1),
	combout => \inst|text_buffer[61][7]~188_combout\);

-- Location: LCCOMB_X41_Y30_N16
\inst|Decoder1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~1_combout\ = (\inst|index\(2) & (\inst|index\(0) & (!\inst|index\(1) & \inst|LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|index\(1),
	datad => \inst|LessThan2~12_combout\,
	combout => \inst|Decoder1~1_combout\);

-- Location: LCCOMB_X39_Y27_N28
\inst|text_buffer[61][7]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[61][7]~189_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[61][7]~188_combout\) # ((\inst|text_buffer[57][7]~173_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[61][7]~188_combout\,
	datab => \inst|text_buffer[57][7]~173_combout\,
	datac => \inst|Decoder1~1_combout\,
	datad => \KEY1~input_o\,
	combout => \inst|text_buffer[61][7]~189_combout\);

-- Location: FF_X39_Y27_N1
\inst|text_buffer[61][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[61][7]~feeder_combout\,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][7]~q\);

-- Location: LCCOMB_X39_Y26_N12
\inst|Decoder1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Decoder1~5_combout\ = (!\inst|index\(1) & (\inst|LessThan2~12_combout\ & (\inst|index\(2) & !\inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|LessThan2~12_combout\,
	datac => \inst|index\(2),
	datad => \inst|index\(0),
	combout => \inst|Decoder1~5_combout\);

-- Location: LCCOMB_X40_Y26_N26
\inst|text_buffer[60][7]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[60][7]~214_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (\inst|buf_len\(5) & (\inst|buf_len\(4) & \inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[60][7]~214_combout\);

-- Location: LCCOMB_X39_Y26_N10
\inst|text_buffer[60][7]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[60][7]~174_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[60][7]~214_combout\) # ((\inst|Decoder1~5_combout\ & \inst|text_buffer[57][7]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~5_combout\,
	datab => \inst|text_buffer[57][7]~173_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[60][7]~214_combout\,
	combout => \inst|text_buffer[60][7]~174_combout\);

-- Location: FF_X39_Y28_N7
\inst|text_buffer[60][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][7]~q\);

-- Location: LCCOMB_X39_Y28_N6
\inst|Mux16~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~38_combout\ = (\inst|index\(0) & ((\inst|text_buffer[61][7]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[60][7]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[61][7]~q\,
	datac => \inst|text_buffer[60][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~38_combout\);

-- Location: LCCOMB_X39_Y28_N16
\inst|Mux16~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~39_combout\ = (\inst|index\(1) & ((\inst|Mux16~38_combout\ & (\inst|text_buffer[63][7]~q\)) # (!\inst|Mux16~38_combout\ & ((\inst|text_buffer[62][7]~q\))))) # (!\inst|index\(1) & (((\inst|Mux16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[63][7]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[62][7]~q\,
	datad => \inst|Mux16~38_combout\,
	combout => \inst|Mux16~39_combout\);

-- Location: LCCOMB_X37_Y27_N0
\inst|text_buffer[50][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[50][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y27_N30
\inst|text_buffer[50][7]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][7]~70_combout\ = (\inst|index\(4) & (\inst|state.S_PROCESS~q\ & (!\inst|index\(3) & \inst|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|index\(3),
	datad => \inst|index\(5),
	combout => \inst|text_buffer[50][7]~70_combout\);

-- Location: LCCOMB_X42_Y27_N8
\inst|text_buffer[42][7]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][7]~82_combout\ = (\inst|buf_len\(1) & (!\inst|buf_len\(0) & \inst|buf_len[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datac => \inst|buf_len\(0),
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[42][7]~82_combout\);

-- Location: LCCOMB_X42_Y27_N26
\inst|text_buffer[50][7]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][7]~84_combout\ = (\inst|buf_len\(5) & (!\inst|buf_len\(3) & (\inst|text_buffer[42][7]~82_combout\ & \inst|text_buffer[50][7]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(5),
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[42][7]~82_combout\,
	datad => \inst|text_buffer[50][7]~83_combout\,
	combout => \inst|text_buffer[50][7]~84_combout\);

-- Location: LCCOMB_X41_Y27_N8
\inst|text_buffer[50][7]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][7]~85_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[50][7]~84_combout\) # ((\inst|text_buffer[50][7]~70_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[50][7]~70_combout\,
	datab => \inst|text_buffer[50][7]~84_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[50][7]~85_combout\);

-- Location: FF_X37_Y27_N1
\inst|text_buffer[50][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[50][7]~feeder_combout\,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][7]~q\);

-- Location: LCCOMB_X41_Y27_N14
\inst|text_buffer[51][7]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[51][7]~102_combout\ = (\inst|text_buffer[51][7]~101_combout\ & (\inst|buf_len\(5) & !\inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|text_buffer[51][7]~101_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[51][7]~102_combout\);

-- Location: LCCOMB_X41_Y27_N4
\inst|text_buffer[51][7]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[51][7]~103_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[51][7]~102_combout\) # ((\inst|text_buffer[50][7]~70_combout\ & \inst|Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[50][7]~70_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[51][7]~102_combout\,
	datad => \inst|Decoder1~6_combout\,
	combout => \inst|text_buffer[51][7]~103_combout\);

-- Location: FF_X37_Y27_N19
\inst|text_buffer[51][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][7]~q\);

-- Location: LCCOMB_X37_Y25_N2
\inst|text_buffer[49][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[49][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y26_N6
\inst|text_buffer[49][7]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][7]~69_combout\ = (\inst|text_buffer[49][7]~66_combout\ & (\inst|buf_len\(0) & (\inst|buf_len[6]~7_combout\ & \inst|text_buffer[49][7]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][7]~66_combout\,
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len[6]~7_combout\,
	datad => \inst|text_buffer[49][7]~68_combout\,
	combout => \inst|text_buffer[49][7]~69_combout\);

-- Location: LCCOMB_X40_Y26_N28
\inst|text_buffer[49][7]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][7]~71_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[49][7]~69_combout\) # ((\inst|Decoder1~0_combout\ & \inst|text_buffer[50][7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][7]~69_combout\,
	datab => \inst|Decoder1~0_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[50][7]~70_combout\,
	combout => \inst|text_buffer[49][7]~71_combout\);

-- Location: FF_X37_Y25_N3
\inst|text_buffer[49][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[49][7]~feeder_combout\,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][7]~q\);

-- Location: LCCOMB_X40_Y26_N2
\inst|text_buffer[48][7]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[48][7]~91_combout\ = (\inst|text_buffer[49][7]~66_combout\ & (!\inst|buf_len\(0) & (\inst|buf_len[6]~7_combout\ & \inst|text_buffer[49][7]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][7]~66_combout\,
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len[6]~7_combout\,
	datad => \inst|text_buffer[49][7]~68_combout\,
	combout => \inst|text_buffer[48][7]~91_combout\);

-- Location: LCCOMB_X40_Y26_N20
\inst|text_buffer[48][7]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[48][7]~92_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[48][7]~91_combout\) # ((\inst|text_buffer[50][7]~70_combout\ & \inst|Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[48][7]~91_combout\,
	datac => \inst|text_buffer[50][7]~70_combout\,
	datad => \inst|Decoder1~4_combout\,
	combout => \inst|text_buffer[48][7]~92_combout\);

-- Location: FF_X37_Y25_N29
\inst|text_buffer[48][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][7]~q\);

-- Location: LCCOMB_X37_Y25_N28
\inst|Mux16~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~35_combout\ = (\inst|index\(0) & ((\inst|text_buffer[49][7]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[48][7]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[48][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~35_combout\);

-- Location: LCCOMB_X37_Y27_N18
\inst|Mux16~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~36_combout\ = (\inst|index\(1) & ((\inst|Mux16~35_combout\ & ((\inst|text_buffer[51][7]~q\))) # (!\inst|Mux16~35_combout\ & (\inst|text_buffer[50][7]~q\)))) # (!\inst|index\(1) & (((\inst|Mux16~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[50][7]~q\,
	datac => \inst|text_buffer[51][7]~q\,
	datad => \inst|Mux16~35_combout\,
	combout => \inst|Mux16~36_combout\);

-- Location: LCCOMB_X37_Y26_N8
\inst|text_buffer[54][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[54][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y26_N18
\inst|text_buffer[54][7]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][7]~195_combout\ = (\inst|buf_len\(4) & (\inst|buf_len\(5) & (\inst|text_buffer[46][7]~86_combout\ & !\inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(5),
	datac => \inst|text_buffer[46][7]~86_combout\,
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[54][7]~195_combout\);

-- Location: LCCOMB_X39_Y26_N2
\inst|text_buffer[54][7]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][7]~90_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[54][7]~195_combout\) # ((\inst|Decoder1~3_combout\ & \inst|text_buffer[50][7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~3_combout\,
	datac => \inst|text_buffer[50][7]~70_combout\,
	datad => \inst|text_buffer[54][7]~195_combout\,
	combout => \inst|text_buffer[54][7]~90_combout\);

-- Location: FF_X37_Y26_N9
\inst|text_buffer[54][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][7]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][7]~q\);

-- Location: LCCOMB_X42_Y27_N2
\inst|text_buffer[55][7]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[55][7]~198_combout\ = (\inst|text_buffer[15][7]~104_combout\ & (\inst|buf_len\(4) & (\inst|buf_len\(5) & !\inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[15][7]~104_combout\,
	datab => \inst|buf_len\(4),
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[55][7]~198_combout\);

-- Location: LCCOMB_X39_Y27_N12
\inst|text_buffer[55][7]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[55][7]~108_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[55][7]~198_combout\) # ((\inst|Decoder1~7_combout\ & \inst|text_buffer[50][7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~7_combout\,
	datac => \inst|text_buffer[50][7]~70_combout\,
	datad => \inst|text_buffer[55][7]~198_combout\,
	combout => \inst|text_buffer[55][7]~108_combout\);

-- Location: FF_X37_Y26_N27
\inst|text_buffer[55][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][7]~q\);

-- Location: LCCOMB_X38_Y26_N24
\inst|text_buffer[53][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[53][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y27_N22
\inst|text_buffer[54][7]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][7]~79_combout\ = (\inst|buf_len\(4) & (!\inst|buf_len\(3) & \inst|buf_len\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(3),
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[54][7]~79_combout\);

-- Location: LCCOMB_X39_Y27_N8
\inst|text_buffer[53][7]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][7]~80_combout\ = (\inst|text_buffer[13][7]~73_combout\ & (\inst|text_buffer[54][7]~79_combout\ & !\inst|buf_len\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~73_combout\,
	datab => \inst|text_buffer[54][7]~79_combout\,
	datad => \inst|buf_len\(1),
	combout => \inst|text_buffer[53][7]~80_combout\);

-- Location: LCCOMB_X39_Y27_N20
\inst|text_buffer[53][7]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][7]~81_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[53][7]~80_combout\) # ((\inst|text_buffer[50][7]~70_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[50][7]~70_combout\,
	datab => \inst|text_buffer[53][7]~80_combout\,
	datac => \inst|Decoder1~1_combout\,
	datad => \KEY1~input_o\,
	combout => \inst|text_buffer[53][7]~81_combout\);

-- Location: FF_X38_Y26_N25
\inst|text_buffer[53][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][7]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][7]~q\);

-- Location: LCCOMB_X43_Y27_N2
\inst|text_buffer[44][7]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~94_combout\ = (\inst|buf_len[6]~7_combout\ & !\inst|buf_len\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len[6]~7_combout\,
	datac => \inst|buf_len\(0),
	combout => \inst|text_buffer[44][7]~94_combout\);

-- Location: LCCOMB_X42_Y27_N24
\inst|text_buffer[52][7]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[52][7]~99_combout\ = (!\inst|buf_len\(1) & (\inst|text_buffer[54][7]~79_combout\ & (\inst|buf_len\(2) & \inst|text_buffer[44][7]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|text_buffer[54][7]~79_combout\,
	datac => \inst|buf_len\(2),
	datad => \inst|text_buffer[44][7]~94_combout\,
	combout => \inst|text_buffer[52][7]~99_combout\);

-- Location: LCCOMB_X42_Y26_N14
\inst|text_buffer[52][7]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[52][7]~100_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[52][7]~99_combout\) # ((\inst|Decoder1~5_combout\ & \inst|text_buffer[50][7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~5_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[50][7]~70_combout\,
	datad => \inst|text_buffer[52][7]~99_combout\,
	combout => \inst|text_buffer[52][7]~100_combout\);

-- Location: FF_X38_Y26_N19
\inst|text_buffer[52][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][7]~q\);

-- Location: LCCOMB_X38_Y26_N18
\inst|Mux16~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~33_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[53][7]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[52][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[53][7]~q\,
	datac => \inst|text_buffer[52][7]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux16~33_combout\);

-- Location: LCCOMB_X37_Y26_N26
\inst|Mux16~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~34_combout\ = (\inst|index\(1) & ((\inst|Mux16~33_combout\ & ((\inst|text_buffer[55][7]~q\))) # (!\inst|Mux16~33_combout\ & (\inst|text_buffer[54][7]~q\)))) # (!\inst|index\(1) & (((\inst|Mux16~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[54][7]~q\,
	datac => \inst|text_buffer[55][7]~q\,
	datad => \inst|Mux16~33_combout\,
	combout => \inst|Mux16~34_combout\);

-- Location: LCCOMB_X39_Y30_N2
\inst|Mux16~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~37_combout\ = (\inst|index\(2) & ((\inst|index\(3)) # ((\inst|Mux16~34_combout\)))) # (!\inst|index\(2) & (!\inst|index\(3) & (\inst|Mux16~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|Mux16~36_combout\,
	datad => \inst|Mux16~34_combout\,
	combout => \inst|Mux16~37_combout\);

-- Location: LCCOMB_X39_Y30_N4
\inst|Mux16~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~40_combout\ = (\inst|index\(3) & ((\inst|Mux16~37_combout\ & ((\inst|Mux16~39_combout\))) # (!\inst|Mux16~37_combout\ & (\inst|Mux16~32_combout\)))) # (!\inst|index\(3) & (((\inst|Mux16~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~32_combout\,
	datab => \inst|index\(3),
	datac => \inst|Mux16~39_combout\,
	datad => \inst|Mux16~37_combout\,
	combout => \inst|Mux16~40_combout\);

-- Location: LCCOMB_X40_Y29_N4
\inst|text_buffer[46][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[46][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y30_N2
\inst|text_buffer[44][7]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~175_combout\ = (\inst|state.S_PROCESS~q\ & (\inst|index\(3) & (!\inst|index\(4) & \inst|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|index\(3),
	datac => \inst|index\(4),
	datad => \inst|index\(5),
	combout => \inst|text_buffer[44][7]~175_combout\);

-- Location: LCCOMB_X42_Y29_N18
\inst|text_buffer[46][7]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][7]~215_combout\ = (\inst|buf_len\(3) & (\inst|text_buffer[46][7]~86_combout\ & (\inst|buf_len\(5) & !\inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|text_buffer[46][7]~86_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[46][7]~215_combout\);

-- Location: LCCOMB_X43_Y29_N20
\inst|text_buffer[46][7]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][7]~176_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[46][7]~215_combout\) # ((\inst|Decoder1~3_combout\ & \inst|text_buffer[44][7]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~3_combout\,
	datac => \inst|text_buffer[44][7]~175_combout\,
	datad => \inst|text_buffer[46][7]~215_combout\,
	combout => \inst|text_buffer[46][7]~176_combout\);

-- Location: FF_X40_Y29_N5
\inst|text_buffer[46][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[46][7]~feeder_combout\,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][7]~q\);

-- Location: LCCOMB_X43_Y30_N0
\inst|text_buffer[47][7]~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][7]~225_combout\ = (\inst|buf_len\(3) & (\inst|text_buffer[15][7]~104_combout\ & (!\inst|buf_len\(4) & \inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|text_buffer[15][7]~104_combout\,
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[47][7]~225_combout\);

-- Location: LCCOMB_X43_Y30_N22
\inst|text_buffer[47][7]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][7]~190_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[47][7]~225_combout\) # ((\inst|Decoder1~7_combout\ & \inst|text_buffer[44][7]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~7_combout\,
	datac => \inst|text_buffer[44][7]~175_combout\,
	datad => \inst|text_buffer[47][7]~225_combout\,
	combout => \inst|text_buffer[47][7]~190_combout\);

-- Location: FF_X40_Y31_N3
\inst|text_buffer[47][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][7]~q\);

-- Location: LCCOMB_X40_Y31_N12
\inst|text_buffer[43][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[43][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y27_N0
\inst|text_buffer[11][7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][7]~106_combout\ = (!\inst|buf_len\(2) & (\inst|buf_len\(0) & (\inst|buf_len[6]~7_combout\ & \inst|buf_len\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datab => \inst|buf_len\(0),
	datac => \inst|buf_len[6]~7_combout\,
	datad => \inst|buf_len\(1),
	combout => \inst|text_buffer[11][7]~106_combout\);

-- Location: LCCOMB_X40_Y27_N10
\inst|text_buffer[43][7]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][7]~219_combout\ = (\inst|text_buffer[11][7]~106_combout\ & (!\inst|buf_len\(4) & (\inst|buf_len\(5) & \inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[11][7]~106_combout\,
	datab => \inst|buf_len\(4),
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[43][7]~219_combout\);

-- Location: LCCOMB_X41_Y27_N18
\inst|text_buffer[43][7]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][7]~180_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[43][7]~219_combout\) # ((\inst|text_buffer[44][7]~175_combout\ & \inst|Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[43][7]~219_combout\,
	datab => \inst|text_buffer[44][7]~175_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~6_combout\,
	combout => \inst|text_buffer[43][7]~180_combout\);

-- Location: FF_X40_Y31_N13
\inst|text_buffer[43][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][7]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][7]~q\);

-- Location: LCCOMB_X42_Y29_N4
\inst|text_buffer[42][7]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][7]~222_combout\ = (\inst|text_buffer[42][7]~109_combout\ & (\inst|buf_len\(5) & (!\inst|buf_len\(2) & !\inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][7]~109_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[42][7]~222_combout\);

-- Location: LCCOMB_X43_Y29_N2
\inst|text_buffer[42][7]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][7]~185_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[42][7]~222_combout\) # ((\inst|text_buffer[44][7]~175_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[42][7]~222_combout\,
	datac => \inst|text_buffer[44][7]~175_combout\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[42][7]~185_combout\);

-- Location: FF_X40_Y29_N31
\inst|text_buffer[42][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][7]~q\);

-- Location: LCCOMB_X40_Y29_N30
\inst|Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~7_combout\ = (\inst|index\(2) & (((\inst|index\(0))))) # (!\inst|index\(2) & ((\inst|index\(0) & (\inst|text_buffer[43][7]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[42][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[43][7]~q\,
	datac => \inst|text_buffer[42][7]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux16~7_combout\);

-- Location: LCCOMB_X40_Y31_N2
\inst|Mux16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~8_combout\ = (\inst|index\(2) & ((\inst|Mux16~7_combout\ & ((\inst|text_buffer[47][7]~q\))) # (!\inst|Mux16~7_combout\ & (\inst|text_buffer[46][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[46][7]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[47][7]~q\,
	datad => \inst|Mux16~7_combout\,
	combout => \inst|Mux16~8_combout\);

-- Location: LCCOMB_X38_Y30_N0
\inst|text_buffer[45][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[45][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y32_N18
\inst|text_buffer[44][7]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~72_combout\ = (\inst|buf_len\(5) & !\inst|buf_len\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[44][7]~72_combout\);

-- Location: LCCOMB_X43_Y27_N16
\inst|text_buffer[45][7]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][7]~191_combout\ = (\inst|text_buffer[13][7]~73_combout\ & (!\inst|buf_len\(1) & (\inst|buf_len\(3) & \inst|text_buffer[44][7]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~73_combout\,
	datab => \inst|buf_len\(1),
	datac => \inst|buf_len\(3),
	datad => \inst|text_buffer[44][7]~72_combout\,
	combout => \inst|text_buffer[45][7]~191_combout\);

-- Location: LCCOMB_X43_Y27_N14
\inst|text_buffer[45][7]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][7]~192_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[45][7]~191_combout\) # ((\inst|Decoder1~1_combout\ & \inst|text_buffer[44][7]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~1_combout\,
	datab => \inst|text_buffer[44][7]~175_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[45][7]~191_combout\,
	combout => \inst|text_buffer[45][7]~192_combout\);

-- Location: FF_X38_Y30_N1
\inst|text_buffer[45][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[45][7]~feeder_combout\,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][7]~q\);

-- Location: LCCOMB_X40_Y30_N22
\inst|text_buffer[41][7]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[41][7]~220_combout\ = (!\inst|buf_len\(2) & (!\inst|buf_len\(4) & (\inst|text_buffer[9][7]~130_combout\ & \inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datab => \inst|buf_len\(4),
	datac => \inst|text_buffer[9][7]~130_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[41][7]~220_combout\);

-- Location: LCCOMB_X40_Y30_N24
\inst|text_buffer[41][7]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[41][7]~181_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[41][7]~220_combout\) # ((\inst|text_buffer[44][7]~175_combout\ & \inst|Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[44][7]~175_combout\,
	datac => \inst|text_buffer[41][7]~220_combout\,
	datad => \inst|Decoder1~0_combout\,
	combout => \inst|text_buffer[41][7]~181_combout\);

-- Location: FF_X40_Y30_N5
\inst|text_buffer[41][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][7]~q\);

-- Location: LCCOMB_X43_Y30_N10
\inst|text_buffer[40][7]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[40][7]~223_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (\inst|buf_len\(5) & (!\inst|buf_len\(4) & !\inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[40][7]~223_combout\);

-- Location: LCCOMB_X43_Y30_N16
\inst|text_buffer[40][7]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[40][7]~186_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[40][7]~223_combout\) # ((\inst|Decoder1~4_combout\ & \inst|text_buffer[44][7]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~4_combout\,
	datab => \inst|text_buffer[44][7]~175_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[40][7]~223_combout\,
	combout => \inst|text_buffer[40][7]~186_combout\);

-- Location: FF_X38_Y29_N11
\inst|text_buffer[40][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][7]~q\);

-- Location: LCCOMB_X38_Y29_N20
\inst|text_buffer[44][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[44][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y30_N20
\inst|text_buffer[44][7]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~216_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (\inst|buf_len\(5) & (!\inst|buf_len\(4) & \inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[44][7]~216_combout\);

-- Location: LCCOMB_X42_Y29_N16
\inst|text_buffer[44][7]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][7]~177_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[44][7]~216_combout\) # ((\inst|text_buffer[44][7]~175_combout\ & \inst|Decoder1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[44][7]~175_combout\,
	datac => \inst|Decoder1~5_combout\,
	datad => \inst|text_buffer[44][7]~216_combout\,
	combout => \inst|text_buffer[44][7]~177_combout\);

-- Location: FF_X38_Y29_N21
\inst|text_buffer[44][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[44][7]~feeder_combout\,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][7]~q\);

-- Location: LCCOMB_X38_Y29_N10
\inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|index\(0) & (\inst|index\(2))) # (!\inst|index\(0) & ((\inst|index\(2) & ((\inst|text_buffer[44][7]~q\))) # (!\inst|index\(2) & (\inst|text_buffer[40][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(2),
	datac => \inst|text_buffer[40][7]~q\,
	datad => \inst|text_buffer[44][7]~q\,
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X40_Y30_N4
\inst|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = (\inst|index\(0) & ((\inst|Mux16~0_combout\ & (\inst|text_buffer[45][7]~q\)) # (!\inst|Mux16~0_combout\ & ((\inst|text_buffer[41][7]~q\))))) # (!\inst|index\(0) & (((\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[45][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[41][7]~q\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux16~1_combout\);

-- Location: LCCOMB_X37_Y28_N10
\inst|text_buffer[33][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[33][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N16
\inst|text_buffer[33][7]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][7]~75_combout\ = (\inst|state.S_PROCESS~q\ & (\inst|index\(5) & (!\inst|index\(4) & !\inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|index\(5),
	datac => \inst|index\(4),
	datad => \inst|index\(3),
	combout => \inst|text_buffer[33][7]~75_combout\);

-- Location: LCCOMB_X39_Y32_N28
\inst|text_buffer[33][7]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][7]~77_combout\ = (\inst|buf_len[6]~7_combout\ & (\inst|text_buffer[44][7]~72_combout\ & (\inst|text_buffer[49][7]~66_combout\ & \inst|buf_len\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len[6]~7_combout\,
	datab => \inst|text_buffer[44][7]~72_combout\,
	datac => \inst|text_buffer[49][7]~66_combout\,
	datad => \inst|buf_len\(0),
	combout => \inst|text_buffer[33][7]~77_combout\);

-- Location: LCCOMB_X39_Y32_N10
\inst|text_buffer[33][7]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][7]~78_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[33][7]~77_combout\) # ((\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][7]~75_combout\,
	datab => \inst|Decoder1~0_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[33][7]~77_combout\,
	combout => \inst|text_buffer[33][7]~78_combout\);

-- Location: FF_X37_Y28_N11
\inst|text_buffer[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[33][7]~feeder_combout\,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][7]~q\);

-- Location: LCCOMB_X43_Y27_N18
\inst|text_buffer[37][7]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[37][7]~74_combout\ = (\inst|text_buffer[13][7]~73_combout\ & (!\inst|buf_len\(1) & (!\inst|buf_len\(3) & \inst|text_buffer[44][7]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~73_combout\,
	datab => \inst|buf_len\(1),
	datac => \inst|buf_len\(3),
	datad => \inst|text_buffer[44][7]~72_combout\,
	combout => \inst|text_buffer[37][7]~74_combout\);

-- Location: LCCOMB_X43_Y27_N4
\inst|text_buffer[37][7]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[37][7]~76_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[37][7]~74_combout\) # ((\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[37][7]~74_combout\,
	datac => \inst|text_buffer[33][7]~75_combout\,
	datad => \inst|Decoder1~1_combout\,
	combout => \inst|text_buffer[37][7]~76_combout\);

-- Location: FF_X37_Y28_N9
\inst|text_buffer[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][7]~q\);

-- Location: LCCOMB_X38_Y28_N28
\inst|text_buffer[36][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[36][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N26
\inst|text_buffer[36][7]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][7]~93_combout\ = (\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][7]~75_combout\,
	datad => \inst|Decoder1~5_combout\,
	combout => \inst|text_buffer[36][7]~93_combout\);

-- Location: LCCOMB_X42_Y27_N30
\inst|text_buffer[20][7]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[20][7]~95_combout\ = (!\inst|buf_len\(1) & (!\inst|buf_len\(3) & (\inst|buf_len\(2) & \inst|text_buffer[44][7]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(1),
	datab => \inst|buf_len\(3),
	datac => \inst|buf_len\(2),
	datad => \inst|text_buffer[44][7]~94_combout\,
	combout => \inst|text_buffer[20][7]~95_combout\);

-- Location: LCCOMB_X39_Y27_N18
\inst|text_buffer[36][7]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][7]~96_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[36][7]~93_combout\) # ((\inst|text_buffer[44][7]~72_combout\ & \inst|text_buffer[20][7]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[36][7]~93_combout\,
	datac => \inst|text_buffer[44][7]~72_combout\,
	datad => \inst|text_buffer[20][7]~95_combout\,
	combout => \inst|text_buffer[36][7]~96_combout\);

-- Location: FF_X38_Y28_N29
\inst|text_buffer[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][7]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][7]~q\);

-- Location: LCCOMB_X39_Y32_N8
\inst|text_buffer[32][7]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[32][7]~97_combout\ = (\inst|buf_len[6]~7_combout\ & (\inst|text_buffer[44][7]~72_combout\ & (\inst|text_buffer[49][7]~66_combout\ & !\inst|buf_len\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len[6]~7_combout\,
	datab => \inst|text_buffer[44][7]~72_combout\,
	datac => \inst|text_buffer[49][7]~66_combout\,
	datad => \inst|buf_len\(0),
	combout => \inst|text_buffer[32][7]~97_combout\);

-- Location: LCCOMB_X39_Y32_N2
\inst|text_buffer[32][7]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[32][7]~98_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[32][7]~97_combout\) # ((\inst|Decoder1~4_combout\ & \inst|text_buffer[33][7]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~4_combout\,
	datab => \inst|text_buffer[32][7]~97_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[33][7]~75_combout\,
	combout => \inst|text_buffer[32][7]~98_combout\);

-- Location: FF_X38_Y28_N23
\inst|text_buffer[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][7]~q\);

-- Location: LCCOMB_X38_Y28_N22
\inst|Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~4_combout\ = (\inst|index\(2) & ((\inst|text_buffer[36][7]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[32][7]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[36][7]~q\,
	datac => \inst|text_buffer[32][7]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux16~4_combout\);

-- Location: LCCOMB_X37_Y28_N8
\inst|Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~5_combout\ = (\inst|index\(0) & ((\inst|Mux16~4_combout\ & ((\inst|text_buffer[37][7]~q\))) # (!\inst|Mux16~4_combout\ & (\inst|text_buffer[33][7]~q\)))) # (!\inst|index\(0) & (((\inst|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[37][7]~q\,
	datad => \inst|Mux16~4_combout\,
	combout => \inst|Mux16~5_combout\);

-- Location: LCCOMB_X36_Y25_N8
\inst|text_buffer[38][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[38][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N28
\inst|text_buffer[38][7]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][7]~194_combout\ = (!\inst|buf_len\(3) & (\inst|text_buffer[46][7]~86_combout\ & (\inst|buf_len\(5) & !\inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|text_buffer[46][7]~86_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[38][7]~194_combout\);

-- Location: LCCOMB_X43_Y29_N24
\inst|text_buffer[38][7]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][7]~87_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[38][7]~194_combout\) # ((\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][7]~75_combout\,
	datab => \inst|text_buffer[38][7]~194_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~3_combout\,
	combout => \inst|text_buffer[38][7]~87_combout\);

-- Location: FF_X36_Y25_N9
\inst|text_buffer[38][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][7]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][7]~q\);

-- Location: LCCOMB_X40_Y27_N8
\inst|text_buffer[39][7]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[39][7]~196_combout\ = (\inst|buf_len\(5) & (!\inst|buf_len\(4) & (\inst|text_buffer[15][7]~104_combout\ & !\inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(5),
	datab => \inst|buf_len\(4),
	datac => \inst|text_buffer[15][7]~104_combout\,
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[39][7]~196_combout\);

-- Location: LCCOMB_X40_Y27_N26
\inst|text_buffer[39][7]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[39][7]~105_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[39][7]~196_combout\) # ((\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[33][7]~75_combout\,
	datac => \inst|text_buffer[39][7]~196_combout\,
	datad => \inst|Decoder1~7_combout\,
	combout => \inst|text_buffer[39][7]~105_combout\);

-- Location: FF_X40_Y27_N21
\inst|text_buffer[39][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][7]~q\);

-- Location: LCCOMB_X40_Y25_N4
\inst|text_buffer[35][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[35][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N22
\inst|text_buffer[35][7]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][7]~197_combout\ = (\inst|text_buffer[11][7]~106_combout\ & (!\inst|buf_len\(4) & (\inst|buf_len\(5) & !\inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[11][7]~106_combout\,
	datab => \inst|buf_len\(4),
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[35][7]~197_combout\);

-- Location: LCCOMB_X40_Y27_N0
\inst|text_buffer[35][7]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][7]~107_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[35][7]~197_combout\) # ((\inst|Decoder1~6_combout\ & \inst|text_buffer[33][7]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~6_combout\,
	datac => \inst|text_buffer[35][7]~197_combout\,
	datad => \inst|text_buffer[33][7]~75_combout\,
	combout => \inst|text_buffer[35][7]~107_combout\);

-- Location: FF_X40_Y25_N5
\inst|text_buffer[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][7]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][7]~q\);

-- Location: LCCOMB_X43_Y27_N24
\inst|text_buffer[34][7]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[34][7]~88_combout\ = (\inst|text_buffer[42][7]~82_combout\ & (\inst|text_buffer[44][7]~72_combout\ & (!\inst|buf_len\(3) & !\inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][7]~82_combout\,
	datab => \inst|text_buffer[44][7]~72_combout\,
	datac => \inst|buf_len\(3),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[34][7]~88_combout\);

-- Location: LCCOMB_X43_Y29_N22
\inst|text_buffer[34][7]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[34][7]~89_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[34][7]~88_combout\) # ((\inst|text_buffer[33][7]~75_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][7]~75_combout\,
	datab => \inst|text_buffer[34][7]~88_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[34][7]~89_combout\);

-- Location: FF_X36_Y25_N31
\inst|text_buffer[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][7]~q\);

-- Location: LCCOMB_X36_Y25_N30
\inst|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~2_combout\ = (\inst|index\(0) & ((\inst|text_buffer[35][7]~q\) # ((\inst|index\(2))))) # (!\inst|index\(0) & (((\inst|text_buffer[34][7]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[35][7]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[34][7]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux16~2_combout\);

-- Location: LCCOMB_X40_Y27_N20
\inst|Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~3_combout\ = (\inst|index\(2) & ((\inst|Mux16~2_combout\ & ((\inst|text_buffer[39][7]~q\))) # (!\inst|Mux16~2_combout\ & (\inst|text_buffer[38][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[38][7]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[39][7]~q\,
	datad => \inst|Mux16~2_combout\,
	combout => \inst|Mux16~3_combout\);

-- Location: LCCOMB_X40_Y30_N6
\inst|Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~6_combout\ = (\inst|index\(1) & ((\inst|index\(3)) # ((\inst|Mux16~3_combout\)))) # (!\inst|index\(1) & (!\inst|index\(3) & (\inst|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(3),
	datac => \inst|Mux16~5_combout\,
	datad => \inst|Mux16~3_combout\,
	combout => \inst|Mux16~6_combout\);

-- Location: LCCOMB_X40_Y30_N20
\inst|Mux16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~9_combout\ = (\inst|index\(3) & ((\inst|Mux16~6_combout\ & (\inst|Mux16~8_combout\)) # (!\inst|Mux16~6_combout\ & ((\inst|Mux16~1_combout\))))) # (!\inst|index\(3) & (((\inst|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~8_combout\,
	datab => \inst|index\(3),
	datac => \inst|Mux16~1_combout\,
	datad => \inst|Mux16~6_combout\,
	combout => \inst|Mux16~9_combout\);

-- Location: LCCOMB_X39_Y31_N28
\inst|text_buffer[10][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[10][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y30_N20
\inst|text_buffer[13][7]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~116_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|index\(5) & (!\inst|index\(4) & \inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|index\(5),
	datac => \inst|index\(4),
	datad => \inst|index\(3),
	combout => \inst|text_buffer[13][7]~116_combout\);

-- Location: LCCOMB_X42_Y29_N8
\inst|text_buffer[10][7]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][7]~201_combout\ = (\inst|text_buffer[42][7]~109_combout\ & (!\inst|buf_len\(5) & (!\inst|buf_len\(2) & !\inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][7]~109_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[10][7]~201_combout\);

-- Location: LCCOMB_X42_Y29_N12
\inst|text_buffer[10][7]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][7]~117_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[10][7]~201_combout\) # ((\inst|text_buffer[13][7]~116_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~116_combout\,
	datab => \inst|text_buffer[10][7]~201_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[10][7]~117_combout\);

-- Location: FF_X39_Y31_N29
\inst|text_buffer[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[10][7]~feeder_combout\,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][7]~q\);

-- Location: LCCOMB_X43_Y30_N18
\inst|text_buffer[8][7]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[8][7]~205_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (!\inst|buf_len\(5) & (!\inst|buf_len\(4) & !\inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[8][7]~205_combout\);

-- Location: LCCOMB_X43_Y30_N2
\inst|text_buffer[8][7]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[8][7]~132_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[8][7]~205_combout\) # ((\inst|Decoder1~4_combout\ & \inst|text_buffer[13][7]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~4_combout\,
	datab => \inst|text_buffer[8][7]~205_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[13][7]~116_combout\,
	combout => \inst|text_buffer[8][7]~132_combout\);

-- Location: FF_X38_Y31_N3
\inst|text_buffer[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][7]~q\);

-- Location: LCCOMB_X38_Y31_N2
\inst|Mux16~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~20_combout\ = (\inst|index\(1) & ((\inst|text_buffer[10][7]~q\) # ((\inst|index\(0))))) # (!\inst|index\(1) & (((\inst|text_buffer[8][7]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[10][7]~q\,
	datac => \inst|text_buffer[8][7]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux16~20_combout\);

-- Location: LCCOMB_X38_Y31_N28
\inst|text_buffer[9][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[9][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y30_N26
\inst|text_buffer[13][7]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~112_combout\ = (\inst|state.S_PROCESS~q\ & (\inst|index\(3) & !\inst|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datac => \inst|index\(3),
	datad => \inst|index\(5),
	combout => \inst|text_buffer[13][7]~112_combout\);

-- Location: LCCOMB_X40_Y30_N18
\inst|text_buffer[9][7]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][7]~129_combout\ = (\inst|Decoder1~0_combout\ & (!\inst|index\(4) & \inst|text_buffer[13][7]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~0_combout\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[13][7]~112_combout\,
	combout => \inst|text_buffer[9][7]~129_combout\);

-- Location: LCCOMB_X40_Y30_N8
\inst|text_buffer[9][7]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][7]~115_combout\ = (!\inst|buf_len\(2) & (!\inst|buf_len\(5) & !\inst|buf_len\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datab => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[9][7]~115_combout\);

-- Location: LCCOMB_X40_Y30_N16
\inst|text_buffer[9][7]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][7]~131_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[9][7]~129_combout\) # ((\inst|text_buffer[9][7]~130_combout\ & \inst|text_buffer[9][7]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[9][7]~129_combout\,
	datac => \inst|text_buffer[9][7]~130_combout\,
	datad => \inst|text_buffer[9][7]~115_combout\,
	combout => \inst|text_buffer[9][7]~131_combout\);

-- Location: FF_X38_Y31_N29
\inst|text_buffer[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[9][7]~feeder_combout\,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][7]~q\);

-- Location: LCCOMB_X40_Y27_N4
\inst|text_buffer[11][7]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][7]~200_combout\ = (\inst|text_buffer[11][7]~106_combout\ & (!\inst|buf_len\(4) & (!\inst|buf_len\(5) & \inst|buf_len\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[11][7]~106_combout\,
	datab => \inst|buf_len\(4),
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[11][7]~200_combout\);

-- Location: LCCOMB_X40_Y27_N2
\inst|text_buffer[11][7]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][7]~113_combout\ = (!\inst|index\(4) & (\inst|Decoder1~6_combout\ & \inst|text_buffer[13][7]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datac => \inst|Decoder1~6_combout\,
	datad => \inst|text_buffer[13][7]~112_combout\,
	combout => \inst|text_buffer[11][7]~113_combout\);

-- Location: LCCOMB_X40_Y27_N12
\inst|text_buffer[11][7]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][7]~114_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[11][7]~200_combout\) # (\inst|text_buffer[11][7]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datac => \inst|text_buffer[11][7]~200_combout\,
	datad => \inst|text_buffer[11][7]~113_combout\,
	combout => \inst|text_buffer[11][7]~114_combout\);

-- Location: FF_X39_Y31_N31
\inst|text_buffer[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][7]~q\);

-- Location: LCCOMB_X39_Y31_N30
\inst|Mux16~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~21_combout\ = (\inst|Mux16~20_combout\ & (((\inst|text_buffer[11][7]~q\) # (!\inst|index\(0))))) # (!\inst|Mux16~20_combout\ & (\inst|text_buffer[9][7]~q\ & ((\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~20_combout\,
	datab => \inst|text_buffer[9][7]~q\,
	datac => \inst|text_buffer[11][7]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux16~21_combout\);

-- Location: LCCOMB_X34_Y32_N12
\inst|text_buffer[5][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[5][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y30_N30
\inst|text_buffer[6][7]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][7]~143_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|index\(5) & (!\inst|index\(4) & !\inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|index\(5),
	datac => \inst|index\(4),
	datad => \inst|index\(3),
	combout => \inst|text_buffer[6][7]~143_combout\);

-- Location: LCCOMB_X43_Y27_N22
\inst|text_buffer[3][7]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][7]~142_combout\ = (!\inst|buf_len\(4) & (!\inst|buf_len\(3) & !\inst|buf_len\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datac => \inst|buf_len\(3),
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[3][7]~142_combout\);

-- Location: LCCOMB_X43_Y27_N6
\inst|text_buffer[5][7]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][7]~170_combout\ = (!\inst|buf_len\(1) & (\inst|text_buffer[3][7]~142_combout\ & \inst|text_buffer[13][7]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buf_len\(1),
	datac => \inst|text_buffer[3][7]~142_combout\,
	datad => \inst|text_buffer[13][7]~73_combout\,
	combout => \inst|text_buffer[5][7]~170_combout\);

-- Location: LCCOMB_X41_Y30_N2
\inst|text_buffer[5][7]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][7]~171_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[5][7]~170_combout\) # ((\inst|text_buffer[6][7]~143_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[6][7]~143_combout\,
	datab => \inst|Decoder1~1_combout\,
	datac => \inst|text_buffer[5][7]~170_combout\,
	datad => \KEY1~input_o\,
	combout => \inst|text_buffer[5][7]~171_combout\);

-- Location: FF_X34_Y32_N13
\inst|text_buffer[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][7]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][7]~q\);

-- Location: LCCOMB_X41_Y30_N4
\inst|text_buffer[22][7]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][7]~139_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|index\(3) & !\inst|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datac => \inst|index\(3),
	datad => \inst|index\(5),
	combout => \inst|text_buffer[22][7]~139_combout\);

-- Location: LCCOMB_X41_Y30_N18
\inst|text_buffer[7][7]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][7]~168_combout\ = (\inst|Decoder1~7_combout\ & (\inst|text_buffer[22][7]~139_combout\ & !\inst|index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Decoder1~7_combout\,
	datac => \inst|text_buffer[22][7]~139_combout\,
	datad => \inst|index\(4),
	combout => \inst|text_buffer[7][7]~168_combout\);

-- Location: LCCOMB_X41_Y30_N28
\inst|text_buffer[7][7]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][7]~169_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[7][7]~168_combout\) # ((\inst|text_buffer[3][7]~142_combout\ & \inst|text_buffer[15][7]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[3][7]~142_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[15][7]~104_combout\,
	datad => \inst|text_buffer[7][7]~168_combout\,
	combout => \inst|text_buffer[7][7]~169_combout\);

-- Location: FF_X35_Y32_N23
\inst|text_buffer[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][7]~q\);

-- Location: LCCOMB_X34_Y27_N12
\inst|text_buffer[4][7]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][7]~145_combout\ = (\inst|text_buffer[22][7]~139_combout\ & (!\inst|index\(4) & \inst|Decoder1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][7]~139_combout\,
	datac => \inst|index\(4),
	datad => \inst|Decoder1~5_combout\,
	combout => \inst|text_buffer[4][7]~145_combout\);

-- Location: LCCOMB_X34_Y27_N10
\inst|text_buffer[4][7]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][7]~146_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[4][7]~145_combout\) # ((\inst|text_buffer[20][7]~95_combout\ & \inst|text_buffer[13][7]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[4][7]~145_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[20][7]~95_combout\,
	datad => \inst|text_buffer[13][7]~67_combout\,
	combout => \inst|text_buffer[4][7]~146_combout\);

-- Location: FF_X34_Y32_N23
\inst|text_buffer[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][7]~q\);

-- Location: LCCOMB_X35_Y32_N24
\inst|text_buffer[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[6][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N20
\inst|text_buffer[6][7]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][7]~211_combout\ = (!\inst|buf_len\(3) & (\inst|text_buffer[46][7]~86_combout\ & (!\inst|buf_len\(5) & !\inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|text_buffer[46][7]~86_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[6][7]~211_combout\);

-- Location: LCCOMB_X43_Y29_N28
\inst|text_buffer[6][7]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][7]~144_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[6][7]~211_combout\) # ((\inst|text_buffer[6][7]~143_combout\ & \inst|Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[6][7]~211_combout\,
	datab => \inst|text_buffer[6][7]~143_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~3_combout\,
	combout => \inst|text_buffer[6][7]~144_combout\);

-- Location: FF_X35_Y32_N25
\inst|text_buffer[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][7]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][7]~q\);

-- Location: LCCOMB_X34_Y32_N22
\inst|Mux16~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~22_combout\ = (\inst|index\(0) & (\inst|index\(1))) # (!\inst|index\(0) & ((\inst|index\(1) & ((\inst|text_buffer[6][7]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[4][7]~q\,
	datad => \inst|text_buffer[6][7]~q\,
	combout => \inst|Mux16~22_combout\);

-- Location: LCCOMB_X35_Y32_N22
\inst|Mux16~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~23_combout\ = (\inst|index\(0) & ((\inst|Mux16~22_combout\ & ((\inst|text_buffer[7][7]~q\))) # (!\inst|Mux16~22_combout\ & (\inst|text_buffer[5][7]~q\)))) # (!\inst|index\(0) & (((\inst|Mux16~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[5][7]~q\,
	datac => \inst|text_buffer[7][7]~q\,
	datad => \inst|Mux16~22_combout\,
	combout => \inst|Mux16~23_combout\);

-- Location: LCCOMB_X34_Y28_N0
\inst|text_buffer[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[1][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y32_N30
\inst|text_buffer[1][7]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][7]~154_combout\ = (\inst|buf_len\(0) & (\inst|text_buffer[13][7]~67_combout\ & (\inst|text_buffer[49][7]~66_combout\ & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(0),
	datab => \inst|text_buffer[13][7]~67_combout\,
	datac => \inst|text_buffer[49][7]~66_combout\,
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[1][7]~154_combout\);

-- Location: LCCOMB_X41_Y28_N18
\inst|text_buffer[1][7]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][7]~153_combout\ = (!\inst|index\(4) & (\inst|Decoder1~0_combout\ & \inst|text_buffer[22][7]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Decoder1~0_combout\,
	datac => \inst|text_buffer[22][7]~139_combout\,
	combout => \inst|text_buffer[1][7]~153_combout\);

-- Location: LCCOMB_X42_Y28_N10
\inst|text_buffer[1][7]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][7]~155_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[1][7]~154_combout\) # (\inst|text_buffer[1][7]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[1][7]~154_combout\,
	datad => \inst|text_buffer[1][7]~153_combout\,
	combout => \inst|text_buffer[1][7]~155_combout\);

-- Location: FF_X34_Y28_N1
\inst|text_buffer[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[1][7]~feeder_combout\,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][7]~q\);

-- Location: LCCOMB_X41_Y30_N26
\inst|text_buffer[3][7]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][7]~151_combout\ = (!\inst|index\(4) & (\inst|text_buffer[22][7]~139_combout\ & \inst|Decoder1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(4),
	datac => \inst|text_buffer[22][7]~139_combout\,
	datad => \inst|Decoder1~6_combout\,
	combout => \inst|text_buffer[3][7]~151_combout\);

-- Location: LCCOMB_X41_Y30_N12
\inst|text_buffer[3][7]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][7]~152_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[3][7]~151_combout\) # ((\inst|text_buffer[3][7]~142_combout\ & \inst|text_buffer[11][7]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[3][7]~142_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[3][7]~151_combout\,
	datad => \inst|text_buffer[11][7]~106_combout\,
	combout => \inst|text_buffer[3][7]~152_combout\);

-- Location: FF_X39_Y30_N19
\inst|text_buffer[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][7]~q\);

-- Location: LCCOMB_X36_Y32_N4
\inst|text_buffer[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[2][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y27_N28
\inst|text_buffer[2][7]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][7]~160_combout\ = (!\inst|buf_len\(2) & (\inst|text_buffer[3][7]~142_combout\ & \inst|text_buffer[42][7]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(2),
	datac => \inst|text_buffer[3][7]~142_combout\,
	datad => \inst|text_buffer[42][7]~82_combout\,
	combout => \inst|text_buffer[2][7]~160_combout\);

-- Location: LCCOMB_X43_Y29_N30
\inst|text_buffer[2][7]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][7]~161_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[2][7]~160_combout\) # ((\inst|text_buffer[6][7]~143_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[2][7]~160_combout\,
	datab => \inst|text_buffer[6][7]~143_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[2][7]~161_combout\);

-- Location: FF_X36_Y32_N5
\inst|text_buffer[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[2][7]~feeder_combout\,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][7]~q\);

-- Location: LCCOMB_X39_Y32_N0
\inst|text_buffer[0][7]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[0][7]~162_combout\ = (!\inst|buf_len\(0) & (\inst|text_buffer[13][7]~67_combout\ & (\inst|text_buffer[49][7]~66_combout\ & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(0),
	datab => \inst|text_buffer[13][7]~67_combout\,
	datac => \inst|text_buffer[49][7]~66_combout\,
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[0][7]~162_combout\);

-- Location: LCCOMB_X39_Y32_N6
\inst|text_buffer[0][7]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[0][7]~163_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[0][7]~162_combout\) # ((\inst|Decoder1~4_combout\ & \inst|text_buffer[6][7]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~4_combout\,
	datab => \inst|text_buffer[6][7]~143_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[0][7]~162_combout\,
	combout => \inst|text_buffer[0][7]~163_combout\);

-- Location: FF_X39_Y30_N29
\inst|text_buffer[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][7]~q\);

-- Location: LCCOMB_X39_Y30_N28
\inst|Mux16~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~24_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|text_buffer[2][7]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[2][7]~q\,
	datac => \inst|text_buffer[0][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~24_combout\);

-- Location: LCCOMB_X39_Y30_N18
\inst|Mux16~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~25_combout\ = (\inst|index\(0) & ((\inst|Mux16~24_combout\ & ((\inst|text_buffer[3][7]~q\))) # (!\inst|Mux16~24_combout\ & (\inst|text_buffer[1][7]~q\)))) # (!\inst|index\(0) & (((\inst|Mux16~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[1][7]~q\,
	datac => \inst|text_buffer[3][7]~q\,
	datad => \inst|Mux16~24_combout\,
	combout => \inst|Mux16~25_combout\);

-- Location: LCCOMB_X39_Y30_N8
\inst|Mux16~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~26_combout\ = (\inst|index\(2) & ((\inst|index\(3)) # ((\inst|Mux16~23_combout\)))) # (!\inst|index\(2) & (!\inst|index\(3) & ((\inst|Mux16~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|Mux16~23_combout\,
	datad => \inst|Mux16~25_combout\,
	combout => \inst|Mux16~26_combout\);

-- Location: LCCOMB_X37_Y32_N0
\inst|text_buffer[14][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[14][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y30_N28
\inst|text_buffer[14][7]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][7]~209_combout\ = (\inst|buf_len\(3) & (!\inst|buf_len\(5) & (!\inst|buf_len\(4) & \inst|text_buffer[46][7]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|text_buffer[46][7]~86_combout\,
	combout => \inst|text_buffer[14][7]~209_combout\);

-- Location: LCCOMB_X43_Y30_N12
\inst|text_buffer[14][7]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][7]~137_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[14][7]~209_combout\) # ((\inst|text_buffer[13][7]~116_combout\ & \inst|Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~116_combout\,
	datab => \inst|text_buffer[14][7]~209_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~3_combout\,
	combout => \inst|text_buffer[14][7]~137_combout\);

-- Location: FF_X37_Y32_N1
\inst|text_buffer[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][7]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][7]~q\);

-- Location: LCCOMB_X39_Y25_N24
\inst|text_buffer[15][7]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][7]~208_combout\ = (!\inst|buf_len\(4) & (!\inst|buf_len\(5) & (\inst|buf_len\(3) & \inst|text_buffer[15][7]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(3),
	datad => \inst|text_buffer[15][7]~104_combout\,
	combout => \inst|text_buffer[15][7]~208_combout\);

-- Location: LCCOMB_X40_Y27_N28
\inst|text_buffer[15][7]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][7]~135_combout\ = (!\inst|index\(4) & (\inst|text_buffer[13][7]~112_combout\ & \inst|Decoder1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[13][7]~112_combout\,
	datad => \inst|Decoder1~7_combout\,
	combout => \inst|text_buffer[15][7]~135_combout\);

-- Location: LCCOMB_X39_Y25_N12
\inst|text_buffer[15][7]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][7]~136_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[15][7]~208_combout\) # (\inst|text_buffer[15][7]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|text_buffer[15][7]~208_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[15][7]~135_combout\,
	combout => \inst|text_buffer[15][7]~136_combout\);

-- Location: FF_X37_Y32_N7
\inst|text_buffer[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][7]~q\);

-- Location: LCCOMB_X38_Y32_N24
\inst|text_buffer[13][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[13][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N6
\inst|text_buffer[13][7]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~123_combout\ = (\inst|text_buffer[13][7]~67_combout\ & (\inst|buf_len\(3) & (!\inst|buf_len\(1) & \inst|text_buffer[13][7]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~67_combout\,
	datab => \inst|buf_len\(3),
	datac => \inst|buf_len\(1),
	datad => \inst|text_buffer[13][7]~73_combout\,
	combout => \inst|text_buffer[13][7]~123_combout\);

-- Location: LCCOMB_X41_Y30_N14
\inst|text_buffer[13][7]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][7]~124_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[13][7]~123_combout\) # ((\inst|Decoder1~1_combout\ & \inst|text_buffer[13][7]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][7]~123_combout\,
	datab => \inst|Decoder1~1_combout\,
	datac => \inst|text_buffer[13][7]~116_combout\,
	datad => \KEY1~input_o\,
	combout => \inst|text_buffer[13][7]~124_combout\);

-- Location: FF_X38_Y32_N25
\inst|text_buffer[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[13][7]~feeder_combout\,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][7]~q\);

-- Location: LCCOMB_X43_Y30_N4
\inst|text_buffer[12][7]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[12][7]~203_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (!\inst|buf_len\(5) & (!\inst|buf_len\(4) & \inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[12][7]~203_combout\);

-- Location: LCCOMB_X43_Y30_N24
\inst|text_buffer[12][7]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[12][7]~125_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[12][7]~203_combout\) # ((\inst|Decoder1~5_combout\ & \inst|text_buffer[13][7]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[12][7]~203_combout\,
	datac => \inst|Decoder1~5_combout\,
	datad => \inst|text_buffer[13][7]~116_combout\,
	combout => \inst|text_buffer[12][7]~125_combout\);

-- Location: FF_X38_Y32_N7
\inst|text_buffer[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][7]~q\);

-- Location: LCCOMB_X38_Y32_N6
\inst|Mux16~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~27_combout\ = (\inst|index\(0) & ((\inst|text_buffer[13][7]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[12][7]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[13][7]~q\,
	datac => \inst|text_buffer[12][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~27_combout\);

-- Location: LCCOMB_X37_Y32_N6
\inst|Mux16~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~28_combout\ = (\inst|index\(1) & ((\inst|Mux16~27_combout\ & ((\inst|text_buffer[15][7]~q\))) # (!\inst|Mux16~27_combout\ & (\inst|text_buffer[14][7]~q\)))) # (!\inst|index\(1) & (((\inst|Mux16~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[14][7]~q\,
	datac => \inst|text_buffer[15][7]~q\,
	datad => \inst|Mux16~27_combout\,
	combout => \inst|Mux16~28_combout\);

-- Location: LCCOMB_X39_Y30_N30
\inst|Mux16~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~29_combout\ = (\inst|index\(3) & ((\inst|Mux16~26_combout\ & ((\inst|Mux16~28_combout\))) # (!\inst|Mux16~26_combout\ & (\inst|Mux16~21_combout\)))) # (!\inst|index\(3) & (((\inst|Mux16~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~21_combout\,
	datab => \inst|index\(3),
	datac => \inst|Mux16~26_combout\,
	datad => \inst|Mux16~28_combout\,
	combout => \inst|Mux16~29_combout\);

-- Location: LCCOMB_X38_Y27_N6
\inst|text_buffer[29][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[29][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y29_N22
\inst|text_buffer[27][7]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][7]~110_combout\ = (!\inst|index\(5) & (\inst|index\(3) & (\inst|index\(4) & \inst|state.S_PROCESS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(3),
	datac => \inst|index\(4),
	datad => \inst|state.S_PROCESS~q\,
	combout => \inst|text_buffer[27][7]~110_combout\);

-- Location: LCCOMB_X39_Y32_N4
\inst|text_buffer[22][7]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][7]~121_combout\ = (!\inst|buf_len\(5) & \inst|buf_len\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[22][7]~121_combout\);

-- Location: LCCOMB_X41_Y27_N20
\inst|text_buffer[29][7]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][7]~126_combout\ = (\inst|text_buffer[22][7]~121_combout\ & (\inst|buf_len\(3) & (!\inst|buf_len\(1) & \inst|text_buffer[13][7]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][7]~121_combout\,
	datab => \inst|buf_len\(3),
	datac => \inst|buf_len\(1),
	datad => \inst|text_buffer[13][7]~73_combout\,
	combout => \inst|text_buffer[29][7]~126_combout\);

-- Location: LCCOMB_X38_Y27_N10
\inst|text_buffer[29][7]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][7]~127_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[29][7]~126_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][7]~110_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|Decoder1~1_combout\,
	datad => \inst|text_buffer[29][7]~126_combout\,
	combout => \inst|text_buffer[29][7]~127_combout\);

-- Location: FF_X38_Y27_N7
\inst|text_buffer[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[29][7]~feeder_combout\,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][7]~q\);

-- Location: LCCOMB_X39_Y25_N14
\inst|text_buffer[31][7]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[31][7]~210_combout\ = (\inst|buf_len\(4) & (!\inst|buf_len\(5) & (\inst|buf_len\(3) & \inst|text_buffer[15][7]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(3),
	datad => \inst|text_buffer[15][7]~104_combout\,
	combout => \inst|text_buffer[31][7]~210_combout\);

-- Location: LCCOMB_X39_Y25_N30
\inst|text_buffer[31][7]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[31][7]~138_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[31][7]~210_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[31][7]~210_combout\,
	datac => \inst|text_buffer[27][7]~110_combout\,
	datad => \inst|Decoder1~7_combout\,
	combout => \inst|text_buffer[31][7]~138_combout\);

-- Location: FF_X38_Y27_N13
\inst|text_buffer[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][7]~q\);

-- Location: LCCOMB_X35_Y27_N28
\inst|text_buffer[27][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[27][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N10
\inst|text_buffer[27][7]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][7]~118_combout\ = (\inst|text_buffer[51][7]~101_combout\ & (!\inst|buf_len\(5) & \inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|text_buffer[51][7]~101_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[27][7]~118_combout\);

-- Location: LCCOMB_X41_Y27_N12
\inst|text_buffer[27][7]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][7]~119_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[27][7]~118_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][7]~118_combout\,
	datab => \inst|text_buffer[27][7]~110_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~6_combout\,
	combout => \inst|text_buffer[27][7]~119_combout\);

-- Location: FF_X35_Y27_N29
\inst|text_buffer[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][7]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][7]~q\);

-- Location: LCCOMB_X40_Y26_N16
\inst|text_buffer[25][7]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][7]~206_combout\ = (\inst|buf_len\(4) & (!\inst|buf_len\(2) & (\inst|text_buffer[9][7]~130_combout\ & !\inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(2),
	datac => \inst|text_buffer[9][7]~130_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[25][7]~206_combout\);

-- Location: LCCOMB_X40_Y26_N0
\inst|text_buffer[25][7]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][7]~133_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[25][7]~206_combout\) # ((\inst|Decoder1~0_combout\ & \inst|text_buffer[27][7]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~0_combout\,
	datac => \inst|text_buffer[27][7]~110_combout\,
	datad => \inst|text_buffer[25][7]~206_combout\,
	combout => \inst|text_buffer[25][7]~133_combout\);

-- Location: FF_X35_Y27_N3
\inst|text_buffer[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][7]~q\);

-- Location: LCCOMB_X35_Y27_N2
\inst|Mux16~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~17_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[27][7]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[25][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[27][7]~q\,
	datac => \inst|text_buffer[25][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~17_combout\);

-- Location: LCCOMB_X38_Y27_N12
\inst|Mux16~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~18_combout\ = (\inst|index\(2) & ((\inst|Mux16~17_combout\ & ((\inst|text_buffer[31][7]~q\))) # (!\inst|Mux16~17_combout\ & (\inst|text_buffer[29][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[29][7]~q\,
	datac => \inst|text_buffer[31][7]~q\,
	datad => \inst|Mux16~17_combout\,
	combout => \inst|Mux16~18_combout\);

-- Location: LCCOMB_X32_Y29_N0
\inst|text_buffer[28][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[28][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[28][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N2
\inst|text_buffer[28][7]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[28][7]~202_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (!\inst|buf_len\(5) & (\inst|buf_len\(2) & \inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[28][7]~202_combout\);

-- Location: LCCOMB_X42_Y29_N10
\inst|text_buffer[28][7]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[28][7]~122_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[28][7]~202_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][7]~110_combout\,
	datab => \inst|Decoder1~5_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[28][7]~202_combout\,
	combout => \inst|text_buffer[28][7]~122_combout\);

-- Location: FF_X32_Y29_N1
\inst|text_buffer[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[28][7]~feeder_combout\,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][7]~q\);

-- Location: LCCOMB_X39_Y25_N2
\inst|text_buffer[30][7]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][7]~207_combout\ = (\inst|buf_len\(4) & (\inst|buf_len\(3) & (\inst|text_buffer[46][7]~86_combout\ & !\inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[46][7]~86_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[30][7]~207_combout\);

-- Location: LCCOMB_X39_Y25_N22
\inst|text_buffer[30][7]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][7]~134_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[30][7]~207_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[30][7]~207_combout\,
	datac => \inst|text_buffer[27][7]~110_combout\,
	datad => \inst|Decoder1~3_combout\,
	combout => \inst|text_buffer[30][7]~134_combout\);

-- Location: FF_X32_Y29_N3
\inst|text_buffer[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][7]~q\);

-- Location: LCCOMB_X36_Y27_N20
\inst|text_buffer[26][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[26][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[26][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N26
\inst|text_buffer[26][7]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[26][7]~199_combout\ = (\inst|text_buffer[42][7]~109_combout\ & (!\inst|buf_len\(5) & (!\inst|buf_len\(2) & \inst|buf_len\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][7]~109_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(2),
	datad => \inst|buf_len\(4),
	combout => \inst|text_buffer[26][7]~199_combout\);

-- Location: LCCOMB_X42_Y29_N6
\inst|text_buffer[26][7]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[26][7]~111_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[26][7]~199_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][7]~110_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[26][7]~199_combout\,
	datad => \inst|Decoder1~2_combout\,
	combout => \inst|text_buffer[26][7]~111_combout\);

-- Location: FF_X36_Y27_N21
\inst|text_buffer[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[26][7]~feeder_combout\,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][7]~q\);

-- Location: LCCOMB_X41_Y26_N26
\inst|text_buffer[24][7]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[24][7]~204_combout\ = (\inst|text_buffer[44][7]~120_combout\ & (\inst|buf_len\(4) & (!\inst|buf_len\(5) & !\inst|buf_len\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][7]~120_combout\,
	datab => \inst|buf_len\(4),
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(2),
	combout => \inst|text_buffer[24][7]~204_combout\);

-- Location: LCCOMB_X40_Y26_N10
\inst|text_buffer[24][7]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[24][7]~128_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[24][7]~204_combout\) # ((\inst|text_buffer[27][7]~110_combout\ & \inst|Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][7]~110_combout\,
	datab => \inst|text_buffer[24][7]~204_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~4_combout\,
	combout => \inst|text_buffer[24][7]~128_combout\);

-- Location: FF_X36_Y27_N23
\inst|text_buffer[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][7]~q\);

-- Location: LCCOMB_X36_Y27_N22
\inst|Mux16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~10_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[26][7]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[24][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[26][7]~q\,
	datac => \inst|text_buffer[24][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~10_combout\);

-- Location: LCCOMB_X32_Y29_N2
\inst|Mux16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~11_combout\ = (\inst|index\(2) & ((\inst|Mux16~10_combout\ & ((\inst|text_buffer[30][7]~q\))) # (!\inst|Mux16~10_combout\ & (\inst|text_buffer[28][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[28][7]~q\,
	datac => \inst|text_buffer[30][7]~q\,
	datad => \inst|Mux16~10_combout\,
	combout => \inst|Mux16~11_combout\);

-- Location: LCCOMB_X35_Y26_N24
\inst|text_buffer[20][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[20][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[20][7]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N0
\inst|text_buffer[20][7]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[20][7]~140_combout\ = (\inst|text_buffer[22][7]~139_combout\ & (\inst|index\(4) & \inst|Decoder1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][7]~139_combout\,
	datac => \inst|index\(4),
	datad => \inst|Decoder1~5_combout\,
	combout => \inst|text_buffer[20][7]~140_combout\);

-- Location: LCCOMB_X34_Y27_N22
\inst|text_buffer[20][7]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[20][7]~141_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[20][7]~140_combout\) # ((\inst|text_buffer[20][7]~95_combout\ & \inst|text_buffer[22][7]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[20][7]~95_combout\,
	datab => \inst|text_buffer[22][7]~121_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[20][7]~140_combout\,
	combout => \inst|text_buffer[20][7]~141_combout\);

-- Location: FF_X35_Y26_N25
\inst|text_buffer[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[20][7]~feeder_combout\,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][7]~q\);

-- Location: LCCOMB_X41_Y30_N24
\inst|text_buffer[22][7]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][7]~147_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|index\(5) & (\inst|index\(4) & !\inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|index\(5),
	datac => \inst|index\(4),
	datad => \inst|index\(3),
	combout => \inst|text_buffer[22][7]~147_combout\);

-- Location: LCCOMB_X43_Y30_N6
\inst|text_buffer[22][7]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][7]~212_combout\ = (!\inst|buf_len\(3) & (!\inst|buf_len\(5) & (\inst|buf_len\(4) & \inst|text_buffer[46][7]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(3),
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(4),
	datad => \inst|text_buffer[46][7]~86_combout\,
	combout => \inst|text_buffer[22][7]~212_combout\);

-- Location: LCCOMB_X43_Y30_N14
\inst|text_buffer[22][7]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][7]~148_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[22][7]~212_combout\) # ((\inst|Decoder1~3_combout\ & \inst|text_buffer[22][7]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~3_combout\,
	datab => \inst|text_buffer[22][7]~147_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|text_buffer[22][7]~212_combout\,
	combout => \inst|text_buffer[22][7]~148_combout\);

-- Location: FF_X35_Y26_N3
\inst|text_buffer[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][7]~q\);

-- Location: LCCOMB_X39_Y32_N16
\inst|text_buffer[16][7]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[16][7]~158_combout\ = (!\inst|buf_len\(0) & (\inst|text_buffer[49][7]~66_combout\ & (\inst|text_buffer[22][7]~121_combout\ & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(0),
	datab => \inst|text_buffer[49][7]~66_combout\,
	datac => \inst|text_buffer[22][7]~121_combout\,
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[16][7]~158_combout\);

-- Location: LCCOMB_X39_Y32_N14
\inst|text_buffer[16][7]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[16][7]~159_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[16][7]~158_combout\) # ((\inst|Decoder1~4_combout\ & \inst|text_buffer[22][7]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder1~4_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[22][7]~147_combout\,
	datad => \inst|text_buffer[16][7]~158_combout\,
	combout => \inst|text_buffer[16][7]~159_combout\);

-- Location: FF_X35_Y25_N23
\inst|text_buffer[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][7]~q\);

-- Location: LCCOMB_X35_Y25_N20
\inst|text_buffer[18][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[18][7]~feeder_combout\);

-- Location: LCCOMB_X43_Y27_N10
\inst|text_buffer[18][7]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][7]~164_combout\ = (\inst|text_buffer[50][7]~83_combout\ & (!\inst|buf_len\(5) & (!\inst|buf_len\(3) & \inst|text_buffer[42][7]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[50][7]~83_combout\,
	datab => \inst|buf_len\(5),
	datac => \inst|buf_len\(3),
	datad => \inst|text_buffer[42][7]~82_combout\,
	combout => \inst|text_buffer[18][7]~164_combout\);

-- Location: LCCOMB_X43_Y27_N8
\inst|text_buffer[18][7]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][7]~165_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[18][7]~164_combout\) # ((\inst|text_buffer[22][7]~147_combout\ & \inst|Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|text_buffer[22][7]~147_combout\,
	datac => \inst|Decoder1~2_combout\,
	datad => \inst|text_buffer[18][7]~164_combout\,
	combout => \inst|text_buffer[18][7]~165_combout\);

-- Location: FF_X35_Y25_N21
\inst|text_buffer[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][7]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][7]~q\);

-- Location: LCCOMB_X35_Y25_N22
\inst|Mux16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~14_combout\ = (\inst|index\(2) & (\inst|index\(1))) # (!\inst|index\(2) & ((\inst|index\(1) & ((\inst|text_buffer[18][7]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[16][7]~q\,
	datad => \inst|text_buffer[18][7]~q\,
	combout => \inst|Mux16~14_combout\);

-- Location: LCCOMB_X35_Y26_N2
\inst|Mux16~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~15_combout\ = (\inst|index\(2) & ((\inst|Mux16~14_combout\ & ((\inst|text_buffer[22][7]~q\))) # (!\inst|Mux16~14_combout\ & (\inst|text_buffer[20][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[20][7]~q\,
	datac => \inst|text_buffer[22][7]~q\,
	datad => \inst|Mux16~14_combout\,
	combout => \inst|Mux16~15_combout\);

-- Location: LCCOMB_X34_Y26_N8
\inst|text_buffer[21][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[21][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N30
\inst|text_buffer[21][7]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][7]~166_combout\ = (\inst|text_buffer[22][7]~121_combout\ & (!\inst|buf_len\(3) & (!\inst|buf_len\(1) & \inst|text_buffer[13][7]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][7]~121_combout\,
	datab => \inst|buf_len\(3),
	datac => \inst|buf_len\(1),
	datad => \inst|text_buffer[13][7]~73_combout\,
	combout => \inst|text_buffer[21][7]~166_combout\);

-- Location: LCCOMB_X41_Y27_N16
\inst|text_buffer[21][7]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][7]~167_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[21][7]~166_combout\) # ((\inst|text_buffer[22][7]~147_combout\ & \inst|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][7]~147_combout\,
	datab => \inst|text_buffer[21][7]~166_combout\,
	datac => \KEY1~input_o\,
	datad => \inst|Decoder1~1_combout\,
	combout => \inst|text_buffer[21][7]~167_combout\);

-- Location: FF_X34_Y26_N9
\inst|text_buffer[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][7]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][7]~q\);

-- Location: LCCOMB_X39_Y27_N16
\inst|text_buffer[23][7]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[23][7]~213_combout\ = (\inst|buf_len\(4) & (!\inst|buf_len\(3) & (\inst|text_buffer[15][7]~104_combout\ & !\inst|buf_len\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(4),
	datab => \inst|buf_len\(3),
	datac => \inst|text_buffer[15][7]~104_combout\,
	datad => \inst|buf_len\(5),
	combout => \inst|text_buffer[23][7]~213_combout\);

-- Location: LCCOMB_X39_Y27_N26
\inst|text_buffer[23][7]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[23][7]~172_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[23][7]~213_combout\) # ((\inst|Decoder1~7_combout\ & \inst|text_buffer[22][7]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|Decoder1~7_combout\,
	datac => \inst|text_buffer[22][7]~147_combout\,
	datad => \inst|text_buffer[23][7]~213_combout\,
	combout => \inst|text_buffer[23][7]~172_combout\);

-- Location: FF_X34_Y26_N3
\inst|text_buffer[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][7]~q\);

-- Location: LCCOMB_X36_Y26_N28
\inst|text_buffer[19][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][7]~feeder_combout\ = \inst|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector0~6_combout\,
	combout => \inst|text_buffer[19][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N22
\inst|text_buffer[19][7]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][7]~156_combout\ = (\inst|text_buffer[51][7]~101_combout\ & (!\inst|buf_len\(5) & !\inst|buf_len\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|text_buffer[51][7]~101_combout\,
	datac => \inst|buf_len\(5),
	datad => \inst|buf_len\(3),
	combout => \inst|text_buffer[19][7]~156_combout\);

-- Location: LCCOMB_X41_Y27_N28
\inst|text_buffer[19][7]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][7]~157_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[19][7]~156_combout\) # ((\inst|text_buffer[22][7]~147_combout\ & \inst|Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][7]~156_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[22][7]~147_combout\,
	datad => \inst|Decoder1~6_combout\,
	combout => \inst|text_buffer[19][7]~157_combout\);

-- Location: FF_X36_Y26_N29
\inst|text_buffer[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][7]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][7]~q\);

-- Location: LCCOMB_X39_Y32_N26
\inst|text_buffer[17][7]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][7]~149_combout\ = (\inst|buf_len\(0) & (\inst|text_buffer[49][7]~66_combout\ & (\inst|text_buffer[22][7]~121_combout\ & \inst|buf_len[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buf_len\(0),
	datab => \inst|text_buffer[49][7]~66_combout\,
	datac => \inst|text_buffer[22][7]~121_combout\,
	datad => \inst|buf_len[6]~7_combout\,
	combout => \inst|text_buffer[17][7]~149_combout\);

-- Location: LCCOMB_X39_Y32_N20
\inst|text_buffer[17][7]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][7]~150_combout\ = (\KEY1~input_o\ & ((\inst|text_buffer[17][7]~149_combout\) # ((\inst|text_buffer[22][7]~147_combout\ & \inst|Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[17][7]~149_combout\,
	datab => \KEY1~input_o\,
	datac => \inst|text_buffer[22][7]~147_combout\,
	datad => \inst|Decoder1~0_combout\,
	combout => \inst|text_buffer[17][7]~150_combout\);

-- Location: FF_X36_Y26_N11
\inst|text_buffer[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][7]~q\);

-- Location: LCCOMB_X36_Y26_N10
\inst|Mux16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~12_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[19][7]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[17][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][7]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[17][7]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux16~12_combout\);

-- Location: LCCOMB_X34_Y26_N2
\inst|Mux16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~13_combout\ = (\inst|index\(2) & ((\inst|Mux16~12_combout\ & ((\inst|text_buffer[23][7]~q\))) # (!\inst|Mux16~12_combout\ & (\inst|text_buffer[21][7]~q\)))) # (!\inst|index\(2) & (((\inst|Mux16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[21][7]~q\,
	datac => \inst|text_buffer[23][7]~q\,
	datad => \inst|Mux16~12_combout\,
	combout => \inst|Mux16~13_combout\);

-- Location: LCCOMB_X39_Y30_N24
\inst|Mux16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~16_combout\ = (\inst|index\(0) & ((\inst|index\(3)) # ((\inst|Mux16~13_combout\)))) # (!\inst|index\(0) & (!\inst|index\(3) & (\inst|Mux16~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(3),
	datac => \inst|Mux16~15_combout\,
	datad => \inst|Mux16~13_combout\,
	combout => \inst|Mux16~16_combout\);

-- Location: LCCOMB_X39_Y30_N10
\inst|Mux16~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~19_combout\ = (\inst|index\(3) & ((\inst|Mux16~16_combout\ & (\inst|Mux16~18_combout\)) # (!\inst|Mux16~16_combout\ & ((\inst|Mux16~11_combout\))))) # (!\inst|index\(3) & (((\inst|Mux16~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~18_combout\,
	datab => \inst|index\(3),
	datac => \inst|Mux16~11_combout\,
	datad => \inst|Mux16~16_combout\,
	combout => \inst|Mux16~19_combout\);

-- Location: LCCOMB_X39_Y30_N16
\inst|Mux16~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~30_combout\ = (\inst|index\(5) & (\inst|index\(4))) # (!\inst|index\(5) & ((\inst|index\(4) & ((\inst|Mux16~19_combout\))) # (!\inst|index\(4) & (\inst|Mux16~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(4),
	datac => \inst|Mux16~29_combout\,
	datad => \inst|Mux16~19_combout\,
	combout => \inst|Mux16~30_combout\);

-- Location: LCCOMB_X36_Y30_N24
\inst|Mux16~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~41_combout\ = (\inst|index\(5) & ((\inst|Mux16~30_combout\ & (\inst|Mux16~40_combout\)) # (!\inst|Mux16~30_combout\ & ((\inst|Mux16~9_combout\))))) # (!\inst|index\(5) & (((\inst|Mux16~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux16~40_combout\,
	datac => \inst|Mux16~9_combout\,
	datad => \inst|Mux16~30_combout\,
	combout => \inst|Mux16~41_combout\);

-- Location: LCCOMB_X36_Y31_N24
\inst|u_spn_dec|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux5~2_combout\ = (((!\inst|u_spn_dec|Mux5~1_combout\ & \inst|Mux23~41_combout\)) # (!\inst|Mux17~41_combout\)) # (!\inst|Mux22~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datac => \inst|u_spn_dec|Mux5~1_combout\,
	datad => \inst|Mux23~41_combout\,
	combout => \inst|u_spn_dec|Mux5~2_combout\);

-- Location: LCCOMB_X36_Y31_N14
\inst|u_spn_dec|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux5~3_combout\ = (!\inst|Mux16~41_combout\ & ((\inst|u_spn_dec|Mux5~2_combout\) # ((!\inst|Mux23~41_combout\ & \inst|u_spn_dec|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|u_spn_dec|Mux5~0_combout\,
	datac => \inst|Mux16~41_combout\,
	datad => \inst|u_spn_dec|Mux5~2_combout\,
	combout => \inst|u_spn_dec|Mux5~3_combout\);

-- Location: LCCOMB_X36_Y31_N8
\inst|u_spn_dec|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux14~1_combout\ = (\inst|u_spn_dec|Mux2~0_combout\ & ((\inst|u_spn_dec|Mux5~3_combout\) # ((\inst|u_spn_dec|Mux0~5_combout\ & !\inst|u_spn_dec|Mux4~2_combout\)))) # (!\inst|u_spn_dec|Mux2~0_combout\ & ((\inst|u_spn_dec|Mux0~5_combout\ & 
-- (\inst|u_spn_dec|Mux5~3_combout\ & !\inst|u_spn_dec|Mux4~2_combout\)) # (!\inst|u_spn_dec|Mux0~5_combout\ & ((\inst|u_spn_dec|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux0~5_combout\,
	datab => \inst|u_spn_dec|Mux2~0_combout\,
	datac => \inst|u_spn_dec|Mux5~3_combout\,
	datad => \inst|u_spn_dec|Mux4~2_combout\,
	combout => \inst|u_spn_dec|Mux14~1_combout\);

-- Location: LCCOMB_X36_Y31_N10
\inst|u_spn_dec|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux14~0_combout\ = (\inst|u_spn_dec|Mux6~2_combout\ & (!\inst|u_spn_dec|Mux7~3_combout\ & \inst|u_spn_dec|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux6~2_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux1~3_combout\,
	combout => \inst|u_spn_dec|Mux14~0_combout\);

-- Location: LCCOMB_X36_Y31_N22
\inst|u_spn_dec|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux14~2_combout\ = (\inst|u_spn_dec|Mux5~3_combout\ & ((\inst|u_spn_dec|Mux3~2_combout\) # ((!\inst|u_spn_dec|Mux14~1_combout\ & \inst|u_spn_dec|Mux14~0_combout\)))) # (!\inst|u_spn_dec|Mux5~3_combout\ & (\inst|u_spn_dec|Mux3~2_combout\ & 
-- ((!\inst|u_spn_dec|Mux14~0_combout\) # (!\inst|u_spn_dec|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux5~3_combout\,
	datab => \inst|u_spn_dec|Mux3~2_combout\,
	datac => \inst|u_spn_dec|Mux14~1_combout\,
	datad => \inst|u_spn_dec|Mux14~0_combout\,
	combout => \inst|u_spn_dec|Mux14~2_combout\);

-- Location: LCCOMB_X34_Y31_N22
\inst|u_spn_dec|Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux17~2_combout\ = (\inst|u_spn_dec|Mux14~2_combout\) # ((!\inst|u_spn_dec|Mux9~1_combout\ & \inst|u_spn_dec|Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datac => \inst|u_spn_dec|Mux14~2_combout\,
	datad => \inst|u_spn_dec|Mux17~1_combout\,
	combout => \inst|u_spn_dec|Mux17~2_combout\);

-- Location: LCCOMB_X34_Y31_N30
\inst|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~3_combout\ = (\inst|Selector6~2_combout\ & (!\inst|u_spn_dec|Mux20~2_combout\ & ((\inst|u_spn_dec|Mux17~2_combout\) # (\inst|u_spn_dec|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux17~2_combout\,
	datab => \inst|Selector6~2_combout\,
	datac => \inst|u_spn_dec|Mux22~2_combout\,
	datad => \inst|u_spn_dec|Mux20~2_combout\,
	combout => \inst|Selector4~3_combout\);

-- Location: LCCOMB_X34_Y29_N12
\inst|u_spn_dec|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux28~0_combout\ = (\inst|u_spn_dec|Mux18~0_combout\ & (\inst|u_spn_dec|Mux16~3_combout\ & (!\inst|u_spn_dec|Mux19~2_combout\ & \inst|u_spn_dec|Mux21~2_combout\))) # (!\inst|u_spn_dec|Mux18~0_combout\ & (!\inst|u_spn_dec|Mux16~3_combout\ & 
-- (\inst|u_spn_dec|Mux19~2_combout\ & !\inst|u_spn_dec|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux16~3_combout\,
	datac => \inst|u_spn_dec|Mux19~2_combout\,
	datad => \inst|u_spn_dec|Mux21~2_combout\,
	combout => \inst|u_spn_dec|Mux28~0_combout\);

-- Location: LCCOMB_X34_Y29_N26
\inst|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~4_combout\ = (!\inst|u_spn_dec|Mux20~2_combout\ & (\inst|Selector6~2_combout\ & ((\inst|u_spn_dec|Mux23~3_combout\) # (!\inst|u_spn_dec|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux23~3_combout\,
	datab => \inst|u_spn_dec|Mux20~2_combout\,
	datac => \inst|Selector6~2_combout\,
	datad => \inst|u_spn_dec|Mux28~0_combout\,
	combout => \inst|Selector4~4_combout\);

-- Location: LCCOMB_X34_Y29_N8
\inst|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~5_combout\ = (\inst|Selector4~3_combout\) # ((\inst|Selector4~4_combout\ & ((!\inst|u_spn_dec|Mux29~1_combout\) # (!\inst|u_spn_dec|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~3_combout\,
	datab => \inst|u_spn_dec|Mux16~3_combout\,
	datac => \inst|Selector4~4_combout\,
	datad => \inst|u_spn_dec|Mux29~1_combout\,
	combout => \inst|Selector4~5_combout\);

-- Location: LCCOMB_X34_Y30_N24
\inst|u_spn|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux28~0_combout\ = (\inst|u_spn|Mux19~1_combout\ & (!\inst|u_spn|Mux23~3_combout\ & ((\inst|u_spn|Mux22~0_combout\) # (!\inst|u_spn|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux19~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|u_spn|Mux23~3_combout\,
	combout => \inst|u_spn|Mux28~0_combout\);

-- Location: LCCOMB_X34_Y30_N14
\inst|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|u_spn|Mux18~1_combout\) # (((!\inst|u_spn|Mux28~0_combout\) # (!\inst|u_spn|Mux16~1_combout\)) # (!\inst|u_spn|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux18~1_combout\,
	datab => \inst|u_spn|Mux21~1_combout\,
	datac => \inst|u_spn|Mux16~1_combout\,
	datad => \inst|u_spn|Mux28~0_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X34_Y29_N6
\inst|Selector4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~7_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|enc_mode~q\ & (!\inst|u_spn|Mux20~2_combout\ & \inst|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|enc_mode~q\,
	datac => \inst|u_spn|Mux20~2_combout\,
	datad => \inst|Selector4~2_combout\,
	combout => \inst|Selector4~7_combout\);

-- Location: LCCOMB_X34_Y29_N2
\inst|Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~6_combout\ = (\inst|Selector4~5_combout\) # ((\inst|Selector4~7_combout\) # ((!\inst|state.S_PROCESS~q\ & \inst|u_rx|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|u_rx|data_out\(3),
	datac => \inst|Selector4~5_combout\,
	datad => \inst|Selector4~7_combout\,
	combout => \inst|Selector4~6_combout\);

-- Location: LCCOMB_X37_Y26_N14
\inst|text_buffer[54][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[54][3]~feeder_combout\);

-- Location: FF_X37_Y26_N15
\inst|text_buffer[54][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][3]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][3]~q\);

-- Location: FF_X38_Y26_N5
\inst|text_buffer[52][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][3]~q\);

-- Location: LCCOMB_X36_Y25_N4
\inst|text_buffer[38][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[38][3]~feeder_combout\);

-- Location: FF_X36_Y25_N5
\inst|text_buffer[38][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][3]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][3]~q\);

-- Location: FF_X38_Y28_N25
\inst|text_buffer[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][3]~q\);

-- Location: LCCOMB_X38_Y28_N24
\inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[38][3]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[36][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[38][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[36][3]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X38_Y26_N4
\inst|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~1_combout\ = (\inst|index\(4) & ((\inst|Mux20~0_combout\ & (\inst|text_buffer[54][3]~q\)) # (!\inst|Mux20~0_combout\ & ((\inst|text_buffer[52][3]~q\))))) # (!\inst|index\(4) & (((\inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[54][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[52][3]~q\,
	datad => \inst|Mux20~0_combout\,
	combout => \inst|Mux20~1_combout\);

-- Location: LCCOMB_X38_Y26_N10
\inst|text_buffer[53][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[53][3]~feeder_combout\);

-- Location: FF_X38_Y26_N11
\inst|text_buffer[53][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][3]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][3]~q\);

-- Location: FF_X37_Y26_N1
\inst|text_buffer[55][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][3]~q\);

-- Location: LCCOMB_X40_Y27_N30
\inst|text_buffer[39][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[39][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[39][3]~feeder_combout\);

-- Location: FF_X40_Y27_N31
\inst|text_buffer[39][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[39][3]~feeder_combout\,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][3]~q\);

-- Location: FF_X40_Y26_N23
\inst|text_buffer[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][3]~q\);

-- Location: LCCOMB_X40_Y26_N22
\inst|Mux20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~7_combout\ = (\inst|index\(1) & ((\inst|text_buffer[39][3]~q\) # ((\inst|index\(4))))) # (!\inst|index\(1) & (((\inst|text_buffer[37][3]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[39][3]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[37][3]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux20~7_combout\);

-- Location: LCCOMB_X37_Y26_N0
\inst|Mux20~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~8_combout\ = (\inst|index\(4) & ((\inst|Mux20~7_combout\ & ((\inst|text_buffer[55][3]~q\))) # (!\inst|Mux20~7_combout\ & (\inst|text_buffer[53][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[53][3]~q\,
	datac => \inst|text_buffer[55][3]~q\,
	datad => \inst|Mux20~7_combout\,
	combout => \inst|Mux20~8_combout\);

-- Location: LCCOMB_X36_Y28_N2
\inst|text_buffer[35][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[35][3]~feeder_combout\);

-- Location: FF_X36_Y28_N3
\inst|text_buffer[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][3]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][3]~q\);

-- Location: FF_X37_Y28_N31
\inst|text_buffer[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][3]~q\);

-- Location: LCCOMB_X37_Y28_N30
\inst|Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~2_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[35][3]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[33][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[35][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[33][3]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux20~2_combout\);

-- Location: LCCOMB_X37_Y25_N22
\inst|text_buffer[49][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[49][3]~feeder_combout\);

-- Location: FF_X37_Y25_N23
\inst|text_buffer[49][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[49][3]~feeder_combout\,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][3]~q\);

-- Location: FF_X37_Y27_N15
\inst|text_buffer[51][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][3]~q\);

-- Location: LCCOMB_X37_Y27_N14
\inst|Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~3_combout\ = (\inst|Mux20~2_combout\ & (((\inst|text_buffer[51][3]~q\) # (!\inst|index\(4))))) # (!\inst|Mux20~2_combout\ & (\inst|text_buffer[49][3]~q\ & ((\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~2_combout\,
	datab => \inst|text_buffer[49][3]~q\,
	datac => \inst|text_buffer[51][3]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux20~3_combout\);

-- Location: LCCOMB_X36_Y25_N26
\inst|text_buffer[34][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[34][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[34][3]~feeder_combout\);

-- Location: FF_X36_Y25_N27
\inst|text_buffer[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[34][3]~feeder_combout\,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][3]~q\);

-- Location: FF_X38_Y28_N27
\inst|text_buffer[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][3]~q\);

-- Location: LCCOMB_X38_Y28_N26
\inst|Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~4_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[34][3]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[32][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[34][3]~q\,
	datac => \inst|text_buffer[32][3]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux20~4_combout\);

-- Location: FF_X37_Y27_N29
\inst|text_buffer[50][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][3]~q\);

-- Location: FF_X41_Y27_N27
\inst|text_buffer[48][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][3]~q\);

-- Location: LCCOMB_X37_Y27_N28
\inst|Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~5_combout\ = (\inst|index\(4) & ((\inst|Mux20~4_combout\ & (\inst|text_buffer[50][3]~q\)) # (!\inst|Mux20~4_combout\ & ((\inst|text_buffer[48][3]~q\))))) # (!\inst|index\(4) & (\inst|Mux20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Mux20~4_combout\,
	datac => \inst|text_buffer[50][3]~q\,
	datad => \inst|text_buffer[48][3]~q\,
	combout => \inst|Mux20~5_combout\);

-- Location: LCCOMB_X37_Y27_N26
\inst|Mux20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~6_combout\ = (\inst|index\(2) & (\inst|index\(0))) # (!\inst|index\(2) & ((\inst|index\(0) & (\inst|Mux20~3_combout\)) # (!\inst|index\(0) & ((\inst|Mux20~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|Mux20~3_combout\,
	datad => \inst|Mux20~5_combout\,
	combout => \inst|Mux20~6_combout\);

-- Location: LCCOMB_X37_Y30_N2
\inst|Mux20~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~9_combout\ = (\inst|index\(2) & ((\inst|Mux20~6_combout\ & ((\inst|Mux20~8_combout\))) # (!\inst|Mux20~6_combout\ & (\inst|Mux20~1_combout\)))) # (!\inst|index\(2) & (((\inst|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~1_combout\,
	datab => \inst|index\(2),
	datac => \inst|Mux20~8_combout\,
	datad => \inst|Mux20~6_combout\,
	combout => \inst|Mux20~9_combout\);

-- Location: LCCOMB_X42_Y30_N10
\inst|text_buffer[47][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[47][3]~feeder_combout\);

-- Location: FF_X42_Y30_N11
\inst|text_buffer[47][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[47][3]~feeder_combout\,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][3]~q\);

-- Location: FF_X38_Y30_N7
\inst|text_buffer[45][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][3]~q\);

-- Location: LCCOMB_X38_Y30_N6
\inst|Mux20~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~38_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[47][3]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[45][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[47][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[45][3]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux20~38_combout\);

-- Location: FF_X38_Y30_N9
\inst|text_buffer[61][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][3]~q\);

-- Location: FF_X34_Y29_N21
\inst|text_buffer[63][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][3]~q\);

-- Location: LCCOMB_X38_Y30_N8
\inst|Mux20~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~39_combout\ = (\inst|Mux20~38_combout\ & (((\inst|text_buffer[63][3]~q\)) # (!\inst|index\(4)))) # (!\inst|Mux20~38_combout\ & (\inst|index\(4) & (\inst|text_buffer[61][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~38_combout\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[61][3]~q\,
	datad => \inst|text_buffer[63][3]~q\,
	combout => \inst|Mux20~39_combout\);

-- Location: LCCOMB_X38_Y25_N0
\inst|text_buffer[57][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[57][3]~feeder_combout\);

-- Location: FF_X38_Y25_N1
\inst|text_buffer[57][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[57][3]~feeder_combout\,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][3]~q\);

-- Location: FF_X41_Y30_N11
\inst|text_buffer[59][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][3]~q\);

-- Location: LCCOMB_X42_Y30_N12
\inst|text_buffer[43][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[43][3]~feeder_combout\);

-- Location: FF_X42_Y30_N13
\inst|text_buffer[43][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][3]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][3]~q\);

-- Location: FF_X40_Y30_N13
\inst|text_buffer[41][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][3]~q\);

-- Location: LCCOMB_X40_Y30_N12
\inst|Mux20~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~31_combout\ = (\inst|index\(1) & ((\inst|text_buffer[43][3]~q\) # ((\inst|index\(4))))) # (!\inst|index\(1) & (((\inst|text_buffer[41][3]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[43][3]~q\,
	datac => \inst|text_buffer[41][3]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux20~31_combout\);

-- Location: LCCOMB_X41_Y30_N10
\inst|Mux20~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~32_combout\ = (\inst|index\(4) & ((\inst|Mux20~31_combout\ & ((\inst|text_buffer[59][3]~q\))) # (!\inst|Mux20~31_combout\ & (\inst|text_buffer[57][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[57][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[59][3]~q\,
	datad => \inst|Mux20~31_combout\,
	combout => \inst|Mux20~32_combout\);

-- Location: LCCOMB_X39_Y28_N10
\inst|text_buffer[60][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[60][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[60][3]~feeder_combout\);

-- Location: FF_X39_Y28_N11
\inst|text_buffer[60][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[60][3]~feeder_combout\,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][3]~q\);

-- Location: FF_X39_Y28_N25
\inst|text_buffer[62][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][3]~q\);

-- Location: LCCOMB_X40_Y29_N6
\inst|text_buffer[46][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[46][3]~feeder_combout\);

-- Location: FF_X40_Y29_N7
\inst|text_buffer[46][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[46][3]~feeder_combout\,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][3]~q\);

-- Location: FF_X38_Y29_N17
\inst|text_buffer[44][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][3]~q\);

-- Location: LCCOMB_X38_Y29_N16
\inst|Mux20~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~33_combout\ = (\inst|index\(1) & ((\inst|text_buffer[46][3]~q\) # ((\inst|index\(4))))) # (!\inst|index\(1) & (((\inst|text_buffer[44][3]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[46][3]~q\,
	datac => \inst|text_buffer[44][3]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux20~33_combout\);

-- Location: LCCOMB_X39_Y28_N24
\inst|Mux20~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~34_combout\ = (\inst|index\(4) & ((\inst|Mux20~33_combout\ & ((\inst|text_buffer[62][3]~q\))) # (!\inst|Mux20~33_combout\ & (\inst|text_buffer[60][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[60][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[62][3]~q\,
	datad => \inst|Mux20~33_combout\,
	combout => \inst|Mux20~34_combout\);

-- Location: LCCOMB_X43_Y29_N10
\inst|text_buffer[56][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[56][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[56][3]~feeder_combout\);

-- Location: FF_X43_Y29_N11
\inst|text_buffer[56][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[56][3]~feeder_combout\,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][3]~q\);

-- Location: FF_X39_Y29_N17
\inst|text_buffer[58][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][3]~q\);

-- Location: LCCOMB_X40_Y29_N8
\inst|text_buffer[42][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[42][3]~feeder_combout\);

-- Location: FF_X40_Y29_N9
\inst|text_buffer[42][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[42][3]~feeder_combout\,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][3]~q\);

-- Location: FF_X43_Y29_N13
\inst|text_buffer[40][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][3]~q\);

-- Location: LCCOMB_X43_Y29_N12
\inst|Mux20~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~35_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[42][3]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[40][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[42][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[40][3]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux20~35_combout\);

-- Location: LCCOMB_X39_Y29_N16
\inst|Mux20~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~36_combout\ = (\inst|index\(4) & ((\inst|Mux20~35_combout\ & ((\inst|text_buffer[58][3]~q\))) # (!\inst|Mux20~35_combout\ & (\inst|text_buffer[56][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[56][3]~q\,
	datac => \inst|text_buffer[58][3]~q\,
	datad => \inst|Mux20~35_combout\,
	combout => \inst|Mux20~36_combout\);

-- Location: LCCOMB_X38_Y30_N18
\inst|Mux20~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~37_combout\ = (\inst|index\(2) & ((\inst|Mux20~34_combout\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((!\inst|index\(0) & \inst|Mux20~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux20~34_combout\,
	datac => \inst|index\(0),
	datad => \inst|Mux20~36_combout\,
	combout => \inst|Mux20~37_combout\);

-- Location: LCCOMB_X38_Y30_N20
\inst|Mux20~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~40_combout\ = (\inst|index\(0) & ((\inst|Mux20~37_combout\ & (\inst|Mux20~39_combout\)) # (!\inst|Mux20~37_combout\ & ((\inst|Mux20~32_combout\))))) # (!\inst|index\(0) & (((\inst|Mux20~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux20~39_combout\,
	datac => \inst|Mux20~32_combout\,
	datad => \inst|Mux20~37_combout\,
	combout => \inst|Mux20~40_combout\);

-- Location: LCCOMB_X35_Y27_N4
\inst|text_buffer[25][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[25][3]~feeder_combout\);

-- Location: FF_X35_Y27_N5
\inst|text_buffer[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[25][3]~feeder_combout\,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][3]~q\);

-- Location: FF_X38_Y27_N9
\inst|text_buffer[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][3]~q\);

-- Location: FF_X35_Y30_N13
\inst|text_buffer[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][3]~q\);

-- Location: FF_X39_Y26_N7
\inst|text_buffer[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][3]~q\);

-- Location: LCCOMB_X39_Y26_N6
\inst|Mux20~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~10_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[28][3]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[24][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[28][3]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[24][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~10_combout\);

-- Location: LCCOMB_X38_Y27_N8
\inst|Mux20~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~11_combout\ = (\inst|index\(0) & ((\inst|Mux20~10_combout\ & ((\inst|text_buffer[29][3]~q\))) # (!\inst|Mux20~10_combout\ & (\inst|text_buffer[25][3]~q\)))) # (!\inst|index\(0) & (((\inst|Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[25][3]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[29][3]~q\,
	datad => \inst|Mux20~10_combout\,
	combout => \inst|Mux20~11_combout\);

-- Location: LCCOMB_X35_Y27_N30
\inst|text_buffer[27][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[27][3]~feeder_combout\);

-- Location: FF_X35_Y27_N31
\inst|text_buffer[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][3]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][3]~q\);

-- Location: FF_X42_Y29_N31
\inst|text_buffer[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][3]~q\);

-- Location: FF_X34_Y29_N3
\inst|text_buffer[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector4~6_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][3]~q\);

-- Location: FF_X42_Y29_N25
\inst|text_buffer[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][3]~q\);

-- Location: LCCOMB_X42_Y29_N24
\inst|Mux20~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~17_combout\ = (\inst|index\(2) & ((\inst|text_buffer[30][3]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[26][3]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[30][3]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[26][3]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux20~17_combout\);

-- Location: LCCOMB_X42_Y29_N30
\inst|Mux20~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~18_combout\ = (\inst|index\(0) & ((\inst|Mux20~17_combout\ & ((\inst|text_buffer[31][3]~q\))) # (!\inst|Mux20~17_combout\ & (\inst|text_buffer[27][3]~q\)))) # (!\inst|index\(0) & (((\inst|Mux20~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[27][3]~q\,
	datac => \inst|text_buffer[31][3]~q\,
	datad => \inst|Mux20~17_combout\,
	combout => \inst|Mux20~18_combout\);

-- Location: LCCOMB_X38_Y32_N22
\inst|text_buffer[12][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[12][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[12][3]~feeder_combout\);

-- Location: FF_X38_Y32_N23
\inst|text_buffer[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[12][3]~feeder_combout\,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][3]~q\);

-- Location: FF_X38_Y32_N1
\inst|text_buffer[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][3]~q\);

-- Location: LCCOMB_X38_Y31_N12
\inst|text_buffer[9][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[9][3]~feeder_combout\);

-- Location: FF_X38_Y31_N13
\inst|text_buffer[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[9][3]~feeder_combout\,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][3]~q\);

-- Location: FF_X38_Y31_N7
\inst|text_buffer[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][3]~q\);

-- Location: LCCOMB_X38_Y31_N6
\inst|Mux20~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~14_combout\ = (\inst|index\(0) & ((\inst|text_buffer[9][3]~q\) # ((\inst|index\(2))))) # (!\inst|index\(0) & (((\inst|text_buffer[8][3]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[9][3]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[8][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~14_combout\);

-- Location: LCCOMB_X38_Y32_N0
\inst|Mux20~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~15_combout\ = (\inst|index\(2) & ((\inst|Mux20~14_combout\ & ((\inst|text_buffer[13][3]~q\))) # (!\inst|Mux20~14_combout\ & (\inst|text_buffer[12][3]~q\)))) # (!\inst|index\(2) & (((\inst|Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[12][3]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[13][3]~q\,
	datad => \inst|Mux20~14_combout\,
	combout => \inst|Mux20~15_combout\);

-- Location: LCCOMB_X37_Y32_N16
\inst|text_buffer[14][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[14][3]~feeder_combout\);

-- Location: FF_X37_Y32_N17
\inst|text_buffer[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][3]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][3]~q\);

-- Location: FF_X37_Y32_N19
\inst|text_buffer[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][3]~q\);

-- Location: LCCOMB_X39_Y31_N20
\inst|text_buffer[11][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[11][3]~feeder_combout\);

-- Location: FF_X39_Y31_N21
\inst|text_buffer[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[11][3]~feeder_combout\,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][3]~q\);

-- Location: FF_X39_Y31_N3
\inst|text_buffer[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][3]~q\);

-- Location: LCCOMB_X39_Y31_N2
\inst|Mux20~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~12_combout\ = (\inst|index\(2) & (((\inst|index\(0))))) # (!\inst|index\(2) & ((\inst|index\(0) & (\inst|text_buffer[11][3]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[10][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[11][3]~q\,
	datac => \inst|text_buffer[10][3]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux20~12_combout\);

-- Location: LCCOMB_X37_Y32_N18
\inst|Mux20~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~13_combout\ = (\inst|index\(2) & ((\inst|Mux20~12_combout\ & ((\inst|text_buffer[15][3]~q\))) # (!\inst|Mux20~12_combout\ & (\inst|text_buffer[14][3]~q\)))) # (!\inst|index\(2) & (((\inst|Mux20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[14][3]~q\,
	datac => \inst|text_buffer[15][3]~q\,
	datad => \inst|Mux20~12_combout\,
	combout => \inst|Mux20~13_combout\);

-- Location: LCCOMB_X37_Y32_N28
\inst|Mux20~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~16_combout\ = (\inst|index\(1) & ((\inst|index\(4)) # ((\inst|Mux20~13_combout\)))) # (!\inst|index\(1) & (!\inst|index\(4) & (\inst|Mux20~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(4),
	datac => \inst|Mux20~15_combout\,
	datad => \inst|Mux20~13_combout\,
	combout => \inst|Mux20~16_combout\);

-- Location: LCCOMB_X37_Y30_N4
\inst|Mux20~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~19_combout\ = (\inst|index\(4) & ((\inst|Mux20~16_combout\ & ((\inst|Mux20~18_combout\))) # (!\inst|Mux20~16_combout\ & (\inst|Mux20~11_combout\)))) # (!\inst|index\(4) & (((\inst|Mux20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Mux20~11_combout\,
	datac => \inst|Mux20~18_combout\,
	datad => \inst|Mux20~16_combout\,
	combout => \inst|Mux20~19_combout\);

-- Location: LCCOMB_X34_Y25_N0
\inst|text_buffer[17][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[17][3]~feeder_combout\);

-- Location: FF_X34_Y25_N1
\inst|text_buffer[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[17][3]~feeder_combout\,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][3]~q\);

-- Location: FF_X34_Y26_N1
\inst|text_buffer[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][3]~q\);

-- Location: LCCOMB_X34_Y32_N26
\inst|text_buffer[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[5][3]~feeder_combout\);

-- Location: FF_X34_Y32_N27
\inst|text_buffer[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][3]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][3]~q\);

-- Location: FF_X34_Y28_N11
\inst|text_buffer[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][3]~q\);

-- Location: LCCOMB_X34_Y28_N10
\inst|Mux20~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~20_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[5][3]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[5][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[1][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~20_combout\);

-- Location: LCCOMB_X34_Y26_N0
\inst|Mux20~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~21_combout\ = (\inst|index\(4) & ((\inst|Mux20~20_combout\ & ((\inst|text_buffer[21][3]~q\))) # (!\inst|Mux20~20_combout\ & (\inst|text_buffer[17][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[17][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[21][3]~q\,
	datad => \inst|Mux20~20_combout\,
	combout => \inst|Mux20~21_combout\);

-- Location: LCCOMB_X36_Y26_N4
\inst|text_buffer[19][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[19][3]~feeder_combout\);

-- Location: FF_X36_Y26_N5
\inst|text_buffer[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][3]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][3]~q\);

-- Location: FF_X40_Y28_N15
\inst|text_buffer[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][3]~q\);

-- Location: LCCOMB_X35_Y32_N2
\inst|text_buffer[7][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[7][3]~feeder_combout\);

-- Location: FF_X35_Y32_N3
\inst|text_buffer[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[7][3]~feeder_combout\,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][3]~q\);

-- Location: FF_X36_Y32_N25
\inst|text_buffer[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][3]~q\);

-- Location: LCCOMB_X36_Y32_N24
\inst|Mux20~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~27_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[7][3]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[7][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[3][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~27_combout\);

-- Location: LCCOMB_X40_Y28_N14
\inst|Mux20~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~28_combout\ = (\inst|index\(4) & ((\inst|Mux20~27_combout\ & ((\inst|text_buffer[23][3]~q\))) # (!\inst|Mux20~27_combout\ & (\inst|text_buffer[19][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[23][3]~q\,
	datad => \inst|Mux20~27_combout\,
	combout => \inst|Mux20~28_combout\);

-- Location: LCCOMB_X35_Y25_N12
\inst|text_buffer[18][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[18][3]~feeder_combout\);

-- Location: FF_X35_Y25_N13
\inst|text_buffer[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][3]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][3]~q\);

-- Location: FF_X35_Y26_N9
\inst|text_buffer[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][3]~q\);

-- Location: LCCOMB_X35_Y32_N0
\inst|text_buffer[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[6][3]~feeder_combout\);

-- Location: FF_X35_Y32_N1
\inst|text_buffer[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][3]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][3]~q\);

-- Location: FF_X36_Y32_N31
\inst|text_buffer[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][3]~q\);

-- Location: LCCOMB_X36_Y32_N30
\inst|Mux20~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~22_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[6][3]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[6][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[2][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~22_combout\);

-- Location: LCCOMB_X35_Y26_N8
\inst|Mux20~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~23_combout\ = (\inst|index\(4) & ((\inst|Mux20~22_combout\ & ((\inst|text_buffer[22][3]~q\))) # (!\inst|Mux20~22_combout\ & (\inst|text_buffer[18][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[18][3]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[22][3]~q\,
	datad => \inst|Mux20~22_combout\,
	combout => \inst|Mux20~23_combout\);

-- Location: LCCOMB_X35_Y25_N10
\inst|text_buffer[16][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[16][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[16][3]~feeder_combout\);

-- Location: FF_X35_Y25_N11
\inst|text_buffer[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[16][3]~feeder_combout\,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][3]~q\);

-- Location: FF_X35_Y26_N23
\inst|text_buffer[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][3]~q\);

-- Location: LCCOMB_X34_Y32_N4
\inst|text_buffer[4][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][3]~feeder_combout\ = \inst|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector4~6_combout\,
	combout => \inst|text_buffer[4][3]~feeder_combout\);

-- Location: FF_X34_Y32_N5
\inst|text_buffer[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[4][3]~feeder_combout\,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][3]~q\);

-- Location: FF_X34_Y28_N13
\inst|text_buffer[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector4~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][3]~q\);

-- Location: LCCOMB_X34_Y28_N12
\inst|Mux20~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~24_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[4][3]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[4][3]~q\,
	datac => \inst|text_buffer[0][3]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux20~24_combout\);

-- Location: LCCOMB_X35_Y26_N22
\inst|Mux20~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~25_combout\ = (\inst|index\(4) & ((\inst|Mux20~24_combout\ & ((\inst|text_buffer[20][3]~q\))) # (!\inst|Mux20~24_combout\ & (\inst|text_buffer[16][3]~q\)))) # (!\inst|index\(4) & (((\inst|Mux20~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[16][3]~q\,
	datac => \inst|text_buffer[20][3]~q\,
	datad => \inst|Mux20~24_combout\,
	combout => \inst|Mux20~25_combout\);

-- Location: LCCOMB_X36_Y28_N20
\inst|Mux20~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~26_combout\ = (\inst|index\(0) & (\inst|index\(1))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|Mux20~23_combout\)) # (!\inst|index\(1) & ((\inst|Mux20~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(1),
	datac => \inst|Mux20~23_combout\,
	datad => \inst|Mux20~25_combout\,
	combout => \inst|Mux20~26_combout\);

-- Location: LCCOMB_X36_Y28_N18
\inst|Mux20~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~29_combout\ = (\inst|index\(0) & ((\inst|Mux20~26_combout\ & ((\inst|Mux20~28_combout\))) # (!\inst|Mux20~26_combout\ & (\inst|Mux20~21_combout\)))) # (!\inst|index\(0) & (((\inst|Mux20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux20~21_combout\,
	datab => \inst|index\(0),
	datac => \inst|Mux20~28_combout\,
	datad => \inst|Mux20~26_combout\,
	combout => \inst|Mux20~29_combout\);

-- Location: LCCOMB_X37_Y30_N6
\inst|Mux20~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~30_combout\ = (\inst|index\(5) & (\inst|index\(3))) # (!\inst|index\(5) & ((\inst|index\(3) & (\inst|Mux20~19_combout\)) # (!\inst|index\(3) & ((\inst|Mux20~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(3),
	datac => \inst|Mux20~19_combout\,
	datad => \inst|Mux20~29_combout\,
	combout => \inst|Mux20~30_combout\);

-- Location: LCCOMB_X37_Y30_N20
\inst|Mux20~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux20~41_combout\ = (\inst|index\(5) & ((\inst|Mux20~30_combout\ & ((\inst|Mux20~40_combout\))) # (!\inst|Mux20~30_combout\ & (\inst|Mux20~9_combout\)))) # (!\inst|index\(5) & (((\inst|Mux20~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux20~9_combout\,
	datac => \inst|Mux20~40_combout\,
	datad => \inst|Mux20~30_combout\,
	combout => \inst|Mux20~41_combout\);

-- Location: LCCOMB_X36_Y29_N18
\inst|u_spn_dec|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux1~4_combout\ = (!\inst|Mux23~41_combout\ & (\inst|u_spn_dec|Mux1~2_combout\ & (\inst|Mux20~41_combout\ & \inst|Mux16~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|u_spn_dec|Mux1~2_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux16~41_combout\,
	combout => \inst|u_spn_dec|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y29_N26
\inst|u_spn_dec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux2~0_combout\ = (\inst|Mux17~41_combout\) # ((!\inst|Mux22~41_combout\ & \inst|u_spn_dec|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datad => \inst|u_spn_dec|Mux1~4_combout\,
	combout => \inst|u_spn_dec|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y31_N30
\inst|u_spn_dec|Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~7_combout\ = (!\inst|u_spn_dec|Mux2~0_combout\ & (!\inst|u_spn_dec|Mux6~2_combout\ & ((\inst|u_spn_dec|Mux1~3_combout\) # (!\inst|u_spn_dec|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux2~0_combout\,
	datab => \inst|u_spn_dec|Mux6~2_combout\,
	datac => \inst|u_spn_dec|Mux8~3_combout\,
	datad => \inst|u_spn_dec|Mux1~3_combout\,
	combout => \inst|u_spn_dec|Mux8~7_combout\);

-- Location: LCCOMB_X36_Y31_N20
\inst|u_spn_dec|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~5_combout\ = (\inst|u_spn_dec|Mux3~2_combout\ & (!\inst|u_spn_dec|Mux0~5_combout\ & (!\inst|u_spn_dec|Mux5~3_combout\ & \inst|u_spn_dec|Mux4~2_combout\))) # (!\inst|u_spn_dec|Mux3~2_combout\ & (\inst|u_spn_dec|Mux5~3_combout\ & 
-- (\inst|u_spn_dec|Mux0~5_combout\ $ (!\inst|u_spn_dec|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux0~5_combout\,
	datab => \inst|u_spn_dec|Mux3~2_combout\,
	datac => \inst|u_spn_dec|Mux5~3_combout\,
	datad => \inst|u_spn_dec|Mux4~2_combout\,
	combout => \inst|u_spn_dec|Mux8~5_combout\);

-- Location: LCCOMB_X37_Y31_N26
\inst|u_spn_dec|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~4_combout\ = ((\inst|u_spn_dec|Mux0~5_combout\ & (\inst|u_spn_dec|Mux4~2_combout\)) # (!\inst|u_spn_dec|Mux0~5_combout\ & ((\inst|u_spn_dec|Mux6~2_combout\)))) # (!\inst|u_spn_dec|Mux8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux4~2_combout\,
	datab => \inst|u_spn_dec|Mux6~2_combout\,
	datac => \inst|u_spn_dec|Mux8~2_combout\,
	datad => \inst|u_spn_dec|Mux0~5_combout\,
	combout => \inst|u_spn_dec|Mux8~4_combout\);

-- Location: LCCOMB_X35_Y31_N18
\inst|u_spn_dec|Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~6_combout\ = (!\inst|u_spn_dec|Mux2~0_combout\ & ((\inst|u_spn_dec|Mux7~3_combout\ & ((\inst|u_spn_dec|Mux8~4_combout\))) # (!\inst|u_spn_dec|Mux7~3_combout\ & (!\inst|u_spn_dec|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux2~0_combout\,
	datab => \inst|u_spn_dec|Mux7~3_combout\,
	datac => \inst|u_spn_dec|Mux8~5_combout\,
	datad => \inst|u_spn_dec|Mux8~4_combout\,
	combout => \inst|u_spn_dec|Mux8~6_combout\);

-- Location: LCCOMB_X35_Y31_N24
\inst|u_spn_dec|Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux8~9_combout\ = (\inst|u_spn_dec|Mux8~8_combout\) # ((\inst|u_spn_dec|Mux8~7_combout\) # (\inst|u_spn_dec|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux8~8_combout\,
	datac => \inst|u_spn_dec|Mux8~7_combout\,
	datad => \inst|u_spn_dec|Mux8~6_combout\,
	combout => \inst|u_spn_dec|Mux8~9_combout\);

-- Location: LCCOMB_X35_Y33_N26
\inst|u_spn_dec|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux21~1_combout\ = (\inst|u_spn_dec|Mux13~3_combout\ & (\inst|u_spn_dec|Mux15~3_combout\ & (\inst|u_spn_dec|Mux12~3_combout\ & \inst|u_spn_dec|Mux11~2_combout\))) # (!\inst|u_spn_dec|Mux13~3_combout\ & (!\inst|u_spn_dec|Mux11~2_combout\ & 
-- (\inst|u_spn_dec|Mux15~3_combout\ $ (\inst|u_spn_dec|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux13~3_combout\,
	datac => \inst|u_spn_dec|Mux12~3_combout\,
	datad => \inst|u_spn_dec|Mux11~2_combout\,
	combout => \inst|u_spn_dec|Mux21~1_combout\);

-- Location: LCCOMB_X35_Y33_N28
\inst|u_spn_dec|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux21~0_combout\ = (\inst|u_spn_dec|Mux9~1_combout\ & (\inst|u_spn_dec|Mux10~0_combout\ $ (\inst|u_spn_dec|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux10~0_combout\,
	datac => \inst|u_spn_dec|Mux9~1_combout\,
	datad => \inst|u_spn_dec|Mux11~2_combout\,
	combout => \inst|u_spn_dec|Mux21~0_combout\);

-- Location: LCCOMB_X35_Y33_N4
\inst|u_spn_dec|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux21~2_combout\ = (!\inst|u_spn_dec|Mux8~9_combout\ & (((!\inst|u_spn_dec|Mux21~0_combout\) # (!\inst|u_spn_dec|Mux21~1_combout\)) # (!\inst|u_spn_dec|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux8~9_combout\,
	datab => \inst|u_spn_dec|Mux14~2_combout\,
	datac => \inst|u_spn_dec|Mux21~1_combout\,
	datad => \inst|u_spn_dec|Mux21~0_combout\,
	combout => \inst|u_spn_dec|Mux21~2_combout\);

-- Location: LCCOMB_X34_Y29_N20
\inst|Selector6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~9_combout\ = (\inst|state.S_PROCESS~q\ & (\inst|enc_mode~q\ & \inst|u_spn_dec|Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|enc_mode~q\,
	datad => \inst|u_spn_dec|Mux21~2_combout\,
	combout => \inst|Selector6~9_combout\);

-- Location: LCCOMB_X35_Y29_N26
\inst|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~3_combout\ = (!\inst|u_spn_dec|Mux17~2_combout\ & (!\inst|u_spn_dec|Mux22~2_combout\ & (!\inst|u_spn_dec|Mux20~2_combout\ & \inst|u_spn_dec|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux17~2_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|u_spn_dec|Mux16~3_combout\,
	combout => \inst|Selector3~3_combout\);

-- Location: LCCOMB_X35_Y28_N8
\inst|Selector7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~5_combout\ = (\inst|u_spn_dec|Mux23~3_combout\) # ((\inst|u_spn_dec|Mux19~2_combout\) # ((!\inst|Selector3~3_combout\) # (!\inst|u_spn_dec|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux23~3_combout\,
	datab => \inst|u_spn_dec|Mux19~2_combout\,
	datac => \inst|u_spn_dec|Mux18~0_combout\,
	datad => \inst|Selector3~3_combout\,
	combout => \inst|Selector7~5_combout\);

-- Location: LCCOMB_X34_Y30_N10
\inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst|u_spn|Mux21~1_combout\ & (\inst|Selector5~0_combout\ & !\inst|u_spn|Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn|Mux21~1_combout\,
	datac => \inst|Selector5~0_combout\,
	datad => \inst|u_spn|Mux23~3_combout\,
	combout => \inst|Selector3~2_combout\);

-- Location: LCCOMB_X34_Y30_N28
\inst|Selector7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~4_combout\ = \inst|u_spn|Mux22~0_combout\ $ (((!\inst|u_spn|Mux17~0_combout\ & (\inst|u_spn|Mux19~1_combout\ & \inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux19~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|Selector3~2_combout\,
	combout => \inst|Selector7~4_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst|u_spn_dec|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux31~0_combout\ = (\inst|u_spn_dec|Mux23~3_combout\ & (\inst|u_spn_dec|Mux22~2_combout\ & (!\inst|u_spn_dec|Mux16~3_combout\ & \inst|u_spn_dec|Mux17~2_combout\))) # (!\inst|u_spn_dec|Mux23~3_combout\ & (!\inst|u_spn_dec|Mux22~2_combout\ & 
-- (\inst|u_spn_dec|Mux16~3_combout\ & !\inst|u_spn_dec|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux23~3_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|u_spn_dec|Mux17~2_combout\,
	combout => \inst|u_spn_dec|Mux31~0_combout\);

-- Location: LCCOMB_X35_Y28_N2
\inst|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~3_combout\ = (\inst|u_spn_dec|Mux19~2_combout\ & (\inst|Selector0~0_combout\ & (\inst|u_spn_dec|Mux20~2_combout\ & \inst|u_spn_dec|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux19~2_combout\,
	datab => \inst|Selector0~0_combout\,
	datac => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|u_spn_dec|Mux31~0_combout\,
	combout => \inst|Selector7~3_combout\);

-- Location: LCCOMB_X35_Y28_N20
\inst|Selector7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~7_combout\ = (\inst|Selector7~3_combout\) # ((!\inst|enc_mode~q\ & (\inst|state.S_PROCESS~q\ & \inst|Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enc_mode~q\,
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|Selector7~4_combout\,
	datad => \inst|Selector7~3_combout\,
	combout => \inst|Selector7~7_combout\);

-- Location: LCCOMB_X35_Y28_N12
\inst|Selector7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~6_combout\ = (\inst|Selector7~2_combout\) # ((\inst|Selector7~7_combout\) # ((\inst|Selector6~9_combout\ & \inst|Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~2_combout\,
	datab => \inst|Selector6~9_combout\,
	datac => \inst|Selector7~5_combout\,
	datad => \inst|Selector7~7_combout\,
	combout => \inst|Selector7~6_combout\);

-- Location: LCCOMB_X38_Y26_N28
\inst|text_buffer[53][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[53][0]~feeder_combout\);

-- Location: FF_X38_Y26_N29
\inst|text_buffer[53][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][0]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][0]~q\);

-- Location: FF_X37_Y25_N25
\inst|text_buffer[49][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][0]~q\);

-- Location: LCCOMB_X40_Y30_N28
\inst|text_buffer[37][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[37][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[37][0]~feeder_combout\);

-- Location: FF_X40_Y30_N29
\inst|text_buffer[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[37][0]~feeder_combout\,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][0]~q\);

-- Location: FF_X37_Y28_N25
\inst|text_buffer[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][0]~q\);

-- Location: LCCOMB_X37_Y28_N24
\inst|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|index\(2) & ((\inst|text_buffer[37][0]~q\) # ((\inst|index\(4))))) # (!\inst|index\(2) & (((\inst|text_buffer[33][0]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[37][0]~q\,
	datac => \inst|text_buffer[33][0]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux23~0_combout\);

-- Location: LCCOMB_X37_Y25_N24
\inst|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~1_combout\ = (\inst|index\(4) & ((\inst|Mux23~0_combout\ & (\inst|text_buffer[53][0]~q\)) # (!\inst|Mux23~0_combout\ & ((\inst|text_buffer[49][0]~q\))))) # (!\inst|index\(4) & (((\inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[53][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[49][0]~q\,
	datad => \inst|Mux23~0_combout\,
	combout => \inst|Mux23~1_combout\);

-- Location: LCCOMB_X37_Y26_N6
\inst|text_buffer[55][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[55][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[55][0]~feeder_combout\);

-- Location: FF_X37_Y26_N7
\inst|text_buffer[55][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[55][0]~feeder_combout\,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][0]~q\);

-- Location: FF_X37_Y27_N23
\inst|text_buffer[51][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][0]~q\);

-- Location: FF_X40_Y27_N29
\inst|text_buffer[39][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][0]~q\);

-- Location: FF_X40_Y27_N7
\inst|text_buffer[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][0]~q\);

-- Location: LCCOMB_X40_Y27_N6
\inst|Mux23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~7_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[39][0]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[35][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[39][0]~q\,
	datac => \inst|text_buffer[35][0]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux23~7_combout\);

-- Location: LCCOMB_X37_Y27_N22
\inst|Mux23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~8_combout\ = (\inst|index\(4) & ((\inst|Mux23~7_combout\ & (\inst|text_buffer[55][0]~q\)) # (!\inst|Mux23~7_combout\ & ((\inst|text_buffer[51][0]~q\))))) # (!\inst|index\(4) & (((\inst|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[55][0]~q\,
	datac => \inst|text_buffer[51][0]~q\,
	datad => \inst|Mux23~7_combout\,
	combout => \inst|Mux23~8_combout\);

-- Location: LCCOMB_X39_Y26_N28
\inst|text_buffer[48][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[48][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[48][0]~feeder_combout\);

-- Location: FF_X39_Y26_N29
\inst|text_buffer[48][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[48][0]~feeder_combout\,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][0]~q\);

-- Location: FF_X38_Y26_N3
\inst|text_buffer[52][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][0]~q\);

-- Location: LCCOMB_X38_Y28_N8
\inst|text_buffer[36][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[36][0]~feeder_combout\);

-- Location: FF_X38_Y28_N9
\inst|text_buffer[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][0]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][0]~q\);

-- Location: FF_X38_Y28_N31
\inst|text_buffer[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][0]~q\);

-- Location: LCCOMB_X38_Y28_N30
\inst|Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~4_combout\ = (\inst|index\(4) & (((\inst|index\(2))))) # (!\inst|index\(4) & ((\inst|index\(2) & (\inst|text_buffer[36][0]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[32][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[36][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[32][0]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux23~4_combout\);

-- Location: LCCOMB_X38_Y26_N2
\inst|Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~5_combout\ = (\inst|index\(4) & ((\inst|Mux23~4_combout\ & ((\inst|text_buffer[52][0]~q\))) # (!\inst|Mux23~4_combout\ & (\inst|text_buffer[48][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[48][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[52][0]~q\,
	datad => \inst|Mux23~4_combout\,
	combout => \inst|Mux23~5_combout\);

-- Location: LCCOMB_X37_Y27_N16
\inst|text_buffer[50][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[50][0]~feeder_combout\);

-- Location: FF_X37_Y27_N17
\inst|text_buffer[50][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[50][0]~feeder_combout\,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][0]~q\);

-- Location: FF_X37_Y26_N25
\inst|text_buffer[54][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][0]~q\);

-- Location: FF_X36_Y25_N11
\inst|text_buffer[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][0]~q\);

-- Location: LCCOMB_X36_Y25_N28
\inst|text_buffer[38][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[38][0]~feeder_combout\);

-- Location: FF_X36_Y25_N29
\inst|text_buffer[38][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][0]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][0]~q\);

-- Location: LCCOMB_X36_Y25_N10
\inst|Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~2_combout\ = (\inst|index\(2) & ((\inst|index\(4)) # ((\inst|text_buffer[38][0]~q\)))) # (!\inst|index\(2) & (!\inst|index\(4) & (\inst|text_buffer[34][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(4),
	datac => \inst|text_buffer[34][0]~q\,
	datad => \inst|text_buffer[38][0]~q\,
	combout => \inst|Mux23~2_combout\);

-- Location: LCCOMB_X37_Y26_N24
\inst|Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~3_combout\ = (\inst|index\(4) & ((\inst|Mux23~2_combout\ & ((\inst|text_buffer[54][0]~q\))) # (!\inst|Mux23~2_combout\ & (\inst|text_buffer[50][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[50][0]~q\,
	datac => \inst|text_buffer[54][0]~q\,
	datad => \inst|Mux23~2_combout\,
	combout => \inst|Mux23~3_combout\);

-- Location: LCCOMB_X38_Y30_N28
\inst|Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~6_combout\ = (\inst|index\(1) & (((\inst|index\(0)) # (\inst|Mux23~3_combout\)))) # (!\inst|index\(1) & (\inst|Mux23~5_combout\ & (!\inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~5_combout\,
	datab => \inst|index\(1),
	datac => \inst|index\(0),
	datad => \inst|Mux23~3_combout\,
	combout => \inst|Mux23~6_combout\);

-- Location: LCCOMB_X38_Y30_N10
\inst|Mux23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~9_combout\ = (\inst|index\(0) & ((\inst|Mux23~6_combout\ & ((\inst|Mux23~8_combout\))) # (!\inst|Mux23~6_combout\ & (\inst|Mux23~1_combout\)))) # (!\inst|index\(0) & (((\inst|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~1_combout\,
	datab => \inst|index\(0),
	datac => \inst|Mux23~8_combout\,
	datad => \inst|Mux23~6_combout\,
	combout => \inst|Mux23~9_combout\);

-- Location: FF_X35_Y28_N13
\inst|text_buffer[63][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector7~6_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][0]~q\);

-- Location: FF_X38_Y30_N15
\inst|text_buffer[61][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][0]~q\);

-- Location: LCCOMB_X42_Y30_N18
\inst|text_buffer[47][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[47][0]~feeder_combout\);

-- Location: FF_X42_Y30_N19
\inst|text_buffer[47][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[47][0]~feeder_combout\,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][0]~q\);

-- Location: FF_X38_Y30_N17
\inst|text_buffer[45][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][0]~q\);

-- Location: LCCOMB_X38_Y30_N16
\inst|Mux23~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~38_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[47][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[45][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[47][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[45][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~38_combout\);

-- Location: LCCOMB_X38_Y30_N14
\inst|Mux23~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~39_combout\ = (\inst|index\(4) & ((\inst|Mux23~38_combout\ & (\inst|text_buffer[63][0]~q\)) # (!\inst|Mux23~38_combout\ & ((\inst|text_buffer[61][0]~q\))))) # (!\inst|index\(4) & (((\inst|Mux23~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[63][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[61][0]~q\,
	datad => \inst|Mux23~38_combout\,
	combout => \inst|Mux23~39_combout\);

-- Location: LCCOMB_X40_Y29_N24
\inst|text_buffer[46][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[46][0]~feeder_combout\);

-- Location: FF_X40_Y29_N25
\inst|text_buffer[46][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[46][0]~feeder_combout\,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][0]~q\);

-- Location: FF_X38_Y29_N25
\inst|text_buffer[44][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][0]~q\);

-- Location: LCCOMB_X38_Y29_N24
\inst|Mux23~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~31_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[46][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[44][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[46][0]~q\,
	datac => \inst|text_buffer[44][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~31_combout\);

-- Location: FF_X39_Y28_N13
\inst|text_buffer[60][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][0]~q\);

-- Location: LCCOMB_X39_Y28_N2
\inst|text_buffer[62][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[62][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[62][0]~feeder_combout\);

-- Location: FF_X39_Y28_N3
\inst|text_buffer[62][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[62][0]~feeder_combout\,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][0]~q\);

-- Location: LCCOMB_X39_Y28_N12
\inst|Mux23~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~32_combout\ = (\inst|Mux23~31_combout\ & (((\inst|text_buffer[62][0]~q\)) # (!\inst|index\(4)))) # (!\inst|Mux23~31_combout\ & (\inst|index\(4) & (\inst|text_buffer[60][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~31_combout\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[60][0]~q\,
	datad => \inst|text_buffer[62][0]~q\,
	combout => \inst|Mux23~32_combout\);

-- Location: FF_X40_Y28_N7
\inst|text_buffer[56][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][0]~q\);

-- Location: FF_X39_Y29_N27
\inst|text_buffer[58][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][0]~q\);

-- Location: LCCOMB_X40_Y29_N14
\inst|text_buffer[42][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[42][0]~feeder_combout\);

-- Location: FF_X40_Y29_N15
\inst|text_buffer[42][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[42][0]~feeder_combout\,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][0]~q\);

-- Location: FF_X38_Y29_N15
\inst|text_buffer[40][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][0]~q\);

-- Location: LCCOMB_X38_Y29_N14
\inst|Mux23~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~35_combout\ = (\inst|index\(1) & ((\inst|text_buffer[42][0]~q\) # ((\inst|index\(4))))) # (!\inst|index\(1) & (((\inst|text_buffer[40][0]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[42][0]~q\,
	datac => \inst|text_buffer[40][0]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux23~35_combout\);

-- Location: LCCOMB_X39_Y29_N26
\inst|Mux23~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~36_combout\ = (\inst|index\(4) & ((\inst|Mux23~35_combout\ & ((\inst|text_buffer[58][0]~q\))) # (!\inst|Mux23~35_combout\ & (\inst|text_buffer[56][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[56][0]~q\,
	datac => \inst|text_buffer[58][0]~q\,
	datad => \inst|Mux23~35_combout\,
	combout => \inst|Mux23~36_combout\);

-- Location: LCCOMB_X38_Y25_N28
\inst|text_buffer[57][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[57][0]~feeder_combout\);

-- Location: FF_X38_Y25_N29
\inst|text_buffer[57][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[57][0]~feeder_combout\,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][0]~q\);

-- Location: FF_X39_Y29_N21
\inst|text_buffer[59][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][0]~q\);

-- Location: LCCOMB_X42_Y30_N16
\inst|text_buffer[43][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[43][0]~feeder_combout\);

-- Location: FF_X42_Y30_N17
\inst|text_buffer[43][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][0]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][0]~q\);

-- Location: FF_X40_Y30_N31
\inst|text_buffer[41][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][0]~q\);

-- Location: LCCOMB_X40_Y30_N30
\inst|Mux23~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~33_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[43][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[41][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[43][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[41][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~33_combout\);

-- Location: LCCOMB_X39_Y29_N20
\inst|Mux23~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~34_combout\ = (\inst|index\(4) & ((\inst|Mux23~33_combout\ & ((\inst|text_buffer[59][0]~q\))) # (!\inst|Mux23~33_combout\ & (\inst|text_buffer[57][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[57][0]~q\,
	datac => \inst|text_buffer[59][0]~q\,
	datad => \inst|Mux23~33_combout\,
	combout => \inst|Mux23~34_combout\);

-- Location: LCCOMB_X38_Y30_N24
\inst|Mux23~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~37_combout\ = (\inst|index\(2) & (((\inst|index\(0))))) # (!\inst|index\(2) & ((\inst|index\(0) & ((\inst|Mux23~34_combout\))) # (!\inst|index\(0) & (\inst|Mux23~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux23~36_combout\,
	datac => \inst|index\(0),
	datad => \inst|Mux23~34_combout\,
	combout => \inst|Mux23~37_combout\);

-- Location: LCCOMB_X38_Y30_N26
\inst|Mux23~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~40_combout\ = (\inst|index\(2) & ((\inst|Mux23~37_combout\ & (\inst|Mux23~39_combout\)) # (!\inst|Mux23~37_combout\ & ((\inst|Mux23~32_combout\))))) # (!\inst|index\(2) & (((\inst|Mux23~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux23~39_combout\,
	datac => \inst|Mux23~32_combout\,
	datad => \inst|Mux23~37_combout\,
	combout => \inst|Mux23~40_combout\);

-- Location: LCCOMB_X35_Y27_N16
\inst|text_buffer[27][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[27][0]~feeder_combout\);

-- Location: FF_X35_Y27_N17
\inst|text_buffer[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][0]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][0]~q\);

-- Location: FF_X36_Y27_N13
\inst|text_buffer[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][0]~q\);

-- Location: LCCOMB_X39_Y31_N12
\inst|text_buffer[11][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[11][0]~feeder_combout\);

-- Location: FF_X39_Y31_N13
\inst|text_buffer[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[11][0]~feeder_combout\,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][0]~q\);

-- Location: FF_X39_Y31_N23
\inst|text_buffer[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][0]~q\);

-- Location: LCCOMB_X39_Y31_N22
\inst|Mux23~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~10_combout\ = (\inst|index\(4) & (((\inst|index\(0))))) # (!\inst|index\(4) & ((\inst|index\(0) & (\inst|text_buffer[11][0]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[10][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[11][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[10][0]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux23~10_combout\);

-- Location: LCCOMB_X36_Y27_N12
\inst|Mux23~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~11_combout\ = (\inst|index\(4) & ((\inst|Mux23~10_combout\ & (\inst|text_buffer[27][0]~q\)) # (!\inst|Mux23~10_combout\ & ((\inst|text_buffer[26][0]~q\))))) # (!\inst|index\(4) & (((\inst|Mux23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[27][0]~q\,
	datac => \inst|text_buffer[26][0]~q\,
	datad => \inst|Mux23~10_combout\,
	combout => \inst|Mux23~11_combout\);

-- Location: LCCOMB_X32_Y27_N20
\inst|text_buffer[30][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[30][0]~feeder_combout\);

-- Location: FF_X32_Y27_N21
\inst|text_buffer[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[30][0]~feeder_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][0]~q\);

-- Location: FF_X36_Y31_N13
\inst|text_buffer[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][0]~q\);

-- Location: FF_X37_Y32_N31
\inst|text_buffer[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][0]~q\);

-- Location: LCCOMB_X37_Y32_N20
\inst|text_buffer[15][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[15][0]~feeder_combout\);

-- Location: FF_X37_Y32_N21
\inst|text_buffer[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[15][0]~feeder_combout\,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][0]~q\);

-- Location: LCCOMB_X37_Y32_N30
\inst|Mux23~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~17_combout\ = (\inst|index\(4) & (\inst|index\(0))) # (!\inst|index\(4) & ((\inst|index\(0) & ((\inst|text_buffer[15][0]~q\))) # (!\inst|index\(0) & (\inst|text_buffer[14][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[14][0]~q\,
	datad => \inst|text_buffer[15][0]~q\,
	combout => \inst|Mux23~17_combout\);

-- Location: LCCOMB_X36_Y31_N12
\inst|Mux23~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~18_combout\ = (\inst|index\(4) & ((\inst|Mux23~17_combout\ & ((\inst|text_buffer[31][0]~q\))) # (!\inst|Mux23~17_combout\ & (\inst|text_buffer[30][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[30][0]~q\,
	datac => \inst|text_buffer[31][0]~q\,
	datad => \inst|Mux23~17_combout\,
	combout => \inst|Mux23~18_combout\);

-- Location: FF_X37_Y31_N25
\inst|text_buffer[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][0]~q\);

-- Location: FF_X38_Y27_N17
\inst|text_buffer[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][0]~q\);

-- Location: LCCOMB_X38_Y32_N8
\inst|text_buffer[13][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[13][0]~feeder_combout\);

-- Location: FF_X38_Y32_N9
\inst|text_buffer[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[13][0]~feeder_combout\,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][0]~q\);

-- Location: FF_X38_Y32_N31
\inst|text_buffer[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][0]~q\);

-- Location: LCCOMB_X38_Y32_N30
\inst|Mux23~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~12_combout\ = (\inst|index\(0) & ((\inst|text_buffer[13][0]~q\) # ((\inst|index\(4))))) # (!\inst|index\(0) & (((\inst|text_buffer[12][0]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[13][0]~q\,
	datac => \inst|text_buffer[12][0]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux23~12_combout\);

-- Location: LCCOMB_X38_Y27_N16
\inst|Mux23~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~13_combout\ = (\inst|index\(4) & ((\inst|Mux23~12_combout\ & ((\inst|text_buffer[29][0]~q\))) # (!\inst|Mux23~12_combout\ & (\inst|text_buffer[28][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[28][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[29][0]~q\,
	datad => \inst|Mux23~12_combout\,
	combout => \inst|Mux23~13_combout\);

-- Location: LCCOMB_X39_Y26_N22
\inst|text_buffer[24][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[24][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[24][0]~feeder_combout\);

-- Location: FF_X39_Y26_N23
\inst|text_buffer[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[24][0]~feeder_combout\,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][0]~q\);

-- Location: FF_X35_Y27_N15
\inst|text_buffer[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][0]~q\);

-- Location: LCCOMB_X38_Y31_N0
\inst|text_buffer[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[9][0]~feeder_combout\);

-- Location: FF_X38_Y31_N1
\inst|text_buffer[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[9][0]~feeder_combout\,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][0]~q\);

-- Location: FF_X38_Y31_N31
\inst|text_buffer[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][0]~q\);

-- Location: LCCOMB_X38_Y31_N30
\inst|Mux23~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~14_combout\ = (\inst|index\(4) & (((\inst|index\(0))))) # (!\inst|index\(4) & ((\inst|index\(0) & (\inst|text_buffer[9][0]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[9][0]~q\,
	datac => \inst|text_buffer[8][0]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux23~14_combout\);

-- Location: LCCOMB_X35_Y27_N14
\inst|Mux23~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~15_combout\ = (\inst|index\(4) & ((\inst|Mux23~14_combout\ & ((\inst|text_buffer[25][0]~q\))) # (!\inst|Mux23~14_combout\ & (\inst|text_buffer[24][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[24][0]~q\,
	datac => \inst|text_buffer[25][0]~q\,
	datad => \inst|Mux23~14_combout\,
	combout => \inst|Mux23~15_combout\);

-- Location: LCCOMB_X36_Y27_N6
\inst|Mux23~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~16_combout\ = (\inst|index\(2) & ((\inst|index\(1)) # ((\inst|Mux23~13_combout\)))) # (!\inst|index\(2) & (!\inst|index\(1) & ((\inst|Mux23~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|Mux23~13_combout\,
	datad => \inst|Mux23~15_combout\,
	combout => \inst|Mux23~16_combout\);

-- Location: LCCOMB_X36_Y27_N4
\inst|Mux23~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~19_combout\ = (\inst|index\(1) & ((\inst|Mux23~16_combout\ & ((\inst|Mux23~18_combout\))) # (!\inst|Mux23~16_combout\ & (\inst|Mux23~11_combout\)))) # (!\inst|index\(1) & (((\inst|Mux23~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~11_combout\,
	datab => \inst|index\(1),
	datac => \inst|Mux23~18_combout\,
	datad => \inst|Mux23~16_combout\,
	combout => \inst|Mux23~19_combout\);

-- Location: LCCOMB_X35_Y26_N10
\inst|text_buffer[22][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[22][0]~feeder_combout\);

-- Location: FF_X35_Y26_N11
\inst|text_buffer[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[22][0]~feeder_combout\,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][0]~q\);

-- Location: FF_X35_Y26_N29
\inst|text_buffer[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][0]~q\);

-- Location: LCCOMB_X35_Y32_N16
\inst|text_buffer[6][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[6][0]~feeder_combout\);

-- Location: FF_X35_Y32_N17
\inst|text_buffer[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][0]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][0]~q\);

-- Location: FF_X34_Y32_N9
\inst|text_buffer[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][0]~q\);

-- Location: LCCOMB_X34_Y32_N8
\inst|Mux23~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~20_combout\ = (\inst|index\(1) & ((\inst|text_buffer[6][0]~q\) # ((\inst|index\(4))))) # (!\inst|index\(1) & (((\inst|text_buffer[4][0]~q\ & !\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[6][0]~q\,
	datac => \inst|text_buffer[4][0]~q\,
	datad => \inst|index\(4),
	combout => \inst|Mux23~20_combout\);

-- Location: LCCOMB_X35_Y26_N28
\inst|Mux23~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~21_combout\ = (\inst|index\(4) & ((\inst|Mux23~20_combout\ & (\inst|text_buffer[22][0]~q\)) # (!\inst|Mux23~20_combout\ & ((\inst|text_buffer[20][0]~q\))))) # (!\inst|index\(4) & (((\inst|Mux23~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[20][0]~q\,
	datad => \inst|Mux23~20_combout\,
	combout => \inst|Mux23~21_combout\);

-- Location: LCCOMB_X34_Y26_N20
\inst|text_buffer[21][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[21][0]~feeder_combout\);

-- Location: FF_X34_Y26_N21
\inst|text_buffer[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][0]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][0]~q\);

-- Location: FF_X34_Y26_N11
\inst|text_buffer[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][0]~q\);

-- Location: LCCOMB_X35_Y32_N30
\inst|text_buffer[7][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[7][0]~feeder_combout\);

-- Location: FF_X35_Y32_N31
\inst|text_buffer[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[7][0]~feeder_combout\,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][0]~q\);

-- Location: FF_X34_Y32_N19
\inst|text_buffer[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][0]~q\);

-- Location: LCCOMB_X34_Y32_N18
\inst|Mux23~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~27_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[7][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[5][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[7][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[5][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~27_combout\);

-- Location: LCCOMB_X34_Y26_N10
\inst|Mux23~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~28_combout\ = (\inst|index\(4) & ((\inst|Mux23~27_combout\ & ((\inst|text_buffer[23][0]~q\))) # (!\inst|Mux23~27_combout\ & (\inst|text_buffer[21][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[21][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[23][0]~q\,
	datad => \inst|Mux23~27_combout\,
	combout => \inst|Mux23~28_combout\);

-- Location: LCCOMB_X35_Y25_N24
\inst|text_buffer[16][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[16][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[16][0]~feeder_combout\);

-- Location: FF_X35_Y25_N25
\inst|text_buffer[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[16][0]~feeder_combout\,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][0]~q\);

-- Location: FF_X35_Y25_N15
\inst|text_buffer[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][0]~q\);

-- Location: LCCOMB_X36_Y32_N14
\inst|text_buffer[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[2][0]~feeder_combout\);

-- Location: FF_X36_Y32_N15
\inst|text_buffer[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[2][0]~feeder_combout\,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][0]~q\);

-- Location: FF_X34_Y28_N23
\inst|text_buffer[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][0]~q\);

-- Location: LCCOMB_X34_Y28_N22
\inst|Mux23~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~24_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[2][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[2][0]~q\,
	datac => \inst|text_buffer[0][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~24_combout\);

-- Location: LCCOMB_X35_Y25_N14
\inst|Mux23~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~25_combout\ = (\inst|index\(4) & ((\inst|Mux23~24_combout\ & ((\inst|text_buffer[18][0]~q\))) # (!\inst|Mux23~24_combout\ & (\inst|text_buffer[16][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[16][0]~q\,
	datac => \inst|text_buffer[18][0]~q\,
	datad => \inst|Mux23~24_combout\,
	combout => \inst|Mux23~25_combout\);

-- Location: LCCOMB_X36_Y26_N12
\inst|text_buffer[17][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[17][0]~feeder_combout\);

-- Location: FF_X36_Y26_N13
\inst|text_buffer[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[17][0]~feeder_combout\,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][0]~q\);

-- Location: FF_X36_Y26_N31
\inst|text_buffer[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][0]~q\);

-- Location: LCCOMB_X36_Y32_N20
\inst|text_buffer[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][0]~feeder_combout\ = \inst|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector7~6_combout\,
	combout => \inst|text_buffer[3][0]~feeder_combout\);

-- Location: FF_X36_Y32_N21
\inst|text_buffer[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[3][0]~feeder_combout\,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][0]~q\);

-- Location: FF_X34_Y28_N5
\inst|text_buffer[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector7~6_combout\,
	sload => VCC,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][0]~q\);

-- Location: LCCOMB_X34_Y28_N4
\inst|Mux23~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~22_combout\ = (\inst|index\(4) & (((\inst|index\(1))))) # (!\inst|index\(4) & ((\inst|index\(1) & (\inst|text_buffer[3][0]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|text_buffer[3][0]~q\,
	datac => \inst|text_buffer[1][0]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux23~22_combout\);

-- Location: LCCOMB_X36_Y26_N30
\inst|Mux23~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~23_combout\ = (\inst|index\(4) & ((\inst|Mux23~22_combout\ & ((\inst|text_buffer[19][0]~q\))) # (!\inst|Mux23~22_combout\ & (\inst|text_buffer[17][0]~q\)))) # (!\inst|index\(4) & (((\inst|Mux23~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[17][0]~q\,
	datab => \inst|index\(4),
	datac => \inst|text_buffer[19][0]~q\,
	datad => \inst|Mux23~22_combout\,
	combout => \inst|Mux23~23_combout\);

-- Location: LCCOMB_X36_Y27_N10
\inst|Mux23~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~26_combout\ = (\inst|index\(2) & (\inst|index\(0))) # (!\inst|index\(2) & ((\inst|index\(0) & ((\inst|Mux23~23_combout\))) # (!\inst|index\(0) & (\inst|Mux23~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|Mux23~25_combout\,
	datad => \inst|Mux23~23_combout\,
	combout => \inst|Mux23~26_combout\);

-- Location: LCCOMB_X36_Y27_N0
\inst|Mux23~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~29_combout\ = (\inst|index\(2) & ((\inst|Mux23~26_combout\ & ((\inst|Mux23~28_combout\))) # (!\inst|Mux23~26_combout\ & (\inst|Mux23~21_combout\)))) # (!\inst|index\(2) & (((\inst|Mux23~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~21_combout\,
	datab => \inst|index\(2),
	datac => \inst|Mux23~28_combout\,
	datad => \inst|Mux23~26_combout\,
	combout => \inst|Mux23~29_combout\);

-- Location: LCCOMB_X36_Y27_N26
\inst|Mux23~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~30_combout\ = (\inst|index\(3) & ((\inst|index\(5)) # ((\inst|Mux23~19_combout\)))) # (!\inst|index\(3) & (!\inst|index\(5) & ((\inst|Mux23~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(5),
	datac => \inst|Mux23~19_combout\,
	datad => \inst|Mux23~29_combout\,
	combout => \inst|Mux23~30_combout\);

-- Location: LCCOMB_X36_Y30_N14
\inst|Mux23~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux23~41_combout\ = (\inst|index\(5) & ((\inst|Mux23~30_combout\ & ((\inst|Mux23~40_combout\))) # (!\inst|Mux23~30_combout\ & (\inst|Mux23~9_combout\)))) # (!\inst|index\(5) & (((\inst|Mux23~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~9_combout\,
	datab => \inst|index\(5),
	datac => \inst|Mux23~40_combout\,
	datad => \inst|Mux23~30_combout\,
	combout => \inst|Mux23~41_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst|u_spn|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux3~2_combout\ = \inst|Mux19~41_combout\ $ (((\inst|Mux22~41_combout\ & (!\inst|Mux23~41_combout\ & \inst|u_spn|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux22~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|u_spn|Mux3~1_combout\,
	combout => \inst|u_spn|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y30_N0
\inst|u_spn|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux15~1_combout\ = (\inst|u_spn|Mux5~1_combout\ & (\inst|u_spn|Mux7~3_combout\ & \inst|u_spn|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux5~1_combout\,
	datac => \inst|u_spn|Mux7~3_combout\,
	datad => \inst|u_spn|Mux15~0_combout\,
	combout => \inst|u_spn|Mux15~1_combout\);

-- Location: LCCOMB_X32_Y30_N14
\inst|u_spn|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux15~2_combout\ = (\inst|u_spn|Mux6~0_combout\ & (\inst|u_spn|Mux3~2_combout\ $ (((!\inst|u_spn|Mux1~1_combout\ & \inst|u_spn|Mux15~1_combout\))))) # (!\inst|u_spn|Mux6~0_combout\ & ((\inst|u_spn|Mux3~2_combout\) # 
-- ((\inst|u_spn|Mux1~1_combout\ & \inst|u_spn|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux6~0_combout\,
	datab => \inst|u_spn|Mux3~2_combout\,
	datac => \inst|u_spn|Mux1~1_combout\,
	datad => \inst|u_spn|Mux15~1_combout\,
	combout => \inst|u_spn|Mux15~2_combout\);

-- Location: LCCOMB_X32_Y30_N28
\inst|u_spn|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux21~0_combout\ = (\inst|u_spn|Mux13~1_combout\) # ((\inst|u_spn|Mux9~1_combout\ & ((!\inst|u_spn|Mux11~0_combout\) # (!\inst|u_spn|Mux14~1_combout\))) # (!\inst|u_spn|Mux9~1_combout\ & ((\inst|u_spn|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux9~1_combout\,
	datab => \inst|u_spn|Mux14~1_combout\,
	datac => \inst|u_spn|Mux13~1_combout\,
	datad => \inst|u_spn|Mux11~0_combout\,
	combout => \inst|u_spn|Mux21~0_combout\);

-- Location: LCCOMB_X32_Y30_N4
\inst|u_spn|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux21~1_combout\ = (\inst|u_spn|Mux15~2_combout\ & ((\inst|u_spn|Mux21~0_combout\) # (!\inst|u_spn|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn|Mux15~2_combout\,
	datac => \inst|u_spn|Mux23~0_combout\,
	datad => \inst|u_spn|Mux21~0_combout\,
	combout => \inst|u_spn|Mux21~1_combout\);

-- Location: LCCOMB_X34_Y30_N8
\inst|u_spn|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux24~0_combout\ = (\inst|u_spn|Mux23~3_combout\) # ((!\inst|u_spn|Mux22~0_combout\ & ((\inst|u_spn|Mux17~0_combout\) # (\inst|u_spn|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux19~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|u_spn|Mux23~3_combout\,
	combout => \inst|u_spn|Mux24~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\inst|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~3_combout\ = (\inst|Selector6~3_combout\ & (\inst|u_spn|Mux21~1_combout\ & ((\inst|u_spn|Mux24~0_combout\) # (!\inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~3_combout\,
	datab => \inst|u_spn|Mux21~1_combout\,
	datac => \inst|Selector5~0_combout\,
	datad => \inst|u_spn|Mux24~0_combout\,
	combout => \inst|Selector2~3_combout\);

-- Location: LCCOMB_X35_Y28_N22
\inst|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|u_spn_dec|Mux18~0_combout\) # (((!\inst|u_spn_dec|Mux25~0_combout\) # (!\inst|u_spn_dec|Mux20~2_combout\)) # (!\inst|u_spn_dec|Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|u_spn_dec|Mux25~0_combout\,
	combout => \inst|Selector2~2_combout\);

-- Location: LCCOMB_X35_Y28_N6
\inst|Selector2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~5_combout\ = (\inst|enc_mode~q\ & (\inst|state.S_PROCESS~q\ & (\inst|Selector2~2_combout\ & \inst|u_spn_dec|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enc_mode~q\,
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|Selector2~2_combout\,
	datad => \inst|u_spn_dec|Mux17~2_combout\,
	combout => \inst|Selector2~5_combout\);

-- Location: LCCOMB_X35_Y28_N30
\inst|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~4_combout\ = (\inst|Selector2~3_combout\) # ((\inst|Selector2~5_combout\) # ((\inst|u_rx|data_out\(5) & !\inst|state.S_PROCESS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|data_out\(5),
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|Selector2~3_combout\,
	datad => \inst|Selector2~5_combout\,
	combout => \inst|Selector2~4_combout\);

-- Location: LCCOMB_X40_Y29_N12
\inst|text_buffer[46][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[46][5]~feeder_combout\);

-- Location: FF_X40_Y29_N13
\inst|text_buffer[46][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[46][5]~feeder_combout\,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][5]~q\);

-- Location: FF_X38_Y29_N5
\inst|text_buffer[44][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][5]~q\);

-- Location: FF_X38_Y29_N19
\inst|text_buffer[40][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][5]~q\);

-- Location: LCCOMB_X40_Y29_N10
\inst|text_buffer[42][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[42][5]~feeder_combout\);

-- Location: FF_X40_Y29_N11
\inst|text_buffer[42][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[42][5]~feeder_combout\,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][5]~q\);

-- Location: LCCOMB_X38_Y29_N18
\inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|index\(1) & ((\inst|index\(2)) # ((\inst|text_buffer[42][5]~q\)))) # (!\inst|index\(1) & (!\inst|index\(2) & (\inst|text_buffer[40][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datac => \inst|text_buffer[40][5]~q\,
	datad => \inst|text_buffer[42][5]~q\,
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X38_Y29_N4
\inst|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|index\(2) & ((\inst|Mux18~0_combout\ & (\inst|text_buffer[46][5]~q\)) # (!\inst|Mux18~0_combout\ & ((\inst|text_buffer[44][5]~q\))))) # (!\inst|index\(2) & (((\inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[46][5]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[44][5]~q\,
	datad => \inst|Mux18~0_combout\,
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X42_Y30_N24
\inst|text_buffer[43][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[43][5]~feeder_combout\);

-- Location: FF_X42_Y30_N25
\inst|text_buffer[43][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][5]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][5]~q\);

-- Location: FF_X40_Y30_N11
\inst|text_buffer[41][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][5]~q\);

-- Location: LCCOMB_X40_Y30_N10
\inst|Mux18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~7_combout\ = (\inst|index\(1) & ((\inst|text_buffer[43][5]~q\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((\inst|text_buffer[41][5]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[43][5]~q\,
	datac => \inst|text_buffer[41][5]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux18~7_combout\);

-- Location: FF_X38_Y30_N31
\inst|text_buffer[45][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][5]~q\);

-- Location: LCCOMB_X42_Y30_N26
\inst|text_buffer[47][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[47][5]~feeder_combout\);

-- Location: FF_X42_Y30_N27
\inst|text_buffer[47][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[47][5]~feeder_combout\,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][5]~q\);

-- Location: LCCOMB_X38_Y30_N30
\inst|Mux18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~8_combout\ = (\inst|index\(2) & ((\inst|Mux18~7_combout\ & ((\inst|text_buffer[47][5]~q\))) # (!\inst|Mux18~7_combout\ & (\inst|text_buffer[45][5]~q\)))) # (!\inst|index\(2) & (\inst|Mux18~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux18~7_combout\,
	datac => \inst|text_buffer[45][5]~q\,
	datad => \inst|text_buffer[47][5]~q\,
	combout => \inst|Mux18~8_combout\);

-- Location: LCCOMB_X38_Y32_N4
\inst|text_buffer[12][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[12][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[12][5]~feeder_combout\);

-- Location: FF_X38_Y32_N5
\inst|text_buffer[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[12][5]~feeder_combout\,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][5]~q\);

-- Location: FF_X39_Y32_N23
\inst|text_buffer[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][5]~q\);

-- Location: FF_X39_Y32_N25
\inst|text_buffer[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][5]~q\);

-- Location: LCCOMB_X39_Y31_N26
\inst|text_buffer[10][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[10][5]~feeder_combout\);

-- Location: FF_X39_Y31_N27
\inst|text_buffer[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[10][5]~feeder_combout\,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][5]~q\);

-- Location: LCCOMB_X39_Y32_N24
\inst|Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~4_combout\ = (\inst|index\(2) & (\inst|index\(1))) # (!\inst|index\(2) & ((\inst|index\(1) & ((\inst|text_buffer[10][5]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[8][5]~q\,
	datad => \inst|text_buffer[10][5]~q\,
	combout => \inst|Mux18~4_combout\);

-- Location: LCCOMB_X39_Y32_N22
\inst|Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~5_combout\ = (\inst|index\(2) & ((\inst|Mux18~4_combout\ & ((\inst|text_buffer[14][5]~q\))) # (!\inst|Mux18~4_combout\ & (\inst|text_buffer[12][5]~q\)))) # (!\inst|index\(2) & (((\inst|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[12][5]~q\,
	datac => \inst|text_buffer[14][5]~q\,
	datad => \inst|Mux18~4_combout\,
	combout => \inst|Mux18~5_combout\);

-- Location: LCCOMB_X38_Y32_N2
\inst|text_buffer[13][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[13][5]~feeder_combout\);

-- Location: FF_X38_Y32_N3
\inst|text_buffer[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[13][5]~feeder_combout\,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][5]~q\);

-- Location: FF_X39_Y25_N1
\inst|text_buffer[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][5]~q\);

-- Location: LCCOMB_X39_Y31_N0
\inst|text_buffer[11][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[11][5]~feeder_combout\);

-- Location: FF_X39_Y31_N1
\inst|text_buffer[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[11][5]~feeder_combout\,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][5]~q\);

-- Location: FF_X38_Y31_N11
\inst|text_buffer[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][5]~q\);

-- Location: LCCOMB_X38_Y31_N10
\inst|Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~2_combout\ = (\inst|index\(1) & ((\inst|text_buffer[11][5]~q\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((\inst|text_buffer[9][5]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[11][5]~q\,
	datac => \inst|text_buffer[9][5]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux18~2_combout\);

-- Location: LCCOMB_X39_Y25_N0
\inst|Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~3_combout\ = (\inst|index\(2) & ((\inst|Mux18~2_combout\ & ((\inst|text_buffer[15][5]~q\))) # (!\inst|Mux18~2_combout\ & (\inst|text_buffer[13][5]~q\)))) # (!\inst|index\(2) & (((\inst|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][5]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[15][5]~q\,
	datad => \inst|Mux18~2_combout\,
	combout => \inst|Mux18~3_combout\);

-- Location: LCCOMB_X38_Y29_N0
\inst|Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~6_combout\ = (\inst|index\(0) & (((\inst|index\(5)) # (\inst|Mux18~3_combout\)))) # (!\inst|index\(0) & (\inst|Mux18~5_combout\ & (!\inst|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux18~5_combout\,
	datac => \inst|index\(5),
	datad => \inst|Mux18~3_combout\,
	combout => \inst|Mux18~6_combout\);

-- Location: LCCOMB_X38_Y29_N2
\inst|Mux18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~9_combout\ = (\inst|index\(5) & ((\inst|Mux18~6_combout\ & ((\inst|Mux18~8_combout\))) # (!\inst|Mux18~6_combout\ & (\inst|Mux18~1_combout\)))) # (!\inst|index\(5) & (((\inst|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux18~1_combout\,
	datac => \inst|Mux18~8_combout\,
	datad => \inst|Mux18~6_combout\,
	combout => \inst|Mux18~9_combout\);

-- Location: FF_X35_Y28_N11
\inst|text_buffer[63][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][5]~q\);

-- Location: FF_X39_Y29_N29
\inst|text_buffer[59][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][5]~q\);

-- Location: LCCOMB_X39_Y28_N0
\inst|text_buffer[62][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[62][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[62][5]~feeder_combout\);

-- Location: FF_X39_Y28_N1
\inst|text_buffer[62][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[62][5]~feeder_combout\,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][5]~q\);

-- Location: FF_X39_Y29_N11
\inst|text_buffer[58][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][5]~q\);

-- Location: LCCOMB_X39_Y29_N10
\inst|Mux18~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~38_combout\ = (\inst|index\(2) & ((\inst|text_buffer[62][5]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[58][5]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[62][5]~q\,
	datac => \inst|text_buffer[58][5]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux18~38_combout\);

-- Location: LCCOMB_X39_Y29_N28
\inst|Mux18~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~39_combout\ = (\inst|index\(0) & ((\inst|Mux18~38_combout\ & (\inst|text_buffer[63][5]~q\)) # (!\inst|Mux18~38_combout\ & ((\inst|text_buffer[59][5]~q\))))) # (!\inst|index\(0) & (((\inst|Mux18~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[63][5]~q\,
	datac => \inst|text_buffer[59][5]~q\,
	datad => \inst|Mux18~38_combout\,
	combout => \inst|Mux18~39_combout\);

-- Location: LCCOMB_X39_Y25_N18
\inst|text_buffer[61][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[61][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[61][5]~feeder_combout\);

-- Location: FF_X39_Y25_N19
\inst|text_buffer[61][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[61][5]~feeder_combout\,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][5]~q\);

-- Location: FF_X38_Y25_N25
\inst|text_buffer[57][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][5]~q\);

-- Location: FF_X38_Y25_N3
\inst|text_buffer[56][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][5]~q\);

-- Location: LCCOMB_X39_Y28_N22
\inst|text_buffer[60][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[60][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[60][5]~feeder_combout\);

-- Location: FF_X39_Y28_N23
\inst|text_buffer[60][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[60][5]~feeder_combout\,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][5]~q\);

-- Location: LCCOMB_X38_Y25_N2
\inst|Mux18~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~31_combout\ = (\inst|index\(0) & (\inst|index\(2))) # (!\inst|index\(0) & ((\inst|index\(2) & ((\inst|text_buffer[60][5]~q\))) # (!\inst|index\(2) & (\inst|text_buffer[56][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(2),
	datac => \inst|text_buffer[56][5]~q\,
	datad => \inst|text_buffer[60][5]~q\,
	combout => \inst|Mux18~31_combout\);

-- Location: LCCOMB_X38_Y25_N24
\inst|Mux18~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~32_combout\ = (\inst|index\(0) & ((\inst|Mux18~31_combout\ & (\inst|text_buffer[61][5]~q\)) # (!\inst|Mux18~31_combout\ & ((\inst|text_buffer[57][5]~q\))))) # (!\inst|index\(0) & (((\inst|Mux18~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[61][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[57][5]~q\,
	datad => \inst|Mux18~31_combout\,
	combout => \inst|Mux18~32_combout\);

-- Location: LCCOMB_X35_Y27_N6
\inst|text_buffer[25][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[25][5]~feeder_combout\);

-- Location: FF_X35_Y27_N7
\inst|text_buffer[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[25][5]~feeder_combout\,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][5]~q\);

-- Location: FF_X38_Y27_N27
\inst|text_buffer[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][5]~q\);

-- Location: FF_X34_Y30_N21
\inst|text_buffer[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][5]~q\);

-- Location: FF_X39_Y26_N1
\inst|text_buffer[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][5]~q\);

-- Location: LCCOMB_X39_Y26_N0
\inst|Mux18~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~35_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[28][5]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[24][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[28][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[24][5]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux18~35_combout\);

-- Location: LCCOMB_X38_Y27_N26
\inst|Mux18~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~36_combout\ = (\inst|index\(0) & ((\inst|Mux18~35_combout\ & ((\inst|text_buffer[29][5]~q\))) # (!\inst|Mux18~35_combout\ & (\inst|text_buffer[25][5]~q\)))) # (!\inst|index\(0) & (((\inst|Mux18~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[25][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[29][5]~q\,
	datad => \inst|Mux18~35_combout\,
	combout => \inst|Mux18~36_combout\);

-- Location: LCCOMB_X35_Y27_N8
\inst|text_buffer[27][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[27][5]~feeder_combout\);

-- Location: FF_X35_Y27_N9
\inst|text_buffer[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][5]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][5]~q\);

-- Location: FF_X38_Y27_N21
\inst|text_buffer[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][5]~q\);

-- Location: FF_X36_Y27_N9
\inst|text_buffer[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][5]~q\);

-- Location: LCCOMB_X32_Y27_N8
\inst|text_buffer[30][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[30][5]~feeder_combout\);

-- Location: FF_X32_Y27_N9
\inst|text_buffer[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[30][5]~feeder_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][5]~q\);

-- Location: LCCOMB_X36_Y27_N8
\inst|Mux18~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~33_combout\ = (\inst|index\(2) & ((\inst|index\(0)) # ((\inst|text_buffer[30][5]~q\)))) # (!\inst|index\(2) & (!\inst|index\(0) & (\inst|text_buffer[26][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[26][5]~q\,
	datad => \inst|text_buffer[30][5]~q\,
	combout => \inst|Mux18~33_combout\);

-- Location: LCCOMB_X38_Y27_N20
\inst|Mux18~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~34_combout\ = (\inst|index\(0) & ((\inst|Mux18~33_combout\ & ((\inst|text_buffer[31][5]~q\))) # (!\inst|Mux18~33_combout\ & (\inst|text_buffer[27][5]~q\)))) # (!\inst|index\(0) & (((\inst|Mux18~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[27][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[31][5]~q\,
	datad => \inst|Mux18~33_combout\,
	combout => \inst|Mux18~34_combout\);

-- Location: LCCOMB_X38_Y27_N28
\inst|Mux18~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~37_combout\ = (\inst|index\(5) & (\inst|index\(1))) # (!\inst|index\(5) & ((\inst|index\(1) & ((\inst|Mux18~34_combout\))) # (!\inst|index\(1) & (\inst|Mux18~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(1),
	datac => \inst|Mux18~36_combout\,
	datad => \inst|Mux18~34_combout\,
	combout => \inst|Mux18~37_combout\);

-- Location: LCCOMB_X38_Y27_N18
\inst|Mux18~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~40_combout\ = (\inst|index\(5) & ((\inst|Mux18~37_combout\ & (\inst|Mux18~39_combout\)) # (!\inst|Mux18~37_combout\ & ((\inst|Mux18~32_combout\))))) # (!\inst|index\(5) & (((\inst|Mux18~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux18~39_combout\,
	datac => \inst|Mux18~32_combout\,
	datad => \inst|Mux18~37_combout\,
	combout => \inst|Mux18~40_combout\);

-- Location: LCCOMB_X37_Y26_N4
\inst|text_buffer[54][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[54][5]~feeder_combout\);

-- Location: FF_X37_Y26_N5
\inst|text_buffer[54][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][5]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][5]~q\);

-- Location: FF_X37_Y26_N31
\inst|text_buffer[55][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][5]~q\);

-- Location: LCCOMB_X38_Y26_N0
\inst|text_buffer[53][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[53][5]~feeder_combout\);

-- Location: FF_X38_Y26_N1
\inst|text_buffer[53][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][5]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][5]~q\);

-- Location: FF_X38_Y26_N23
\inst|text_buffer[52][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][5]~q\);

-- Location: LCCOMB_X38_Y26_N22
\inst|Mux18~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~17_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[53][5]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[52][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[53][5]~q\,
	datac => \inst|text_buffer[52][5]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux18~17_combout\);

-- Location: LCCOMB_X37_Y26_N30
\inst|Mux18~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~18_combout\ = (\inst|index\(1) & ((\inst|Mux18~17_combout\ & ((\inst|text_buffer[55][5]~q\))) # (!\inst|Mux18~17_combout\ & (\inst|text_buffer[54][5]~q\)))) # (!\inst|index\(1) & (((\inst|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[54][5]~q\,
	datac => \inst|text_buffer[55][5]~q\,
	datad => \inst|Mux18~17_combout\,
	combout => \inst|Mux18~18_combout\);

-- Location: LCCOMB_X37_Y27_N20
\inst|text_buffer[51][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[51][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[51][5]~feeder_combout\);

-- Location: FF_X37_Y27_N21
\inst|text_buffer[51][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[51][5]~feeder_combout\,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][5]~q\);

-- Location: FF_X37_Y27_N31
\inst|text_buffer[50][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][5]~q\);

-- Location: LCCOMB_X37_Y25_N18
\inst|text_buffer[49][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[49][5]~feeder_combout\);

-- Location: FF_X37_Y25_N19
\inst|text_buffer[49][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[49][5]~feeder_combout\,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][5]~q\);

-- Location: FF_X37_Y25_N5
\inst|text_buffer[48][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][5]~q\);

-- Location: LCCOMB_X37_Y25_N4
\inst|Mux18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~10_combout\ = (\inst|index\(0) & ((\inst|text_buffer[49][5]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[48][5]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[48][5]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux18~10_combout\);

-- Location: LCCOMB_X37_Y27_N30
\inst|Mux18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~11_combout\ = (\inst|index\(1) & ((\inst|Mux18~10_combout\ & (\inst|text_buffer[51][5]~q\)) # (!\inst|Mux18~10_combout\ & ((\inst|text_buffer[50][5]~q\))))) # (!\inst|index\(1) & (((\inst|Mux18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[51][5]~q\,
	datac => \inst|text_buffer[50][5]~q\,
	datad => \inst|Mux18~10_combout\,
	combout => \inst|Mux18~11_combout\);

-- Location: LCCOMB_X35_Y26_N4
\inst|text_buffer[22][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[22][5]~feeder_combout\);

-- Location: FF_X35_Y26_N5
\inst|text_buffer[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[22][5]~feeder_combout\,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][5]~q\);

-- Location: FF_X34_Y26_N7
\inst|text_buffer[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][5]~q\);

-- Location: LCCOMB_X34_Y26_N24
\inst|text_buffer[21][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[21][5]~feeder_combout\);

-- Location: FF_X34_Y26_N25
\inst|text_buffer[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][5]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][5]~q\);

-- Location: FF_X35_Y26_N27
\inst|text_buffer[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][5]~q\);

-- Location: LCCOMB_X35_Y26_N26
\inst|Mux18~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~12_combout\ = (\inst|index\(0) & ((\inst|text_buffer[21][5]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[20][5]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[21][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[20][5]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux18~12_combout\);

-- Location: LCCOMB_X34_Y26_N6
\inst|Mux18~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~13_combout\ = (\inst|index\(1) & ((\inst|Mux18~12_combout\ & ((\inst|text_buffer[23][5]~q\))) # (!\inst|Mux18~12_combout\ & (\inst|text_buffer[22][5]~q\)))) # (!\inst|index\(1) & (((\inst|Mux18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][5]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[23][5]~q\,
	datad => \inst|Mux18~12_combout\,
	combout => \inst|Mux18~13_combout\);

-- Location: LCCOMB_X35_Y25_N28
\inst|text_buffer[18][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[18][5]~feeder_combout\);

-- Location: FF_X35_Y25_N29
\inst|text_buffer[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][5]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][5]~q\);

-- Location: FF_X36_Y26_N7
\inst|text_buffer[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][5]~q\);

-- Location: LCCOMB_X34_Y25_N18
\inst|text_buffer[17][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[17][5]~feeder_combout\);

-- Location: FF_X34_Y25_N19
\inst|text_buffer[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[17][5]~feeder_combout\,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][5]~q\);

-- Location: FF_X35_Y25_N27
\inst|text_buffer[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][5]~q\);

-- Location: LCCOMB_X35_Y25_N26
\inst|Mux18~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~14_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[17][5]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[16][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[17][5]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[16][5]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux18~14_combout\);

-- Location: LCCOMB_X36_Y26_N6
\inst|Mux18~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~15_combout\ = (\inst|index\(1) & ((\inst|Mux18~14_combout\ & ((\inst|text_buffer[19][5]~q\))) # (!\inst|Mux18~14_combout\ & (\inst|text_buffer[18][5]~q\)))) # (!\inst|index\(1) & (((\inst|Mux18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[18][5]~q\,
	datac => \inst|text_buffer[19][5]~q\,
	datad => \inst|Mux18~14_combout\,
	combout => \inst|Mux18~15_combout\);

-- Location: LCCOMB_X36_Y26_N16
\inst|Mux18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~16_combout\ = (\inst|index\(2) & ((\inst|index\(5)) # ((\inst|Mux18~13_combout\)))) # (!\inst|index\(2) & (!\inst|index\(5) & ((\inst|Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(5),
	datac => \inst|Mux18~13_combout\,
	datad => \inst|Mux18~15_combout\,
	combout => \inst|Mux18~16_combout\);

-- Location: LCCOMB_X36_Y26_N22
\inst|Mux18~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~19_combout\ = (\inst|index\(5) & ((\inst|Mux18~16_combout\ & (\inst|Mux18~18_combout\)) # (!\inst|Mux18~16_combout\ & ((\inst|Mux18~11_combout\))))) # (!\inst|index\(5) & (((\inst|Mux18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~18_combout\,
	datab => \inst|Mux18~11_combout\,
	datac => \inst|index\(5),
	datad => \inst|Mux18~16_combout\,
	combout => \inst|Mux18~19_combout\);

-- Location: LCCOMB_X36_Y28_N28
\inst|text_buffer[35][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[35][5]~feeder_combout\);

-- Location: FF_X36_Y28_N29
\inst|text_buffer[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][5]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][5]~q\);

-- Location: FF_X36_Y28_N31
\inst|text_buffer[39][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][5]~q\);

-- Location: FF_X36_Y25_N7
\inst|text_buffer[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][5]~q\);

-- Location: LCCOMB_X36_Y25_N20
\inst|text_buffer[38][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[38][5]~feeder_combout\);

-- Location: FF_X36_Y25_N21
\inst|text_buffer[38][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][5]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][5]~q\);

-- Location: LCCOMB_X36_Y25_N6
\inst|Mux18~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~27_combout\ = (\inst|index\(2) & ((\inst|index\(0)) # ((\inst|text_buffer[38][5]~q\)))) # (!\inst|index\(2) & (!\inst|index\(0) & (\inst|text_buffer[34][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[34][5]~q\,
	datad => \inst|text_buffer[38][5]~q\,
	combout => \inst|Mux18~27_combout\);

-- Location: LCCOMB_X36_Y28_N30
\inst|Mux18~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~28_combout\ = (\inst|index\(0) & ((\inst|Mux18~27_combout\ & ((\inst|text_buffer[39][5]~q\))) # (!\inst|Mux18~27_combout\ & (\inst|text_buffer[35][5]~q\)))) # (!\inst|index\(0) & (((\inst|Mux18~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[35][5]~q\,
	datac => \inst|text_buffer[39][5]~q\,
	datad => \inst|Mux18~27_combout\,
	combout => \inst|Mux18~28_combout\);

-- Location: LCCOMB_X38_Y28_N4
\inst|text_buffer[36][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[36][5]~feeder_combout\);

-- Location: FF_X38_Y28_N5
\inst|text_buffer[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][5]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][5]~q\);

-- Location: FF_X38_Y28_N15
\inst|text_buffer[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][5]~q\);

-- Location: LCCOMB_X38_Y28_N14
\inst|Mux18~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~20_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[36][5]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[32][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[36][5]~q\,
	datac => \inst|text_buffer[32][5]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux18~20_combout\);

-- Location: LCCOMB_X37_Y28_N28
\inst|text_buffer[37][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[37][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[37][5]~feeder_combout\);

-- Location: FF_X37_Y28_N29
\inst|text_buffer[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[37][5]~feeder_combout\,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][5]~q\);

-- Location: FF_X37_Y28_N23
\inst|text_buffer[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][5]~q\);

-- Location: LCCOMB_X37_Y28_N22
\inst|Mux18~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~21_combout\ = (\inst|Mux18~20_combout\ & ((\inst|text_buffer[37][5]~q\) # ((!\inst|index\(0))))) # (!\inst|Mux18~20_combout\ & (((\inst|text_buffer[33][5]~q\ & \inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~20_combout\,
	datab => \inst|text_buffer[37][5]~q\,
	datac => \inst|text_buffer[33][5]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux18~21_combout\);

-- Location: LCCOMB_X36_Y32_N22
\inst|text_buffer[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[3][5]~feeder_combout\);

-- Location: FF_X36_Y32_N23
\inst|text_buffer[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[3][5]~feeder_combout\,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][5]~q\);

-- Location: FF_X35_Y32_N15
\inst|text_buffer[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][5]~q\);

-- Location: LCCOMB_X35_Y32_N4
\inst|text_buffer[6][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[6][5]~feeder_combout\);

-- Location: FF_X35_Y32_N5
\inst|text_buffer[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][5]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][5]~q\);

-- Location: FF_X36_Y32_N29
\inst|text_buffer[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][5]~q\);

-- Location: LCCOMB_X36_Y32_N28
\inst|Mux18~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~22_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[6][5]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[6][5]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[2][5]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux18~22_combout\);

-- Location: LCCOMB_X35_Y32_N14
\inst|Mux18~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~23_combout\ = (\inst|index\(0) & ((\inst|Mux18~22_combout\ & ((\inst|text_buffer[7][5]~q\))) # (!\inst|Mux18~22_combout\ & (\inst|text_buffer[3][5]~q\)))) # (!\inst|index\(0) & (((\inst|Mux18~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[3][5]~q\,
	datac => \inst|text_buffer[7][5]~q\,
	datad => \inst|Mux18~22_combout\,
	combout => \inst|Mux18~23_combout\);

-- Location: LCCOMB_X34_Y28_N2
\inst|text_buffer[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[1][5]~feeder_combout\);

-- Location: FF_X34_Y28_N3
\inst|text_buffer[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[1][5]~feeder_combout\,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][5]~q\);

-- Location: FF_X41_Y28_N17
\inst|text_buffer[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][5]~q\);

-- Location: LCCOMB_X34_Y32_N16
\inst|text_buffer[4][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][5]~feeder_combout\ = \inst|Selector2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector2~4_combout\,
	combout => \inst|text_buffer[4][5]~feeder_combout\);

-- Location: FF_X34_Y32_N17
\inst|text_buffer[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[4][5]~feeder_combout\,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][5]~q\);

-- Location: FF_X34_Y28_N25
\inst|text_buffer[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector2~4_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][5]~q\);

-- Location: LCCOMB_X34_Y28_N24
\inst|Mux18~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~24_combout\ = (\inst|index\(2) & ((\inst|text_buffer[4][5]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[0][5]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[4][5]~q\,
	datac => \inst|text_buffer[0][5]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux18~24_combout\);

-- Location: LCCOMB_X41_Y28_N16
\inst|Mux18~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~25_combout\ = (\inst|index\(0) & ((\inst|Mux18~24_combout\ & ((\inst|text_buffer[5][5]~q\))) # (!\inst|Mux18~24_combout\ & (\inst|text_buffer[1][5]~q\)))) # (!\inst|index\(0) & (((\inst|Mux18~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[1][5]~q\,
	datac => \inst|text_buffer[5][5]~q\,
	datad => \inst|Mux18~24_combout\,
	combout => \inst|Mux18~25_combout\);

-- Location: LCCOMB_X37_Y28_N6
\inst|Mux18~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~26_combout\ = (\inst|index\(5) & (\inst|index\(1))) # (!\inst|index\(5) & ((\inst|index\(1) & (\inst|Mux18~23_combout\)) # (!\inst|index\(1) & ((\inst|Mux18~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(1),
	datac => \inst|Mux18~23_combout\,
	datad => \inst|Mux18~25_combout\,
	combout => \inst|Mux18~26_combout\);

-- Location: LCCOMB_X37_Y28_N0
\inst|Mux18~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~29_combout\ = (\inst|index\(5) & ((\inst|Mux18~26_combout\ & (\inst|Mux18~28_combout\)) # (!\inst|Mux18~26_combout\ & ((\inst|Mux18~21_combout\))))) # (!\inst|index\(5) & (((\inst|Mux18~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux18~28_combout\,
	datac => \inst|Mux18~21_combout\,
	datad => \inst|Mux18~26_combout\,
	combout => \inst|Mux18~29_combout\);

-- Location: LCCOMB_X37_Y29_N26
\inst|Mux18~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~30_combout\ = (\inst|index\(4) & ((\inst|index\(3)) # ((\inst|Mux18~19_combout\)))) # (!\inst|index\(4) & (!\inst|index\(3) & ((\inst|Mux18~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|Mux18~19_combout\,
	datad => \inst|Mux18~29_combout\,
	combout => \inst|Mux18~30_combout\);

-- Location: LCCOMB_X37_Y29_N30
\inst|Mux18~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux18~41_combout\ = (\inst|index\(3) & ((\inst|Mux18~30_combout\ & ((\inst|Mux18~40_combout\))) # (!\inst|Mux18~30_combout\ & (\inst|Mux18~9_combout\)))) # (!\inst|index\(3) & (((\inst|Mux18~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~9_combout\,
	datab => \inst|index\(3),
	datac => \inst|Mux18~40_combout\,
	datad => \inst|Mux18~30_combout\,
	combout => \inst|Mux18~41_combout\);

-- Location: LCCOMB_X31_Y30_N12
\inst|u_spn|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux12~0_combout\ = (\inst|u_spn|Mux0~1_combout\ & ((\inst|Mux18~41_combout\) # ((!\inst|Mux17~41_combout\ & \inst|u_spn|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datac => \inst|u_spn|Mux0~1_combout\,
	datad => \inst|u_spn|Mux1~0_combout\,
	combout => \inst|u_spn|Mux12~0_combout\);

-- Location: LCCOMB_X31_Y30_N0
\inst|u_spn|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux12~1_combout\ = (\inst|u_spn|Mux7~3_combout\ & (\inst|u_spn|Mux3~2_combout\ & ((!\inst|u_spn|Mux6~0_combout\) # (!\inst|u_spn|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux7~3_combout\,
	datab => \inst|u_spn|Mux1~1_combout\,
	datac => \inst|u_spn|Mux3~2_combout\,
	datad => \inst|u_spn|Mux6~0_combout\,
	combout => \inst|u_spn|Mux12~1_combout\);

-- Location: LCCOMB_X31_Y30_N6
\inst|u_spn|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux12~2_combout\ = (!\inst|u_spn|Mux4~1_combout\ & (((!\inst|u_spn|Mux12~1_combout\) # (!\inst|u_spn|Mux5~1_combout\)) # (!\inst|u_spn|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux12~0_combout\,
	datab => \inst|u_spn|Mux4~1_combout\,
	datac => \inst|u_spn|Mux5~1_combout\,
	datad => \inst|u_spn|Mux12~1_combout\,
	combout => \inst|u_spn|Mux12~2_combout\);

-- Location: LCCOMB_X31_Y30_N8
\inst|u_spn|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux16~0_combout\ = (\inst|u_spn|Mux15~2_combout\ & ((\inst|u_spn|Mux14~1_combout\) # ((\inst|u_spn|Mux11~0_combout\ & !\inst|u_spn|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux14~1_combout\,
	datab => \inst|u_spn|Mux11~0_combout\,
	datac => \inst|u_spn|Mux15~2_combout\,
	datad => \inst|u_spn|Mux9~1_combout\,
	combout => \inst|u_spn|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y30_N22
\inst|u_spn|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux16~1_combout\ = (!\inst|u_spn|Mux13~1_combout\ & (((!\inst|u_spn|Mux20~0_combout\) # (!\inst|u_spn|Mux16~0_combout\)) # (!\inst|u_spn|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux12~2_combout\,
	datab => \inst|u_spn|Mux13~1_combout\,
	datac => \inst|u_spn|Mux16~0_combout\,
	datad => \inst|u_spn|Mux20~0_combout\,
	combout => \inst|u_spn|Mux16~1_combout\);

-- Location: LCCOMB_X34_Y30_N16
\inst|u_spn|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux26~0_combout\ = (!\inst|u_spn|Mux17~0_combout\ & (!\inst|u_spn|Mux20~2_combout\ & (!\inst|u_spn|Mux22~0_combout\ & !\inst|u_spn|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux20~2_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|u_spn|Mux19~1_combout\,
	combout => \inst|u_spn|Mux26~0_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst|u_spn|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux26~1_combout\ = (!\inst|u_spn|Mux23~3_combout\ & (\inst|u_spn|Mux21~1_combout\ & \inst|u_spn|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux23~3_combout\,
	datab => \inst|u_spn|Mux21~1_combout\,
	datad => \inst|u_spn|Mux26~0_combout\,
	combout => \inst|u_spn|Mux26~1_combout\);

-- Location: LCCOMB_X35_Y28_N26
\inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector6~3_combout\ & (\inst|u_spn|Mux16~1_combout\ & ((\inst|u_spn|Mux18~1_combout\) # (!\inst|u_spn|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~3_combout\,
	datab => \inst|u_spn|Mux16~1_combout\,
	datac => \inst|u_spn|Mux18~1_combout\,
	datad => \inst|u_spn|Mux26~1_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y28_N16
\inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|u_spn_dec|Mux22~2_combout\ & (\inst|Selector6~2_combout\ & ((\inst|u_spn_dec|Mux18~0_combout\) # (!\inst|u_spn_dec|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|Selector6~2_combout\,
	datad => \inst|u_spn_dec|Mux25~1_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y28_N14
\inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst|Selector1~1_combout\) # ((\inst|Selector1~0_combout\) # ((\inst|u_rx|data_out\(6) & !\inst|state.S_PROCESS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|data_out\(6),
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|Selector1~1_combout\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~2_combout\);

-- Location: FF_X35_Y28_N15
\inst|text_buffer[63][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector1~2_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][6]~q\);

-- Location: FF_X39_Y25_N29
\inst|text_buffer[61][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][6]~q\);

-- Location: FF_X38_Y25_N31
\inst|text_buffer[57][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][6]~q\);

-- Location: FF_X39_Y27_N9
\inst|text_buffer[59][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][6]~q\);

-- Location: LCCOMB_X38_Y25_N30
\inst|Mux17~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~38_combout\ = (\inst|index\(1) & ((\inst|index\(2)) # ((\inst|text_buffer[59][6]~q\)))) # (!\inst|index\(1) & (!\inst|index\(2) & (\inst|text_buffer[57][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datac => \inst|text_buffer[57][6]~q\,
	datad => \inst|text_buffer[59][6]~q\,
	combout => \inst|Mux17~38_combout\);

-- Location: LCCOMB_X39_Y25_N28
\inst|Mux17~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~39_combout\ = (\inst|index\(2) & ((\inst|Mux17~38_combout\ & (\inst|text_buffer[63][6]~q\)) # (!\inst|Mux17~38_combout\ & ((\inst|text_buffer[61][6]~q\))))) # (!\inst|index\(2) & (((\inst|Mux17~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[63][6]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[61][6]~q\,
	datad => \inst|Mux17~38_combout\,
	combout => \inst|Mux17~39_combout\);

-- Location: LCCOMB_X43_Y28_N28
\inst|text_buffer[58][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[58][6]~feeder_combout\);

-- Location: FF_X43_Y28_N29
\inst|text_buffer[58][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[58][6]~feeder_combout\,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][6]~q\);

-- Location: FF_X43_Y28_N19
\inst|text_buffer[56][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][6]~q\);

-- Location: LCCOMB_X43_Y28_N18
\inst|Mux17~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~31_combout\ = (\inst|index\(1) & ((\inst|text_buffer[58][6]~q\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((\inst|text_buffer[56][6]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[58][6]~q\,
	datac => \inst|text_buffer[56][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~31_combout\);

-- Location: LCCOMB_X39_Y28_N4
\inst|text_buffer[62][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[62][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[62][6]~feeder_combout\);

-- Location: FF_X39_Y28_N5
\inst|text_buffer[62][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[62][6]~feeder_combout\,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][6]~q\);

-- Location: FF_X39_Y28_N19
\inst|text_buffer[60][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][6]~q\);

-- Location: LCCOMB_X39_Y28_N18
\inst|Mux17~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~32_combout\ = (\inst|Mux17~31_combout\ & ((\inst|text_buffer[62][6]~q\) # ((!\inst|index\(2))))) # (!\inst|Mux17~31_combout\ & (((\inst|text_buffer[60][6]~q\ & \inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~31_combout\,
	datab => \inst|text_buffer[62][6]~q\,
	datac => \inst|text_buffer[60][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~32_combout\);

-- Location: LCCOMB_X41_Y31_N16
\inst|text_buffer[45][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[45][6]~feeder_combout\);

-- Location: FF_X41_Y31_N17
\inst|text_buffer[45][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[45][6]~feeder_combout\,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][6]~q\);

-- Location: FF_X41_Y31_N31
\inst|text_buffer[47][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][6]~q\);

-- Location: LCCOMB_X42_Y31_N18
\inst|text_buffer[43][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[43][6]~feeder_combout\);

-- Location: FF_X42_Y31_N19
\inst|text_buffer[43][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][6]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][6]~q\);

-- Location: FF_X42_Y31_N5
\inst|text_buffer[41][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][6]~q\);

-- Location: LCCOMB_X42_Y31_N4
\inst|Mux17~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~33_combout\ = (\inst|index\(1) & ((\inst|text_buffer[43][6]~q\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((\inst|text_buffer[41][6]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[43][6]~q\,
	datac => \inst|text_buffer[41][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~33_combout\);

-- Location: LCCOMB_X41_Y31_N30
\inst|Mux17~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~34_combout\ = (\inst|index\(2) & ((\inst|Mux17~33_combout\ & ((\inst|text_buffer[47][6]~q\))) # (!\inst|Mux17~33_combout\ & (\inst|text_buffer[45][6]~q\)))) # (!\inst|index\(2) & (((\inst|Mux17~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[45][6]~q\,
	datac => \inst|text_buffer[47][6]~q\,
	datad => \inst|Mux17~33_combout\,
	combout => \inst|Mux17~34_combout\);

-- Location: LCCOMB_X41_Y29_N30
\inst|text_buffer[44][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[44][6]~feeder_combout\);

-- Location: FF_X41_Y29_N31
\inst|text_buffer[44][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[44][6]~feeder_combout\,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][6]~q\);

-- Location: LCCOMB_X41_Y29_N12
\inst|text_buffer[42][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[42][6]~feeder_combout\);

-- Location: FF_X41_Y29_N13
\inst|text_buffer[42][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[42][6]~feeder_combout\,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][6]~q\);

-- Location: FF_X43_Y29_N27
\inst|text_buffer[40][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][6]~q\);

-- Location: LCCOMB_X43_Y29_N26
\inst|Mux17~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~35_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[42][6]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[40][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[42][6]~q\,
	datac => \inst|text_buffer[40][6]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux17~35_combout\);

-- Location: FF_X40_Y29_N3
\inst|text_buffer[46][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][6]~q\);

-- Location: LCCOMB_X40_Y29_N2
\inst|Mux17~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~36_combout\ = (\inst|Mux17~35_combout\ & (((\inst|text_buffer[46][6]~q\) # (!\inst|index\(2))))) # (!\inst|Mux17~35_combout\ & (\inst|text_buffer[44][6]~q\ & ((\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[44][6]~q\,
	datab => \inst|Mux17~35_combout\,
	datac => \inst|text_buffer[46][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~36_combout\);

-- Location: LCCOMB_X40_Y29_N20
\inst|Mux17~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~37_combout\ = (\inst|index\(0) & ((\inst|index\(4)) # ((\inst|Mux17~34_combout\)))) # (!\inst|index\(0) & (!\inst|index\(4) & ((\inst|Mux17~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(4),
	datac => \inst|Mux17~34_combout\,
	datad => \inst|Mux17~36_combout\,
	combout => \inst|Mux17~37_combout\);

-- Location: LCCOMB_X37_Y29_N20
\inst|Mux17~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~40_combout\ = (\inst|index\(4) & ((\inst|Mux17~37_combout\ & (\inst|Mux17~39_combout\)) # (!\inst|Mux17~37_combout\ & ((\inst|Mux17~32_combout\))))) # (!\inst|index\(4) & (((\inst|Mux17~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~39_combout\,
	datab => \inst|index\(4),
	datac => \inst|Mux17~32_combout\,
	datad => \inst|Mux17~37_combout\,
	combout => \inst|Mux17~40_combout\);

-- Location: LCCOMB_X38_Y26_N30
\inst|text_buffer[53][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[53][6]~feeder_combout\);

-- Location: FF_X38_Y26_N31
\inst|text_buffer[53][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][6]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][6]~q\);

-- Location: FF_X37_Y25_N21
\inst|text_buffer[49][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][6]~q\);

-- Location: LCCOMB_X38_Y26_N16
\inst|text_buffer[52][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[52][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[52][6]~feeder_combout\);

-- Location: FF_X38_Y26_N17
\inst|text_buffer[52][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[52][6]~feeder_combout\,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][6]~q\);

-- Location: FF_X39_Y26_N25
\inst|text_buffer[48][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][6]~q\);

-- Location: LCCOMB_X39_Y26_N24
\inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[52][6]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[48][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[52][6]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[48][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X37_Y25_N20
\inst|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~1_combout\ = (\inst|index\(0) & ((\inst|Mux17~0_combout\ & (\inst|text_buffer[53][6]~q\)) # (!\inst|Mux17~0_combout\ & ((\inst|text_buffer[49][6]~q\))))) # (!\inst|index\(0) & (((\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[53][6]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[49][6]~q\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux17~1_combout\);

-- Location: LCCOMB_X34_Y27_N14
\inst|text_buffer[55][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[55][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[55][6]~feeder_combout\);

-- Location: FF_X34_Y27_N15
\inst|text_buffer[55][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[55][6]~feeder_combout\,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][6]~q\);

-- Location: FF_X37_Y27_N25
\inst|text_buffer[51][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][6]~q\);

-- Location: LCCOMB_X37_Y26_N22
\inst|text_buffer[54][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[54][6]~feeder_combout\);

-- Location: FF_X37_Y26_N23
\inst|text_buffer[54][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][6]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][6]~q\);

-- Location: FF_X37_Y27_N3
\inst|text_buffer[50][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][6]~q\);

-- Location: LCCOMB_X37_Y27_N2
\inst|Mux17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~7_combout\ = (\inst|index\(2) & ((\inst|text_buffer[54][6]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[50][6]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[54][6]~q\,
	datac => \inst|text_buffer[50][6]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux17~7_combout\);

-- Location: LCCOMB_X37_Y27_N24
\inst|Mux17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~8_combout\ = (\inst|index\(0) & ((\inst|Mux17~7_combout\ & (\inst|text_buffer[55][6]~q\)) # (!\inst|Mux17~7_combout\ & ((\inst|text_buffer[51][6]~q\))))) # (!\inst|index\(0) & (((\inst|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[55][6]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[51][6]~q\,
	datad => \inst|Mux17~7_combout\,
	combout => \inst|Mux17~8_combout\);

-- Location: LCCOMB_X38_Y28_N0
\inst|text_buffer[36][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[36][6]~feeder_combout\);

-- Location: FF_X38_Y28_N1
\inst|text_buffer[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][6]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][6]~q\);

-- Location: FF_X38_Y28_N3
\inst|text_buffer[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][6]~q\);

-- Location: LCCOMB_X38_Y28_N2
\inst|Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~4_combout\ = (\inst|index\(2) & ((\inst|text_buffer[36][6]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[32][6]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[36][6]~q\,
	datac => \inst|text_buffer[32][6]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux17~4_combout\);

-- Location: LCCOMB_X37_Y28_N20
\inst|text_buffer[33][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[33][6]~feeder_combout\);

-- Location: FF_X37_Y28_N21
\inst|text_buffer[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[33][6]~feeder_combout\,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][6]~q\);

-- Location: FF_X37_Y28_N19
\inst|text_buffer[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][6]~q\);

-- Location: LCCOMB_X37_Y28_N18
\inst|Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~5_combout\ = (\inst|Mux17~4_combout\ & (((\inst|text_buffer[37][6]~q\) # (!\inst|index\(0))))) # (!\inst|Mux17~4_combout\ & (\inst|text_buffer[33][6]~q\ & ((\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~4_combout\,
	datab => \inst|text_buffer[33][6]~q\,
	datac => \inst|text_buffer[37][6]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux17~5_combout\);

-- Location: LCCOMB_X36_Y28_N12
\inst|text_buffer[35][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[35][6]~feeder_combout\);

-- Location: FF_X36_Y28_N13
\inst|text_buffer[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][6]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][6]~q\);

-- Location: FF_X36_Y28_N15
\inst|text_buffer[39][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][6]~q\);

-- Location: LCCOMB_X36_Y25_N0
\inst|text_buffer[38][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[38][6]~feeder_combout\);

-- Location: FF_X36_Y25_N1
\inst|text_buffer[38][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][6]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][6]~q\);

-- Location: FF_X36_Y25_N3
\inst|text_buffer[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][6]~q\);

-- Location: LCCOMB_X36_Y25_N2
\inst|Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[38][6]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[34][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[38][6]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[34][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~2_combout\);

-- Location: LCCOMB_X36_Y28_N14
\inst|Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~3_combout\ = (\inst|index\(0) & ((\inst|Mux17~2_combout\ & ((\inst|text_buffer[39][6]~q\))) # (!\inst|Mux17~2_combout\ & (\inst|text_buffer[35][6]~q\)))) # (!\inst|index\(0) & (((\inst|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[35][6]~q\,
	datac => \inst|text_buffer[39][6]~q\,
	datad => \inst|Mux17~2_combout\,
	combout => \inst|Mux17~3_combout\);

-- Location: LCCOMB_X37_Y25_N6
\inst|Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~6_combout\ = (\inst|index\(1) & (((\inst|index\(4)) # (\inst|Mux17~3_combout\)))) # (!\inst|index\(1) & (\inst|Mux17~5_combout\ & (!\inst|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux17~5_combout\,
	datac => \inst|index\(4),
	datad => \inst|Mux17~3_combout\,
	combout => \inst|Mux17~6_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst|Mux17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~9_combout\ = (\inst|index\(4) & ((\inst|Mux17~6_combout\ & ((\inst|Mux17~8_combout\))) # (!\inst|Mux17~6_combout\ & (\inst|Mux17~1_combout\)))) # (!\inst|index\(4) & (((\inst|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Mux17~1_combout\,
	datac => \inst|Mux17~8_combout\,
	datad => \inst|Mux17~6_combout\,
	combout => \inst|Mux17~9_combout\);

-- Location: LCCOMB_X32_Y29_N20
\inst|text_buffer[30][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[30][6]~feeder_combout\);

-- Location: FF_X32_Y29_N21
\inst|text_buffer[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[30][6]~feeder_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][6]~q\);

-- Location: FF_X42_Y29_N1
\inst|text_buffer[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][6]~q\);

-- Location: LCCOMB_X31_Y29_N12
\inst|text_buffer[29][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[29][6]~feeder_combout\);

-- Location: FF_X31_Y29_N13
\inst|text_buffer[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[29][6]~feeder_combout\,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][6]~q\);

-- Location: FF_X32_Y29_N19
\inst|text_buffer[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][6]~q\);

-- Location: LCCOMB_X32_Y29_N18
\inst|Mux17~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~17_combout\ = (\inst|index\(0) & ((\inst|text_buffer[29][6]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[28][6]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[29][6]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[28][6]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux17~17_combout\);

-- Location: LCCOMB_X42_Y29_N0
\inst|Mux17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~18_combout\ = (\inst|index\(1) & ((\inst|Mux17~17_combout\ & ((\inst|text_buffer[31][6]~q\))) # (!\inst|Mux17~17_combout\ & (\inst|text_buffer[30][6]~q\)))) # (!\inst|index\(1) & (((\inst|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[30][6]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[31][6]~q\,
	datad => \inst|Mux17~17_combout\,
	combout => \inst|Mux17~18_combout\);

-- Location: LCCOMB_X35_Y27_N18
\inst|text_buffer[27][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[27][6]~feeder_combout\);

-- Location: FF_X35_Y27_N19
\inst|text_buffer[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][6]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][6]~q\);

-- Location: FF_X36_Y27_N3
\inst|text_buffer[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][6]~q\);

-- Location: LCCOMB_X35_Y27_N24
\inst|text_buffer[25][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[25][6]~feeder_combout\);

-- Location: FF_X35_Y27_N25
\inst|text_buffer[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[25][6]~feeder_combout\,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][6]~q\);

-- Location: FF_X39_Y26_N27
\inst|text_buffer[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][6]~q\);

-- Location: LCCOMB_X39_Y26_N26
\inst|Mux17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~10_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[25][6]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[24][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[25][6]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[24][6]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux17~10_combout\);

-- Location: LCCOMB_X36_Y27_N2
\inst|Mux17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~11_combout\ = (\inst|index\(1) & ((\inst|Mux17~10_combout\ & (\inst|text_buffer[27][6]~q\)) # (!\inst|Mux17~10_combout\ & ((\inst|text_buffer[26][6]~q\))))) # (!\inst|index\(1) & (((\inst|Mux17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[27][6]~q\,
	datac => \inst|text_buffer[26][6]~q\,
	datad => \inst|Mux17~10_combout\,
	combout => \inst|Mux17~11_combout\);

-- Location: LCCOMB_X39_Y31_N4
\inst|text_buffer[10][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[10][6]~feeder_combout\);

-- Location: FF_X39_Y31_N5
\inst|text_buffer[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[10][6]~feeder_combout\,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][6]~q\);

-- Location: FF_X39_Y31_N7
\inst|text_buffer[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][6]~q\);

-- Location: LCCOMB_X38_Y31_N24
\inst|text_buffer[9][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[9][6]~feeder_combout\);

-- Location: FF_X38_Y31_N25
\inst|text_buffer[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[9][6]~feeder_combout\,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][6]~q\);

-- Location: FF_X38_Y31_N15
\inst|text_buffer[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][6]~q\);

-- Location: LCCOMB_X38_Y31_N14
\inst|Mux17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~14_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[9][6]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[9][6]~q\,
	datac => \inst|text_buffer[8][6]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux17~14_combout\);

-- Location: LCCOMB_X39_Y31_N6
\inst|Mux17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~15_combout\ = (\inst|index\(1) & ((\inst|Mux17~14_combout\ & ((\inst|text_buffer[11][6]~q\))) # (!\inst|Mux17~14_combout\ & (\inst|text_buffer[10][6]~q\)))) # (!\inst|index\(1) & (((\inst|Mux17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[10][6]~q\,
	datac => \inst|text_buffer[11][6]~q\,
	datad => \inst|Mux17~14_combout\,
	combout => \inst|Mux17~15_combout\);

-- Location: LCCOMB_X37_Y32_N2
\inst|text_buffer[14][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[14][6]~feeder_combout\);

-- Location: FF_X37_Y32_N3
\inst|text_buffer[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][6]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][6]~q\);

-- Location: FF_X37_Y32_N5
\inst|text_buffer[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][6]~q\);

-- Location: LCCOMB_X38_Y32_N14
\inst|text_buffer[13][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[13][6]~feeder_combout\);

-- Location: FF_X38_Y32_N15
\inst|text_buffer[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[13][6]~feeder_combout\,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][6]~q\);

-- Location: FF_X38_Y32_N17
\inst|text_buffer[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][6]~q\);

-- Location: LCCOMB_X38_Y32_N16
\inst|Mux17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~12_combout\ = (\inst|index\(0) & ((\inst|text_buffer[13][6]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[12][6]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[13][6]~q\,
	datac => \inst|text_buffer[12][6]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux17~12_combout\);

-- Location: LCCOMB_X37_Y32_N4
\inst|Mux17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~13_combout\ = (\inst|index\(1) & ((\inst|Mux17~12_combout\ & ((\inst|text_buffer[15][6]~q\))) # (!\inst|Mux17~12_combout\ & (\inst|text_buffer[14][6]~q\)))) # (!\inst|index\(1) & (((\inst|Mux17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[14][6]~q\,
	datac => \inst|text_buffer[15][6]~q\,
	datad => \inst|Mux17~12_combout\,
	combout => \inst|Mux17~13_combout\);

-- Location: LCCOMB_X38_Y30_N2
\inst|Mux17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~16_combout\ = (\inst|index\(2) & ((\inst|index\(4)) # ((\inst|Mux17~13_combout\)))) # (!\inst|index\(2) & (!\inst|index\(4) & (\inst|Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(4),
	datac => \inst|Mux17~15_combout\,
	datad => \inst|Mux17~13_combout\,
	combout => \inst|Mux17~16_combout\);

-- Location: LCCOMB_X37_Y29_N14
\inst|Mux17~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~19_combout\ = (\inst|index\(4) & ((\inst|Mux17~16_combout\ & (\inst|Mux17~18_combout\)) # (!\inst|Mux17~16_combout\ & ((\inst|Mux17~11_combout\))))) # (!\inst|index\(4) & (((\inst|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~18_combout\,
	datab => \inst|index\(4),
	datac => \inst|Mux17~11_combout\,
	datad => \inst|Mux17~16_combout\,
	combout => \inst|Mux17~19_combout\);

-- Location: LCCOMB_X35_Y26_N30
\inst|text_buffer[22][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[22][6]~feeder_combout\);

-- Location: FF_X35_Y26_N31
\inst|text_buffer[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[22][6]~feeder_combout\,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][6]~q\);

-- Location: FF_X35_Y26_N21
\inst|text_buffer[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][6]~q\);

-- Location: FF_X35_Y25_N31
\inst|text_buffer[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][6]~q\);

-- Location: LCCOMB_X35_Y25_N0
\inst|text_buffer[18][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[18][6]~feeder_combout\);

-- Location: FF_X35_Y25_N1
\inst|text_buffer[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][6]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][6]~q\);

-- Location: LCCOMB_X35_Y25_N30
\inst|Mux17~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~20_combout\ = (\inst|index\(2) & (\inst|index\(1))) # (!\inst|index\(2) & ((\inst|index\(1) & ((\inst|text_buffer[18][6]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[16][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[16][6]~q\,
	datad => \inst|text_buffer[18][6]~q\,
	combout => \inst|Mux17~20_combout\);

-- Location: LCCOMB_X35_Y26_N20
\inst|Mux17~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~21_combout\ = (\inst|index\(2) & ((\inst|Mux17~20_combout\ & (\inst|text_buffer[22][6]~q\)) # (!\inst|Mux17~20_combout\ & ((\inst|text_buffer[20][6]~q\))))) # (!\inst|index\(2) & (((\inst|Mux17~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[22][6]~q\,
	datac => \inst|text_buffer[20][6]~q\,
	datad => \inst|Mux17~20_combout\,
	combout => \inst|Mux17~21_combout\);

-- Location: LCCOMB_X34_Y26_N26
\inst|text_buffer[21][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[21][6]~feeder_combout\);

-- Location: FF_X34_Y26_N27
\inst|text_buffer[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][6]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][6]~q\);

-- Location: FF_X34_Y26_N5
\inst|text_buffer[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][6]~q\);

-- Location: LCCOMB_X36_Y26_N2
\inst|text_buffer[19][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[19][6]~feeder_combout\);

-- Location: FF_X36_Y26_N3
\inst|text_buffer[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][6]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][6]~q\);

-- Location: FF_X36_Y26_N25
\inst|text_buffer[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][6]~q\);

-- Location: LCCOMB_X36_Y26_N24
\inst|Mux17~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~27_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[19][6]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[17][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][6]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[17][6]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux17~27_combout\);

-- Location: LCCOMB_X34_Y26_N4
\inst|Mux17~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~28_combout\ = (\inst|index\(2) & ((\inst|Mux17~27_combout\ & ((\inst|text_buffer[23][6]~q\))) # (!\inst|Mux17~27_combout\ & (\inst|text_buffer[21][6]~q\)))) # (!\inst|index\(2) & (((\inst|Mux17~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[21][6]~q\,
	datac => \inst|text_buffer[23][6]~q\,
	datad => \inst|Mux17~27_combout\,
	combout => \inst|Mux17~28_combout\);

-- Location: LCCOMB_X34_Y32_N0
\inst|text_buffer[4][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[4][6]~feeder_combout\);

-- Location: FF_X34_Y32_N1
\inst|text_buffer[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[4][6]~feeder_combout\,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][6]~q\);

-- Location: FF_X35_Y32_N21
\inst|text_buffer[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][6]~q\);

-- Location: LCCOMB_X36_Y32_N12
\inst|text_buffer[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[2][6]~feeder_combout\);

-- Location: FF_X36_Y32_N13
\inst|text_buffer[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[2][6]~feeder_combout\,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][6]~q\);

-- Location: FF_X34_Y28_N17
\inst|text_buffer[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][6]~q\);

-- Location: LCCOMB_X34_Y28_N16
\inst|Mux17~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~24_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[2][6]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[2][6]~q\,
	datac => \inst|text_buffer[0][6]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux17~24_combout\);

-- Location: LCCOMB_X35_Y32_N20
\inst|Mux17~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~25_combout\ = (\inst|index\(2) & ((\inst|Mux17~24_combout\ & ((\inst|text_buffer[6][6]~q\))) # (!\inst|Mux17~24_combout\ & (\inst|text_buffer[4][6]~q\)))) # (!\inst|index\(2) & (((\inst|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[4][6]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[6][6]~q\,
	datad => \inst|Mux17~24_combout\,
	combout => \inst|Mux17~25_combout\);

-- Location: LCCOMB_X34_Y32_N30
\inst|text_buffer[5][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[5][6]~feeder_combout\);

-- Location: FF_X34_Y32_N31
\inst|text_buffer[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][6]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][6]~q\);

-- Location: FF_X35_Y28_N29
\inst|text_buffer[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][6]~q\);

-- Location: LCCOMB_X36_Y32_N6
\inst|text_buffer[3][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][6]~feeder_combout\ = \inst|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~2_combout\,
	combout => \inst|text_buffer[3][6]~feeder_combout\);

-- Location: FF_X36_Y32_N7
\inst|text_buffer[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[3][6]~feeder_combout\,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][6]~q\);

-- Location: FF_X34_Y28_N19
\inst|text_buffer[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector1~2_combout\,
	sload => VCC,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][6]~q\);

-- Location: LCCOMB_X34_Y28_N18
\inst|Mux17~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~22_combout\ = (\inst|index\(1) & ((\inst|text_buffer[3][6]~q\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((\inst|text_buffer[1][6]~q\ & !\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[3][6]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[1][6]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux17~22_combout\);

-- Location: LCCOMB_X35_Y28_N28
\inst|Mux17~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~23_combout\ = (\inst|index\(2) & ((\inst|Mux17~22_combout\ & ((\inst|text_buffer[7][6]~q\))) # (!\inst|Mux17~22_combout\ & (\inst|text_buffer[5][6]~q\)))) # (!\inst|index\(2) & (((\inst|Mux17~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[5][6]~q\,
	datac => \inst|text_buffer[7][6]~q\,
	datad => \inst|Mux17~22_combout\,
	combout => \inst|Mux17~23_combout\);

-- Location: LCCOMB_X38_Y29_N6
\inst|Mux17~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~26_combout\ = (\inst|index\(4) & (\inst|index\(0))) # (!\inst|index\(4) & ((\inst|index\(0) & ((\inst|Mux17~23_combout\))) # (!\inst|index\(0) & (\inst|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(0),
	datac => \inst|Mux17~25_combout\,
	datad => \inst|Mux17~23_combout\,
	combout => \inst|Mux17~26_combout\);

-- Location: LCCOMB_X37_Y29_N24
\inst|Mux17~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~29_combout\ = (\inst|index\(4) & ((\inst|Mux17~26_combout\ & ((\inst|Mux17~28_combout\))) # (!\inst|Mux17~26_combout\ & (\inst|Mux17~21_combout\)))) # (!\inst|index\(4) & (((\inst|Mux17~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Mux17~21_combout\,
	datac => \inst|Mux17~28_combout\,
	datad => \inst|Mux17~26_combout\,
	combout => \inst|Mux17~29_combout\);

-- Location: LCCOMB_X37_Y29_N18
\inst|Mux17~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~30_combout\ = (\inst|index\(5) & (\inst|index\(3))) # (!\inst|index\(5) & ((\inst|index\(3) & (\inst|Mux17~19_combout\)) # (!\inst|index\(3) & ((\inst|Mux17~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(3),
	datac => \inst|Mux17~19_combout\,
	datad => \inst|Mux17~29_combout\,
	combout => \inst|Mux17~30_combout\);

-- Location: LCCOMB_X37_Y29_N16
\inst|Mux17~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux17~41_combout\ = (\inst|index\(5) & ((\inst|Mux17~30_combout\ & (\inst|Mux17~40_combout\)) # (!\inst|Mux17~30_combout\ & ((\inst|Mux17~9_combout\))))) # (!\inst|index\(5) & (((\inst|Mux17~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux17~40_combout\,
	datac => \inst|Mux17~9_combout\,
	datad => \inst|Mux17~30_combout\,
	combout => \inst|Mux17~41_combout\);

-- Location: LCCOMB_X37_Y31_N0
\inst|u_spn_dec|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux6~0_combout\ = (\inst|Mux22~41_combout\ & (\inst|Mux17~41_combout\ & \inst|Mux23~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datac => \inst|Mux17~41_combout\,
	datad => \inst|Mux23~41_combout\,
	combout => \inst|u_spn_dec|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y31_N18
\inst|u_spn_dec|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux6~1_combout\ = (\inst|Mux16~41_combout\ & (!\inst|Mux18~41_combout\ & (\inst|Mux20~41_combout\ $ (\inst|Mux19~41_combout\)))) # (!\inst|Mux16~41_combout\ & ((\inst|Mux18~41_combout\ & (!\inst|Mux20~41_combout\ & 
-- !\inst|Mux19~41_combout\)) # (!\inst|Mux18~41_combout\ & (\inst|Mux20~41_combout\ & \inst|Mux19~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~41_combout\,
	datab => \inst|Mux18~41_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux19~41_combout\,
	combout => \inst|u_spn_dec|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y31_N8
\inst|u_spn_dec|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux6~2_combout\ = (\inst|u_spn_dec|Mux6~0_combout\ & ((\inst|u_spn_dec|Mux6~1_combout\ & ((\inst|Mux21~41_combout\))) # (!\inst|u_spn_dec|Mux6~1_combout\ & (!\inst|Mux19~41_combout\)))) # (!\inst|u_spn_dec|Mux6~0_combout\ & 
-- (!\inst|Mux19~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|u_spn_dec|Mux6~0_combout\,
	datac => \inst|Mux21~41_combout\,
	datad => \inst|u_spn_dec|Mux6~1_combout\,
	combout => \inst|u_spn_dec|Mux6~2_combout\);

-- Location: LCCOMB_X37_Y31_N16
\inst|u_spn_dec|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux9~1_combout\ = (\inst|u_spn_dec|Mux6~2_combout\) # ((!\inst|u_spn_dec|Mux1~3_combout\ & \inst|u_spn_dec|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux6~2_combout\,
	datac => \inst|u_spn_dec|Mux1~3_combout\,
	datad => \inst|u_spn_dec|Mux9~0_combout\,
	combout => \inst|u_spn_dec|Mux9~1_combout\);

-- Location: LCCOMB_X34_Y31_N20
\inst|u_spn_dec|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux18~0_combout\ = (\inst|u_spn_dec|Mux9~1_combout\) # ((!\inst|u_spn_dec|Mux14~2_combout\ & \inst|u_spn_dec|Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux9~1_combout\,
	datac => \inst|u_spn_dec|Mux14~2_combout\,
	datad => \inst|u_spn_dec|Mux17~1_combout\,
	combout => \inst|u_spn_dec|Mux18~0_combout\);

-- Location: LCCOMB_X35_Y29_N14
\inst|Selector3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~7_combout\ = (((\inst|u_spn_dec|Mux19~2_combout\) # (!\inst|Selector3~3_combout\)) # (!\inst|u_spn_dec|Mux21~2_combout\)) # (!\inst|u_spn_dec|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux21~2_combout\,
	datac => \inst|Selector3~3_combout\,
	datad => \inst|u_spn_dec|Mux19~2_combout\,
	combout => \inst|Selector3~7_combout\);

-- Location: LCCOMB_X43_Y32_N22
\inst|u_rx|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|Decoder0~6_combout\ = (\inst|u_rx|bit_cnt\(0) & (\inst|u_rx|bit_cnt\(2) & (\inst|u_rx|Decoder0~0_combout\ & !\inst|u_rx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|bit_cnt\(0),
	datab => \inst|u_rx|bit_cnt\(2),
	datac => \inst|u_rx|Decoder0~0_combout\,
	datad => \inst|u_rx|bit_cnt\(1),
	combout => \inst|u_rx|Decoder0~6_combout\);

-- Location: LCCOMB_X42_Y32_N22
\inst|u_rx|shift_reg[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_rx|shift_reg[4]~5_combout\ = (\inst|u_rx|Decoder0~6_combout\ & (!\inst|u_rx|rx_sync\(1))) # (!\inst|u_rx|Decoder0~6_combout\ & ((\inst|u_rx|shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_rx|rx_sync\(1),
	datac => \inst|u_rx|shift_reg\(4),
	datad => \inst|u_rx|Decoder0~6_combout\,
	combout => \inst|u_rx|shift_reg[4]~5_combout\);

-- Location: FF_X42_Y32_N23
\inst|u_rx|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_rx|shift_reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|shift_reg\(4));

-- Location: FF_X35_Y29_N19
\inst|u_rx|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|u_rx|shift_reg\(4),
	sload => VCC,
	ena => \inst|u_rx|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_rx|data_out\(4));

-- Location: LCCOMB_X34_Y30_N26
\inst|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~5_combout\ = (\inst|Selector3~2_combout\ & (\inst|u_spn|Mux22~0_combout\ $ (((!\inst|u_spn|Mux19~1_combout\ & !\inst|u_spn|Mux17~0_combout\))))) # (!\inst|Selector3~2_combout\ & (((!\inst|u_spn|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux22~0_combout\,
	datab => \inst|u_spn|Mux19~1_combout\,
	datac => \inst|u_spn|Mux17~0_combout\,
	datad => \inst|Selector3~2_combout\,
	combout => \inst|Selector3~5_combout\);

-- Location: LCCOMB_X35_Y29_N18
\inst|Selector3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~9_combout\ = (\inst|state.S_PROCESS~q\ & (!\inst|enc_mode~q\ & ((\inst|Selector3~5_combout\)))) # (!\inst|state.S_PROCESS~q\ & (((\inst|u_rx|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enc_mode~q\,
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|u_rx|data_out\(4),
	datad => \inst|Selector3~5_combout\,
	combout => \inst|Selector3~9_combout\);

-- Location: LCCOMB_X35_Y29_N28
\inst|Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~6_combout\ = (\inst|Selector3~9_combout\) # ((\inst|Selector0~0_combout\ & (\inst|Selector3~4_combout\ & \inst|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|Selector3~4_combout\,
	datac => \inst|Selector3~3_combout\,
	datad => \inst|Selector3~9_combout\,
	combout => \inst|Selector3~6_combout\);

-- Location: LCCOMB_X35_Y29_N2
\inst|Selector3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~8_combout\ = (\inst|Selector3~6_combout\) # ((\inst|Selector6~2_combout\ & (!\inst|u_spn_dec|Mux23~3_combout\ & \inst|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~2_combout\,
	datab => \inst|u_spn_dec|Mux23~3_combout\,
	datac => \inst|Selector3~7_combout\,
	datad => \inst|Selector3~6_combout\,
	combout => \inst|Selector3~8_combout\);

-- Location: LCCOMB_X36_Y28_N16
\inst|text_buffer[35][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[35][4]~feeder_combout\);

-- Location: FF_X36_Y28_N17
\inst|text_buffer[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][4]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][4]~q\);

-- Location: FF_X36_Y28_N27
\inst|text_buffer[39][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][4]~q\);

-- Location: LCCOMB_X36_Y25_N16
\inst|text_buffer[38][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[38][4]~feeder_combout\);

-- Location: FF_X36_Y25_N17
\inst|text_buffer[38][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][4]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][4]~q\);

-- Location: FF_X36_Y25_N23
\inst|text_buffer[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][4]~q\);

-- Location: LCCOMB_X36_Y25_N22
\inst|Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~2_combout\ = (\inst|index\(2) & ((\inst|text_buffer[38][4]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[34][4]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[38][4]~q\,
	datac => \inst|text_buffer[34][4]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux19~2_combout\);

-- Location: LCCOMB_X36_Y28_N26
\inst|Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~3_combout\ = (\inst|index\(0) & ((\inst|Mux19~2_combout\ & ((\inst|text_buffer[39][4]~q\))) # (!\inst|Mux19~2_combout\ & (\inst|text_buffer[35][4]~q\)))) # (!\inst|index\(0) & (((\inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[35][4]~q\,
	datac => \inst|text_buffer[39][4]~q\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|Mux19~3_combout\);

-- Location: LCCOMB_X37_Y28_N26
\inst|text_buffer[33][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[33][4]~feeder_combout\);

-- Location: FF_X37_Y28_N27
\inst|text_buffer[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[33][4]~feeder_combout\,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][4]~q\);

-- Location: FF_X37_Y28_N17
\inst|text_buffer[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][4]~q\);

-- Location: LCCOMB_X38_Y28_N20
\inst|text_buffer[36][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[36][4]~feeder_combout\);

-- Location: FF_X38_Y28_N21
\inst|text_buffer[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][4]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][4]~q\);

-- Location: FF_X38_Y28_N7
\inst|text_buffer[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][4]~q\);

-- Location: LCCOMB_X38_Y28_N6
\inst|Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~4_combout\ = (\inst|index\(2) & ((\inst|text_buffer[36][4]~q\) # ((\inst|index\(0))))) # (!\inst|index\(2) & (((\inst|text_buffer[32][4]~q\ & !\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[36][4]~q\,
	datac => \inst|text_buffer[32][4]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux19~4_combout\);

-- Location: LCCOMB_X37_Y28_N16
\inst|Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~5_combout\ = (\inst|index\(0) & ((\inst|Mux19~4_combout\ & ((\inst|text_buffer[37][4]~q\))) # (!\inst|Mux19~4_combout\ & (\inst|text_buffer[33][4]~q\)))) # (!\inst|index\(0) & (((\inst|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[33][4]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[37][4]~q\,
	datad => \inst|Mux19~4_combout\,
	combout => \inst|Mux19~5_combout\);

-- Location: LCCOMB_X36_Y28_N0
\inst|Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~6_combout\ = (\inst|index\(3) & (\inst|index\(1))) # (!\inst|index\(3) & ((\inst|index\(1) & (\inst|Mux19~3_combout\)) # (!\inst|index\(1) & ((\inst|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(1),
	datac => \inst|Mux19~3_combout\,
	datad => \inst|Mux19~5_combout\,
	combout => \inst|Mux19~6_combout\);

-- Location: LCCOMB_X38_Y30_N4
\inst|text_buffer[45][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[45][4]~feeder_combout\);

-- Location: FF_X38_Y30_N5
\inst|text_buffer[45][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[45][4]~feeder_combout\,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][4]~q\);

-- Location: FF_X36_Y29_N23
\inst|text_buffer[41][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][4]~q\);

-- Location: FF_X38_Y29_N23
\inst|text_buffer[40][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][4]~q\);

-- Location: LCCOMB_X38_Y29_N12
\inst|text_buffer[44][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[44][4]~feeder_combout\);

-- Location: FF_X38_Y29_N13
\inst|text_buffer[44][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[44][4]~feeder_combout\,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][4]~q\);

-- Location: LCCOMB_X38_Y29_N22
\inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|index\(0) & (\inst|index\(2))) # (!\inst|index\(0) & ((\inst|index\(2) & ((\inst|text_buffer[44][4]~q\))) # (!\inst|index\(2) & (\inst|text_buffer[40][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(2),
	datac => \inst|text_buffer[40][4]~q\,
	datad => \inst|text_buffer[44][4]~q\,
	combout => \inst|Mux19~0_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~1_combout\ = (\inst|index\(0) & ((\inst|Mux19~0_combout\ & (\inst|text_buffer[45][4]~q\)) # (!\inst|Mux19~0_combout\ & ((\inst|text_buffer[41][4]~q\))))) # (!\inst|index\(0) & (((\inst|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[45][4]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[41][4]~q\,
	datad => \inst|Mux19~0_combout\,
	combout => \inst|Mux19~1_combout\);

-- Location: LCCOMB_X40_Y31_N16
\inst|text_buffer[43][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[43][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[43][4]~feeder_combout\);

-- Location: FF_X40_Y31_N17
\inst|text_buffer[43][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[43][4]~feeder_combout\,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][4]~q\);

-- Location: FF_X40_Y31_N27
\inst|text_buffer[47][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][4]~q\);

-- Location: LCCOMB_X40_Y29_N18
\inst|text_buffer[46][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[46][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[46][4]~feeder_combout\);

-- Location: FF_X40_Y29_N19
\inst|text_buffer[46][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[46][4]~feeder_combout\,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][4]~q\);

-- Location: FF_X40_Y29_N29
\inst|text_buffer[42][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][4]~q\);

-- Location: LCCOMB_X40_Y29_N28
\inst|Mux19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~7_combout\ = (\inst|index\(0) & (((\inst|index\(2))))) # (!\inst|index\(0) & ((\inst|index\(2) & (\inst|text_buffer[46][4]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[42][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[46][4]~q\,
	datac => \inst|text_buffer[42][4]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux19~7_combout\);

-- Location: LCCOMB_X40_Y31_N26
\inst|Mux19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~8_combout\ = (\inst|index\(0) & ((\inst|Mux19~7_combout\ & ((\inst|text_buffer[47][4]~q\))) # (!\inst|Mux19~7_combout\ & (\inst|text_buffer[43][4]~q\)))) # (!\inst|index\(0) & (((\inst|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[43][4]~q\,
	datac => \inst|text_buffer[47][4]~q\,
	datad => \inst|Mux19~7_combout\,
	combout => \inst|Mux19~8_combout\);

-- Location: LCCOMB_X36_Y29_N20
\inst|Mux19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~9_combout\ = (\inst|index\(3) & ((\inst|Mux19~6_combout\ & ((\inst|Mux19~8_combout\))) # (!\inst|Mux19~6_combout\ & (\inst|Mux19~1_combout\)))) # (!\inst|index\(3) & (\inst|Mux19~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux19~6_combout\,
	datac => \inst|Mux19~1_combout\,
	datad => \inst|Mux19~8_combout\,
	combout => \inst|Mux19~9_combout\);

-- Location: FF_X35_Y29_N3
\inst|text_buffer[63][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector3~8_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][4]~q\);

-- Location: FF_X39_Y28_N15
\inst|text_buffer[62][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][4]~q\);

-- Location: FF_X39_Y28_N29
\inst|text_buffer[60][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][4]~q\);

-- Location: FF_X39_Y27_N23
\inst|text_buffer[61][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][4]~q\);

-- Location: LCCOMB_X39_Y28_N28
\inst|Mux19~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~38_combout\ = (\inst|index\(1) & (\inst|index\(0))) # (!\inst|index\(1) & ((\inst|index\(0) & ((\inst|text_buffer[61][4]~q\))) # (!\inst|index\(0) & (\inst|text_buffer[60][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[60][4]~q\,
	datad => \inst|text_buffer[61][4]~q\,
	combout => \inst|Mux19~38_combout\);

-- Location: LCCOMB_X39_Y28_N14
\inst|Mux19~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~39_combout\ = (\inst|index\(1) & ((\inst|Mux19~38_combout\ & (\inst|text_buffer[63][4]~q\)) # (!\inst|Mux19~38_combout\ & ((\inst|text_buffer[62][4]~q\))))) # (!\inst|index\(1) & (((\inst|Mux19~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[63][4]~q\,
	datac => \inst|text_buffer[62][4]~q\,
	datad => \inst|Mux19~38_combout\,
	combout => \inst|Mux19~39_combout\);

-- Location: LCCOMB_X37_Y26_N2
\inst|text_buffer[54][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[54][4]~feeder_combout\);

-- Location: FF_X37_Y26_N3
\inst|text_buffer[54][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][4]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][4]~q\);

-- Location: FF_X37_Y26_N17
\inst|text_buffer[55][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][4]~q\);

-- Location: LCCOMB_X38_Y26_N8
\inst|text_buffer[53][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[53][4]~feeder_combout\);

-- Location: FF_X38_Y26_N9
\inst|text_buffer[53][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][4]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][4]~q\);

-- Location: FF_X38_Y26_N27
\inst|text_buffer[52][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][4]~q\);

-- Location: LCCOMB_X38_Y26_N26
\inst|Mux19~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~33_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[53][4]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[52][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[53][4]~q\,
	datac => \inst|text_buffer[52][4]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux19~33_combout\);

-- Location: LCCOMB_X37_Y26_N16
\inst|Mux19~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~34_combout\ = (\inst|index\(1) & ((\inst|Mux19~33_combout\ & ((\inst|text_buffer[55][4]~q\))) # (!\inst|Mux19~33_combout\ & (\inst|text_buffer[54][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[54][4]~q\,
	datac => \inst|text_buffer[55][4]~q\,
	datad => \inst|Mux19~33_combout\,
	combout => \inst|Mux19~34_combout\);

-- Location: LCCOMB_X37_Y27_N6
\inst|text_buffer[50][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[50][4]~feeder_combout\);

-- Location: FF_X37_Y27_N7
\inst|text_buffer[50][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[50][4]~feeder_combout\,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][4]~q\);

-- Location: FF_X37_Y27_N9
\inst|text_buffer[51][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][4]~q\);

-- Location: LCCOMB_X37_Y25_N14
\inst|text_buffer[49][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[49][4]~feeder_combout\);

-- Location: FF_X37_Y25_N15
\inst|text_buffer[49][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[49][4]~feeder_combout\,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][4]~q\);

-- Location: FF_X37_Y25_N13
\inst|text_buffer[48][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][4]~q\);

-- Location: LCCOMB_X37_Y25_N12
\inst|Mux19~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~35_combout\ = (\inst|index\(0) & ((\inst|text_buffer[49][4]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[48][4]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][4]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[48][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~35_combout\);

-- Location: LCCOMB_X37_Y27_N8
\inst|Mux19~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~36_combout\ = (\inst|index\(1) & ((\inst|Mux19~35_combout\ & ((\inst|text_buffer[51][4]~q\))) # (!\inst|Mux19~35_combout\ & (\inst|text_buffer[50][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[50][4]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[51][4]~q\,
	datad => \inst|Mux19~35_combout\,
	combout => \inst|Mux19~36_combout\);

-- Location: LCCOMB_X36_Y29_N16
\inst|Mux19~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~37_combout\ = (\inst|index\(3) & (((\inst|index\(2))))) # (!\inst|index\(3) & ((\inst|index\(2) & (\inst|Mux19~34_combout\)) # (!\inst|index\(2) & ((\inst|Mux19~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux19~34_combout\,
	datac => \inst|Mux19~36_combout\,
	datad => \inst|index\(2),
	combout => \inst|Mux19~37_combout\);

-- Location: LCCOMB_X39_Y29_N12
\inst|text_buffer[58][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[58][4]~feeder_combout\);

-- Location: FF_X39_Y29_N13
\inst|text_buffer[58][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[58][4]~feeder_combout\,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][4]~q\);

-- Location: FF_X39_Y29_N15
\inst|text_buffer[59][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][4]~q\);

-- Location: FF_X38_Y25_N23
\inst|text_buffer[56][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][4]~q\);

-- Location: LCCOMB_X38_Y25_N20
\inst|text_buffer[57][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[57][4]~feeder_combout\);

-- Location: FF_X38_Y25_N21
\inst|text_buffer[57][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[57][4]~feeder_combout\,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][4]~q\);

-- Location: LCCOMB_X38_Y25_N22
\inst|Mux19~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~31_combout\ = (\inst|index\(1) & (\inst|index\(0))) # (!\inst|index\(1) & ((\inst|index\(0) & ((\inst|text_buffer[57][4]~q\))) # (!\inst|index\(0) & (\inst|text_buffer[56][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[56][4]~q\,
	datad => \inst|text_buffer[57][4]~q\,
	combout => \inst|Mux19~31_combout\);

-- Location: LCCOMB_X39_Y29_N14
\inst|Mux19~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~32_combout\ = (\inst|index\(1) & ((\inst|Mux19~31_combout\ & ((\inst|text_buffer[59][4]~q\))) # (!\inst|Mux19~31_combout\ & (\inst|text_buffer[58][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[58][4]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[59][4]~q\,
	datad => \inst|Mux19~31_combout\,
	combout => \inst|Mux19~32_combout\);

-- Location: LCCOMB_X36_Y29_N30
\inst|Mux19~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~40_combout\ = (\inst|Mux19~37_combout\ & ((\inst|Mux19~39_combout\) # ((!\inst|index\(3))))) # (!\inst|Mux19~37_combout\ & (((\inst|index\(3) & \inst|Mux19~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~39_combout\,
	datab => \inst|Mux19~37_combout\,
	datac => \inst|index\(3),
	datad => \inst|Mux19~32_combout\,
	combout => \inst|Mux19~40_combout\);

-- Location: LCCOMB_X37_Y32_N8
\inst|text_buffer[14][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[14][4]~feeder_combout\);

-- Location: FF_X37_Y32_N9
\inst|text_buffer[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][4]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][4]~q\);

-- Location: FF_X37_Y32_N11
\inst|text_buffer[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][4]~q\);

-- Location: LCCOMB_X38_Y32_N18
\inst|text_buffer[13][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[13][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[13][4]~feeder_combout\);

-- Location: FF_X38_Y32_N19
\inst|text_buffer[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[13][4]~feeder_combout\,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][4]~q\);

-- Location: FF_X38_Y32_N29
\inst|text_buffer[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][4]~q\);

-- Location: LCCOMB_X38_Y32_N28
\inst|Mux19~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~27_combout\ = (\inst|index\(0) & ((\inst|text_buffer[13][4]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[12][4]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[13][4]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[12][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~27_combout\);

-- Location: LCCOMB_X37_Y32_N10
\inst|Mux19~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~28_combout\ = (\inst|index\(1) & ((\inst|Mux19~27_combout\ & ((\inst|text_buffer[15][4]~q\))) # (!\inst|Mux19~27_combout\ & (\inst|text_buffer[14][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[14][4]~q\,
	datac => \inst|text_buffer[15][4]~q\,
	datad => \inst|Mux19~27_combout\,
	combout => \inst|Mux19~28_combout\);

-- Location: LCCOMB_X39_Y31_N16
\inst|text_buffer[10][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[10][4]~feeder_combout\);

-- Location: FF_X39_Y31_N17
\inst|text_buffer[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[10][4]~feeder_combout\,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][4]~q\);

-- Location: FF_X39_Y31_N15
\inst|text_buffer[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][4]~q\);

-- Location: LCCOMB_X38_Y31_N4
\inst|text_buffer[9][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[9][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[9][4]~feeder_combout\);

-- Location: FF_X38_Y31_N5
\inst|text_buffer[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[9][4]~feeder_combout\,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][4]~q\);

-- Location: FF_X38_Y31_N19
\inst|text_buffer[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][4]~q\);

-- Location: LCCOMB_X38_Y31_N18
\inst|Mux19~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~20_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[9][4]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[9][4]~q\,
	datac => \inst|text_buffer[8][4]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux19~20_combout\);

-- Location: LCCOMB_X39_Y31_N14
\inst|Mux19~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~21_combout\ = (\inst|index\(1) & ((\inst|Mux19~20_combout\ & ((\inst|text_buffer[11][4]~q\))) # (!\inst|Mux19~20_combout\ & (\inst|text_buffer[10][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[10][4]~q\,
	datac => \inst|text_buffer[11][4]~q\,
	datad => \inst|Mux19~20_combout\,
	combout => \inst|Mux19~21_combout\);

-- Location: LCCOMB_X35_Y32_N28
\inst|text_buffer[6][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[6][4]~feeder_combout\);

-- Location: FF_X35_Y32_N29
\inst|text_buffer[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][4]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][4]~q\);

-- Location: FF_X35_Y32_N7
\inst|text_buffer[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][4]~q\);

-- Location: LCCOMB_X34_Y32_N2
\inst|text_buffer[5][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[5][4]~feeder_combout\);

-- Location: FF_X34_Y32_N3
\inst|text_buffer[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][4]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][4]~q\);

-- Location: FF_X34_Y32_N29
\inst|text_buffer[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][4]~q\);

-- Location: LCCOMB_X34_Y32_N28
\inst|Mux19~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~22_combout\ = (\inst|index\(0) & ((\inst|text_buffer[5][4]~q\) # ((\inst|index\(1))))) # (!\inst|index\(0) & (((\inst|text_buffer[4][4]~q\ & !\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[5][4]~q\,
	datac => \inst|text_buffer[4][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~22_combout\);

-- Location: LCCOMB_X35_Y32_N6
\inst|Mux19~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~23_combout\ = (\inst|index\(1) & ((\inst|Mux19~22_combout\ & ((\inst|text_buffer[7][4]~q\))) # (!\inst|Mux19~22_combout\ & (\inst|text_buffer[6][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[6][4]~q\,
	datac => \inst|text_buffer[7][4]~q\,
	datad => \inst|Mux19~22_combout\,
	combout => \inst|Mux19~23_combout\);

-- Location: LCCOMB_X36_Y32_N10
\inst|text_buffer[2][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[2][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[2][4]~feeder_combout\);

-- Location: FF_X36_Y32_N11
\inst|text_buffer[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[2][4]~feeder_combout\,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][4]~q\);

-- Location: FF_X36_Y32_N17
\inst|text_buffer[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][4]~q\);

-- Location: LCCOMB_X34_Y28_N26
\inst|text_buffer[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[1][4]~feeder_combout\);

-- Location: FF_X34_Y28_N27
\inst|text_buffer[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[1][4]~feeder_combout\,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][4]~q\);

-- Location: FF_X34_Y28_N29
\inst|text_buffer[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][4]~q\);

-- Location: LCCOMB_X34_Y28_N28
\inst|Mux19~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~24_combout\ = (\inst|index\(1) & (((\inst|index\(0))))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|text_buffer[1][4]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[1][4]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[0][4]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux19~24_combout\);

-- Location: LCCOMB_X36_Y32_N16
\inst|Mux19~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~25_combout\ = (\inst|index\(1) & ((\inst|Mux19~24_combout\ & ((\inst|text_buffer[3][4]~q\))) # (!\inst|Mux19~24_combout\ & (\inst|text_buffer[2][4]~q\)))) # (!\inst|index\(1) & (((\inst|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[2][4]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[3][4]~q\,
	datad => \inst|Mux19~24_combout\,
	combout => \inst|Mux19~25_combout\);

-- Location: LCCOMB_X36_Y29_N2
\inst|Mux19~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~26_combout\ = (\inst|index\(2) & ((\inst|index\(3)) # ((\inst|Mux19~23_combout\)))) # (!\inst|index\(2) & (!\inst|index\(3) & ((\inst|Mux19~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|Mux19~23_combout\,
	datad => \inst|Mux19~25_combout\,
	combout => \inst|Mux19~26_combout\);

-- Location: LCCOMB_X36_Y29_N4
\inst|Mux19~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~29_combout\ = (\inst|index\(3) & ((\inst|Mux19~26_combout\ & (\inst|Mux19~28_combout\)) # (!\inst|Mux19~26_combout\ & ((\inst|Mux19~21_combout\))))) # (!\inst|index\(3) & (((\inst|Mux19~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux19~28_combout\,
	datac => \inst|Mux19~21_combout\,
	datad => \inst|Mux19~26_combout\,
	combout => \inst|Mux19~29_combout\);

-- Location: LCCOMB_X38_Y27_N24
\inst|text_buffer[29][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[29][4]~feeder_combout\);

-- Location: FF_X38_Y27_N25
\inst|text_buffer[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[29][4]~feeder_combout\,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][4]~q\);

-- Location: FF_X38_Y27_N15
\inst|text_buffer[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][4]~q\);

-- Location: LCCOMB_X35_Y27_N20
\inst|text_buffer[27][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[27][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[27][4]~feeder_combout\);

-- Location: FF_X35_Y27_N21
\inst|text_buffer[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[27][4]~feeder_combout\,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][4]~q\);

-- Location: FF_X35_Y27_N11
\inst|text_buffer[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][4]~q\);

-- Location: LCCOMB_X35_Y27_N10
\inst|Mux19~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~17_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[27][4]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[25][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[27][4]~q\,
	datac => \inst|text_buffer[25][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~17_combout\);

-- Location: LCCOMB_X38_Y27_N14
\inst|Mux19~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~18_combout\ = (\inst|index\(2) & ((\inst|Mux19~17_combout\ & ((\inst|text_buffer[31][4]~q\))) # (!\inst|Mux19~17_combout\ & (\inst|text_buffer[29][4]~q\)))) # (!\inst|index\(2) & (((\inst|Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[29][4]~q\,
	datac => \inst|text_buffer[31][4]~q\,
	datad => \inst|Mux19~17_combout\,
	combout => \inst|Mux19~18_combout\);

-- Location: LCCOMB_X32_Y29_N28
\inst|text_buffer[28][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[28][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[28][4]~feeder_combout\);

-- Location: FF_X32_Y29_N29
\inst|text_buffer[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[28][4]~feeder_combout\,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][4]~q\);

-- Location: FF_X32_Y29_N31
\inst|text_buffer[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][4]~q\);

-- Location: LCCOMB_X36_Y27_N18
\inst|text_buffer[26][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[26][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[26][4]~feeder_combout\);

-- Location: FF_X36_Y27_N19
\inst|text_buffer[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[26][4]~feeder_combout\,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][4]~q\);

-- Location: FF_X36_Y27_N25
\inst|text_buffer[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][4]~q\);

-- Location: LCCOMB_X36_Y27_N24
\inst|Mux19~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~10_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[26][4]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[24][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[26][4]~q\,
	datac => \inst|text_buffer[24][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~10_combout\);

-- Location: LCCOMB_X32_Y29_N30
\inst|Mux19~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~11_combout\ = (\inst|index\(2) & ((\inst|Mux19~10_combout\ & ((\inst|text_buffer[30][4]~q\))) # (!\inst|Mux19~10_combout\ & (\inst|text_buffer[28][4]~q\)))) # (!\inst|index\(2) & (((\inst|Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[28][4]~q\,
	datac => \inst|text_buffer[30][4]~q\,
	datad => \inst|Mux19~10_combout\,
	combout => \inst|Mux19~11_combout\);

-- Location: LCCOMB_X34_Y26_N12
\inst|text_buffer[21][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[21][4]~feeder_combout\);

-- Location: FF_X34_Y26_N13
\inst|text_buffer[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][4]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][4]~q\);

-- Location: FF_X34_Y26_N23
\inst|text_buffer[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][4]~q\);

-- Location: LCCOMB_X36_Y26_N8
\inst|text_buffer[19][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[19][4]~feeder_combout\);

-- Location: FF_X36_Y26_N9
\inst|text_buffer[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][4]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][4]~q\);

-- Location: FF_X36_Y26_N19
\inst|text_buffer[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][4]~q\);

-- Location: LCCOMB_X36_Y26_N18
\inst|Mux19~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~12_combout\ = (\inst|index\(2) & (((\inst|index\(1))))) # (!\inst|index\(2) & ((\inst|index\(1) & (\inst|text_buffer[19][4]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[17][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][4]~q\,
	datab => \inst|index\(2),
	datac => \inst|text_buffer[17][4]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux19~12_combout\);

-- Location: LCCOMB_X34_Y26_N22
\inst|Mux19~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~13_combout\ = (\inst|index\(2) & ((\inst|Mux19~12_combout\ & ((\inst|text_buffer[23][4]~q\))) # (!\inst|Mux19~12_combout\ & (\inst|text_buffer[21][4]~q\)))) # (!\inst|index\(2) & (((\inst|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[21][4]~q\,
	datac => \inst|text_buffer[23][4]~q\,
	datad => \inst|Mux19~12_combout\,
	combout => \inst|Mux19~13_combout\);

-- Location: LCCOMB_X35_Y26_N12
\inst|text_buffer[20][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[20][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[20][4]~feeder_combout\);

-- Location: FF_X35_Y26_N13
\inst|text_buffer[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[20][4]~feeder_combout\,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][4]~q\);

-- Location: FF_X35_Y26_N19
\inst|text_buffer[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][4]~q\);

-- Location: FF_X35_Y25_N19
\inst|text_buffer[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector3~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][4]~q\);

-- Location: LCCOMB_X35_Y25_N8
\inst|text_buffer[18][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][4]~feeder_combout\ = \inst|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector3~8_combout\,
	combout => \inst|text_buffer[18][4]~feeder_combout\);

-- Location: FF_X35_Y25_N9
\inst|text_buffer[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][4]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][4]~q\);

-- Location: LCCOMB_X35_Y25_N18
\inst|Mux19~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~14_combout\ = (\inst|index\(2) & (\inst|index\(1))) # (!\inst|index\(2) & ((\inst|index\(1) & ((\inst|text_buffer[18][4]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[16][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[16][4]~q\,
	datad => \inst|text_buffer[18][4]~q\,
	combout => \inst|Mux19~14_combout\);

-- Location: LCCOMB_X35_Y26_N18
\inst|Mux19~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~15_combout\ = (\inst|index\(2) & ((\inst|Mux19~14_combout\ & ((\inst|text_buffer[22][4]~q\))) # (!\inst|Mux19~14_combout\ & (\inst|text_buffer[20][4]~q\)))) # (!\inst|index\(2) & (((\inst|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[20][4]~q\,
	datac => \inst|text_buffer[22][4]~q\,
	datad => \inst|Mux19~14_combout\,
	combout => \inst|Mux19~15_combout\);

-- Location: LCCOMB_X37_Y26_N20
\inst|Mux19~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~16_combout\ = (\inst|index\(3) & (\inst|index\(0))) # (!\inst|index\(3) & ((\inst|index\(0) & (\inst|Mux19~13_combout\)) # (!\inst|index\(0) & ((\inst|Mux19~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(0),
	datac => \inst|Mux19~13_combout\,
	datad => \inst|Mux19~15_combout\,
	combout => \inst|Mux19~16_combout\);

-- Location: LCCOMB_X37_Y29_N28
\inst|Mux19~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~19_combout\ = (\inst|index\(3) & ((\inst|Mux19~16_combout\ & (\inst|Mux19~18_combout\)) # (!\inst|Mux19~16_combout\ & ((\inst|Mux19~11_combout\))))) # (!\inst|index\(3) & (((\inst|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux19~18_combout\,
	datac => \inst|Mux19~11_combout\,
	datad => \inst|Mux19~16_combout\,
	combout => \inst|Mux19~19_combout\);

-- Location: LCCOMB_X36_Y29_N6
\inst|Mux19~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~30_combout\ = (\inst|index\(5) & (\inst|index\(4))) # (!\inst|index\(5) & ((\inst|index\(4) & ((\inst|Mux19~19_combout\))) # (!\inst|index\(4) & (\inst|Mux19~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(4),
	datac => \inst|Mux19~29_combout\,
	datad => \inst|Mux19~19_combout\,
	combout => \inst|Mux19~30_combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst|Mux19~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux19~41_combout\ = (\inst|index\(5) & ((\inst|Mux19~30_combout\ & ((\inst|Mux19~40_combout\))) # (!\inst|Mux19~30_combout\ & (\inst|Mux19~9_combout\)))) # (!\inst|index\(5) & (((\inst|Mux19~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux19~9_combout\,
	datac => \inst|Mux19~40_combout\,
	datad => \inst|Mux19~30_combout\,
	combout => \inst|Mux19~41_combout\);

-- Location: LCCOMB_X35_Y30_N16
\inst|u_spn|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux6~0_combout\ = (\inst|u_spn|Mux3~1_combout\ & (\inst|Mux19~41_combout\ $ (((\inst|Mux22~41_combout\ & \inst|Mux23~41_combout\))))) # (!\inst|u_spn|Mux3~1_combout\ & (((\inst|Mux22~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~41_combout\,
	datab => \inst|Mux22~41_combout\,
	datac => \inst|Mux23~41_combout\,
	datad => \inst|u_spn|Mux3~1_combout\,
	combout => \inst|u_spn|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y30_N2
\inst|u_spn|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux22~1_combout\ = (\inst|u_spn|Mux1~1_combout\ & (!\inst|u_spn|Mux6~0_combout\ & ((!\inst|u_spn|Mux14~0_combout\)))) # (!\inst|u_spn|Mux1~1_combout\ & (\inst|u_spn|Mux14~0_combout\ & (\inst|u_spn|Mux6~0_combout\ $ 
-- (!\inst|u_spn|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux6~0_combout\,
	datab => \inst|u_spn|Mux1~1_combout\,
	datac => \inst|u_spn|Mux3~2_combout\,
	datad => \inst|u_spn|Mux14~0_combout\,
	combout => \inst|u_spn|Mux22~1_combout\);

-- Location: LCCOMB_X31_Y30_N16
\inst|u_spn|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux18~1_combout\ = (\inst|u_spn|Mux8~1_combout\) # ((\inst|u_spn|Mux22~1_combout\ & (\inst|u_spn|Mux10~0_combout\ & \inst|u_spn|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux22~1_combout\,
	datab => \inst|u_spn|Mux8~1_combout\,
	datac => \inst|u_spn|Mux10~0_combout\,
	datad => \inst|u_spn|Mux18~0_combout\,
	combout => \inst|u_spn|Mux18~1_combout\);

-- Location: LCCOMB_X34_Y30_N30
\inst|Selector6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~4_combout\ = (!\inst|u_spn|Mux18~1_combout\ & (\inst|Selector6~3_combout\ & ((!\inst|u_spn|Mux26~1_combout\) # (!\inst|u_spn|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux18~1_combout\,
	datab => \inst|Selector6~3_combout\,
	datac => \inst|u_spn|Mux16~1_combout\,
	datad => \inst|u_spn|Mux26~1_combout\,
	combout => \inst|Selector6~4_combout\);

-- Location: LCCOMB_X34_Y29_N0
\inst|u_spn_dec|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux30~1_combout\ = (!\inst|u_spn_dec|Mux18~0_combout\ & (!\inst|u_spn_dec|Mux22~2_combout\ & (\inst|u_spn_dec|Mux16~3_combout\ $ (!\inst|u_spn_dec|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|u_spn_dec|Mux20~2_combout\,
	combout => \inst|u_spn_dec|Mux30~1_combout\);

-- Location: LCCOMB_X34_Y29_N30
\inst|Selector6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~6_combout\ = (\inst|u_spn_dec|Mux21~2_combout\) # ((\inst|u_spn_dec|Mux17~2_combout\) # ((\inst|u_spn_dec|Mux23~3_combout\) # (!\inst|u_spn_dec|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux21~2_combout\,
	datab => \inst|u_spn_dec|Mux17~2_combout\,
	datac => \inst|u_spn_dec|Mux23~3_combout\,
	datad => \inst|u_spn_dec|Mux30~1_combout\,
	combout => \inst|Selector6~6_combout\);

-- Location: LCCOMB_X34_Y29_N4
\inst|u_spn_dec|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux30~0_combout\ = (!\inst|u_spn_dec|Mux22~2_combout\ & ((\inst|u_spn_dec|Mux18~0_combout\ & (\inst|u_spn_dec|Mux16~3_combout\ & !\inst|u_spn_dec|Mux20~2_combout\)) # (!\inst|u_spn_dec|Mux18~0_combout\ & (!\inst|u_spn_dec|Mux16~3_combout\ 
-- & \inst|u_spn_dec|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux18~0_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|u_spn_dec|Mux20~2_combout\,
	combout => \inst|u_spn_dec|Mux30~0_combout\);

-- Location: LCCOMB_X34_Y29_N10
\inst|Selector6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~5_combout\ = (!\inst|u_spn_dec|Mux17~2_combout\ & (\inst|Selector6~9_combout\ & (\inst|u_spn_dec|Mux30~0_combout\ & !\inst|u_spn_dec|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux17~2_combout\,
	datab => \inst|Selector6~9_combout\,
	datac => \inst|u_spn_dec|Mux30~0_combout\,
	datad => \inst|u_spn_dec|Mux23~3_combout\,
	combout => \inst|Selector6~5_combout\);

-- Location: LCCOMB_X34_Y29_N24
\inst|Selector6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~7_combout\ = (\inst|Selector6~5_combout\) # ((\inst|u_spn_dec|Mux19~2_combout\ & (\inst|Selector6~2_combout\ & \inst|Selector6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux19~2_combout\,
	datab => \inst|Selector6~2_combout\,
	datac => \inst|Selector6~6_combout\,
	datad => \inst|Selector6~5_combout\,
	combout => \inst|Selector6~7_combout\);

-- Location: LCCOMB_X34_Y29_N18
\inst|Selector6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~8_combout\ = (\inst|Selector6~4_combout\) # ((\inst|Selector6~7_combout\) # ((!\inst|state.S_PROCESS~q\ & \inst|u_rx|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.S_PROCESS~q\,
	datab => \inst|u_rx|data_out\(1),
	datac => \inst|Selector6~4_combout\,
	datad => \inst|Selector6~7_combout\,
	combout => \inst|Selector6~8_combout\);

-- Location: LCCOMB_X38_Y30_N12
\inst|text_buffer[45][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[45][1]~feeder_combout\);

-- Location: FF_X38_Y30_N13
\inst|text_buffer[45][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[45][1]~feeder_combout\,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][1]~q\);

-- Location: FF_X36_Y30_N31
\inst|text_buffer[41][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][1]~q\);

-- Location: LCCOMB_X37_Y28_N2
\inst|text_buffer[37][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[37][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[37][1]~feeder_combout\);

-- Location: FF_X37_Y28_N3
\inst|text_buffer[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[37][1]~feeder_combout\,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][1]~q\);

-- Location: FF_X37_Y28_N13
\inst|text_buffer[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][1]~q\);

-- Location: LCCOMB_X37_Y28_N12
\inst|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|index\(2) & ((\inst|text_buffer[37][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(2) & (((\inst|text_buffer[33][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[37][1]~q\,
	datac => \inst|text_buffer[33][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~0_combout\);

-- Location: LCCOMB_X36_Y30_N30
\inst|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~1_combout\ = (\inst|index\(3) & ((\inst|Mux22~0_combout\ & (\inst|text_buffer[45][1]~q\)) # (!\inst|Mux22~0_combout\ & ((\inst|text_buffer[41][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[45][1]~q\,
	datac => \inst|text_buffer[41][1]~q\,
	datad => \inst|Mux22~0_combout\,
	combout => \inst|Mux22~1_combout\);

-- Location: LCCOMB_X40_Y31_N18
\inst|text_buffer[47][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[47][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[47][1]~feeder_combout\);

-- Location: FF_X40_Y31_N19
\inst|text_buffer[47][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[47][1]~feeder_combout\,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][1]~q\);

-- Location: FF_X40_Y31_N21
\inst|text_buffer[43][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][1]~q\);

-- Location: FF_X40_Y27_N15
\inst|text_buffer[39][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][1]~q\);

-- Location: FF_X40_Y27_N25
\inst|text_buffer[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][1]~q\);

-- Location: LCCOMB_X40_Y27_N24
\inst|Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~7_combout\ = (\inst|index\(3) & (((\inst|index\(2))))) # (!\inst|index\(3) & ((\inst|index\(2) & (\inst|text_buffer[39][1]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[35][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[39][1]~q\,
	datac => \inst|text_buffer[35][1]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux22~7_combout\);

-- Location: LCCOMB_X40_Y31_N20
\inst|Mux22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~8_combout\ = (\inst|index\(3) & ((\inst|Mux22~7_combout\ & (\inst|text_buffer[47][1]~q\)) # (!\inst|Mux22~7_combout\ & ((\inst|text_buffer[43][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[47][1]~q\,
	datac => \inst|text_buffer[43][1]~q\,
	datad => \inst|Mux22~7_combout\,
	combout => \inst|Mux22~8_combout\);

-- Location: LCCOMB_X38_Y29_N26
\inst|text_buffer[40][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[40][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[40][1]~feeder_combout\);

-- Location: FF_X38_Y29_N27
\inst|text_buffer[40][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[40][1]~feeder_combout\,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][1]~q\);

-- Location: FF_X38_Y29_N29
\inst|text_buffer[44][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][1]~q\);

-- Location: LCCOMB_X38_Y28_N12
\inst|text_buffer[36][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[36][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[36][1]~feeder_combout\);

-- Location: FF_X38_Y28_N13
\inst|text_buffer[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[36][1]~feeder_combout\,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][1]~q\);

-- Location: FF_X38_Y28_N19
\inst|text_buffer[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][1]~q\);

-- Location: LCCOMB_X38_Y28_N18
\inst|Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~4_combout\ = (\inst|index\(2) & ((\inst|text_buffer[36][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(2) & (((\inst|text_buffer[32][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[36][1]~q\,
	datac => \inst|text_buffer[32][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~4_combout\);

-- Location: LCCOMB_X38_Y29_N28
\inst|Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~5_combout\ = (\inst|index\(3) & ((\inst|Mux22~4_combout\ & ((\inst|text_buffer[44][1]~q\))) # (!\inst|Mux22~4_combout\ & (\inst|text_buffer[40][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[40][1]~q\,
	datac => \inst|text_buffer[44][1]~q\,
	datad => \inst|Mux22~4_combout\,
	combout => \inst|Mux22~5_combout\);

-- Location: LCCOMB_X40_Y29_N26
\inst|text_buffer[42][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[42][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[42][1]~feeder_combout\);

-- Location: FF_X40_Y29_N27
\inst|text_buffer[42][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[42][1]~feeder_combout\,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][1]~q\);

-- Location: FF_X40_Y29_N17
\inst|text_buffer[46][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][1]~q\);

-- Location: LCCOMB_X36_Y25_N24
\inst|text_buffer[38][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[38][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[38][1]~feeder_combout\);

-- Location: FF_X36_Y25_N25
\inst|text_buffer[38][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[38][1]~feeder_combout\,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][1]~q\);

-- Location: FF_X36_Y25_N15
\inst|text_buffer[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][1]~q\);

-- Location: LCCOMB_X36_Y25_N14
\inst|Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~2_combout\ = (\inst|index\(3) & (((\inst|index\(2))))) # (!\inst|index\(3) & ((\inst|index\(2) & (\inst|text_buffer[38][1]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[34][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[38][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[34][1]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux22~2_combout\);

-- Location: LCCOMB_X40_Y29_N16
\inst|Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~3_combout\ = (\inst|index\(3) & ((\inst|Mux22~2_combout\ & ((\inst|text_buffer[46][1]~q\))) # (!\inst|Mux22~2_combout\ & (\inst|text_buffer[42][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[42][1]~q\,
	datac => \inst|text_buffer[46][1]~q\,
	datad => \inst|Mux22~2_combout\,
	combout => \inst|Mux22~3_combout\);

-- Location: LCCOMB_X38_Y29_N30
\inst|Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~6_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & ((\inst|Mux22~3_combout\))) # (!\inst|index\(1) & (\inst|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux22~5_combout\,
	datac => \inst|index\(1),
	datad => \inst|Mux22~3_combout\,
	combout => \inst|Mux22~6_combout\);

-- Location: LCCOMB_X36_Y29_N28
\inst|Mux22~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~9_combout\ = (\inst|index\(0) & ((\inst|Mux22~6_combout\ & ((\inst|Mux22~8_combout\))) # (!\inst|Mux22~6_combout\ & (\inst|Mux22~1_combout\)))) # (!\inst|index\(0) & (((\inst|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~1_combout\,
	datab => \inst|index\(0),
	datac => \inst|Mux22~8_combout\,
	datad => \inst|Mux22~6_combout\,
	combout => \inst|Mux22~9_combout\);

-- Location: LCCOMB_X34_Y29_N16
\inst|text_buffer[63][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[63][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[63][1]~feeder_combout\);

-- Location: FF_X34_Y29_N17
\inst|text_buffer[63][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[63][1]~feeder_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][1]~q\);

-- Location: FF_X40_Y26_N9
\inst|text_buffer[62][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][1]~q\);

-- Location: LCCOMB_X37_Y26_N12
\inst|text_buffer[55][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[55][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[55][1]~feeder_combout\);

-- Location: FF_X37_Y26_N13
\inst|text_buffer[55][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[55][1]~feeder_combout\,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][1]~q\);

-- Location: FF_X37_Y26_N11
\inst|text_buffer[54][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][1]~q\);

-- Location: LCCOMB_X37_Y26_N10
\inst|Mux22~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~38_combout\ = (\inst|index\(0) & ((\inst|text_buffer[55][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(0) & (((\inst|text_buffer[54][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[55][1]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[54][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~38_combout\);

-- Location: LCCOMB_X40_Y26_N8
\inst|Mux22~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~39_combout\ = (\inst|index\(3) & ((\inst|Mux22~38_combout\ & (\inst|text_buffer[63][1]~q\)) # (!\inst|Mux22~38_combout\ & ((\inst|text_buffer[62][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[63][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[62][1]~q\,
	datad => \inst|Mux22~38_combout\,
	combout => \inst|Mux22~39_combout\);

-- Location: LCCOMB_X39_Y29_N22
\inst|text_buffer[59][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[59][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[59][1]~feeder_combout\);

-- Location: FF_X39_Y29_N23
\inst|text_buffer[59][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[59][1]~feeder_combout\,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][1]~q\);

-- Location: FF_X39_Y29_N9
\inst|text_buffer[58][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][1]~q\);

-- Location: LCCOMB_X37_Y27_N10
\inst|text_buffer[51][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[51][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[51][1]~feeder_combout\);

-- Location: FF_X37_Y27_N11
\inst|text_buffer[51][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[51][1]~feeder_combout\,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][1]~q\);

-- Location: FF_X37_Y27_N13
\inst|text_buffer[50][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][1]~q\);

-- Location: LCCOMB_X37_Y27_N12
\inst|Mux22~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~31_combout\ = (\inst|index\(3) & (((\inst|index\(0))))) # (!\inst|index\(3) & ((\inst|index\(0) & (\inst|text_buffer[51][1]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[50][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[51][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[50][1]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux22~31_combout\);

-- Location: LCCOMB_X39_Y29_N8
\inst|Mux22~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~32_combout\ = (\inst|index\(3) & ((\inst|Mux22~31_combout\ & (\inst|text_buffer[59][1]~q\)) # (!\inst|Mux22~31_combout\ & ((\inst|text_buffer[58][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[59][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[58][1]~q\,
	datad => \inst|Mux22~31_combout\,
	combout => \inst|Mux22~32_combout\);

-- Location: LCCOMB_X38_Y25_N12
\inst|text_buffer[56][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[56][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[56][1]~feeder_combout\);

-- Location: FF_X38_Y25_N13
\inst|text_buffer[56][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[56][1]~feeder_combout\,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][1]~q\);

-- Location: FF_X38_Y25_N19
\inst|text_buffer[57][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][1]~q\);

-- Location: LCCOMB_X37_Y25_N26
\inst|text_buffer[49][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[49][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[49][1]~feeder_combout\);

-- Location: FF_X37_Y25_N27
\inst|text_buffer[49][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[49][1]~feeder_combout\,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][1]~q\);

-- Location: FF_X37_Y25_N9
\inst|text_buffer[48][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][1]~q\);

-- Location: LCCOMB_X37_Y25_N8
\inst|Mux22~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~35_combout\ = (\inst|index\(0) & ((\inst|text_buffer[49][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(0) & (((\inst|text_buffer[48][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[49][1]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[48][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~35_combout\);

-- Location: LCCOMB_X38_Y25_N18
\inst|Mux22~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~36_combout\ = (\inst|index\(3) & ((\inst|Mux22~35_combout\ & ((\inst|text_buffer[57][1]~q\))) # (!\inst|Mux22~35_combout\ & (\inst|text_buffer[56][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[56][1]~q\,
	datac => \inst|text_buffer[57][1]~q\,
	datad => \inst|Mux22~35_combout\,
	combout => \inst|Mux22~36_combout\);

-- Location: LCCOMB_X39_Y28_N20
\inst|text_buffer[60][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[60][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[60][1]~feeder_combout\);

-- Location: FF_X39_Y28_N21
\inst|text_buffer[60][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[60][1]~feeder_combout\,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][1]~q\);

-- Location: FF_X39_Y27_N25
\inst|text_buffer[61][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][1]~q\);

-- Location: LCCOMB_X38_Y26_N12
\inst|text_buffer[53][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[53][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[53][1]~feeder_combout\);

-- Location: FF_X38_Y26_N13
\inst|text_buffer[53][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[53][1]~feeder_combout\,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][1]~q\);

-- Location: FF_X38_Y26_N15
\inst|text_buffer[52][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][1]~q\);

-- Location: LCCOMB_X38_Y26_N14
\inst|Mux22~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~33_combout\ = (\inst|index\(3) & (((\inst|index\(0))))) # (!\inst|index\(3) & ((\inst|index\(0) & (\inst|text_buffer[53][1]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[52][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[53][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[52][1]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux22~33_combout\);

-- Location: LCCOMB_X39_Y27_N24
\inst|Mux22~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~34_combout\ = (\inst|index\(3) & ((\inst|Mux22~33_combout\ & ((\inst|text_buffer[61][1]~q\))) # (!\inst|Mux22~33_combout\ & (\inst|text_buffer[60][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[60][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[61][1]~q\,
	datad => \inst|Mux22~33_combout\,
	combout => \inst|Mux22~34_combout\);

-- Location: LCCOMB_X39_Y29_N0
\inst|Mux22~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~37_combout\ = (\inst|index\(2) & ((\inst|index\(1)) # ((\inst|Mux22~34_combout\)))) # (!\inst|index\(2) & (!\inst|index\(1) & (\inst|Mux22~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|Mux22~36_combout\,
	datad => \inst|Mux22~34_combout\,
	combout => \inst|Mux22~37_combout\);

-- Location: LCCOMB_X39_Y29_N2
\inst|Mux22~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~40_combout\ = (\inst|index\(1) & ((\inst|Mux22~37_combout\ & (\inst|Mux22~39_combout\)) # (!\inst|Mux22~37_combout\ & ((\inst|Mux22~32_combout\))))) # (!\inst|index\(1) & (((\inst|Mux22~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux22~39_combout\,
	datac => \inst|Mux22~32_combout\,
	datad => \inst|Mux22~37_combout\,
	combout => \inst|Mux22~40_combout\);

-- Location: LCCOMB_X37_Y32_N24
\inst|text_buffer[14][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[14][1]~feeder_combout\);

-- Location: FF_X37_Y32_N25
\inst|text_buffer[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][1]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][1]~q\);

-- Location: FF_X37_Y32_N15
\inst|text_buffer[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][1]~q\);

-- Location: LCCOMB_X35_Y32_N12
\inst|text_buffer[7][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[7][1]~feeder_combout\);

-- Location: FF_X35_Y32_N13
\inst|text_buffer[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[7][1]~feeder_combout\,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][1]~q\);

-- Location: FF_X35_Y32_N27
\inst|text_buffer[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][1]~q\);

-- Location: LCCOMB_X35_Y32_N26
\inst|Mux22~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~27_combout\ = (\inst|index\(0) & ((\inst|text_buffer[7][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(0) & (((\inst|text_buffer[6][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|text_buffer[7][1]~q\,
	datac => \inst|text_buffer[6][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~27_combout\);

-- Location: LCCOMB_X37_Y32_N14
\inst|Mux22~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~28_combout\ = (\inst|index\(3) & ((\inst|Mux22~27_combout\ & ((\inst|text_buffer[15][1]~q\))) # (!\inst|Mux22~27_combout\ & (\inst|text_buffer[14][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[14][1]~q\,
	datac => \inst|text_buffer[15][1]~q\,
	datad => \inst|Mux22~27_combout\,
	combout => \inst|Mux22~28_combout\);

-- Location: LCCOMB_X39_Y31_N18
\inst|text_buffer[11][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[11][1]~feeder_combout\);

-- Location: FF_X39_Y31_N19
\inst|text_buffer[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[11][1]~feeder_combout\,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][1]~q\);

-- Location: FF_X39_Y31_N9
\inst|text_buffer[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][1]~q\);

-- Location: FF_X36_Y32_N1
\inst|text_buffer[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][1]~q\);

-- Location: LCCOMB_X36_Y32_N2
\inst|text_buffer[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[3][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[3][1]~feeder_combout\);

-- Location: FF_X36_Y32_N3
\inst|text_buffer[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[3][1]~feeder_combout\,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][1]~q\);

-- Location: LCCOMB_X36_Y32_N0
\inst|Mux22~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~20_combout\ = (\inst|index\(3) & (\inst|index\(0))) # (!\inst|index\(3) & ((\inst|index\(0) & ((\inst|text_buffer[3][1]~q\))) # (!\inst|index\(0) & (\inst|text_buffer[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(0),
	datac => \inst|text_buffer[2][1]~q\,
	datad => \inst|text_buffer[3][1]~q\,
	combout => \inst|Mux22~20_combout\);

-- Location: LCCOMB_X39_Y31_N8
\inst|Mux22~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~21_combout\ = (\inst|index\(3) & ((\inst|Mux22~20_combout\ & (\inst|text_buffer[11][1]~q\)) # (!\inst|Mux22~20_combout\ & ((\inst|text_buffer[10][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[11][1]~q\,
	datac => \inst|text_buffer[10][1]~q\,
	datad => \inst|Mux22~20_combout\,
	combout => \inst|Mux22~21_combout\);

-- Location: LCCOMB_X38_Y31_N20
\inst|text_buffer[8][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[8][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[8][1]~feeder_combout\);

-- Location: FF_X38_Y31_N21
\inst|text_buffer[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[8][1]~feeder_combout\,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][1]~q\);

-- Location: FF_X38_Y31_N27
\inst|text_buffer[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][1]~q\);

-- Location: LCCOMB_X34_Y28_N30
\inst|text_buffer[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[1][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[1][1]~feeder_combout\);

-- Location: FF_X34_Y28_N31
\inst|text_buffer[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[1][1]~feeder_combout\,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][1]~q\);

-- Location: FF_X34_Y28_N21
\inst|text_buffer[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][1]~q\);

-- Location: LCCOMB_X34_Y28_N20
\inst|Mux22~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~24_combout\ = (\inst|index\(3) & (((\inst|index\(0))))) # (!\inst|index\(3) & ((\inst|index\(0) & (\inst|text_buffer[1][1]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[1][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[0][1]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux22~24_combout\);

-- Location: LCCOMB_X38_Y31_N26
\inst|Mux22~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~25_combout\ = (\inst|index\(3) & ((\inst|Mux22~24_combout\ & ((\inst|text_buffer[9][1]~q\))) # (!\inst|Mux22~24_combout\ & (\inst|text_buffer[8][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[8][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[9][1]~q\,
	datad => \inst|Mux22~24_combout\,
	combout => \inst|Mux22~25_combout\);

-- Location: LCCOMB_X38_Y32_N10
\inst|text_buffer[12][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[12][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[12][1]~feeder_combout\);

-- Location: FF_X38_Y32_N11
\inst|text_buffer[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[12][1]~feeder_combout\,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][1]~q\);

-- Location: FF_X38_Y32_N13
\inst|text_buffer[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][1]~q\);

-- Location: LCCOMB_X34_Y32_N20
\inst|text_buffer[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[5][1]~feeder_combout\);

-- Location: FF_X34_Y32_N21
\inst|text_buffer[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][1]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][1]~q\);

-- Location: FF_X34_Y32_N15
\inst|text_buffer[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][1]~q\);

-- Location: LCCOMB_X34_Y32_N14
\inst|Mux22~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~22_combout\ = (\inst|index\(3) & (((\inst|index\(0))))) # (!\inst|index\(3) & ((\inst|index\(0) & (\inst|text_buffer[5][1]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[5][1]~q\,
	datac => \inst|text_buffer[4][1]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux22~22_combout\);

-- Location: LCCOMB_X38_Y32_N12
\inst|Mux22~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~23_combout\ = (\inst|index\(3) & ((\inst|Mux22~22_combout\ & ((\inst|text_buffer[13][1]~q\))) # (!\inst|Mux22~22_combout\ & (\inst|text_buffer[12][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[12][1]~q\,
	datac => \inst|text_buffer[13][1]~q\,
	datad => \inst|Mux22~22_combout\,
	combout => \inst|Mux22~23_combout\);

-- Location: LCCOMB_X38_Y31_N8
\inst|Mux22~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~26_combout\ = (\inst|index\(1) & (\inst|index\(2))) # (!\inst|index\(1) & ((\inst|index\(2) & ((\inst|Mux22~23_combout\))) # (!\inst|index\(2) & (\inst|Mux22~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(2),
	datac => \inst|Mux22~25_combout\,
	datad => \inst|Mux22~23_combout\,
	combout => \inst|Mux22~26_combout\);

-- Location: LCCOMB_X36_Y29_N14
\inst|Mux22~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~29_combout\ = (\inst|index\(1) & ((\inst|Mux22~26_combout\ & (\inst|Mux22~28_combout\)) # (!\inst|Mux22~26_combout\ & ((\inst|Mux22~21_combout\))))) # (!\inst|index\(1) & (((\inst|Mux22~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux22~28_combout\,
	datac => \inst|Mux22~21_combout\,
	datad => \inst|Mux22~26_combout\,
	combout => \inst|Mux22~29_combout\);

-- Location: LCCOMB_X32_Y29_N22
\inst|text_buffer[30][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[30][1]~feeder_combout\);

-- Location: FF_X32_Y29_N23
\inst|text_buffer[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[30][1]~feeder_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][1]~q\);

-- Location: FF_X32_Y29_N9
\inst|text_buffer[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][1]~q\);

-- Location: LCCOMB_X35_Y26_N0
\inst|text_buffer[22][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[22][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[22][1]~feeder_combout\);

-- Location: FF_X35_Y26_N1
\inst|text_buffer[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[22][1]~feeder_combout\,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][1]~q\);

-- Location: FF_X35_Y26_N7
\inst|text_buffer[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][1]~q\);

-- Location: LCCOMB_X35_Y26_N6
\inst|Mux22~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~10_combout\ = (\inst|index\(3) & (((\inst|index\(1))))) # (!\inst|index\(3) & ((\inst|index\(1) & (\inst|text_buffer[22][1]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[20][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[22][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[20][1]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux22~10_combout\);

-- Location: LCCOMB_X32_Y29_N8
\inst|Mux22~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~11_combout\ = (\inst|index\(3) & ((\inst|Mux22~10_combout\ & (\inst|text_buffer[30][1]~q\)) # (!\inst|Mux22~10_combout\ & ((\inst|text_buffer[28][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[30][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[28][1]~q\,
	datad => \inst|Mux22~10_combout\,
	combout => \inst|Mux22~11_combout\);

-- Location: LCCOMB_X31_Y29_N10
\inst|text_buffer[31][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[31][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[31][1]~feeder_combout\);

-- Location: FF_X31_Y29_N11
\inst|text_buffer[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[31][1]~feeder_combout\,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][1]~q\);

-- Location: FF_X31_Y29_N1
\inst|text_buffer[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][1]~q\);

-- Location: FF_X34_Y26_N31
\inst|text_buffer[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][1]~q\);

-- Location: LCCOMB_X34_Y26_N28
\inst|text_buffer[23][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[23][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[23][1]~feeder_combout\);

-- Location: FF_X34_Y26_N29
\inst|text_buffer[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[23][1]~feeder_combout\,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][1]~q\);

-- Location: LCCOMB_X34_Y26_N30
\inst|Mux22~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~17_combout\ = (\inst|index\(3) & (\inst|index\(1))) # (!\inst|index\(3) & ((\inst|index\(1) & ((\inst|text_buffer[23][1]~q\))) # (!\inst|index\(1) & (\inst|text_buffer[21][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(1),
	datac => \inst|text_buffer[21][1]~q\,
	datad => \inst|text_buffer[23][1]~q\,
	combout => \inst|Mux22~17_combout\);

-- Location: LCCOMB_X31_Y29_N0
\inst|Mux22~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~18_combout\ = (\inst|index\(3) & ((\inst|Mux22~17_combout\ & (\inst|text_buffer[31][1]~q\)) # (!\inst|Mux22~17_combout\ & ((\inst|text_buffer[29][1]~q\))))) # (!\inst|index\(3) & (((\inst|Mux22~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[31][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[29][1]~q\,
	datad => \inst|Mux22~17_combout\,
	combout => \inst|Mux22~18_combout\);

-- Location: LCCOMB_X35_Y27_N12
\inst|text_buffer[25][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[25][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[25][1]~feeder_combout\);

-- Location: FF_X35_Y27_N13
\inst|text_buffer[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[25][1]~feeder_combout\,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][1]~q\);

-- Location: FF_X35_Y27_N23
\inst|text_buffer[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][1]~q\);

-- Location: LCCOMB_X36_Y26_N26
\inst|text_buffer[19][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[19][1]~feeder_combout\);

-- Location: FF_X36_Y26_N27
\inst|text_buffer[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][1]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][1]~q\);

-- Location: FF_X36_Y26_N21
\inst|text_buffer[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][1]~q\);

-- Location: LCCOMB_X36_Y26_N20
\inst|Mux22~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~12_combout\ = (\inst|index\(3) & (((\inst|index\(1))))) # (!\inst|index\(3) & ((\inst|index\(1) & (\inst|text_buffer[19][1]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[17][1]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux22~12_combout\);

-- Location: LCCOMB_X35_Y27_N22
\inst|Mux22~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~13_combout\ = (\inst|index\(3) & ((\inst|Mux22~12_combout\ & ((\inst|text_buffer[27][1]~q\))) # (!\inst|Mux22~12_combout\ & (\inst|text_buffer[25][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[25][1]~q\,
	datab => \inst|index\(3),
	datac => \inst|text_buffer[27][1]~q\,
	datad => \inst|Mux22~12_combout\,
	combout => \inst|Mux22~13_combout\);

-- Location: LCCOMB_X36_Y27_N28
\inst|text_buffer[24][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[24][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[24][1]~feeder_combout\);

-- Location: FF_X36_Y27_N29
\inst|text_buffer[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[24][1]~feeder_combout\,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][1]~q\);

-- Location: FF_X36_Y27_N15
\inst|text_buffer[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][1]~q\);

-- Location: LCCOMB_X35_Y25_N16
\inst|text_buffer[18][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[18][1]~feeder_combout\ = \inst|Selector6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector6~8_combout\,
	combout => \inst|text_buffer[18][1]~feeder_combout\);

-- Location: FF_X35_Y25_N17
\inst|text_buffer[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[18][1]~feeder_combout\,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][1]~q\);

-- Location: FF_X35_Y25_N7
\inst|text_buffer[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector6~8_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][1]~q\);

-- Location: LCCOMB_X35_Y25_N6
\inst|Mux22~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~14_combout\ = (\inst|index\(1) & ((\inst|text_buffer[18][1]~q\) # ((\inst|index\(3))))) # (!\inst|index\(1) & (((\inst|text_buffer[16][1]~q\ & !\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[18][1]~q\,
	datab => \inst|index\(1),
	datac => \inst|text_buffer[16][1]~q\,
	datad => \inst|index\(3),
	combout => \inst|Mux22~14_combout\);

-- Location: LCCOMB_X36_Y27_N14
\inst|Mux22~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~15_combout\ = (\inst|index\(3) & ((\inst|Mux22~14_combout\ & ((\inst|text_buffer[26][1]~q\))) # (!\inst|Mux22~14_combout\ & (\inst|text_buffer[24][1]~q\)))) # (!\inst|index\(3) & (((\inst|Mux22~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|text_buffer[24][1]~q\,
	datac => \inst|text_buffer[26][1]~q\,
	datad => \inst|Mux22~14_combout\,
	combout => \inst|Mux22~15_combout\);

-- Location: LCCOMB_X32_Y29_N24
\inst|Mux22~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~16_combout\ = (\inst|index\(2) & (\inst|index\(0))) # (!\inst|index\(2) & ((\inst|index\(0) & (\inst|Mux22~13_combout\)) # (!\inst|index\(0) & ((\inst|Mux22~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(0),
	datac => \inst|Mux22~13_combout\,
	datad => \inst|Mux22~15_combout\,
	combout => \inst|Mux22~16_combout\);

-- Location: LCCOMB_X32_Y29_N10
\inst|Mux22~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~19_combout\ = (\inst|index\(2) & ((\inst|Mux22~16_combout\ & ((\inst|Mux22~18_combout\))) # (!\inst|Mux22~16_combout\ & (\inst|Mux22~11_combout\)))) # (!\inst|index\(2) & (((\inst|Mux22~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux22~11_combout\,
	datac => \inst|Mux22~18_combout\,
	datad => \inst|Mux22~16_combout\,
	combout => \inst|Mux22~19_combout\);

-- Location: LCCOMB_X36_Y29_N0
\inst|Mux22~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~30_combout\ = (\inst|index\(5) & (\inst|index\(4))) # (!\inst|index\(5) & ((\inst|index\(4) & ((\inst|Mux22~19_combout\))) # (!\inst|index\(4) & (\inst|Mux22~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(4),
	datac => \inst|Mux22~29_combout\,
	datad => \inst|Mux22~19_combout\,
	combout => \inst|Mux22~30_combout\);

-- Location: LCCOMB_X36_Y29_N12
\inst|Mux22~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux22~41_combout\ = (\inst|index\(5) & ((\inst|Mux22~30_combout\ & ((\inst|Mux22~40_combout\))) # (!\inst|Mux22~30_combout\ & (\inst|Mux22~9_combout\)))) # (!\inst|index\(5) & (((\inst|Mux22~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux22~9_combout\,
	datac => \inst|Mux22~40_combout\,
	datad => \inst|Mux22~30_combout\,
	combout => \inst|Mux22~41_combout\);

-- Location: LCCOMB_X36_Y29_N8
\inst|u_spn_dec|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux1~3_combout\ = (\inst|Mux22~41_combout\) # ((!\inst|Mux17~41_combout\ & \inst|u_spn_dec|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux22~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datad => \inst|u_spn_dec|Mux1~4_combout\,
	combout => \inst|u_spn_dec|Mux1~3_combout\);

-- Location: LCCOMB_X37_Y31_N28
\inst|u_spn_dec|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux13~0_combout\ = ((\inst|Mux17~41_combout\) # ((\inst|Mux16~41_combout\) # (!\inst|Mux20~41_combout\))) # (!\inst|Mux23~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~41_combout\,
	datab => \inst|Mux17~41_combout\,
	datac => \inst|Mux20~41_combout\,
	datad => \inst|Mux16~41_combout\,
	combout => \inst|u_spn_dec|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y31_N2
\inst|u_spn_dec|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux13~1_combout\ = (\inst|u_spn_dec|Mux2~0_combout\ & (\inst|u_spn_dec|Mux3~2_combout\ & (!\inst|u_spn_dec|Mux5~3_combout\ & !\inst|u_spn_dec|Mux4~2_combout\))) # (!\inst|u_spn_dec|Mux2~0_combout\ & (!\inst|u_spn_dec|Mux3~2_combout\ & 
-- (\inst|u_spn_dec|Mux5~3_combout\ & \inst|u_spn_dec|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux2~0_combout\,
	datab => \inst|u_spn_dec|Mux3~2_combout\,
	datac => \inst|u_spn_dec|Mux5~3_combout\,
	datad => \inst|u_spn_dec|Mux4~2_combout\,
	combout => \inst|u_spn_dec|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y31_N28
\inst|u_spn_dec|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux13~2_combout\ = (\inst|u_spn_dec|Mux7~3_combout\ & (\inst|u_spn_dec|Mux13~0_combout\)) # (!\inst|u_spn_dec|Mux7~3_combout\ & ((!\inst|u_spn_dec|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux13~0_combout\,
	datac => \inst|u_spn_dec|Mux7~3_combout\,
	datad => \inst|u_spn_dec|Mux13~1_combout\,
	combout => \inst|u_spn_dec|Mux13~2_combout\);

-- Location: LCCOMB_X36_Y31_N26
\inst|u_spn_dec|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux13~3_combout\ = (\inst|u_spn_dec|Mux0~5_combout\ & (((\inst|u_spn_dec|Mux13~2_combout\) # (!\inst|u_spn_dec|Mux6~2_combout\)) # (!\inst|u_spn_dec|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux1~3_combout\,
	datab => \inst|u_spn_dec|Mux0~5_combout\,
	datac => \inst|u_spn_dec|Mux6~2_combout\,
	datad => \inst|u_spn_dec|Mux13~2_combout\,
	combout => \inst|u_spn_dec|Mux13~3_combout\);

-- Location: LCCOMB_X35_Y31_N10
\inst|u_spn_dec|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux23~0_combout\ = (\inst|u_spn_dec|Mux15~3_combout\ & (\inst|u_spn_dec|Mux14~2_combout\ & (\inst|u_spn_dec|Mux9~1_combout\ & !\inst|u_spn_dec|Mux8~9_combout\))) # (!\inst|u_spn_dec|Mux15~3_combout\ & (!\inst|u_spn_dec|Mux14~2_combout\ & 
-- (!\inst|u_spn_dec|Mux9~1_combout\ & \inst|u_spn_dec|Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux15~3_combout\,
	datab => \inst|u_spn_dec|Mux14~2_combout\,
	datac => \inst|u_spn_dec|Mux9~1_combout\,
	datad => \inst|u_spn_dec|Mux8~9_combout\,
	combout => \inst|u_spn_dec|Mux23~0_combout\);

-- Location: LCCOMB_X35_Y31_N4
\inst|u_spn_dec|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux23~1_combout\ = (\inst|u_spn_dec|Mux10~0_combout\ & (!\inst|u_spn_dec|Mux12~3_combout\ & (!\inst|u_spn_dec|Mux11~2_combout\ & \inst|u_spn_dec|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux10~0_combout\,
	datab => \inst|u_spn_dec|Mux12~3_combout\,
	datac => \inst|u_spn_dec|Mux11~2_combout\,
	datad => \inst|u_spn_dec|Mux23~0_combout\,
	combout => \inst|u_spn_dec|Mux23~1_combout\);

-- Location: LCCOMB_X35_Y31_N2
\inst|u_spn_dec|Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux23~2_combout\ = (\inst|u_spn_dec|Mux10~0_combout\) # (((!\inst|u_spn_dec|Mux15~3_combout\) # (!\inst|u_spn_dec|Mux11~2_combout\)) # (!\inst|u_spn_dec|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux10~0_combout\,
	datab => \inst|u_spn_dec|Mux19~0_combout\,
	datac => \inst|u_spn_dec|Mux11~2_combout\,
	datad => \inst|u_spn_dec|Mux15~3_combout\,
	combout => \inst|u_spn_dec|Mux23~2_combout\);

-- Location: LCCOMB_X35_Y31_N20
\inst|u_spn_dec|Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux23~3_combout\ = (\inst|u_spn_dec|Mux23~1_combout\) # ((\inst|u_spn_dec|Mux13~3_combout\ & \inst|u_spn_dec|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u_spn_dec|Mux13~3_combout\,
	datac => \inst|u_spn_dec|Mux23~1_combout\,
	datad => \inst|u_spn_dec|Mux23~2_combout\,
	combout => \inst|u_spn_dec|Mux23~3_combout\);

-- Location: LCCOMB_X34_Y31_N10
\inst|u_spn_dec|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux29~1_combout\ = (\inst|u_spn_dec|Mux23~3_combout\ & (\inst|u_spn_dec|Mux19~2_combout\ & (!\inst|u_spn_dec|Mux21~2_combout\ & !\inst|u_spn_dec|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux23~3_combout\,
	datab => \inst|u_spn_dec|Mux19~2_combout\,
	datac => \inst|u_spn_dec|Mux21~2_combout\,
	datad => \inst|u_spn_dec|Mux18~0_combout\,
	combout => \inst|u_spn_dec|Mux29~1_combout\);

-- Location: LCCOMB_X34_Y31_N2
\inst|u_spn_dec|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn_dec|Mux29~0_combout\ = (\inst|u_spn_dec|Mux21~2_combout\ & (\inst|u_spn_dec|Mux18~0_combout\ & (!\inst|u_spn_dec|Mux19~2_combout\ & !\inst|u_spn_dec|Mux20~2_combout\))) # (!\inst|u_spn_dec|Mux21~2_combout\ & (!\inst|u_spn_dec|Mux18~0_combout\ 
-- & (\inst|u_spn_dec|Mux19~2_combout\ & \inst|u_spn_dec|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux21~2_combout\,
	datab => \inst|u_spn_dec|Mux18~0_combout\,
	datac => \inst|u_spn_dec|Mux19~2_combout\,
	datad => \inst|u_spn_dec|Mux20~2_combout\,
	combout => \inst|u_spn_dec|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y31_N28
\inst|Selector5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~5_combout\ = (\inst|Selector6~2_combout\ & (\inst|u_spn_dec|Mux16~3_combout\ & ((\inst|u_spn_dec|Mux23~3_combout\) # (!\inst|u_spn_dec|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux23~3_combout\,
	datab => \inst|Selector6~2_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|u_spn_dec|Mux29~0_combout\,
	combout => \inst|Selector5~5_combout\);

-- Location: LCCOMB_X34_Y31_N4
\inst|Selector5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~6_combout\ = (\inst|Selector5~5_combout\ & ((\inst|u_spn_dec|Mux20~2_combout\) # (!\inst|u_spn_dec|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux29~1_combout\,
	datab => \inst|u_spn_dec|Mux20~2_combout\,
	datad => \inst|Selector5~5_combout\,
	combout => \inst|Selector5~6_combout\);

-- Location: LCCOMB_X34_Y31_N26
\inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|u_spn_dec|Mux16~3_combout\ & (\inst|Selector6~2_combout\ & ((\inst|u_spn_dec|Mux17~2_combout\) # (\inst|u_spn_dec|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn_dec|Mux17~2_combout\,
	datab => \inst|u_spn_dec|Mux22~2_combout\,
	datac => \inst|u_spn_dec|Mux16~3_combout\,
	datad => \inst|Selector6~2_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X34_Y30_N6
\inst|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst|u_spn|Mux19~1_combout\ & ((\inst|u_spn|Mux17~0_combout\) # ((\inst|u_spn|Mux22~0_combout\) # (!\inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux19~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|Selector3~2_combout\,
	combout => \inst|Selector5~2_combout\);

-- Location: LCCOMB_X32_Y30_N16
\inst|u_spn|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_spn|Mux31~0_combout\ = (\inst|u_spn|Mux21~1_combout\ & (!\inst|u_spn|Mux23~3_combout\ & (\inst|u_spn|Mux17~0_combout\ $ (!\inst|u_spn|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_spn|Mux17~0_combout\,
	datab => \inst|u_spn|Mux21~1_combout\,
	datac => \inst|u_spn|Mux22~0_combout\,
	datad => \inst|u_spn|Mux23~3_combout\,
	combout => \inst|u_spn|Mux31~0_combout\);

-- Location: LCCOMB_X32_Y30_N18
\inst|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|Selector5~0_combout\ & (!\inst|u_spn|Mux19~1_combout\ & \inst|u_spn|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~0_combout\,
	datac => \inst|u_spn|Mux19~1_combout\,
	datad => \inst|u_spn|Mux31~0_combout\,
	combout => \inst|Selector5~3_combout\);

-- Location: LCCOMB_X34_Y31_N16
\inst|Selector5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~4_combout\ = (\inst|Selector5~1_combout\) # ((\inst|Selector6~3_combout\ & ((\inst|Selector5~2_combout\) # (\inst|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~1_combout\,
	datab => \inst|Selector6~3_combout\,
	datac => \inst|Selector5~2_combout\,
	datad => \inst|Selector5~3_combout\,
	combout => \inst|Selector5~4_combout\);

-- Location: LCCOMB_X34_Y31_N0
\inst|Selector5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~7_combout\ = (\inst|Selector5~6_combout\) # ((\inst|Selector5~4_combout\) # ((\inst|u_rx|data_out\(2) & !\inst|state.S_PROCESS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_rx|data_out\(2),
	datab => \inst|state.S_PROCESS~q\,
	datac => \inst|Selector5~6_combout\,
	datad => \inst|Selector5~4_combout\,
	combout => \inst|Selector5~7_combout\);

-- Location: LCCOMB_X41_Y31_N28
\inst|text_buffer[45][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[45][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[45][2]~feeder_combout\);

-- Location: FF_X41_Y31_N29
\inst|text_buffer[45][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[45][2]~feeder_combout\,
	ena => \inst|text_buffer[45][7]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[45][2]~q\);

-- Location: FF_X41_Y31_N23
\inst|text_buffer[47][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[47][7]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[47][2]~q\);

-- Location: LCCOMB_X37_Y32_N22
\inst|text_buffer[15][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[15][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[15][2]~feeder_combout\);

-- Location: FF_X37_Y32_N23
\inst|text_buffer[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[15][2]~feeder_combout\,
	ena => \inst|text_buffer[15][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[15][2]~q\);

-- Location: FF_X37_Y31_N15
\inst|text_buffer[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[13][7]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[13][2]~q\);

-- Location: LCCOMB_X37_Y31_N14
\inst|Mux21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~7_combout\ = (\inst|index\(5) & (((\inst|index\(1))))) # (!\inst|index\(5) & ((\inst|index\(1) & (\inst|text_buffer[15][2]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[13][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[15][2]~q\,
	datac => \inst|text_buffer[13][2]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux21~7_combout\);

-- Location: LCCOMB_X41_Y31_N22
\inst|Mux21~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~8_combout\ = (\inst|index\(5) & ((\inst|Mux21~7_combout\ & ((\inst|text_buffer[47][2]~q\))) # (!\inst|Mux21~7_combout\ & (\inst|text_buffer[45][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[45][2]~q\,
	datac => \inst|text_buffer[47][2]~q\,
	datad => \inst|Mux21~7_combout\,
	combout => \inst|Mux21~8_combout\);

-- Location: LCCOMB_X42_Y31_N20
\inst|text_buffer[41][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[41][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[41][2]~feeder_combout\);

-- Location: FF_X42_Y31_N21
\inst|text_buffer[41][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[41][2]~feeder_combout\,
	ena => \inst|text_buffer[41][7]~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[41][2]~q\);

-- Location: FF_X40_Y31_N5
\inst|text_buffer[43][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[43][7]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[43][2]~q\);

-- Location: LCCOMB_X39_Y31_N24
\inst|text_buffer[11][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[11][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[11][2]~feeder_combout\);

-- Location: FF_X39_Y31_N25
\inst|text_buffer[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[11][2]~feeder_combout\,
	ena => \inst|text_buffer[11][7]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[11][2]~q\);

-- Location: FF_X38_Y31_N17
\inst|text_buffer[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[9][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[9][2]~q\);

-- Location: LCCOMB_X38_Y31_N16
\inst|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~2_combout\ = (\inst|index\(5) & (((\inst|index\(1))))) # (!\inst|index\(5) & ((\inst|index\(1) & (\inst|text_buffer[11][2]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[9][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[11][2]~q\,
	datac => \inst|text_buffer[9][2]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux21~2_combout\);

-- Location: LCCOMB_X40_Y31_N4
\inst|Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~3_combout\ = (\inst|index\(5) & ((\inst|Mux21~2_combout\ & ((\inst|text_buffer[43][2]~q\))) # (!\inst|Mux21~2_combout\ & (\inst|text_buffer[41][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[41][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[43][2]~q\,
	datad => \inst|Mux21~2_combout\,
	combout => \inst|Mux21~3_combout\);

-- Location: LCCOMB_X41_Y30_N8
\inst|text_buffer[40][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[40][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[40][2]~feeder_combout\);

-- Location: FF_X41_Y30_N9
\inst|text_buffer[40][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[40][2]~feeder_combout\,
	ena => \inst|text_buffer[40][7]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[40][2]~q\);

-- Location: FF_X41_Y29_N1
\inst|text_buffer[42][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[42][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[42][2]~q\);

-- Location: LCCOMB_X39_Y31_N10
\inst|text_buffer[10][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[10][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[10][2]~feeder_combout\);

-- Location: FF_X39_Y31_N11
\inst|text_buffer[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[10][2]~feeder_combout\,
	ena => \inst|text_buffer[10][7]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[10][2]~q\);

-- Location: FF_X38_Y31_N23
\inst|text_buffer[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[8][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[8][2]~q\);

-- Location: LCCOMB_X38_Y31_N22
\inst|Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~4_combout\ = (\inst|index\(1) & ((\inst|text_buffer[10][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(1) & (((\inst|text_buffer[8][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|text_buffer[10][2]~q\,
	datac => \inst|text_buffer[8][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~4_combout\);

-- Location: LCCOMB_X41_Y29_N0
\inst|Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~5_combout\ = (\inst|index\(5) & ((\inst|Mux21~4_combout\ & ((\inst|text_buffer[42][2]~q\))) # (!\inst|Mux21~4_combout\ & (\inst|text_buffer[40][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[40][2]~q\,
	datac => \inst|text_buffer[42][2]~q\,
	datad => \inst|Mux21~4_combout\,
	combout => \inst|Mux21~5_combout\);

-- Location: LCCOMB_X40_Y31_N30
\inst|Mux21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~6_combout\ = (\inst|index\(0) & ((\inst|index\(2)) # ((\inst|Mux21~3_combout\)))) # (!\inst|index\(0) & (!\inst|index\(2) & ((\inst|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(2),
	datac => \inst|Mux21~3_combout\,
	datad => \inst|Mux21~5_combout\,
	combout => \inst|Mux21~6_combout\);

-- Location: LCCOMB_X38_Y29_N8
\inst|text_buffer[44][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[44][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[44][2]~feeder_combout\);

-- Location: FF_X38_Y29_N9
\inst|text_buffer[44][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[44][2]~feeder_combout\,
	ena => \inst|text_buffer[44][7]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[44][2]~q\);

-- Location: FF_X40_Y29_N1
\inst|text_buffer[46][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[46][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[46][2]~q\);

-- Location: LCCOMB_X37_Y32_N12
\inst|text_buffer[14][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[14][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[14][2]~feeder_combout\);

-- Location: FF_X37_Y32_N13
\inst|text_buffer[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[14][2]~feeder_combout\,
	ena => \inst|text_buffer[14][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[14][2]~q\);

-- Location: FF_X38_Y32_N21
\inst|text_buffer[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[12][7]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[12][2]~q\);

-- Location: LCCOMB_X38_Y32_N20
\inst|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = (\inst|index\(5) & (((\inst|index\(1))))) # (!\inst|index\(5) & ((\inst|index\(1) & (\inst|text_buffer[14][2]~q\)) # (!\inst|index\(1) & ((\inst|text_buffer[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[14][2]~q\,
	datac => \inst|text_buffer[12][2]~q\,
	datad => \inst|index\(1),
	combout => \inst|Mux21~0_combout\);

-- Location: LCCOMB_X40_Y29_N0
\inst|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~1_combout\ = (\inst|index\(5) & ((\inst|Mux21~0_combout\ & ((\inst|text_buffer[46][2]~q\))) # (!\inst|Mux21~0_combout\ & (\inst|text_buffer[44][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[44][2]~q\,
	datac => \inst|text_buffer[46][2]~q\,
	datad => \inst|Mux21~0_combout\,
	combout => \inst|Mux21~1_combout\);

-- Location: LCCOMB_X37_Y30_N14
\inst|Mux21~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~9_combout\ = (\inst|index\(2) & ((\inst|Mux21~6_combout\ & (\inst|Mux21~8_combout\)) # (!\inst|Mux21~6_combout\ & ((\inst|Mux21~1_combout\))))) # (!\inst|index\(2) & (((\inst|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux21~8_combout\,
	datac => \inst|Mux21~6_combout\,
	datad => \inst|Mux21~1_combout\,
	combout => \inst|Mux21~9_combout\);

-- Location: LCCOMB_X38_Y25_N16
\inst|text_buffer[57][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[57][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[57][2]~feeder_combout\);

-- Location: FF_X38_Y25_N17
\inst|text_buffer[57][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[57][2]~feeder_combout\,
	ena => \inst|text_buffer[57][7]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[57][2]~q\);

-- Location: FF_X38_Y30_N23
\inst|text_buffer[61][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[61][7]~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[61][2]~q\);

-- Location: LCCOMB_X38_Y27_N2
\inst|text_buffer[29][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[29][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[29][2]~feeder_combout\);

-- Location: FF_X38_Y27_N3
\inst|text_buffer[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[29][2]~feeder_combout\,
	ena => \inst|text_buffer[29][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[29][2]~q\);

-- Location: FF_X35_Y27_N1
\inst|text_buffer[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[25][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[25][2]~q\);

-- Location: LCCOMB_X35_Y27_N0
\inst|Mux21~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~31_combout\ = (\inst|index\(2) & ((\inst|text_buffer[29][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(2) & (((\inst|text_buffer[25][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[29][2]~q\,
	datac => \inst|text_buffer[25][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~31_combout\);

-- Location: LCCOMB_X38_Y30_N22
\inst|Mux21~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~32_combout\ = (\inst|index\(5) & ((\inst|Mux21~31_combout\ & ((\inst|text_buffer[61][2]~q\))) # (!\inst|Mux21~31_combout\ & (\inst|text_buffer[57][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[57][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[61][2]~q\,
	datad => \inst|Mux21~31_combout\,
	combout => \inst|Mux21~32_combout\);

-- Location: LCCOMB_X41_Y27_N24
\inst|text_buffer[31][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[31][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[31][2]~feeder_combout\);

-- Location: FF_X41_Y27_N25
\inst|text_buffer[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[31][2]~feeder_combout\,
	ena => \inst|text_buffer[31][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[31][2]~q\);

-- Location: FF_X35_Y27_N27
\inst|text_buffer[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[27][7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[27][2]~q\);

-- Location: LCCOMB_X35_Y27_N26
\inst|Mux21~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~38_combout\ = (\inst|index\(2) & ((\inst|text_buffer[31][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(2) & (((\inst|text_buffer[27][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[31][2]~q\,
	datac => \inst|text_buffer[27][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~38_combout\);

-- Location: FF_X39_Y27_N3
\inst|text_buffer[59][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[59][7]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[59][2]~q\);

-- Location: FF_X34_Y31_N1
\inst|text_buffer[63][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector5~7_combout\,
	ena => \inst|text_buffer[63][7]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[63][2]~q\);

-- Location: LCCOMB_X39_Y27_N2
\inst|Mux21~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~39_combout\ = (\inst|Mux21~38_combout\ & (((\inst|text_buffer[63][2]~q\)) # (!\inst|index\(5)))) # (!\inst|Mux21~38_combout\ & (\inst|index\(5) & (\inst|text_buffer[59][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~38_combout\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[59][2]~q\,
	datad => \inst|text_buffer[63][2]~q\,
	combout => \inst|Mux21~39_combout\);

-- Location: LCCOMB_X42_Y28_N6
\inst|text_buffer[58][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[58][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[58][2]~feeder_combout\);

-- Location: FF_X42_Y28_N7
\inst|text_buffer[58][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[58][2]~feeder_combout\,
	ena => \inst|text_buffer[58][7]~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[58][2]~q\);

-- Location: FF_X39_Y28_N9
\inst|text_buffer[62][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[62][7]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[62][2]~q\);

-- Location: LCCOMB_X32_Y27_N26
\inst|text_buffer[30][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[30][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[30][2]~feeder_combout\);

-- Location: FF_X32_Y27_N27
\inst|text_buffer[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[30][2]~feeder_combout\,
	ena => \inst|text_buffer[30][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[30][2]~q\);

-- Location: FF_X36_Y27_N17
\inst|text_buffer[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[26][7]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[26][2]~q\);

-- Location: LCCOMB_X36_Y27_N16
\inst|Mux21~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~33_combout\ = (\inst|index\(2) & ((\inst|text_buffer[30][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(2) & (((\inst|text_buffer[26][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[30][2]~q\,
	datac => \inst|text_buffer[26][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~33_combout\);

-- Location: LCCOMB_X39_Y28_N8
\inst|Mux21~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~34_combout\ = (\inst|index\(5) & ((\inst|Mux21~33_combout\ & ((\inst|text_buffer[62][2]~q\))) # (!\inst|Mux21~33_combout\ & (\inst|text_buffer[58][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[58][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[62][2]~q\,
	datad => \inst|Mux21~33_combout\,
	combout => \inst|Mux21~34_combout\);

-- Location: LCCOMB_X38_Y25_N14
\inst|text_buffer[56][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[56][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[56][2]~feeder_combout\);

-- Location: FF_X38_Y25_N15
\inst|text_buffer[56][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[56][2]~feeder_combout\,
	ena => \inst|text_buffer[56][7]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[56][2]~q\);

-- Location: FF_X39_Y28_N31
\inst|text_buffer[60][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[60][7]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[60][2]~q\);

-- Location: FF_X35_Y31_N13
\inst|text_buffer[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[28][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[28][2]~q\);

-- Location: FF_X36_Y27_N31
\inst|text_buffer[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[24][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[24][2]~q\);

-- Location: LCCOMB_X36_Y27_N30
\inst|Mux21~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~35_combout\ = (\inst|index\(2) & ((\inst|text_buffer[28][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(2) & (((\inst|text_buffer[24][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|text_buffer[28][2]~q\,
	datac => \inst|text_buffer[24][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~35_combout\);

-- Location: LCCOMB_X39_Y28_N30
\inst|Mux21~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~36_combout\ = (\inst|index\(5) & ((\inst|Mux21~35_combout\ & ((\inst|text_buffer[60][2]~q\))) # (!\inst|Mux21~35_combout\ & (\inst|text_buffer[56][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[56][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[60][2]~q\,
	datad => \inst|Mux21~35_combout\,
	combout => \inst|Mux21~36_combout\);

-- Location: LCCOMB_X39_Y30_N26
\inst|Mux21~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~37_combout\ = (\inst|index\(0) & (\inst|index\(1))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|Mux21~34_combout\)) # (!\inst|index\(1) & ((\inst|Mux21~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(1),
	datac => \inst|Mux21~34_combout\,
	datad => \inst|Mux21~36_combout\,
	combout => \inst|Mux21~37_combout\);

-- Location: LCCOMB_X37_Y30_N30
\inst|Mux21~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~40_combout\ = (\inst|index\(0) & ((\inst|Mux21~37_combout\ & ((\inst|Mux21~39_combout\))) # (!\inst|Mux21~37_combout\ & (\inst|Mux21~32_combout\)))) # (!\inst|index\(0) & (((\inst|Mux21~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux21~32_combout\,
	datac => \inst|Mux21~39_combout\,
	datad => \inst|Mux21~37_combout\,
	combout => \inst|Mux21~40_combout\);

-- Location: LCCOMB_X36_Y28_N6
\inst|text_buffer[35][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[35][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[35][2]~feeder_combout\);

-- Location: FF_X36_Y28_N7
\inst|text_buffer[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[35][2]~feeder_combout\,
	ena => \inst|text_buffer[35][7]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[35][2]~q\);

-- Location: LCCOMB_X35_Y32_N10
\inst|text_buffer[7][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[7][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[7][2]~feeder_combout\);

-- Location: FF_X35_Y32_N11
\inst|text_buffer[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[7][2]~feeder_combout\,
	ena => \inst|text_buffer[7][7]~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[7][2]~q\);

-- Location: FF_X36_Y32_N9
\inst|text_buffer[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[3][7]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[3][2]~q\);

-- Location: LCCOMB_X36_Y32_N8
\inst|Mux21~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~27_combout\ = (\inst|index\(5) & (((\inst|index\(2))))) # (!\inst|index\(5) & ((\inst|index\(2) & (\inst|text_buffer[7][2]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[7][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[3][2]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux21~27_combout\);

-- Location: FF_X36_Y28_N5
\inst|text_buffer[39][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[39][7]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[39][2]~q\);

-- Location: LCCOMB_X36_Y28_N4
\inst|Mux21~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~28_combout\ = (\inst|Mux21~27_combout\ & (((\inst|text_buffer[39][2]~q\) # (!\inst|index\(5))))) # (!\inst|Mux21~27_combout\ & (\inst|text_buffer[35][2]~q\ & ((\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[35][2]~q\,
	datab => \inst|Mux21~27_combout\,
	datac => \inst|text_buffer[39][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~28_combout\);

-- Location: LCCOMB_X38_Y28_N16
\inst|text_buffer[32][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[32][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[32][2]~feeder_combout\);

-- Location: FF_X38_Y28_N17
\inst|text_buffer[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[32][2]~feeder_combout\,
	ena => \inst|text_buffer[32][7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[32][2]~q\);

-- Location: FF_X38_Y28_N11
\inst|text_buffer[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[36][7]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[36][2]~q\);

-- Location: LCCOMB_X34_Y32_N6
\inst|text_buffer[4][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[4][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[4][2]~feeder_combout\);

-- Location: FF_X34_Y32_N7
\inst|text_buffer[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[4][2]~feeder_combout\,
	ena => \inst|text_buffer[4][7]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[4][2]~q\);

-- Location: FF_X34_Y28_N9
\inst|text_buffer[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[0][7]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[0][2]~q\);

-- Location: LCCOMB_X34_Y28_N8
\inst|Mux21~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~24_combout\ = (\inst|index\(5) & (((\inst|index\(2))))) # (!\inst|index\(5) & ((\inst|index\(2) & (\inst|text_buffer[4][2]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[4][2]~q\,
	datac => \inst|text_buffer[0][2]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux21~24_combout\);

-- Location: LCCOMB_X38_Y28_N10
\inst|Mux21~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~25_combout\ = (\inst|index\(5) & ((\inst|Mux21~24_combout\ & ((\inst|text_buffer[36][2]~q\))) # (!\inst|Mux21~24_combout\ & (\inst|text_buffer[32][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[32][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[36][2]~q\,
	datad => \inst|Mux21~24_combout\,
	combout => \inst|Mux21~25_combout\);

-- Location: LCCOMB_X37_Y28_N14
\inst|text_buffer[33][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[33][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[33][2]~feeder_combout\);

-- Location: FF_X37_Y28_N15
\inst|text_buffer[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[33][2]~feeder_combout\,
	ena => \inst|text_buffer[33][7]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[33][2]~q\);

-- Location: FF_X37_Y28_N5
\inst|text_buffer[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[37][7]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[37][2]~q\);

-- Location: LCCOMB_X34_Y32_N24
\inst|text_buffer[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[5][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[5][2]~feeder_combout\);

-- Location: FF_X34_Y32_N25
\inst|text_buffer[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[5][2]~feeder_combout\,
	ena => \inst|text_buffer[5][7]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[5][2]~q\);

-- Location: FF_X34_Y28_N15
\inst|text_buffer[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[1][7]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[1][2]~q\);

-- Location: LCCOMB_X34_Y28_N14
\inst|Mux21~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~22_combout\ = (\inst|index\(5) & (((\inst|index\(2))))) # (!\inst|index\(5) & ((\inst|index\(2) & (\inst|text_buffer[5][2]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[5][2]~q\,
	datac => \inst|text_buffer[1][2]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux21~22_combout\);

-- Location: LCCOMB_X37_Y28_N4
\inst|Mux21~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~23_combout\ = (\inst|index\(5) & ((\inst|Mux21~22_combout\ & ((\inst|text_buffer[37][2]~q\))) # (!\inst|Mux21~22_combout\ & (\inst|text_buffer[33][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[33][2]~q\,
	datac => \inst|text_buffer[37][2]~q\,
	datad => \inst|Mux21~22_combout\,
	combout => \inst|Mux21~23_combout\);

-- Location: LCCOMB_X36_Y28_N8
\inst|Mux21~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~26_combout\ = (\inst|index\(0) & ((\inst|index\(1)) # ((\inst|Mux21~23_combout\)))) # (!\inst|index\(0) & (!\inst|index\(1) & (\inst|Mux21~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(1),
	datac => \inst|Mux21~25_combout\,
	datad => \inst|Mux21~23_combout\,
	combout => \inst|Mux21~26_combout\);

-- Location: LCCOMB_X36_Y25_N12
\inst|text_buffer[34][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[34][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[34][2]~feeder_combout\);

-- Location: FF_X36_Y25_N13
\inst|text_buffer[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[34][2]~feeder_combout\,
	ena => \inst|text_buffer[34][7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[34][2]~q\);

-- Location: FF_X36_Y25_N19
\inst|text_buffer[38][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[38][7]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[38][2]~q\);

-- Location: LCCOMB_X35_Y32_N8
\inst|text_buffer[6][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[6][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[6][2]~feeder_combout\);

-- Location: FF_X35_Y32_N9
\inst|text_buffer[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[6][2]~feeder_combout\,
	ena => \inst|text_buffer[6][7]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[6][2]~q\);

-- Location: FF_X36_Y32_N19
\inst|text_buffer[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[2][7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[2][2]~q\);

-- Location: LCCOMB_X36_Y32_N18
\inst|Mux21~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~20_combout\ = (\inst|index\(5) & (((\inst|index\(2))))) # (!\inst|index\(5) & ((\inst|index\(2) & (\inst|text_buffer[6][2]~q\)) # (!\inst|index\(2) & ((\inst|text_buffer[2][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[6][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[2][2]~q\,
	datad => \inst|index\(2),
	combout => \inst|Mux21~20_combout\);

-- Location: LCCOMB_X36_Y25_N18
\inst|Mux21~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~21_combout\ = (\inst|index\(5) & ((\inst|Mux21~20_combout\ & ((\inst|text_buffer[38][2]~q\))) # (!\inst|Mux21~20_combout\ & (\inst|text_buffer[34][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[34][2]~q\,
	datac => \inst|text_buffer[38][2]~q\,
	datad => \inst|Mux21~20_combout\,
	combout => \inst|Mux21~21_combout\);

-- Location: LCCOMB_X36_Y28_N22
\inst|Mux21~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~29_combout\ = (\inst|index\(1) & ((\inst|Mux21~26_combout\ & (\inst|Mux21~28_combout\)) # (!\inst|Mux21~26_combout\ & ((\inst|Mux21~21_combout\))))) # (!\inst|index\(1) & (((\inst|Mux21~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux21~28_combout\,
	datac => \inst|Mux21~26_combout\,
	datad => \inst|Mux21~21_combout\,
	combout => \inst|Mux21~29_combout\);

-- Location: LCCOMB_X34_Y26_N14
\inst|text_buffer[23][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[23][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[23][2]~feeder_combout\);

-- Location: FF_X34_Y26_N15
\inst|text_buffer[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[23][2]~feeder_combout\,
	ena => \inst|text_buffer[23][7]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[23][2]~q\);

-- Location: FF_X35_Y26_N15
\inst|text_buffer[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[22][7]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[22][2]~q\);

-- Location: LCCOMB_X35_Y26_N14
\inst|Mux21~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~17_combout\ = (\inst|index\(0) & ((\inst|text_buffer[23][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(0) & (((\inst|text_buffer[22][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[23][2]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[22][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~17_combout\);

-- Location: FF_X37_Y26_N19
\inst|text_buffer[55][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[55][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[55][2]~q\);

-- Location: LCCOMB_X37_Y26_N28
\inst|text_buffer[54][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[54][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[54][2]~feeder_combout\);

-- Location: FF_X37_Y26_N29
\inst|text_buffer[54][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[54][2]~feeder_combout\,
	ena => \inst|text_buffer[54][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[54][2]~q\);

-- Location: LCCOMB_X37_Y26_N18
\inst|Mux21~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~18_combout\ = (\inst|index\(5) & ((\inst|Mux21~17_combout\ & (\inst|text_buffer[55][2]~q\)) # (!\inst|Mux21~17_combout\ & ((\inst|text_buffer[54][2]~q\))))) # (!\inst|index\(5) & (\inst|Mux21~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux21~17_combout\,
	datac => \inst|text_buffer[55][2]~q\,
	datad => \inst|text_buffer[54][2]~q\,
	combout => \inst|Mux21~18_combout\);

-- Location: LCCOMB_X37_Y27_N4
\inst|text_buffer[50][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[50][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[50][2]~feeder_combout\);

-- Location: FF_X37_Y27_N5
\inst|text_buffer[50][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[50][2]~feeder_combout\,
	ena => \inst|text_buffer[50][7]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[50][2]~q\);

-- Location: FF_X34_Y27_N17
\inst|text_buffer[51][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[51][7]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[51][2]~q\);

-- Location: LCCOMB_X36_Y26_N0
\inst|text_buffer[19][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[19][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[19][2]~feeder_combout\);

-- Location: FF_X36_Y26_N1
\inst|text_buffer[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[19][2]~feeder_combout\,
	ena => \inst|text_buffer[19][7]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[19][2]~q\);

-- Location: FF_X35_Y25_N5
\inst|text_buffer[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[18][7]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[18][2]~q\);

-- Location: LCCOMB_X35_Y25_N4
\inst|Mux21~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~10_combout\ = (\inst|index\(5) & (((\inst|index\(0))))) # (!\inst|index\(5) & ((\inst|index\(0) & (\inst|text_buffer[19][2]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[18][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[19][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[18][2]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux21~10_combout\);

-- Location: LCCOMB_X34_Y27_N16
\inst|Mux21~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~11_combout\ = (\inst|index\(5) & ((\inst|Mux21~10_combout\ & ((\inst|text_buffer[51][2]~q\))) # (!\inst|Mux21~10_combout\ & (\inst|text_buffer[50][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[50][2]~q\,
	datac => \inst|text_buffer[51][2]~q\,
	datad => \inst|Mux21~10_combout\,
	combout => \inst|Mux21~11_combout\);

-- Location: LCCOMB_X37_Y25_N30
\inst|text_buffer[48][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[48][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[48][2]~feeder_combout\);

-- Location: FF_X37_Y25_N31
\inst|text_buffer[48][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[48][2]~feeder_combout\,
	ena => \inst|text_buffer[48][7]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[48][2]~q\);

-- Location: FF_X37_Y25_N1
\inst|text_buffer[49][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[49][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[49][2]~q\);

-- Location: LCCOMB_X34_Y25_N12
\inst|text_buffer[17][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[17][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[17][2]~feeder_combout\);

-- Location: FF_X34_Y25_N13
\inst|text_buffer[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[17][2]~feeder_combout\,
	ena => \inst|text_buffer[17][7]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[17][2]~q\);

-- Location: FF_X35_Y25_N3
\inst|text_buffer[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[16][7]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[16][2]~q\);

-- Location: LCCOMB_X35_Y25_N2
\inst|Mux21~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~14_combout\ = (\inst|index\(5) & (((\inst|index\(0))))) # (!\inst|index\(5) & ((\inst|index\(0) & (\inst|text_buffer[17][2]~q\)) # (!\inst|index\(0) & ((\inst|text_buffer[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[17][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[16][2]~q\,
	datad => \inst|index\(0),
	combout => \inst|Mux21~14_combout\);

-- Location: LCCOMB_X37_Y25_N0
\inst|Mux21~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~15_combout\ = (\inst|index\(5) & ((\inst|Mux21~14_combout\ & ((\inst|text_buffer[49][2]~q\))) # (!\inst|Mux21~14_combout\ & (\inst|text_buffer[48][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[48][2]~q\,
	datab => \inst|index\(5),
	datac => \inst|text_buffer[49][2]~q\,
	datad => \inst|Mux21~14_combout\,
	combout => \inst|Mux21~15_combout\);

-- Location: LCCOMB_X38_Y26_N20
\inst|text_buffer[52][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[52][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[52][2]~feeder_combout\);

-- Location: FF_X38_Y26_N21
\inst|text_buffer[52][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[52][2]~feeder_combout\,
	ena => \inst|text_buffer[52][7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[52][2]~q\);

-- Location: FF_X38_Y26_N7
\inst|text_buffer[53][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[53][7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[53][2]~q\);

-- Location: LCCOMB_X34_Y26_N16
\inst|text_buffer[21][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|text_buffer[21][2]~feeder_combout\ = \inst|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector5~7_combout\,
	combout => \inst|text_buffer[21][2]~feeder_combout\);

-- Location: FF_X34_Y26_N17
\inst|text_buffer[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|text_buffer[21][2]~feeder_combout\,
	ena => \inst|text_buffer[21][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[21][2]~q\);

-- Location: FF_X35_Y26_N17
\inst|text_buffer[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector5~7_combout\,
	sload => VCC,
	ena => \inst|text_buffer[20][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|text_buffer[20][2]~q\);

-- Location: LCCOMB_X35_Y26_N16
\inst|Mux21~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~12_combout\ = (\inst|index\(0) & ((\inst|text_buffer[21][2]~q\) # ((\inst|index\(5))))) # (!\inst|index\(0) & (((\inst|text_buffer[20][2]~q\ & !\inst|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_buffer[21][2]~q\,
	datab => \inst|index\(0),
	datac => \inst|text_buffer[20][2]~q\,
	datad => \inst|index\(5),
	combout => \inst|Mux21~12_combout\);

-- Location: LCCOMB_X38_Y26_N6
\inst|Mux21~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~13_combout\ = (\inst|index\(5) & ((\inst|Mux21~12_combout\ & ((\inst|text_buffer[53][2]~q\))) # (!\inst|Mux21~12_combout\ & (\inst|text_buffer[52][2]~q\)))) # (!\inst|index\(5) & (((\inst|Mux21~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|text_buffer[52][2]~q\,
	datac => \inst|text_buffer[53][2]~q\,
	datad => \inst|Mux21~12_combout\,
	combout => \inst|Mux21~13_combout\);

-- Location: LCCOMB_X37_Y30_N24
\inst|Mux21~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~16_combout\ = (\inst|index\(2) & ((\inst|index\(1)) # ((\inst|Mux21~13_combout\)))) # (!\inst|index\(2) & (!\inst|index\(1) & (\inst|Mux21~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(1),
	datac => \inst|Mux21~15_combout\,
	datad => \inst|Mux21~13_combout\,
	combout => \inst|Mux21~16_combout\);

-- Location: LCCOMB_X37_Y30_N10
\inst|Mux21~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~19_combout\ = (\inst|index\(1) & ((\inst|Mux21~16_combout\ & (\inst|Mux21~18_combout\)) # (!\inst|Mux21~16_combout\ & ((\inst|Mux21~11_combout\))))) # (!\inst|index\(1) & (((\inst|Mux21~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux21~18_combout\,
	datac => \inst|Mux21~11_combout\,
	datad => \inst|Mux21~16_combout\,
	combout => \inst|Mux21~19_combout\);

-- Location: LCCOMB_X37_Y30_N12
\inst|Mux21~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~30_combout\ = (\inst|index\(4) & ((\inst|index\(3)) # ((\inst|Mux21~19_combout\)))) # (!\inst|index\(4) & (!\inst|index\(3) & (\inst|Mux21~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|Mux21~29_combout\,
	datad => \inst|Mux21~19_combout\,
	combout => \inst|Mux21~30_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst|Mux21~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux21~41_combout\ = (\inst|index\(3) & ((\inst|Mux21~30_combout\ & ((\inst|Mux21~40_combout\))) # (!\inst|Mux21~30_combout\ & (\inst|Mux21~9_combout\)))) # (!\inst|index\(3) & (((\inst|Mux21~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux21~9_combout\,
	datac => \inst|Mux21~40_combout\,
	datad => \inst|Mux21~30_combout\,
	combout => \inst|Mux21~41_combout\);

-- Location: LCCOMB_X37_Y30_N22
\inst|tx_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|tx_data[2]~feeder_combout\ = \inst|Mux21~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux21~41_combout\,
	combout => \inst|tx_data[2]~feeder_combout\);

-- Location: LCCOMB_X41_Y28_N8
\inst|tx_data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|tx_data[7]~0_combout\ = (\inst|state.S_TX_LOAD~q\ & \KEY1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.S_TX_LOAD~q\,
	datac => \KEY1~input_o\,
	combout => \inst|tx_data[7]~0_combout\);

-- Location: FF_X37_Y30_N23
\inst|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|tx_data[2]~feeder_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(2));

-- Location: LCCOMB_X41_Y26_N28
\inst|u_tx|shifter[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|shifter[3]~feeder_combout\ = \inst|tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tx_data\(2),
	combout => \inst|u_tx|shifter[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y26_N6
\inst|u_tx|shifter[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|shifter[8]~0_combout\ = (\inst|tx_start~q\ & !\inst|u_tx|busy_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tx_start~q\,
	datad => \inst|u_tx|busy_reg~q\,
	combout => \inst|u_tx|shifter[8]~0_combout\);

-- Location: FF_X41_Y26_N29
\inst|u_tx|shifter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|shifter[3]~feeder_combout\,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(3));

-- Location: FF_X36_Y29_N13
\inst|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux22~41_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(1));

-- Location: FF_X41_Y26_N23
\inst|u_tx|shifter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|tx_data\(1),
	sload => VCC,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(2));

-- Location: LCCOMB_X41_Y26_N22
\inst|u_tx|tx_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|tx_reg~1_combout\ = (\inst|u_tx|bit_cnt\(1) & ((\inst|u_tx|bit_cnt\(0) & (\inst|u_tx|shifter\(3))) # (!\inst|u_tx|bit_cnt\(0) & ((\inst|u_tx|shifter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|shifter\(3),
	datab => \inst|u_tx|bit_cnt\(1),
	datac => \inst|u_tx|shifter\(2),
	datad => \inst|u_tx|bit_cnt\(0),
	combout => \inst|u_tx|tx_reg~1_combout\);

-- Location: FF_X37_Y30_N17
\inst|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux23~41_combout\,
	sload => VCC,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(0));

-- Location: LCCOMB_X41_Y26_N24
\inst|u_tx|shifter[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|shifter[1]~feeder_combout\ = \inst|tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tx_data\(0),
	combout => \inst|u_tx|shifter[1]~feeder_combout\);

-- Location: FF_X41_Y26_N25
\inst|u_tx|shifter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|shifter[1]~feeder_combout\,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(1));

-- Location: LCCOMB_X36_Y30_N16
\inst|tx_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|tx_data[7]~feeder_combout\ = \inst|Mux16~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux16~41_combout\,
	combout => \inst|tx_data[7]~feeder_combout\);

-- Location: FF_X36_Y30_N17
\inst|tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|tx_data[7]~feeder_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(7));

-- Location: FF_X41_Y26_N19
\inst|u_tx|shifter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|tx_data\(7),
	sload => VCC,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(8));

-- Location: LCCOMB_X41_Y26_N18
\inst|u_tx|tx_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|tx_reg~0_combout\ = (\inst|u_tx|bit_cnt\(3) & (((\inst|u_tx|shifter\(8)) # (\inst|u_tx|bit_cnt\(0))))) # (!\inst|u_tx|bit_cnt\(3) & (\inst|u_tx|shifter\(1) & ((\inst|u_tx|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|shifter\(1),
	datab => \inst|u_tx|bit_cnt\(3),
	datac => \inst|u_tx|shifter\(8),
	datad => \inst|u_tx|bit_cnt\(0),
	combout => \inst|u_tx|tx_reg~0_combout\);

-- Location: LCCOMB_X41_Y26_N8
\inst|u_tx|tx_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|tx_reg~2_combout\ = (\inst|u_tx|tx_reg~1_combout\ & (((\inst|u_tx|tx_reg~0_combout\ & !\inst|u_tx|bit_cnt\(1))) # (!\inst|u_tx|bit_cnt\(3)))) # (!\inst|u_tx|tx_reg~1_combout\ & (\inst|u_tx|tx_reg~0_combout\ & (!\inst|u_tx|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|tx_reg~1_combout\,
	datab => \inst|u_tx|tx_reg~0_combout\,
	datac => \inst|u_tx|bit_cnt\(1),
	datad => \inst|u_tx|bit_cnt\(3),
	combout => \inst|u_tx|tx_reg~2_combout\);

-- Location: FF_X36_Y29_N11
\inst|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux19~41_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(4));

-- Location: LCCOMB_X41_Y26_N12
\inst|u_tx|shifter[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|shifter[5]~feeder_combout\ = \inst|tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tx_data\(4),
	combout => \inst|u_tx|shifter[5]~feeder_combout\);

-- Location: FF_X41_Y26_N13
\inst|u_tx|shifter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|shifter[5]~feeder_combout\,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(5));

-- Location: FF_X37_Y30_N21
\inst|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux20~41_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(3));

-- Location: FF_X41_Y26_N11
\inst|u_tx|shifter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|tx_data\(3),
	sload => VCC,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(4));

-- Location: LCCOMB_X41_Y26_N10
\inst|u_tx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Mux0~0_combout\ = (\inst|u_tx|bit_cnt\(1) & (((\inst|u_tx|bit_cnt\(0))))) # (!\inst|u_tx|bit_cnt\(1) & ((\inst|u_tx|bit_cnt\(0) & (\inst|u_tx|shifter\(5))) # (!\inst|u_tx|bit_cnt\(0) & ((\inst|u_tx|shifter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|shifter\(5),
	datab => \inst|u_tx|bit_cnt\(1),
	datac => \inst|u_tx|shifter\(4),
	datad => \inst|u_tx|bit_cnt\(0),
	combout => \inst|u_tx|Mux0~0_combout\);

-- Location: FF_X37_Y29_N17
\inst|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux17~41_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(6));

-- Location: FF_X41_Y26_N17
\inst|u_tx|shifter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|tx_data\(6),
	sload => VCC,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(7));

-- Location: FF_X37_Y29_N31
\inst|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux18~41_combout\,
	ena => \inst|tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tx_data\(5));

-- Location: LCCOMB_X41_Y26_N2
\inst|u_tx|shifter[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|shifter[6]~feeder_combout\ = \inst|tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tx_data\(5),
	combout => \inst|u_tx|shifter[6]~feeder_combout\);

-- Location: FF_X41_Y26_N3
\inst|u_tx|shifter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|shifter[6]~feeder_combout\,
	ena => \inst|u_tx|shifter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|shifter\(6));

-- Location: LCCOMB_X41_Y26_N16
\inst|u_tx|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|Mux0~1_combout\ = (\inst|u_tx|Mux0~0_combout\ & (((\inst|u_tx|shifter\(7))) # (!\inst|u_tx|bit_cnt\(1)))) # (!\inst|u_tx|Mux0~0_combout\ & (\inst|u_tx|bit_cnt\(1) & ((\inst|u_tx|shifter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Mux0~0_combout\,
	datab => \inst|u_tx|bit_cnt\(1),
	datac => \inst|u_tx|shifter\(7),
	datad => \inst|u_tx|shifter\(6),
	combout => \inst|u_tx|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y26_N0
\inst|u_tx|tx_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|tx_reg~3_combout\ = (\inst|u_tx|bit_cnt\(2) & (((\inst|u_tx|Mux0~1_combout\ & !\inst|u_tx|bit_cnt\(3))))) # (!\inst|u_tx|bit_cnt\(2) & (\inst|u_tx|tx_reg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|tx_reg~2_combout\,
	datab => \inst|u_tx|bit_cnt\(2),
	datac => \inst|u_tx|Mux0~1_combout\,
	datad => \inst|u_tx|bit_cnt\(3),
	combout => \inst|u_tx|tx_reg~3_combout\);

-- Location: LCCOMB_X42_Y26_N2
\inst|u_tx|tx_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u_tx|tx_reg~4_combout\ = (\inst|u_tx|Equal0~3_combout\ & (((\inst|u_tx|tx_reg~q\)))) # (!\inst|u_tx|Equal0~3_combout\ & ((\inst|u_tx|busy_reg~q\ & ((!\inst|u_tx|tx_reg~3_combout\))) # (!\inst|u_tx|busy_reg~q\ & (\inst|u_tx|tx_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u_tx|Equal0~3_combout\,
	datab => \inst|u_tx|busy_reg~q\,
	datac => \inst|u_tx|tx_reg~q\,
	datad => \inst|u_tx|tx_reg~3_combout\,
	combout => \inst|u_tx|tx_reg~4_combout\);

-- Location: FF_X42_Y26_N3
\inst|u_tx|tx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|u_tx|tx_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u_tx|tx_reg~q\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Tx_pin <= \Tx_pin~output_o\;
END structure;


