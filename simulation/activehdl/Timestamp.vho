-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "03/30/2024 19:00:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timestamp IS
    PORT (
	\Trigger(n)\ : IN std_logic := '0';
	\Hit(n)\ : IN std_logic := '0';
	CLK0 : IN std_logic;
	RST : IN std_logic;
	init : IN std_logic;
	Trigger : IN std_logic;
	Hit : IN std_logic;
	Zero : IN std_logic;
	One : IN std_logic;
	FCout1 : BUFFER std_logic;
	FCout2 : BUFFER std_logic;
	RR : BUFFER std_logic_vector(7 DOWNTO 0);
	RTC : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END Timestamp;

-- Design Ports Information
-- FCout1	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FCout2	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTC[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- One	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Trigger	=>  Location: PIN_D26,	 I/O Standard: LVDS,	 Current Strength: Default
-- init	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hit	=>  Location: PIN_F24,	 I/O Standard: LVDS,	 Current Strength: Default
-- CLK0	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Trigger(n)	=>  Location: PIN_C27,	 I/O Standard: LVDS,	 Current Strength: Default
-- Hit(n)	=>  Location: PIN_F25,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF Timestamp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_Trigger(n)\ : std_logic;
SIGNAL \ww_Hit(n)\ : std_logic;
SIGNAL ww_CLK0 : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_Trigger : std_logic;
SIGNAL ww_Hit : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_One : std_logic;
SIGNAL ww_FCout1 : std_logic;
SIGNAL ww_FCout2 : std_logic;
SIGNAL ww_RR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RTC : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc2|sc0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc0|sc4|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sc2|sc1|Y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sc1|sc5|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK0~input_o\ : std_logic;
SIGNAL \sc2|sc0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \sc2|sc0|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sc2|sc1|Y~combout\ : std_logic;
SIGNAL \sc2|sc1|Y~clkctrl_outclk\ : std_logic;
SIGNAL \One~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \sc4|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[15]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[17]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[18]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[19]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[20]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[21]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[22]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[23]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[24]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[26]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[27]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[28]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[29]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[31]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[32]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[35]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[36]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[37]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[38]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[40]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[41]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[43]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[44]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[45]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[46]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[48]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[53]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[54]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[56]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[57]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[59]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[60]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[61]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[62]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[63]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[64]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[65]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[68]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[70]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[71]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[73]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[74]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[76]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[77]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[78]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[81]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[85]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[86]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[87]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[88]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[89]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[90]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[92]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[94]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[96]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[101]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[102]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[104]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[108]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[109]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[110]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[111]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[114]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[116]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[118]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[119]~feeder_combout\ : std_logic;
SIGNAL \sc4|shift_reg[120]~feeder_combout\ : std_logic;
SIGNAL \Zero~input_o\ : std_logic;
SIGNAL \sc3|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[16]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[17]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[18]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[20]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[21]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[22]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[23]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[24]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[25]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[26]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[28]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[29]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[33]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[34]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[36]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[38]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[39]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[40]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[41]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[42]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[44]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[47]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[53]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[54]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[55]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[60]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[61]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[62]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[65]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[71]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[72]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[73]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[74]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[76]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[78]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[79]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[81]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[83]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[84]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[85]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[87]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[89]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[90]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[91]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[92]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[93]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[94]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[95]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[96]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[97]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[98]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[100]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[105]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[106]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[111]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[112]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[113]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[114]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[115]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[117]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[120]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[121]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[124]~feeder_combout\ : std_logic;
SIGNAL \sc3|shift_reg[126]~feeder_combout\ : std_logic;
SIGNAL \Trigger~input_o\ : std_logic;
SIGNAL \sc1|sc1|Q~feeder_combout\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[0]~18_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc1|CRST~combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[1]~6_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[1]~7\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[2]~8_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[2]~9\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[3]~10_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[3]~11\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[4]~12_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[4]~13\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[5]~14_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[5]~15\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[6]~16_combout\ : std_logic;
SIGNAL \sc1|sc0|sc0|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc1|sc6|Q~feeder_combout\ : std_logic;
SIGNAL \sc1|sc8|Mux2~0_combout\ : std_logic;
SIGNAL \sc1|sc8|Mux0~0_combout\ : std_logic;
SIGNAL \sc1|sc6|Q~q\ : std_logic;
SIGNAL \sc1|sc8|Mux1~0_combout\ : std_logic;
SIGNAL \sc1|TRST~combout\ : std_logic;
SIGNAL \sc1|sc1|Q~q\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~1_cout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~3\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~5\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~7\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~9\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~11\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~13\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~15\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~17\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~19\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~21\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~23\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~25\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~27\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~29\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~31\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~33\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~35\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~37\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~39\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~41\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~43\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~45\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~47\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~49\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~51\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~53\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~55\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~57\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~59\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~61\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~63\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~65\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~67\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~69\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~71\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~73\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~75\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~77\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~79\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~81\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~83\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~85\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~87\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~89\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~91\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~93\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~95\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~97\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~99\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~101\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~103\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~105\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~107\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~109\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~111\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~113\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~115\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~117\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~119\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~121\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~123\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~125\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~127\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~129\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~131\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~133\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~135\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~137\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~139\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~141\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~143\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~145\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~147\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~149\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~151\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~153\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~155\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~157\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~159\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~161\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~163\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~165\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~167\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~169\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~171\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~173\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~175\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~177\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~179\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~181\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~183\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~185\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~187\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~189\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~191\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~193\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~195\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~197\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~199\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~201\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~203\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~205\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~207\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~209\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~211\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~213\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~215\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~217\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~219\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~221\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~223\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~225\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~227\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~229\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~231\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~233\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~235\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~237\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~239\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~241\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~243\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~245\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~247\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~249\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~251\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~253\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~255\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~257\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~258_combout\ : std_logic;
SIGNAL \Hit~input_o\ : std_logic;
SIGNAL \sc0|sc6|Q~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|sc1|Q~feeder_combout\ : std_logic;
SIGNAL \sc0|sc5|Mux2~0_combout\ : std_logic;
SIGNAL \sc0|sc5|Mux1~0_combout\ : std_logic;
SIGNAL \sc0|sc5|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc0|sc1|Q~q\ : std_logic;
SIGNAL \sc0|sc0|sc2|Q~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|sc2|Q~q\ : std_logic;
SIGNAL \sc0|sc4|Q~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|Q~q\ : std_logic;
SIGNAL \sc0|HRST~0_combout\ : std_logic;
SIGNAL \sc0|sc6|Q~q\ : std_logic;
SIGNAL \sc0|sc0|sc0|Q~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|sc0|Q~q\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~1_cout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~3\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~5\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~7\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~9\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~11\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~13\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~15\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~17\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~19\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~21\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~23\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~25\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~27\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~29\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~31\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~33\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~35\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~37\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~39\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~41\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~43\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~45\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~47\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~49\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~51\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~53\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~55\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~57\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~59\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~61\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~63\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~65\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~67\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~69\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~71\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~73\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~75\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~77\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~79\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~81\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~83\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~85\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~87\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~89\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~91\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~93\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~95\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~97\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~99\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~101\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~103\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~105\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~107\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~109\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~111\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~113\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~115\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~117\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~119\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~121\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~123\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~125\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~127\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~129\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~131\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~133\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~135\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~137\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~139\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~141\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~143\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~145\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~147\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~149\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~151\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~153\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~155\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~157\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~159\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~161\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~163\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~165\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~167\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~169\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~171\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~173\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~175\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~177\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~179\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~181\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~183\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~185\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~187\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~189\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~191\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~193\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~195\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~197\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~199\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~201\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~203\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~205\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~207\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~209\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~211\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~213\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~215\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~217\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~219\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~221\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~223\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~225\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~227\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~229\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~231\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~233\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~235\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~237\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~239\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~241\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~243\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~245\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~247\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~249\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~251\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~253\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~255\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~257\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~258_combout\ : std_logic;
SIGNAL \sc1|sc2|sc0|Q~feeder_combout\ : std_logic;
SIGNAL \sc1|sc2|sc0|Q~q\ : std_logic;
SIGNAL \sc1|sc2|sc1|Q~q\ : std_logic;
SIGNAL \sc1|sc2|sc2|Q~feeder_combout\ : std_logic;
SIGNAL \sc1|sc2|sc2|Q~q\ : std_logic;
SIGNAL \sc1|sc5|Q~feeder_combout\ : std_logic;
SIGNAL \sc1|sc7|Mux2~0_combout\ : std_logic;
SIGNAL \sc1|sc7|Mux1~0_combout\ : std_logic;
SIGNAL \sc1|sc7|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc1|sc7|Mux0~0_combout\ : std_logic;
SIGNAL \sc1|sc5|Q~q\ : std_logic;
SIGNAL \sc1|sc5|Q~clkctrl_outclk\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~250_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~232_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~236_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~238_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~234_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~51_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~228_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~226_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~6_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~216_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~214_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~7_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~212_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~206_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~208_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~204_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~202_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~9_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~198_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~194_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~196_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~8_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~192_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~190_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~6_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~184_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~182_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~10_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~188_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~186_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~47_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~178_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~172_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~176_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~170_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~174_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~11_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~180_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~156_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~158_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~154_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~42_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~120_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~128_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~124_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~126_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~122_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~15_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~116_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~118_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~114_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~14_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~106_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~112_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~110_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~16_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~108_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~102_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~104_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~100_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~18_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~98_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~94_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~92_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~96_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~90_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~17_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~88_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~86_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~82_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~84_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~34_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~80_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~66_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~68_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~19_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~64_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~62_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~60_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~7_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~46_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~48_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~42_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~44_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~23_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~26_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~28_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~20_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~24_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~18_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~22_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~27_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~28_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~32_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~30_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~24_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~16_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~14_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~12_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~10_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~25_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~8_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~4_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~2_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~6_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~26_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~29_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~40_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~38_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~36_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~34_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~22_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~30_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~50_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~52_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~31_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~58_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~56_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~54_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~32_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~8_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~76_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~78_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~74_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~20_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~72_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~70_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~21_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~33_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~35_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~36_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~37_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~38_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~136_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~134_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~13_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~130_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~132_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~39_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~142_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~144_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~140_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~40_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~138_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~148_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~146_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~12_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~41_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~152_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~150_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~43_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~162_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~168_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~166_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~164_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~44_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~160_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~45_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~46_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~9_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~200_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~48_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~210_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~49_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~218_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~222_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~220_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~224_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[4]~10_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~50_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~230_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~52_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~240_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~248_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~242_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~246_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~244_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~53_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~54_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[0]~13_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~254_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~256_combout\ : std_logic;
SIGNAL \sc1|sc3|sc0|Add0~252_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[0]~12_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~55_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~56_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~57_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~110_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~109_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~63_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~64_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~65_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~66_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~67_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~72_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~71_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~70_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~73_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~68_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~69_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~74_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~90_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~88_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~89_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~183_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~91_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~92_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~75_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~76_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~77_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~182_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~78_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~79_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~80_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~81_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~82_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~83_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~84_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~85_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~86_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~87_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~93_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~94_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~95_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~96_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~100_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~97_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~98_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~99_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~101_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~102_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~103_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~104_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~105_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~59_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~106_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~107_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~61_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~62_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~58_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~60_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~108_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~111_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[0]~11_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[0]~14_combout\ : std_logic;
SIGNAL \sc0|sc4|Q~clkctrl_outclk\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~234_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~232_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~236_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~230_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~56_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~238_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~52_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~226_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~228_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~6_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~222_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~224_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~220_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[4]~8_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~218_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~210_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~212_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~214_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~216_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~7_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~200_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~198_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~196_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~194_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~8_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~182_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~184_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~10_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~186_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~188_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~48_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~192_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~190_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~5_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~162_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~168_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~164_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~166_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~45_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~150_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~156_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~154_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~158_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~43_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~152_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~140_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~142_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~144_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~41_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~116_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~114_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~118_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~14_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~120_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~126_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~124_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~128_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~122_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~15_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~104_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~102_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~100_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~17_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~108_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~106_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~37_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~112_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~110_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~16_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~86_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~88_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~82_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~84_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~18_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~98_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~80_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~42_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~48_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~44_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~46_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~24_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~30_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~32_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~25_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~6_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~2_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~4_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~8_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~27_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~16_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~10_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~12_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~14_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~26_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~20_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~22_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~24_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~18_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~28_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~28_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~26_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~29_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~30_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~40_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~38_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~34_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~36_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~23_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~31_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~54_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~56_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~22_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~52_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~50_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~32_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~62_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~64_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~60_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~6_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~68_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~66_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~21_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~58_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~33_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~74_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~76_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~78_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~34_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~72_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~70_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~20_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~35_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~92_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~94_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~90_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~96_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~19_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~36_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~38_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~39_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~136_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~134_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~13_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~130_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~132_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~40_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~138_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~146_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~148_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~12_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~42_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~44_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~160_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~46_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~180_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~178_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~170_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~172_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~176_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~174_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~11_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~47_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~7_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~208_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~202_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~204_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~206_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~9_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~49_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~50_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~51_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~53_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~240_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~244_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~246_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~242_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~55_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~57_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~248_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~54_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[0]~11_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~252_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~254_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~256_combout\ : std_logic;
SIGNAL \sc0|sc1|sc0|Add0~250_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[0]~4_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[0]~9_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[0]~10_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~110_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~109_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~107_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~105_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~102_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~62_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~63_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~96_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~183_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~92_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~83_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~72_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~81_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~182_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~75_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~76_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~77_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~78_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~79_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~80_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~82_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~84_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~71_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~73_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~70_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~74_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~88_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~89_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~85_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~86_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~87_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~90_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~91_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~93_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~94_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~95_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~97_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~98_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~68_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~67_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~66_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~69_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~64_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~65_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~99_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~58_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~59_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~60_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~61_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~100_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~103_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~101_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~104_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~106_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~108_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~111_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[0]~12_combout\ : std_logic;
SIGNAL \sc0|sc3|R[0]~0_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[1]~15_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[1]~16_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~154_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~151_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~115_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~116_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~148_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~122_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~123_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~141_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~127_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~128_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~138_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~130_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~131_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~132_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~133_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~134_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~129_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~135_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~136_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~137_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~139_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~124_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~125_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~126_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~140_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~142_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~143_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~144_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~121_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~145_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~146_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~119_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~120_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~147_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~149_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~117_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~118_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~150_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~152_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~114_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~153_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~155_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~112_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~113_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[1]~17_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[1]~18_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[1]~19_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~151_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~118_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~119_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~121_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~143_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~125_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~124_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~126_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~127_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~128_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~138_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~130_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~131_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~132_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~133_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~134_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~129_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~135_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~136_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~137_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~139_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~140_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~122_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~123_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~141_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~142_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~144_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~145_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~146_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~120_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~147_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~148_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~149_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~116_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~117_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~150_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~152_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~115_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~153_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~154_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~155_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~113_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~114_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[1]~15_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[1]~16_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~112_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[1]~13_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[1]~14_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[1]~17_combout\ : std_logic;
SIGNAL \sc0|sc3|R[0]~1\ : std_logic;
SIGNAL \sc0|sc3|R[1]~2_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~156_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~157_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~184_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~161_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~163_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~164_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~165_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~166_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~162_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~167_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~168_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~169_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~170_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~171_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~172_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~173_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~174_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~160_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~175_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~176_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~177_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~158_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~159_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[2]~20_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~156_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~157_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~159_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~160_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~161_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~162_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~163_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~164_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~165_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~166_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~167_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~168_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~169_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~170_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~171_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~184_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~172_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~158_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~173_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~174_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~175_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~176_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[2]~18_combout\ : std_logic;
SIGNAL \sc0|sc3|R[1]~3\ : std_logic;
SIGNAL \sc0|sc3|R[2]~4_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~23_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~177_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~37_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~19_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~20_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~21_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~22_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~24_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~25_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~38_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~26_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~27_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[3]~28_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~25_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~38_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~21_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~22_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~23_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~24_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~26_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~27_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~39_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~28_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~29_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[3]~30_combout\ : std_logic;
SIGNAL \sc0|sc3|R[2]~5\ : std_logic;
SIGNAL \sc0|sc3|R[3]~6_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~178_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~179_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~180_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|process_0~181_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[4]~31_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[4]~32_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[4]~33_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~178_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~179_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~180_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|process_0~181_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[4]~29_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[4]~30_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[4]~31_combout\ : std_logic;
SIGNAL \sc0|sc3|R[3]~7\ : std_logic;
SIGNAL \sc0|sc3|R[4]~8_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~32_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~33_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[5]~34_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~34_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[5]~35_combout\ : std_logic;
SIGNAL \sc0|sc3|R[4]~9\ : std_logic;
SIGNAL \sc0|sc3|R[5]~10_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[6]~35_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[6]~36_combout\ : std_logic;
SIGNAL \sc0|sc3|R[5]~11\ : std_logic;
SIGNAL \sc0|sc3|R[6]~12_combout\ : std_logic;
SIGNAL \sc0|sc2|sc1|sc1|count_out[7]~36_combout\ : std_logic;
SIGNAL \sc1|sc4|sc1|count_out[7]~37_combout\ : std_logic;
SIGNAL \sc0|sc3|R[6]~13\ : std_logic;
SIGNAL \sc0|sc3|R[7]~14_combout\ : std_logic;
SIGNAL \sc0|sc2|sc0|Reg[0]~feeder_combout\ : std_logic;
SIGNAL \sc1|sc8|qp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc1|sc4|sc0|Reg\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \sc1|sc0|sc0|qp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sc0|sc2|sc1|sc0|Reg\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc4|shift_reg\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \sc3|shift_reg\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \sc0|sc2|sc0|Reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc5|qp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc1|sc7|qp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc2|sc1|ALT_INV_Y~clkctrl_outclk\ : std_logic;
SIGNAL \sc1|sc8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sc1|ALT_INV_CRST~combout\ : std_logic;
SIGNAL \sc1|sc7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sc0|ALT_INV_HRST~0_combout\ : std_logic;
SIGNAL \sc0|sc5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sc1|ALT_INV_TRST~combout\ : std_logic;

BEGIN

\ww_Trigger(n)\ <= \Trigger(n)\;
\ww_Hit(n)\ <= \Hit(n)\;
ww_CLK0 <= CLK0;
ww_RST <= RST;
ww_init <= init;
ww_Trigger <= Trigger;
ww_Hit <= Hit;
ww_Zero <= Zero;
ww_One <= One;
FCout1 <= ww_FCout1;
FCout2 <= ww_FCout2;
RR <= ww_RR;
RTC <= ww_RTC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sc2|sc0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK0~input_o\);

\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\sc0|sc4|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc0|sc4|Q~q\);

\sc2|sc1|Y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc2|sc1|Y~combout\);

\sc1|sc5|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc1|sc5|Q~q\);

\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk\(0));
\sc2|sc1|ALT_INV_Y~clkctrl_outclk\ <= NOT \sc2|sc1|Y~clkctrl_outclk\;
\sc1|sc8|ALT_INV_Mux0~0_combout\ <= NOT \sc1|sc8|Mux0~0_combout\;
\sc1|ALT_INV_CRST~combout\ <= NOT \sc1|CRST~combout\;
\sc1|sc7|ALT_INV_Mux0~0_combout\ <= NOT \sc1|sc7|Mux0~0_combout\;
\sc0|ALT_INV_HRST~0_combout\ <= NOT \sc0|HRST~0_combout\;
\sc0|sc5|ALT_INV_Mux0~0_combout\ <= NOT \sc0|sc5|Mux0~0_combout\;
\sc1|ALT_INV_TRST~combout\ <= NOT \sc1|TRST~combout\;

-- Location: IOOBUF_X60_Y73_N16
\FCout1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc1|sc3|sc0|Add0~258_combout\,
	devoe => ww_devoe,
	o => ww_FCout1);

-- Location: IOOBUF_X67_Y73_N16
\FCout2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc1|sc0|Add0~258_combout\,
	devoe => ww_devoe,
	o => ww_FCout2);

-- Location: IOOBUF_X107_Y73_N9
\RR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_RR(0));

-- Location: IOOBUF_X111_Y73_N9
\RR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_RR(1));

-- Location: IOOBUF_X83_Y73_N2
\RR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_RR(2));

-- Location: IOOBUF_X85_Y73_N23
\RR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[3]~6_combout\,
	devoe => ww_devoe,
	o => ww_RR(3));

-- Location: IOOBUF_X72_Y73_N16
\RR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_RR(4));

-- Location: IOOBUF_X74_Y73_N16
\RR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[5]~10_combout\,
	devoe => ww_devoe,
	o => ww_RR(5));

-- Location: IOOBUF_X72_Y73_N23
\RR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[6]~12_combout\,
	devoe => ww_devoe,
	o => ww_RR(6));

-- Location: IOOBUF_X74_Y73_N23
\RR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc3|R[7]~14_combout\,
	devoe => ww_devoe,
	o => ww_RR(7));

-- Location: IOOBUF_X69_Y73_N16
\RTC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(0),
	devoe => ww_devoe,
	o => ww_RTC(0));

-- Location: IOOBUF_X94_Y73_N2
\RTC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(1),
	devoe => ww_devoe,
	o => ww_RTC(1));

-- Location: IOOBUF_X94_Y73_N9
\RTC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(2),
	devoe => ww_devoe,
	o => ww_RTC(2));

-- Location: IOOBUF_X107_Y73_N16
\RTC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(3),
	devoe => ww_devoe,
	o => ww_RTC(3));

-- Location: IOOBUF_X87_Y73_N16
\RTC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(4),
	devoe => ww_devoe,
	o => ww_RTC(4));

-- Location: IOOBUF_X87_Y73_N9
\RTC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc0|sc2|sc0|Reg\(5),
	devoe => ww_devoe,
	o => ww_RTC(5));

-- Location: IOIBUF_X58_Y0_N15
\CLK0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK0,
	o => \CLK0~input_o\);

-- Location: PLL_4
\sc2|sc0|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 0,
	c0_mode => "bypass",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 8,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 8,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "on",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 312,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \sc2|sc0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \sc2|sc0|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \sc2|sc0|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \sc2|sc0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \sc2|sc0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N24
\sc2|sc1|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc1|Y~combout\ = LCELL((\sc2|sc0|altpll_component|auto_generated|wire_pll1_locked\ & GLOBAL(\sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \sc2|sc0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \sc2|sc1|Y~combout\);

-- Location: CLKCTRL_G17
\sc2|sc1|Y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc2|sc1|Y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc2|sc1|Y~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N8
\One~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_One,
	o => \One~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X111_Y47_N11
\sc4|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \One~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(0));

-- Location: LCCOMB_X111_Y47_N2
\sc4|shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[1]~feeder_combout\ = \sc4|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(0),
	combout => \sc4|shift_reg[1]~feeder_combout\);

-- Location: FF_X111_Y47_N3
\sc4|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[1]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(1));

-- Location: LCCOMB_X111_Y47_N8
\sc4|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[2]~feeder_combout\ = \sc4|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(1),
	combout => \sc4|shift_reg[2]~feeder_combout\);

-- Location: FF_X111_Y47_N9
\sc4|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[2]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(2));

-- Location: FF_X111_Y47_N13
\sc4|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(3));

-- Location: LCCOMB_X111_Y47_N4
\sc4|shift_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[4]~feeder_combout\ = \sc4|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(3),
	combout => \sc4|shift_reg[4]~feeder_combout\);

-- Location: FF_X111_Y47_N5
\sc4|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[4]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(4));

-- Location: FF_X111_Y47_N15
\sc4|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(5));

-- Location: FF_X111_Y47_N1
\sc4|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(6));

-- Location: FF_X109_Y47_N5
\sc4|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(7));

-- Location: LCCOMB_X109_Y46_N6
\sc4|shift_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[8]~feeder_combout\ = \sc4|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(7),
	combout => \sc4|shift_reg[8]~feeder_combout\);

-- Location: FF_X109_Y46_N7
\sc4|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[8]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(8));

-- Location: LCCOMB_X109_Y46_N24
\sc4|shift_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[9]~feeder_combout\ = \sc4|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(8),
	combout => \sc4|shift_reg[9]~feeder_combout\);

-- Location: FF_X109_Y46_N25
\sc4|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[9]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(9));

-- Location: LCCOMB_X109_Y46_N30
\sc4|shift_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[10]~feeder_combout\ = \sc4|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(9),
	combout => \sc4|shift_reg[10]~feeder_combout\);

-- Location: FF_X109_Y46_N31
\sc4|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[10]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(10));

-- Location: FF_X109_Y46_N5
\sc4|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(10),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(11));

-- Location: FF_X109_Y46_N3
\sc4|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(11),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(12));

-- Location: LCCOMB_X109_Y46_N12
\sc4|shift_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[13]~feeder_combout\ = \sc4|shift_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(12),
	combout => \sc4|shift_reg[13]~feeder_combout\);

-- Location: FF_X109_Y46_N13
\sc4|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[13]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(13));

-- Location: LCCOMB_X109_Y46_N18
\sc4|shift_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[14]~feeder_combout\ = \sc4|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(13),
	combout => \sc4|shift_reg[14]~feeder_combout\);

-- Location: FF_X109_Y46_N19
\sc4|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[14]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(14));

-- Location: LCCOMB_X109_Y46_N8
\sc4|shift_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[15]~feeder_combout\ = \sc4|shift_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(14),
	combout => \sc4|shift_reg[15]~feeder_combout\);

-- Location: FF_X109_Y46_N9
\sc4|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[15]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(15));

-- Location: FF_X109_Y46_N15
\sc4|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(15),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(16));

-- Location: LCCOMB_X109_Y46_N16
\sc4|shift_reg[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[17]~feeder_combout\ = \sc4|shift_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(16),
	combout => \sc4|shift_reg[17]~feeder_combout\);

-- Location: FF_X109_Y46_N17
\sc4|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[17]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(17));

-- Location: LCCOMB_X109_Y46_N22
\sc4|shift_reg[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[18]~feeder_combout\ = \sc4|shift_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(17),
	combout => \sc4|shift_reg[18]~feeder_combout\);

-- Location: FF_X109_Y46_N23
\sc4|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[18]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(18));

-- Location: LCCOMB_X112_Y46_N6
\sc4|shift_reg[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[19]~feeder_combout\ = \sc4|shift_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(18),
	combout => \sc4|shift_reg[19]~feeder_combout\);

-- Location: FF_X112_Y46_N7
\sc4|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[19]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(19));

-- Location: LCCOMB_X112_Y46_N10
\sc4|shift_reg[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[20]~feeder_combout\ = \sc4|shift_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(19),
	combout => \sc4|shift_reg[20]~feeder_combout\);

-- Location: FF_X112_Y46_N11
\sc4|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[20]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(20));

-- Location: LCCOMB_X109_Y46_N28
\sc4|shift_reg[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[21]~feeder_combout\ = \sc4|shift_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(20),
	combout => \sc4|shift_reg[21]~feeder_combout\);

-- Location: FF_X109_Y46_N29
\sc4|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[21]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(21));

-- Location: LCCOMB_X109_Y46_N20
\sc4|shift_reg[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[22]~feeder_combout\ = \sc4|shift_reg\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(21),
	combout => \sc4|shift_reg[22]~feeder_combout\);

-- Location: FF_X109_Y46_N21
\sc4|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[22]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(22));

-- Location: LCCOMB_X109_Y46_N0
\sc4|shift_reg[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[23]~feeder_combout\ = \sc4|shift_reg\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(22),
	combout => \sc4|shift_reg[23]~feeder_combout\);

-- Location: FF_X109_Y46_N1
\sc4|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[23]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(23));

-- Location: LCCOMB_X109_Y45_N10
\sc4|shift_reg[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[24]~feeder_combout\ = \sc4|shift_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(23),
	combout => \sc4|shift_reg[24]~feeder_combout\);

-- Location: FF_X109_Y45_N11
\sc4|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[24]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(24));

-- Location: FF_X109_Y45_N13
\sc4|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(24),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(25));

-- Location: LCCOMB_X109_Y45_N6
\sc4|shift_reg[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[26]~feeder_combout\ = \sc4|shift_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(25),
	combout => \sc4|shift_reg[26]~feeder_combout\);

-- Location: FF_X109_Y45_N7
\sc4|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[26]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(26));

-- Location: LCCOMB_X109_Y45_N8
\sc4|shift_reg[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[27]~feeder_combout\ = \sc4|shift_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(26),
	combout => \sc4|shift_reg[27]~feeder_combout\);

-- Location: FF_X109_Y45_N9
\sc4|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[27]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(27));

-- Location: LCCOMB_X109_Y45_N30
\sc4|shift_reg[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[28]~feeder_combout\ = \sc4|shift_reg\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(27),
	combout => \sc4|shift_reg[28]~feeder_combout\);

-- Location: FF_X109_Y45_N31
\sc4|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[28]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(28));

-- Location: LCCOMB_X109_Y45_N28
\sc4|shift_reg[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[29]~feeder_combout\ = \sc4|shift_reg\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(28),
	combout => \sc4|shift_reg[29]~feeder_combout\);

-- Location: FF_X109_Y45_N29
\sc4|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[29]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(29));

-- Location: FF_X109_Y45_N19
\sc4|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(29),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(30));

-- Location: LCCOMB_X109_Y45_N24
\sc4|shift_reg[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[31]~feeder_combout\ = \sc4|shift_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(30),
	combout => \sc4|shift_reg[31]~feeder_combout\);

-- Location: FF_X109_Y45_N25
\sc4|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[31]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(31));

-- Location: LCCOMB_X109_Y45_N22
\sc4|shift_reg[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[32]~feeder_combout\ = \sc4|shift_reg\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(31),
	combout => \sc4|shift_reg[32]~feeder_combout\);

-- Location: FF_X109_Y45_N23
\sc4|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[32]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(32));

-- Location: FF_X109_Y45_N5
\sc4|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(32),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(33));

-- Location: FF_X109_Y45_N27
\sc4|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(33),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(34));

-- Location: LCCOMB_X112_Y45_N2
\sc4|shift_reg[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[35]~feeder_combout\ = \sc4|shift_reg\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(34),
	combout => \sc4|shift_reg[35]~feeder_combout\);

-- Location: FF_X112_Y45_N3
\sc4|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[35]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(35));

-- Location: LCCOMB_X109_Y45_N2
\sc4|shift_reg[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[36]~feeder_combout\ = \sc4|shift_reg\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc4|shift_reg\(35),
	combout => \sc4|shift_reg[36]~feeder_combout\);

-- Location: FF_X109_Y45_N3
\sc4|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[36]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(36));

-- Location: LCCOMB_X109_Y45_N14
\sc4|shift_reg[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[37]~feeder_combout\ = \sc4|shift_reg\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(36),
	combout => \sc4|shift_reg[37]~feeder_combout\);

-- Location: FF_X109_Y45_N15
\sc4|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[37]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(37));

-- Location: LCCOMB_X112_Y45_N4
\sc4|shift_reg[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[38]~feeder_combout\ = \sc4|shift_reg\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(37),
	combout => \sc4|shift_reg[38]~feeder_combout\);

-- Location: FF_X112_Y45_N5
\sc4|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[38]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(38));

-- Location: FF_X112_Y45_N17
\sc4|shift_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(38),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(39));

-- Location: LCCOMB_X109_Y44_N20
\sc4|shift_reg[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[40]~feeder_combout\ = \sc4|shift_reg\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(39),
	combout => \sc4|shift_reg[40]~feeder_combout\);

-- Location: FF_X109_Y44_N21
\sc4|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[40]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(40));

-- Location: LCCOMB_X109_Y44_N22
\sc4|shift_reg[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[41]~feeder_combout\ = \sc4|shift_reg\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(40),
	combout => \sc4|shift_reg[41]~feeder_combout\);

-- Location: FF_X109_Y44_N23
\sc4|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[41]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(41));

-- Location: FF_X109_Y44_N25
\sc4|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(41),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(42));

-- Location: LCCOMB_X109_Y44_N4
\sc4|shift_reg[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[43]~feeder_combout\ = \sc4|shift_reg\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(42),
	combout => \sc4|shift_reg[43]~feeder_combout\);

-- Location: FF_X109_Y44_N5
\sc4|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[43]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(43));

-- Location: LCCOMB_X110_Y48_N24
\sc4|shift_reg[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[44]~feeder_combout\ = \sc4|shift_reg\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(43),
	combout => \sc4|shift_reg[44]~feeder_combout\);

-- Location: FF_X110_Y48_N25
\sc4|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[44]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(44));

-- Location: LCCOMB_X110_Y48_N20
\sc4|shift_reg[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[45]~feeder_combout\ = \sc4|shift_reg\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(44),
	combout => \sc4|shift_reg[45]~feeder_combout\);

-- Location: FF_X110_Y48_N21
\sc4|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[45]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(45));

-- Location: LCCOMB_X109_Y44_N30
\sc4|shift_reg[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[46]~feeder_combout\ = \sc4|shift_reg\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(45),
	combout => \sc4|shift_reg[46]~feeder_combout\);

-- Location: FF_X109_Y44_N31
\sc4|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[46]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(46));

-- Location: FF_X109_Y44_N13
\sc4|shift_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(46),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(47));

-- Location: LCCOMB_X109_Y44_N26
\sc4|shift_reg[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[48]~feeder_combout\ = \sc4|shift_reg\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(47),
	combout => \sc4|shift_reg[48]~feeder_combout\);

-- Location: FF_X109_Y44_N27
\sc4|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[48]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(48));

-- Location: FF_X109_Y44_N7
\sc4|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(48),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(49));

-- Location: FF_X108_Y44_N19
\sc4|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(49),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(50));

-- Location: FF_X109_Y44_N9
\sc4|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(50),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(51));

-- Location: FF_X112_Y44_N15
\sc4|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(51),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(52));

-- Location: LCCOMB_X112_Y43_N0
\sc4|shift_reg[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[53]~feeder_combout\ = \sc4|shift_reg\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc4|shift_reg\(52),
	combout => \sc4|shift_reg[53]~feeder_combout\);

-- Location: FF_X112_Y43_N1
\sc4|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[53]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(53));

-- Location: LCCOMB_X112_Y43_N8
\sc4|shift_reg[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[54]~feeder_combout\ = \sc4|shift_reg\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(53),
	combout => \sc4|shift_reg[54]~feeder_combout\);

-- Location: FF_X112_Y43_N9
\sc4|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[54]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(54));

-- Location: FF_X112_Y43_N17
\sc4|shift_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(54),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(55));

-- Location: LCCOMB_X112_Y43_N12
\sc4|shift_reg[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[56]~feeder_combout\ = \sc4|shift_reg\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(55),
	combout => \sc4|shift_reg[56]~feeder_combout\);

-- Location: FF_X112_Y43_N13
\sc4|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[56]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(56));

-- Location: LCCOMB_X112_Y43_N4
\sc4|shift_reg[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[57]~feeder_combout\ = \sc4|shift_reg\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(56),
	combout => \sc4|shift_reg[57]~feeder_combout\);

-- Location: FF_X112_Y43_N5
\sc4|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[57]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(57));

-- Location: FF_X112_Y43_N21
\sc4|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(57),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(58));

-- Location: LCCOMB_X112_Y43_N24
\sc4|shift_reg[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[59]~feeder_combout\ = \sc4|shift_reg\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(58),
	combout => \sc4|shift_reg[59]~feeder_combout\);

-- Location: FF_X112_Y43_N25
\sc4|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[59]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(59));

-- Location: LCCOMB_X112_Y43_N2
\sc4|shift_reg[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[60]~feeder_combout\ = \sc4|shift_reg\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(59),
	combout => \sc4|shift_reg[60]~feeder_combout\);

-- Location: FF_X112_Y43_N3
\sc4|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[60]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(60));

-- Location: LCCOMB_X112_Y43_N28
\sc4|shift_reg[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[61]~feeder_combout\ = \sc4|shift_reg\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(60),
	combout => \sc4|shift_reg[61]~feeder_combout\);

-- Location: FF_X112_Y43_N29
\sc4|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[61]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(61));

-- Location: LCCOMB_X109_Y43_N14
\sc4|shift_reg[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[62]~feeder_combout\ = \sc4|shift_reg\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc4|shift_reg\(61),
	combout => \sc4|shift_reg[62]~feeder_combout\);

-- Location: FF_X109_Y43_N15
\sc4|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[62]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(62));

-- Location: LCCOMB_X109_Y43_N24
\sc4|shift_reg[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[63]~feeder_combout\ = \sc4|shift_reg\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(62),
	combout => \sc4|shift_reg[63]~feeder_combout\);

-- Location: FF_X109_Y43_N25
\sc4|shift_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[63]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(63));

-- Location: LCCOMB_X109_Y43_N30
\sc4|shift_reg[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[64]~feeder_combout\ = \sc4|shift_reg\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(63),
	combout => \sc4|shift_reg[64]~feeder_combout\);

-- Location: FF_X109_Y43_N31
\sc4|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[64]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(64));

-- Location: LCCOMB_X109_Y43_N16
\sc4|shift_reg[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[65]~feeder_combout\ = \sc4|shift_reg\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(64),
	combout => \sc4|shift_reg[65]~feeder_combout\);

-- Location: FF_X109_Y43_N17
\sc4|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[65]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(65));

-- Location: FF_X109_Y43_N19
\sc4|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(65),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(66));

-- Location: FF_X109_Y43_N13
\sc4|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(66),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(67));

-- Location: LCCOMB_X109_Y43_N26
\sc4|shift_reg[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[68]~feeder_combout\ = \sc4|shift_reg\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(67),
	combout => \sc4|shift_reg[68]~feeder_combout\);

-- Location: FF_X109_Y43_N27
\sc4|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[68]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(68));

-- Location: FF_X109_Y43_N1
\sc4|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(68),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(69));

-- Location: LCCOMB_X109_Y43_N6
\sc4|shift_reg[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[70]~feeder_combout\ = \sc4|shift_reg\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(69),
	combout => \sc4|shift_reg[70]~feeder_combout\);

-- Location: FF_X109_Y43_N7
\sc4|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[70]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(70));

-- Location: LCCOMB_X109_Y43_N4
\sc4|shift_reg[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[71]~feeder_combout\ = \sc4|shift_reg\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(70),
	combout => \sc4|shift_reg[71]~feeder_combout\);

-- Location: FF_X109_Y43_N5
\sc4|shift_reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[71]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(71));

-- Location: FF_X109_Y43_N3
\sc4|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(71),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(72));

-- Location: LCCOMB_X109_Y43_N20
\sc4|shift_reg[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[73]~feeder_combout\ = \sc4|shift_reg\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(72),
	combout => \sc4|shift_reg[73]~feeder_combout\);

-- Location: FF_X109_Y43_N21
\sc4|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[73]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(73));

-- Location: LCCOMB_X109_Y42_N8
\sc4|shift_reg[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[74]~feeder_combout\ = \sc4|shift_reg\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc4|shift_reg\(73),
	combout => \sc4|shift_reg[74]~feeder_combout\);

-- Location: FF_X109_Y42_N9
\sc4|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[74]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(74));

-- Location: FF_X109_Y42_N7
\sc4|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(74),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(75));

-- Location: LCCOMB_X109_Y42_N4
\sc4|shift_reg[76]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[76]~feeder_combout\ = \sc4|shift_reg\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(75),
	combout => \sc4|shift_reg[76]~feeder_combout\);

-- Location: FF_X109_Y42_N5
\sc4|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[76]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(76));

-- Location: LCCOMB_X109_Y43_N10
\sc4|shift_reg[77]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[77]~feeder_combout\ = \sc4|shift_reg\(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(76),
	combout => \sc4|shift_reg[77]~feeder_combout\);

-- Location: FF_X109_Y43_N11
\sc4|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[77]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(77));

-- Location: LCCOMB_X109_Y43_N8
\sc4|shift_reg[78]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[78]~feeder_combout\ = \sc4|shift_reg\(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(77),
	combout => \sc4|shift_reg[78]~feeder_combout\);

-- Location: FF_X109_Y43_N9
\sc4|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[78]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(78));

-- Location: FF_X109_Y43_N23
\sc4|shift_reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(78),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(79));

-- Location: FF_X109_Y43_N29
\sc4|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(79),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(80));

-- Location: LCCOMB_X109_Y41_N14
\sc4|shift_reg[81]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[81]~feeder_combout\ = \sc4|shift_reg\(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(80),
	combout => \sc4|shift_reg[81]~feeder_combout\);

-- Location: FF_X109_Y41_N15
\sc4|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[81]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(81));

-- Location: FF_X109_Y41_N5
\sc4|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(81),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(82));

-- Location: FF_X109_Y41_N27
\sc4|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(82),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(83));

-- Location: FF_X109_Y41_N13
\sc4|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(83),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(84));

-- Location: LCCOMB_X109_Y41_N10
\sc4|shift_reg[85]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[85]~feeder_combout\ = \sc4|shift_reg\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(84),
	combout => \sc4|shift_reg[85]~feeder_combout\);

-- Location: FF_X109_Y41_N11
\sc4|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[85]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(85));

-- Location: LCCOMB_X109_Y41_N24
\sc4|shift_reg[86]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[86]~feeder_combout\ = \sc4|shift_reg\(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(85),
	combout => \sc4|shift_reg[86]~feeder_combout\);

-- Location: FF_X109_Y41_N25
\sc4|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[86]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(86));

-- Location: LCCOMB_X109_Y41_N22
\sc4|shift_reg[87]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[87]~feeder_combout\ = \sc4|shift_reg\(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(86),
	combout => \sc4|shift_reg[87]~feeder_combout\);

-- Location: FF_X109_Y41_N23
\sc4|shift_reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[87]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(87));

-- Location: LCCOMB_X109_Y41_N28
\sc4|shift_reg[88]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[88]~feeder_combout\ = \sc4|shift_reg\(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(87),
	combout => \sc4|shift_reg[88]~feeder_combout\);

-- Location: FF_X109_Y41_N29
\sc4|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[88]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(88));

-- Location: LCCOMB_X109_Y41_N6
\sc4|shift_reg[89]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[89]~feeder_combout\ = \sc4|shift_reg\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(88),
	combout => \sc4|shift_reg[89]~feeder_combout\);

-- Location: FF_X109_Y41_N7
\sc4|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[89]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(89));

-- Location: LCCOMB_X109_Y41_N16
\sc4|shift_reg[90]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[90]~feeder_combout\ = \sc4|shift_reg\(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(89),
	combout => \sc4|shift_reg[90]~feeder_combout\);

-- Location: FF_X109_Y41_N17
\sc4|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[90]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(90));

-- Location: FF_X109_Y41_N19
\sc4|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(90),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(91));

-- Location: LCCOMB_X109_Y41_N20
\sc4|shift_reg[92]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[92]~feeder_combout\ = \sc4|shift_reg\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(91),
	combout => \sc4|shift_reg[92]~feeder_combout\);

-- Location: FF_X109_Y41_N21
\sc4|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[92]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(92));

-- Location: FF_X109_Y41_N3
\sc4|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(92),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(93));

-- Location: LCCOMB_X109_Y41_N0
\sc4|shift_reg[94]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[94]~feeder_combout\ = \sc4|shift_reg\(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(93),
	combout => \sc4|shift_reg[94]~feeder_combout\);

-- Location: FF_X109_Y41_N1
\sc4|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[94]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(94));

-- Location: FF_X109_Y41_N31
\sc4|shift_reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(94),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(95));

-- Location: LCCOMB_X109_Y41_N8
\sc4|shift_reg[96]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[96]~feeder_combout\ = \sc4|shift_reg\(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(95),
	combout => \sc4|shift_reg[96]~feeder_combout\);

-- Location: FF_X109_Y41_N9
\sc4|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[96]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(96));

-- Location: FF_X108_Y41_N15
\sc4|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(96),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(97));

-- Location: FF_X108_Y41_N9
\sc4|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(97),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(98));

-- Location: FF_X108_Y41_N27
\sc4|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(98),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(99));

-- Location: FF_X108_Y41_N5
\sc4|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(99),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(100));

-- Location: LCCOMB_X111_Y38_N20
\sc4|shift_reg[101]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[101]~feeder_combout\ = \sc4|shift_reg\(100)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(100),
	combout => \sc4|shift_reg[101]~feeder_combout\);

-- Location: FF_X111_Y38_N21
\sc4|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[101]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(101));

-- Location: LCCOMB_X111_Y38_N26
\sc4|shift_reg[102]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[102]~feeder_combout\ = \sc4|shift_reg\(101)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(101),
	combout => \sc4|shift_reg[102]~feeder_combout\);

-- Location: FF_X111_Y38_N27
\sc4|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[102]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(102));

-- Location: FF_X111_Y38_N25
\sc4|shift_reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(102),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(103));

-- Location: LCCOMB_X111_Y38_N14
\sc4|shift_reg[104]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[104]~feeder_combout\ = \sc4|shift_reg\(103)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(103),
	combout => \sc4|shift_reg[104]~feeder_combout\);

-- Location: FF_X111_Y38_N15
\sc4|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[104]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(104));

-- Location: FF_X111_Y38_N5
\sc4|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(104),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(105));

-- Location: FF_X111_Y38_N31
\sc4|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(105),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(106));

-- Location: FF_X111_Y38_N13
\sc4|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(106),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(107));

-- Location: LCCOMB_X111_Y38_N18
\sc4|shift_reg[108]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[108]~feeder_combout\ = \sc4|shift_reg\(107)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(107),
	combout => \sc4|shift_reg[108]~feeder_combout\);

-- Location: FF_X111_Y38_N19
\sc4|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[108]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(108));

-- Location: LCCOMB_X111_Y38_N28
\sc4|shift_reg[109]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[109]~feeder_combout\ = \sc4|shift_reg\(108)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(108),
	combout => \sc4|shift_reg[109]~feeder_combout\);

-- Location: FF_X111_Y38_N29
\sc4|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[109]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(109));

-- Location: LCCOMB_X111_Y38_N10
\sc4|shift_reg[110]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[110]~feeder_combout\ = \sc4|shift_reg\(109)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(109),
	combout => \sc4|shift_reg[110]~feeder_combout\);

-- Location: FF_X111_Y38_N11
\sc4|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[110]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(110));

-- Location: LCCOMB_X111_Y38_N8
\sc4|shift_reg[111]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[111]~feeder_combout\ = \sc4|shift_reg\(110)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(110),
	combout => \sc4|shift_reg[111]~feeder_combout\);

-- Location: FF_X111_Y38_N9
\sc4|shift_reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[111]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(111));

-- Location: FF_X111_Y38_N23
\sc4|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(111),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(112));

-- Location: FF_X111_Y38_N1
\sc4|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(112),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(113));

-- Location: LCCOMB_X113_Y39_N14
\sc4|shift_reg[114]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[114]~feeder_combout\ = \sc4|shift_reg\(113)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(113),
	combout => \sc4|shift_reg[114]~feeder_combout\);

-- Location: FF_X113_Y39_N15
\sc4|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[114]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(114));

-- Location: FF_X113_Y39_N29
\sc4|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(114),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(115));

-- Location: LCCOMB_X113_Y39_N30
\sc4|shift_reg[116]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[116]~feeder_combout\ = \sc4|shift_reg\(115)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(115),
	combout => \sc4|shift_reg[116]~feeder_combout\);

-- Location: FF_X113_Y39_N31
\sc4|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[116]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(116));

-- Location: FF_X113_Y39_N17
\sc4|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(116),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(117));

-- Location: LCCOMB_X113_Y39_N10
\sc4|shift_reg[118]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[118]~feeder_combout\ = \sc4|shift_reg\(117)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(117),
	combout => \sc4|shift_reg[118]~feeder_combout\);

-- Location: FF_X113_Y39_N11
\sc4|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[118]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(118));

-- Location: LCCOMB_X113_Y39_N12
\sc4|shift_reg[119]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[119]~feeder_combout\ = \sc4|shift_reg\(118)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(118),
	combout => \sc4|shift_reg[119]~feeder_combout\);

-- Location: FF_X113_Y39_N13
\sc4|shift_reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[119]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(119));

-- Location: LCCOMB_X113_Y39_N22
\sc4|shift_reg[120]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|shift_reg[120]~feeder_combout\ = \sc4|shift_reg\(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc4|shift_reg\(119),
	combout => \sc4|shift_reg[120]~feeder_combout\);

-- Location: FF_X113_Y39_N23
\sc4|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc4|shift_reg[120]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(120));

-- Location: FF_X113_Y39_N25
\sc4|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(120),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(121));

-- Location: FF_X110_Y39_N27
\sc4|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(121),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(122));

-- Location: FF_X110_Y39_N17
\sc4|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(122),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(123));

-- Location: FF_X110_Y39_N31
\sc4|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(123),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(124));

-- Location: FF_X111_Y39_N21
\sc4|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(124),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(125));

-- Location: FF_X111_Y39_N29
\sc4|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(125),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(126));

-- Location: FF_X111_Y39_N17
\sc4|shift_reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc4|shift_reg\(126),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|shift_reg\(127));

-- Location: IOIBUF_X115_Y14_N1
\Zero~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Zero,
	o => \Zero~input_o\);

-- Location: LCCOMB_X110_Y47_N6
\sc3|shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[0]~feeder_combout\ = \Zero~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Zero~input_o\,
	combout => \sc3|shift_reg[0]~feeder_combout\);

-- Location: FF_X110_Y47_N7
\sc3|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[0]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(0));

-- Location: LCCOMB_X110_Y47_N0
\sc3|shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[1]~feeder_combout\ = \sc3|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(0),
	combout => \sc3|shift_reg[1]~feeder_combout\);

-- Location: FF_X110_Y47_N1
\sc3|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[1]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(1));

-- Location: LCCOMB_X110_Y47_N8
\sc3|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[2]~feeder_combout\ = \sc3|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(1),
	combout => \sc3|shift_reg[2]~feeder_combout\);

-- Location: FF_X110_Y47_N9
\sc3|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[2]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(2));

-- Location: FF_X110_Y47_N3
\sc3|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(3));

-- Location: LCCOMB_X110_Y47_N10
\sc3|shift_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[4]~feeder_combout\ = \sc3|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(3),
	combout => \sc3|shift_reg[4]~feeder_combout\);

-- Location: FF_X110_Y47_N11
\sc3|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[4]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(4));

-- Location: LCCOMB_X110_Y47_N12
\sc3|shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[5]~feeder_combout\ = \sc3|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(4),
	combout => \sc3|shift_reg[5]~feeder_combout\);

-- Location: FF_X110_Y47_N13
\sc3|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[5]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(5));

-- Location: LCCOMB_X110_Y47_N4
\sc3|shift_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[6]~feeder_combout\ = \sc3|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(5),
	combout => \sc3|shift_reg[6]~feeder_combout\);

-- Location: FF_X110_Y47_N5
\sc3|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[6]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(6));

-- Location: FF_X110_Y47_N15
\sc3|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(7));

-- Location: LCCOMB_X112_Y46_N14
\sc3|shift_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[8]~feeder_combout\ = \sc3|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(7),
	combout => \sc3|shift_reg[8]~feeder_combout\);

-- Location: FF_X112_Y46_N15
\sc3|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[8]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(8));

-- Location: FF_X112_Y46_N9
\sc3|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(9));

-- Location: FF_X112_Y46_N31
\sc3|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(10));

-- Location: FF_X112_Y46_N5
\sc3|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(10),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(11));

-- Location: FF_X112_Y46_N27
\sc3|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(11),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(12));

-- Location: FF_X112_Y46_N29
\sc3|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(12),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(13));

-- Location: LCCOMB_X112_Y46_N22
\sc3|shift_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[14]~feeder_combout\ = \sc3|shift_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(13),
	combout => \sc3|shift_reg[14]~feeder_combout\);

-- Location: FF_X112_Y46_N23
\sc3|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[14]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(14));

-- Location: FF_X112_Y46_N21
\sc3|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(14),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(15));

-- Location: LCCOMB_X112_Y46_N18
\sc3|shift_reg[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[16]~feeder_combout\ = \sc3|shift_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(15),
	combout => \sc3|shift_reg[16]~feeder_combout\);

-- Location: FF_X112_Y46_N19
\sc3|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[16]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(16));

-- Location: LCCOMB_X112_Y46_N12
\sc3|shift_reg[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[17]~feeder_combout\ = \sc3|shift_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(16),
	combout => \sc3|shift_reg[17]~feeder_combout\);

-- Location: FF_X112_Y46_N13
\sc3|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[17]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(17));

-- Location: LCCOMB_X112_Y46_N2
\sc3|shift_reg[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[18]~feeder_combout\ = \sc3|shift_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(17),
	combout => \sc3|shift_reg[18]~feeder_combout\);

-- Location: FF_X112_Y46_N3
\sc3|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[18]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(18));

-- Location: FF_X112_Y46_N25
\sc3|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(18),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(19));

-- Location: LCCOMB_X112_Y46_N0
\sc3|shift_reg[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[20]~feeder_combout\ = \sc3|shift_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(19),
	combout => \sc3|shift_reg[20]~feeder_combout\);

-- Location: FF_X112_Y46_N1
\sc3|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[20]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(20));

-- Location: LCCOMB_X112_Y46_N16
\sc3|shift_reg[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[21]~feeder_combout\ = \sc3|shift_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(20),
	combout => \sc3|shift_reg[21]~feeder_combout\);

-- Location: FF_X112_Y46_N17
\sc3|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[21]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(21));

-- Location: LCCOMB_X109_Y46_N10
\sc3|shift_reg[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[22]~feeder_combout\ = \sc3|shift_reg\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(21),
	combout => \sc3|shift_reg[22]~feeder_combout\);

-- Location: FF_X109_Y46_N11
\sc3|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[22]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(22));

-- Location: LCCOMB_X109_Y46_N26
\sc3|shift_reg[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[23]~feeder_combout\ = \sc3|shift_reg\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(22),
	combout => \sc3|shift_reg[23]~feeder_combout\);

-- Location: FF_X109_Y46_N27
\sc3|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[23]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(23));

-- Location: LCCOMB_X112_Y45_N10
\sc3|shift_reg[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[24]~feeder_combout\ = \sc3|shift_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(23),
	combout => \sc3|shift_reg[24]~feeder_combout\);

-- Location: FF_X112_Y45_N11
\sc3|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[24]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(24));

-- Location: LCCOMB_X112_Y45_N28
\sc3|shift_reg[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[25]~feeder_combout\ = \sc3|shift_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(24),
	combout => \sc3|shift_reg[25]~feeder_combout\);

-- Location: FF_X112_Y45_N29
\sc3|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[25]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(25));

-- Location: LCCOMB_X112_Y45_N30
\sc3|shift_reg[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[26]~feeder_combout\ = \sc3|shift_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(25),
	combout => \sc3|shift_reg[26]~feeder_combout\);

-- Location: FF_X112_Y45_N31
\sc3|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[26]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(26));

-- Location: FF_X112_Y45_N21
\sc3|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(26),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(27));

-- Location: LCCOMB_X112_Y45_N6
\sc3|shift_reg[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[28]~feeder_combout\ = \sc3|shift_reg\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(27),
	combout => \sc3|shift_reg[28]~feeder_combout\);

-- Location: FF_X112_Y45_N7
\sc3|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[28]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(28));

-- Location: LCCOMB_X112_Y45_N8
\sc3|shift_reg[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[29]~feeder_combout\ = \sc3|shift_reg\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(28),
	combout => \sc3|shift_reg[29]~feeder_combout\);

-- Location: FF_X112_Y45_N9
\sc3|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[29]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(29));

-- Location: FF_X112_Y45_N23
\sc3|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(29),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(30));

-- Location: FF_X112_Y45_N1
\sc3|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(30),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(31));

-- Location: FF_X112_Y45_N19
\sc3|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(31),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(32));

-- Location: LCCOMB_X112_Y45_N12
\sc3|shift_reg[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[33]~feeder_combout\ = \sc3|shift_reg\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(32),
	combout => \sc3|shift_reg[33]~feeder_combout\);

-- Location: FF_X112_Y45_N13
\sc3|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[33]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(33));

-- Location: LCCOMB_X112_Y45_N26
\sc3|shift_reg[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[34]~feeder_combout\ = \sc3|shift_reg\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(33),
	combout => \sc3|shift_reg[34]~feeder_combout\);

-- Location: FF_X112_Y45_N27
\sc3|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[34]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(34));

-- Location: FF_X112_Y45_N25
\sc3|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(34),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(35));

-- Location: LCCOMB_X109_Y45_N16
\sc3|shift_reg[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[36]~feeder_combout\ = \sc3|shift_reg\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(35),
	combout => \sc3|shift_reg[36]~feeder_combout\);

-- Location: FF_X109_Y45_N17
\sc3|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[36]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(36));

-- Location: FF_X109_Y45_N21
\sc3|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(36),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(37));

-- Location: LCCOMB_X109_Y45_N0
\sc3|shift_reg[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[38]~feeder_combout\ = \sc3|shift_reg\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(37),
	combout => \sc3|shift_reg[38]~feeder_combout\);

-- Location: FF_X109_Y45_N1
\sc3|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[38]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(38));

-- Location: LCCOMB_X112_Y45_N14
\sc3|shift_reg[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[39]~feeder_combout\ = \sc3|shift_reg\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(38),
	combout => \sc3|shift_reg[39]~feeder_combout\);

-- Location: FF_X112_Y45_N15
\sc3|shift_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[39]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(39));

-- Location: LCCOMB_X109_Y44_N28
\sc3|shift_reg[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[40]~feeder_combout\ = \sc3|shift_reg\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(39),
	combout => \sc3|shift_reg[40]~feeder_combout\);

-- Location: FF_X109_Y44_N29
\sc3|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[40]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(40));

-- Location: LCCOMB_X110_Y48_N16
\sc3|shift_reg[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[41]~feeder_combout\ = \sc3|shift_reg\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(40),
	combout => \sc3|shift_reg[41]~feeder_combout\);

-- Location: FF_X110_Y48_N17
\sc3|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[41]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(41));

-- Location: LCCOMB_X110_Y48_N22
\sc3|shift_reg[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[42]~feeder_combout\ = \sc3|shift_reg\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(41),
	combout => \sc3|shift_reg[42]~feeder_combout\);

-- Location: FF_X110_Y48_N23
\sc3|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[42]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(42));

-- Location: FF_X110_Y48_N29
\sc3|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(42),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(43));

-- Location: LCCOMB_X110_Y48_N26
\sc3|shift_reg[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[44]~feeder_combout\ = \sc3|shift_reg\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(43),
	combout => \sc3|shift_reg[44]~feeder_combout\);

-- Location: FF_X110_Y48_N27
\sc3|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[44]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(44));

-- Location: FF_X110_Y48_N31
\sc3|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(44),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(45));

-- Location: FF_X110_Y48_N7
\sc3|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(45),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(46));

-- Location: LCCOMB_X110_Y48_N4
\sc3|shift_reg[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[47]~feeder_combout\ = \sc3|shift_reg\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(46),
	combout => \sc3|shift_reg[47]~feeder_combout\);

-- Location: FF_X110_Y48_N5
\sc3|shift_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[47]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(47));

-- Location: FF_X108_Y44_N31
\sc3|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(47),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(48));

-- Location: FF_X108_Y44_N7
\sc3|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(48),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(49));

-- Location: FF_X112_Y44_N27
\sc3|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(49),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(50));

-- Location: FF_X112_Y44_N5
\sc3|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(50),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(51));

-- Location: FF_X112_Y44_N25
\sc3|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(51),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(52));

-- Location: LCCOMB_X112_Y43_N10
\sc3|shift_reg[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[53]~feeder_combout\ = \sc3|shift_reg\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(52),
	combout => \sc3|shift_reg[53]~feeder_combout\);

-- Location: FF_X112_Y43_N11
\sc3|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[53]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(53));

-- Location: LCCOMB_X112_Y43_N18
\sc3|shift_reg[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[54]~feeder_combout\ = \sc3|shift_reg\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(53),
	combout => \sc3|shift_reg[54]~feeder_combout\);

-- Location: FF_X112_Y43_N19
\sc3|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[54]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(54));

-- Location: LCCOMB_X112_Y43_N30
\sc3|shift_reg[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[55]~feeder_combout\ = \sc3|shift_reg\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(54),
	combout => \sc3|shift_reg[55]~feeder_combout\);

-- Location: FF_X112_Y43_N31
\sc3|shift_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[55]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(55));

-- Location: FF_X112_Y43_N23
\sc3|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(55),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(56));

-- Location: FF_X112_Y43_N15
\sc3|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(56),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(57));

-- Location: FF_X112_Y43_N27
\sc3|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(57),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(58));

-- Location: FF_X112_Y43_N7
\sc3|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(58),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(59));

-- Location: LCCOMB_X113_Y43_N20
\sc3|shift_reg[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[60]~feeder_combout\ = \sc3|shift_reg\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(59),
	combout => \sc3|shift_reg[60]~feeder_combout\);

-- Location: FF_X113_Y43_N21
\sc3|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[60]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(60));

-- Location: LCCOMB_X113_Y43_N6
\sc3|shift_reg[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[61]~feeder_combout\ = \sc3|shift_reg\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(60),
	combout => \sc3|shift_reg[61]~feeder_combout\);

-- Location: FF_X113_Y43_N7
\sc3|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[61]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(61));

-- Location: LCCOMB_X113_Y43_N24
\sc3|shift_reg[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[62]~feeder_combout\ = \sc3|shift_reg\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(61),
	combout => \sc3|shift_reg[62]~feeder_combout\);

-- Location: FF_X113_Y43_N25
\sc3|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[62]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(62));

-- Location: FF_X113_Y43_N3
\sc3|shift_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(62),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(63));

-- Location: FF_X113_Y43_N1
\sc3|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(63),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(64));

-- Location: LCCOMB_X113_Y43_N22
\sc3|shift_reg[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[65]~feeder_combout\ = \sc3|shift_reg\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(64),
	combout => \sc3|shift_reg[65]~feeder_combout\);

-- Location: FF_X113_Y43_N23
\sc3|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[65]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(65));

-- Location: FF_X113_Y43_N5
\sc3|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(65),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(66));

-- Location: FF_X113_Y43_N27
\sc3|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(66),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(67));

-- Location: FF_X113_Y43_N9
\sc3|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(67),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(68));

-- Location: FF_X113_Y43_N15
\sc3|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(68),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(69));

-- Location: FF_X113_Y43_N13
\sc3|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(69),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(70));

-- Location: LCCOMB_X113_Y43_N10
\sc3|shift_reg[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[71]~feeder_combout\ = \sc3|shift_reg\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(70),
	combout => \sc3|shift_reg[71]~feeder_combout\);

-- Location: FF_X113_Y43_N11
\sc3|shift_reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[71]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(71));

-- Location: LCCOMB_X113_Y43_N28
\sc3|shift_reg[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[72]~feeder_combout\ = \sc3|shift_reg\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(71),
	combout => \sc3|shift_reg[72]~feeder_combout\);

-- Location: FF_X113_Y43_N29
\sc3|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[72]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(72));

-- Location: LCCOMB_X112_Y42_N18
\sc3|shift_reg[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[73]~feeder_combout\ = \sc3|shift_reg\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(72),
	combout => \sc3|shift_reg[73]~feeder_combout\);

-- Location: FF_X112_Y42_N19
\sc3|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[73]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(73));

-- Location: LCCOMB_X112_Y42_N4
\sc3|shift_reg[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[74]~feeder_combout\ = \sc3|shift_reg\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(73),
	combout => \sc3|shift_reg[74]~feeder_combout\);

-- Location: FF_X112_Y42_N5
\sc3|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[74]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(74));

-- Location: FF_X112_Y42_N7
\sc3|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(74),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(75));

-- Location: LCCOMB_X112_Y42_N24
\sc3|shift_reg[76]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[76]~feeder_combout\ = \sc3|shift_reg\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(75),
	combout => \sc3|shift_reg[76]~feeder_combout\);

-- Location: FF_X112_Y42_N25
\sc3|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[76]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(76));

-- Location: FF_X112_Y42_N11
\sc3|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(76),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(77));

-- Location: LCCOMB_X112_Y42_N0
\sc3|shift_reg[78]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[78]~feeder_combout\ = \sc3|shift_reg\(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(77),
	combout => \sc3|shift_reg[78]~feeder_combout\);

-- Location: FF_X112_Y42_N1
\sc3|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[78]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(78));

-- Location: LCCOMB_X112_Y42_N2
\sc3|shift_reg[79]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[79]~feeder_combout\ = \sc3|shift_reg\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(78),
	combout => \sc3|shift_reg[79]~feeder_combout\);

-- Location: FF_X112_Y42_N3
\sc3|shift_reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[79]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(79));

-- Location: FF_X112_Y42_N29
\sc3|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(79),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(80));

-- Location: LCCOMB_X112_Y42_N22
\sc3|shift_reg[81]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[81]~feeder_combout\ = \sc3|shift_reg\(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(80),
	combout => \sc3|shift_reg[81]~feeder_combout\);

-- Location: FF_X112_Y42_N23
\sc3|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[81]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(81));

-- Location: FF_X112_Y42_N13
\sc3|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(81),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(82));

-- Location: LCCOMB_X112_Y42_N14
\sc3|shift_reg[83]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[83]~feeder_combout\ = \sc3|shift_reg\(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(82),
	combout => \sc3|shift_reg[83]~feeder_combout\);

-- Location: FF_X112_Y42_N15
\sc3|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[83]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(83));

-- Location: LCCOMB_X112_Y42_N20
\sc3|shift_reg[84]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[84]~feeder_combout\ = \sc3|shift_reg\(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(83),
	combout => \sc3|shift_reg[84]~feeder_combout\);

-- Location: FF_X112_Y42_N21
\sc3|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[84]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(84));

-- Location: LCCOMB_X112_Y42_N30
\sc3|shift_reg[85]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[85]~feeder_combout\ = \sc3|shift_reg\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(84),
	combout => \sc3|shift_reg[85]~feeder_combout\);

-- Location: FF_X112_Y42_N31
\sc3|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[85]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(85));

-- Location: FF_X112_Y42_N17
\sc3|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(85),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(86));

-- Location: LCCOMB_X112_Y42_N26
\sc3|shift_reg[87]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[87]~feeder_combout\ = \sc3|shift_reg\(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(86),
	combout => \sc3|shift_reg[87]~feeder_combout\);

-- Location: FF_X112_Y42_N27
\sc3|shift_reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[87]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(87));

-- Location: FF_X112_Y42_N9
\sc3|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(87),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(88));

-- Location: LCCOMB_X113_Y43_N30
\sc3|shift_reg[89]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[89]~feeder_combout\ = \sc3|shift_reg\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(88),
	combout => \sc3|shift_reg[89]~feeder_combout\);

-- Location: FF_X113_Y43_N31
\sc3|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[89]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(89));

-- Location: LCCOMB_X113_Y43_N16
\sc3|shift_reg[90]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[90]~feeder_combout\ = \sc3|shift_reg\(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(89),
	combout => \sc3|shift_reg[90]~feeder_combout\);

-- Location: FF_X113_Y43_N17
\sc3|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[90]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(90));

-- Location: LCCOMB_X113_Y41_N18
\sc3|shift_reg[91]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[91]~feeder_combout\ = \sc3|shift_reg\(90)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(90),
	combout => \sc3|shift_reg[91]~feeder_combout\);

-- Location: FF_X113_Y41_N19
\sc3|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[91]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(91));

-- Location: LCCOMB_X113_Y41_N28
\sc3|shift_reg[92]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[92]~feeder_combout\ = \sc3|shift_reg\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(91),
	combout => \sc3|shift_reg[92]~feeder_combout\);

-- Location: FF_X113_Y41_N29
\sc3|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[92]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(92));

-- Location: LCCOMB_X112_Y40_N10
\sc3|shift_reg[93]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[93]~feeder_combout\ = \sc3|shift_reg\(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(92),
	combout => \sc3|shift_reg[93]~feeder_combout\);

-- Location: FF_X112_Y40_N11
\sc3|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[93]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(93));

-- Location: LCCOMB_X113_Y41_N2
\sc3|shift_reg[94]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[94]~feeder_combout\ = \sc3|shift_reg\(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(93),
	combout => \sc3|shift_reg[94]~feeder_combout\);

-- Location: FF_X113_Y41_N3
\sc3|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[94]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(94));

-- Location: LCCOMB_X113_Y41_N24
\sc3|shift_reg[95]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[95]~feeder_combout\ = \sc3|shift_reg\(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(94),
	combout => \sc3|shift_reg[95]~feeder_combout\);

-- Location: FF_X113_Y41_N25
\sc3|shift_reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[95]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(95));

-- Location: LCCOMB_X113_Y41_N10
\sc3|shift_reg[96]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[96]~feeder_combout\ = \sc3|shift_reg\(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(95),
	combout => \sc3|shift_reg[96]~feeder_combout\);

-- Location: FF_X113_Y41_N11
\sc3|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[96]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(96));

-- Location: LCCOMB_X113_Y41_N0
\sc3|shift_reg[97]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[97]~feeder_combout\ = \sc3|shift_reg\(96)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(96),
	combout => \sc3|shift_reg[97]~feeder_combout\);

-- Location: FF_X113_Y41_N1
\sc3|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[97]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(97));

-- Location: LCCOMB_X113_Y41_N26
\sc3|shift_reg[98]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[98]~feeder_combout\ = \sc3|shift_reg\(97)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(97),
	combout => \sc3|shift_reg[98]~feeder_combout\);

-- Location: FF_X113_Y41_N27
\sc3|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[98]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(98));

-- Location: FF_X113_Y41_N17
\sc3|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(98),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(99));

-- Location: LCCOMB_X113_Y41_N22
\sc3|shift_reg[100]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[100]~feeder_combout\ = \sc3|shift_reg\(99)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(99),
	combout => \sc3|shift_reg[100]~feeder_combout\);

-- Location: FF_X113_Y41_N23
\sc3|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[100]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(100));

-- Location: FF_X113_Y41_N5
\sc3|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(100),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(101));

-- Location: FF_X113_Y41_N31
\sc3|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(101),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(102));

-- Location: FF_X113_Y41_N9
\sc3|shift_reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(102),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(103));

-- Location: FF_X113_Y41_N7
\sc3|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(103),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(104));

-- Location: LCCOMB_X113_Y41_N20
\sc3|shift_reg[105]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[105]~feeder_combout\ = \sc3|shift_reg\(104)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(104),
	combout => \sc3|shift_reg[105]~feeder_combout\);

-- Location: FF_X113_Y41_N21
\sc3|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[105]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(105));

-- Location: LCCOMB_X112_Y40_N4
\sc3|shift_reg[106]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[106]~feeder_combout\ = \sc3|shift_reg\(105)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(105),
	combout => \sc3|shift_reg[106]~feeder_combout\);

-- Location: FF_X112_Y40_N5
\sc3|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[106]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(106));

-- Location: FF_X112_Y40_N15
\sc3|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(106),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(107));

-- Location: FF_X112_Y40_N9
\sc3|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(107),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(108));

-- Location: FF_X112_Y40_N31
\sc3|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(108),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(109));

-- Location: FF_X112_Y40_N25
\sc3|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(109),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(110));

-- Location: LCCOMB_X112_Y40_N18
\sc3|shift_reg[111]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[111]~feeder_combout\ = \sc3|shift_reg\(110)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(110),
	combout => \sc3|shift_reg[111]~feeder_combout\);

-- Location: FF_X112_Y40_N19
\sc3|shift_reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[111]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(111));

-- Location: LCCOMB_X112_Y40_N28
\sc3|shift_reg[112]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[112]~feeder_combout\ = \sc3|shift_reg\(111)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(111),
	combout => \sc3|shift_reg[112]~feeder_combout\);

-- Location: FF_X112_Y40_N29
\sc3|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[112]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(112));

-- Location: LCCOMB_X112_Y40_N6
\sc3|shift_reg[113]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[113]~feeder_combout\ = \sc3|shift_reg\(112)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(112),
	combout => \sc3|shift_reg[113]~feeder_combout\);

-- Location: FF_X112_Y40_N7
\sc3|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[113]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(113));

-- Location: LCCOMB_X112_Y40_N12
\sc3|shift_reg[114]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[114]~feeder_combout\ = \sc3|shift_reg\(113)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(113),
	combout => \sc3|shift_reg[114]~feeder_combout\);

-- Location: FF_X112_Y40_N13
\sc3|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[114]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(114));

-- Location: LCCOMB_X112_Y40_N22
\sc3|shift_reg[115]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[115]~feeder_combout\ = \sc3|shift_reg\(114)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(114),
	combout => \sc3|shift_reg[115]~feeder_combout\);

-- Location: FF_X112_Y40_N23
\sc3|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[115]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(115));

-- Location: FF_X112_Y40_N21
\sc3|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(115),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(116));

-- Location: LCCOMB_X112_Y40_N26
\sc3|shift_reg[117]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[117]~feeder_combout\ = \sc3|shift_reg\(116)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(116),
	combout => \sc3|shift_reg[117]~feeder_combout\);

-- Location: FF_X112_Y40_N27
\sc3|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[117]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(117));

-- Location: FF_X112_Y40_N17
\sc3|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(117),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(118));

-- Location: FF_X113_Y40_N17
\sc3|shift_reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(118),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(119));

-- Location: LCCOMB_X114_Y39_N2
\sc3|shift_reg[120]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[120]~feeder_combout\ = \sc3|shift_reg\(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(119),
	combout => \sc3|shift_reg[120]~feeder_combout\);

-- Location: FF_X114_Y39_N3
\sc3|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[120]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(120));

-- Location: LCCOMB_X114_Y39_N12
\sc3|shift_reg[121]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[121]~feeder_combout\ = \sc3|shift_reg\(120)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(120),
	combout => \sc3|shift_reg[121]~feeder_combout\);

-- Location: FF_X114_Y39_N13
\sc3|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[121]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(121));

-- Location: FF_X111_Y39_N23
\sc3|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(121),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(122));

-- Location: FF_X111_Y39_N31
\sc3|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(122),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(123));

-- Location: LCCOMB_X110_Y39_N22
\sc3|shift_reg[124]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[124]~feeder_combout\ = \sc3|shift_reg\(123)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc3|shift_reg\(123),
	combout => \sc3|shift_reg[124]~feeder_combout\);

-- Location: FF_X110_Y39_N23
\sc3|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[124]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(124));

-- Location: FF_X110_Y39_N29
\sc3|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(124),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(125));

-- Location: LCCOMB_X114_Y39_N22
\sc3|shift_reg[126]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc3|shift_reg[126]~feeder_combout\ = \sc3|shift_reg\(125)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc3|shift_reg\(125),
	combout => \sc3|shift_reg[126]~feeder_combout\);

-- Location: FF_X114_Y39_N23
\sc3|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc3|shift_reg[126]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(126));

-- Location: FF_X114_Y39_N9
\sc3|shift_reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	asdata => \sc3|shift_reg\(126),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc3|shift_reg\(127));

-- Location: IOIBUF_X115_Y62_N22
\Trigger~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Trigger,
	ibar => \ww_Trigger(n)\,
	o => \Trigger~input_o\);

-- Location: LCCOMB_X112_Y47_N22
\sc1|sc1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc1|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc1|sc1|Q~feeder_combout\);

-- Location: IOIBUF_X115_Y17_N1
\init~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

-- Location: LCCOMB_X112_Y48_N28
\sc1|sc0|sc0|qp[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[0]~18_combout\ = !\sc1|sc0|sc0|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|sc0|sc0|qp\(0),
	combout => \sc1|sc0|sc0|qp[0]~18_combout\);

-- Location: LCCOMB_X112_Y48_N22
\sc1|sc0|sc0|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[0]~feeder_combout\ = \sc1|sc0|sc0|qp[0]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|sc0|sc0|qp[0]~18_combout\,
	combout => \sc1|sc0|sc0|qp[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y48_N26
\sc1|CRST\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|CRST~combout\ = ((!\sc1|sc1|Q~q\) # (!\init~input_o\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \init~input_o\,
	datad => \sc1|sc1|Q~q\,
	combout => \sc1|CRST~combout\);

-- Location: FF_X112_Y48_N23
\sc1|sc0|sc0|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[0]~feeder_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(0));

-- Location: LCCOMB_X112_Y48_N4
\sc1|sc0|sc0|qp[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[1]~6_combout\ = (\sc1|sc0|sc0|qp\(0) & (\sc1|sc0|sc0|qp\(1) $ (VCC))) # (!\sc1|sc0|sc0|qp\(0) & (\sc1|sc0|sc0|qp\(1) & VCC))
-- \sc1|sc0|sc0|qp[1]~7\ = CARRY((\sc1|sc0|sc0|qp\(0) & \sc1|sc0|sc0|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc0|sc0|qp\(0),
	datab => \sc1|sc0|sc0|qp\(1),
	datad => VCC,
	combout => \sc1|sc0|sc0|qp[1]~6_combout\,
	cout => \sc1|sc0|sc0|qp[1]~7\);

-- Location: FF_X112_Y48_N5
\sc1|sc0|sc0|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[1]~6_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(1));

-- Location: LCCOMB_X112_Y48_N6
\sc1|sc0|sc0|qp[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[2]~8_combout\ = (\sc1|sc0|sc0|qp\(2) & (!\sc1|sc0|sc0|qp[1]~7\)) # (!\sc1|sc0|sc0|qp\(2) & ((\sc1|sc0|sc0|qp[1]~7\) # (GND)))
-- \sc1|sc0|sc0|qp[2]~9\ = CARRY((!\sc1|sc0|sc0|qp[1]~7\) # (!\sc1|sc0|sc0|qp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc0|sc0|qp\(2),
	datad => VCC,
	cin => \sc1|sc0|sc0|qp[1]~7\,
	combout => \sc1|sc0|sc0|qp[2]~8_combout\,
	cout => \sc1|sc0|sc0|qp[2]~9\);

-- Location: FF_X112_Y48_N7
\sc1|sc0|sc0|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[2]~8_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(2));

-- Location: LCCOMB_X112_Y48_N8
\sc1|sc0|sc0|qp[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[3]~10_combout\ = (\sc1|sc0|sc0|qp\(3) & (\sc1|sc0|sc0|qp[2]~9\ $ (GND))) # (!\sc1|sc0|sc0|qp\(3) & (!\sc1|sc0|sc0|qp[2]~9\ & VCC))
-- \sc1|sc0|sc0|qp[3]~11\ = CARRY((\sc1|sc0|sc0|qp\(3) & !\sc1|sc0|sc0|qp[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc0|sc0|qp\(3),
	datad => VCC,
	cin => \sc1|sc0|sc0|qp[2]~9\,
	combout => \sc1|sc0|sc0|qp[3]~10_combout\,
	cout => \sc1|sc0|sc0|qp[3]~11\);

-- Location: FF_X112_Y48_N9
\sc1|sc0|sc0|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[3]~10_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(3));

-- Location: LCCOMB_X112_Y48_N10
\sc1|sc0|sc0|qp[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[4]~12_combout\ = (\sc1|sc0|sc0|qp\(4) & (!\sc1|sc0|sc0|qp[3]~11\)) # (!\sc1|sc0|sc0|qp\(4) & ((\sc1|sc0|sc0|qp[3]~11\) # (GND)))
-- \sc1|sc0|sc0|qp[4]~13\ = CARRY((!\sc1|sc0|sc0|qp[3]~11\) # (!\sc1|sc0|sc0|qp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc0|sc0|qp\(4),
	datad => VCC,
	cin => \sc1|sc0|sc0|qp[3]~11\,
	combout => \sc1|sc0|sc0|qp[4]~12_combout\,
	cout => \sc1|sc0|sc0|qp[4]~13\);

-- Location: FF_X112_Y48_N11
\sc1|sc0|sc0|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[4]~12_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(4));

-- Location: LCCOMB_X112_Y48_N12
\sc1|sc0|sc0|qp[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[5]~14_combout\ = (\sc1|sc0|sc0|qp\(5) & (\sc1|sc0|sc0|qp[4]~13\ $ (GND))) # (!\sc1|sc0|sc0|qp\(5) & (!\sc1|sc0|sc0|qp[4]~13\ & VCC))
-- \sc1|sc0|sc0|qp[5]~15\ = CARRY((\sc1|sc0|sc0|qp\(5) & !\sc1|sc0|sc0|qp[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc0|sc0|qp\(5),
	datad => VCC,
	cin => \sc1|sc0|sc0|qp[4]~13\,
	combout => \sc1|sc0|sc0|qp[5]~14_combout\,
	cout => \sc1|sc0|sc0|qp[5]~15\);

-- Location: FF_X112_Y48_N13
\sc1|sc0|sc0|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[5]~14_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(5));

-- Location: LCCOMB_X112_Y48_N14
\sc1|sc0|sc0|qp[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[6]~16_combout\ = \sc1|sc0|sc0|qp\(6) $ (\sc1|sc0|sc0|qp[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc0|sc0|qp\(6),
	cin => \sc1|sc0|sc0|qp[5]~15\,
	combout => \sc1|sc0|sc0|qp[6]~16_combout\);

-- Location: LCCOMB_X112_Y48_N24
\sc1|sc0|sc0|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc0|sc0|qp[6]~feeder_combout\ = \sc1|sc0|sc0|qp[6]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|sc0|sc0|qp[6]~16_combout\,
	combout => \sc1|sc0|sc0|qp[6]~feeder_combout\);

-- Location: FF_X112_Y48_N25
\sc1|sc0|sc0|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|Y~clkctrl_outclk\,
	d => \sc1|sc0|sc0|qp[6]~feeder_combout\,
	clrn => \sc1|ALT_INV_CRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc0|sc0|qp\(6));

-- Location: LCCOMB_X114_Y44_N8
\sc1|sc6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc6|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc1|sc6|Q~feeder_combout\);

-- Location: LCCOMB_X113_Y44_N28
\sc1|sc8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc8|Mux2~0_combout\ = (\sc1|sc8|qp\(1)) # ((!\sc1|sc8|qp\(0)) # (!\sc1|sc6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc8|qp\(1),
	datab => \sc1|sc6|Q~q\,
	datad => \sc1|sc8|qp\(0),
	combout => \sc1|sc8|Mux2~0_combout\);

-- Location: FF_X113_Y44_N13
\sc1|sc8|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc1|sc8|Mux2~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc8|qp\(0));

-- Location: LCCOMB_X113_Y44_N14
\sc1|sc8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc8|Mux0~0_combout\ = (\sc1|sc8|qp\(1)) # (!\sc1|sc8|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc8|qp\(1),
	datad => \sc1|sc8|qp\(0),
	combout => \sc1|sc8|Mux0~0_combout\);

-- Location: FF_X114_Y44_N9
\sc1|sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc0|sc0|qp\(6),
	d => \sc1|sc6|Q~feeder_combout\,
	clrn => \sc1|sc8|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc6|Q~q\);

-- Location: LCCOMB_X113_Y44_N16
\sc1|sc8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc8|Mux1~0_combout\ = (\sc1|sc8|qp\(1) & (\sc1|sc6|Q~q\)) # (!\sc1|sc8|qp\(1) & ((!\sc1|sc8|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc8|qp\(1),
	datac => \sc1|sc6|Q~q\,
	datad => \sc1|sc8|qp\(0),
	combout => \sc1|sc8|Mux1~0_combout\);

-- Location: FF_X113_Y44_N27
\sc1|sc8|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc1|sc8|Mux1~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc8|qp\(1));

-- Location: LCCOMB_X113_Y44_N8
\sc1|TRST\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|TRST~combout\ = (((\sc1|sc8|qp\(1)) # (!\sc1|sc8|qp\(0))) # (!\init~input_o\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \init~input_o\,
	datac => \sc1|sc8|qp\(1),
	datad => \sc1|sc8|qp\(0),
	combout => \sc1|TRST~combout\);

-- Location: FF_X112_Y47_N23
\sc1|sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Trigger~input_o\,
	d => \sc1|sc1|Q~feeder_combout\,
	clrn => \sc1|ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc1|Q~q\);

-- Location: LCCOMB_X111_Y47_N14
\sc1|sc3|sc0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~1_cout\ = CARRY(\sc1|sc1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc1|Q~q\,
	datad => VCC,
	cout => \sc1|sc3|sc0|Add0~1_cout\);

-- Location: LCCOMB_X111_Y47_N16
\sc1|sc3|sc0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~2_combout\ = (\sc4|shift_reg\(0) & ((\sc3|shift_reg\(0) & (\sc1|sc3|sc0|Add0~1_cout\ & VCC)) # (!\sc3|shift_reg\(0) & (!\sc1|sc3|sc0|Add0~1_cout\)))) # (!\sc4|shift_reg\(0) & ((\sc3|shift_reg\(0) & (!\sc1|sc3|sc0|Add0~1_cout\)) # 
-- (!\sc3|shift_reg\(0) & ((\sc1|sc3|sc0|Add0~1_cout\) # (GND)))))
-- \sc1|sc3|sc0|Add0~3\ = CARRY((\sc4|shift_reg\(0) & (!\sc3|shift_reg\(0) & !\sc1|sc3|sc0|Add0~1_cout\)) # (!\sc4|shift_reg\(0) & ((!\sc1|sc3|sc0|Add0~1_cout\) # (!\sc3|shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(0),
	datab => \sc3|shift_reg\(0),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~1_cout\,
	combout => \sc1|sc3|sc0|Add0~2_combout\,
	cout => \sc1|sc3|sc0|Add0~3\);

-- Location: LCCOMB_X111_Y47_N18
\sc1|sc3|sc0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~4_combout\ = ((\sc4|shift_reg\(1) $ (\sc3|shift_reg\(1) $ (!\sc1|sc3|sc0|Add0~3\)))) # (GND)
-- \sc1|sc3|sc0|Add0~5\ = CARRY((\sc4|shift_reg\(1) & ((\sc3|shift_reg\(1)) # (!\sc1|sc3|sc0|Add0~3\))) # (!\sc4|shift_reg\(1) & (\sc3|shift_reg\(1) & !\sc1|sc3|sc0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(1),
	datab => \sc3|shift_reg\(1),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~3\,
	combout => \sc1|sc3|sc0|Add0~4_combout\,
	cout => \sc1|sc3|sc0|Add0~5\);

-- Location: LCCOMB_X111_Y47_N20
\sc1|sc3|sc0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~6_combout\ = (\sc4|shift_reg\(2) & ((\sc3|shift_reg\(2) & (\sc1|sc3|sc0|Add0~5\ & VCC)) # (!\sc3|shift_reg\(2) & (!\sc1|sc3|sc0|Add0~5\)))) # (!\sc4|shift_reg\(2) & ((\sc3|shift_reg\(2) & (!\sc1|sc3|sc0|Add0~5\)) # (!\sc3|shift_reg\(2) & 
-- ((\sc1|sc3|sc0|Add0~5\) # (GND)))))
-- \sc1|sc3|sc0|Add0~7\ = CARRY((\sc4|shift_reg\(2) & (!\sc3|shift_reg\(2) & !\sc1|sc3|sc0|Add0~5\)) # (!\sc4|shift_reg\(2) & ((!\sc1|sc3|sc0|Add0~5\) # (!\sc3|shift_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(2),
	datab => \sc3|shift_reg\(2),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~5\,
	combout => \sc1|sc3|sc0|Add0~6_combout\,
	cout => \sc1|sc3|sc0|Add0~7\);

-- Location: LCCOMB_X111_Y47_N22
\sc1|sc3|sc0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~8_combout\ = ((\sc4|shift_reg\(3) $ (\sc3|shift_reg\(3) $ (!\sc1|sc3|sc0|Add0~7\)))) # (GND)
-- \sc1|sc3|sc0|Add0~9\ = CARRY((\sc4|shift_reg\(3) & ((\sc3|shift_reg\(3)) # (!\sc1|sc3|sc0|Add0~7\))) # (!\sc4|shift_reg\(3) & (\sc3|shift_reg\(3) & !\sc1|sc3|sc0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(3),
	datab => \sc3|shift_reg\(3),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~7\,
	combout => \sc1|sc3|sc0|Add0~8_combout\,
	cout => \sc1|sc3|sc0|Add0~9\);

-- Location: LCCOMB_X111_Y47_N24
\sc1|sc3|sc0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~10_combout\ = (\sc3|shift_reg\(4) & ((\sc4|shift_reg\(4) & (\sc1|sc3|sc0|Add0~9\ & VCC)) # (!\sc4|shift_reg\(4) & (!\sc1|sc3|sc0|Add0~9\)))) # (!\sc3|shift_reg\(4) & ((\sc4|shift_reg\(4) & (!\sc1|sc3|sc0|Add0~9\)) # (!\sc4|shift_reg\(4) 
-- & ((\sc1|sc3|sc0|Add0~9\) # (GND)))))
-- \sc1|sc3|sc0|Add0~11\ = CARRY((\sc3|shift_reg\(4) & (!\sc4|shift_reg\(4) & !\sc1|sc3|sc0|Add0~9\)) # (!\sc3|shift_reg\(4) & ((!\sc1|sc3|sc0|Add0~9\) # (!\sc4|shift_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(4),
	datab => \sc4|shift_reg\(4),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~9\,
	combout => \sc1|sc3|sc0|Add0~10_combout\,
	cout => \sc1|sc3|sc0|Add0~11\);

-- Location: LCCOMB_X111_Y47_N26
\sc1|sc3|sc0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~12_combout\ = ((\sc4|shift_reg\(5) $ (\sc3|shift_reg\(5) $ (!\sc1|sc3|sc0|Add0~11\)))) # (GND)
-- \sc1|sc3|sc0|Add0~13\ = CARRY((\sc4|shift_reg\(5) & ((\sc3|shift_reg\(5)) # (!\sc1|sc3|sc0|Add0~11\))) # (!\sc4|shift_reg\(5) & (\sc3|shift_reg\(5) & !\sc1|sc3|sc0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(5),
	datab => \sc3|shift_reg\(5),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~11\,
	combout => \sc1|sc3|sc0|Add0~12_combout\,
	cout => \sc1|sc3|sc0|Add0~13\);

-- Location: LCCOMB_X111_Y47_N28
\sc1|sc3|sc0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~14_combout\ = (\sc4|shift_reg\(6) & ((\sc3|shift_reg\(6) & (\sc1|sc3|sc0|Add0~13\ & VCC)) # (!\sc3|shift_reg\(6) & (!\sc1|sc3|sc0|Add0~13\)))) # (!\sc4|shift_reg\(6) & ((\sc3|shift_reg\(6) & (!\sc1|sc3|sc0|Add0~13\)) # 
-- (!\sc3|shift_reg\(6) & ((\sc1|sc3|sc0|Add0~13\) # (GND)))))
-- \sc1|sc3|sc0|Add0~15\ = CARRY((\sc4|shift_reg\(6) & (!\sc3|shift_reg\(6) & !\sc1|sc3|sc0|Add0~13\)) # (!\sc4|shift_reg\(6) & ((!\sc1|sc3|sc0|Add0~13\) # (!\sc3|shift_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(6),
	datab => \sc3|shift_reg\(6),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~13\,
	combout => \sc1|sc3|sc0|Add0~14_combout\,
	cout => \sc1|sc3|sc0|Add0~15\);

-- Location: LCCOMB_X111_Y47_N30
\sc1|sc3|sc0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~16_combout\ = ((\sc3|shift_reg\(7) $ (\sc4|shift_reg\(7) $ (!\sc1|sc3|sc0|Add0~15\)))) # (GND)
-- \sc1|sc3|sc0|Add0~17\ = CARRY((\sc3|shift_reg\(7) & ((\sc4|shift_reg\(7)) # (!\sc1|sc3|sc0|Add0~15\))) # (!\sc3|shift_reg\(7) & (\sc4|shift_reg\(7) & !\sc1|sc3|sc0|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(7),
	datab => \sc4|shift_reg\(7),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~15\,
	combout => \sc1|sc3|sc0|Add0~16_combout\,
	cout => \sc1|sc3|sc0|Add0~17\);

-- Location: LCCOMB_X111_Y46_N0
\sc1|sc3|sc0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~18_combout\ = (\sc3|shift_reg\(8) & ((\sc4|shift_reg\(8) & (\sc1|sc3|sc0|Add0~17\ & VCC)) # (!\sc4|shift_reg\(8) & (!\sc1|sc3|sc0|Add0~17\)))) # (!\sc3|shift_reg\(8) & ((\sc4|shift_reg\(8) & (!\sc1|sc3|sc0|Add0~17\)) # 
-- (!\sc4|shift_reg\(8) & ((\sc1|sc3|sc0|Add0~17\) # (GND)))))
-- \sc1|sc3|sc0|Add0~19\ = CARRY((\sc3|shift_reg\(8) & (!\sc4|shift_reg\(8) & !\sc1|sc3|sc0|Add0~17\)) # (!\sc3|shift_reg\(8) & ((!\sc1|sc3|sc0|Add0~17\) # (!\sc4|shift_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(8),
	datab => \sc4|shift_reg\(8),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~17\,
	combout => \sc1|sc3|sc0|Add0~18_combout\,
	cout => \sc1|sc3|sc0|Add0~19\);

-- Location: LCCOMB_X111_Y46_N2
\sc1|sc3|sc0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~20_combout\ = ((\sc3|shift_reg\(9) $ (\sc4|shift_reg\(9) $ (!\sc1|sc3|sc0|Add0~19\)))) # (GND)
-- \sc1|sc3|sc0|Add0~21\ = CARRY((\sc3|shift_reg\(9) & ((\sc4|shift_reg\(9)) # (!\sc1|sc3|sc0|Add0~19\))) # (!\sc3|shift_reg\(9) & (\sc4|shift_reg\(9) & !\sc1|sc3|sc0|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(9),
	datab => \sc4|shift_reg\(9),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~19\,
	combout => \sc1|sc3|sc0|Add0~20_combout\,
	cout => \sc1|sc3|sc0|Add0~21\);

-- Location: LCCOMB_X111_Y46_N4
\sc1|sc3|sc0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~22_combout\ = (\sc4|shift_reg\(10) & ((\sc3|shift_reg\(10) & (\sc1|sc3|sc0|Add0~21\ & VCC)) # (!\sc3|shift_reg\(10) & (!\sc1|sc3|sc0|Add0~21\)))) # (!\sc4|shift_reg\(10) & ((\sc3|shift_reg\(10) & (!\sc1|sc3|sc0|Add0~21\)) # 
-- (!\sc3|shift_reg\(10) & ((\sc1|sc3|sc0|Add0~21\) # (GND)))))
-- \sc1|sc3|sc0|Add0~23\ = CARRY((\sc4|shift_reg\(10) & (!\sc3|shift_reg\(10) & !\sc1|sc3|sc0|Add0~21\)) # (!\sc4|shift_reg\(10) & ((!\sc1|sc3|sc0|Add0~21\) # (!\sc3|shift_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(10),
	datab => \sc3|shift_reg\(10),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~21\,
	combout => \sc1|sc3|sc0|Add0~22_combout\,
	cout => \sc1|sc3|sc0|Add0~23\);

-- Location: LCCOMB_X111_Y46_N6
\sc1|sc3|sc0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~24_combout\ = ((\sc4|shift_reg\(11) $ (\sc3|shift_reg\(11) $ (!\sc1|sc3|sc0|Add0~23\)))) # (GND)
-- \sc1|sc3|sc0|Add0~25\ = CARRY((\sc4|shift_reg\(11) & ((\sc3|shift_reg\(11)) # (!\sc1|sc3|sc0|Add0~23\))) # (!\sc4|shift_reg\(11) & (\sc3|shift_reg\(11) & !\sc1|sc3|sc0|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(11),
	datab => \sc3|shift_reg\(11),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~23\,
	combout => \sc1|sc3|sc0|Add0~24_combout\,
	cout => \sc1|sc3|sc0|Add0~25\);

-- Location: LCCOMB_X111_Y46_N8
\sc1|sc3|sc0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~26_combout\ = (\sc3|shift_reg\(12) & ((\sc4|shift_reg\(12) & (\sc1|sc3|sc0|Add0~25\ & VCC)) # (!\sc4|shift_reg\(12) & (!\sc1|sc3|sc0|Add0~25\)))) # (!\sc3|shift_reg\(12) & ((\sc4|shift_reg\(12) & (!\sc1|sc3|sc0|Add0~25\)) # 
-- (!\sc4|shift_reg\(12) & ((\sc1|sc3|sc0|Add0~25\) # (GND)))))
-- \sc1|sc3|sc0|Add0~27\ = CARRY((\sc3|shift_reg\(12) & (!\sc4|shift_reg\(12) & !\sc1|sc3|sc0|Add0~25\)) # (!\sc3|shift_reg\(12) & ((!\sc1|sc3|sc0|Add0~25\) # (!\sc4|shift_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(12),
	datab => \sc4|shift_reg\(12),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~25\,
	combout => \sc1|sc3|sc0|Add0~26_combout\,
	cout => \sc1|sc3|sc0|Add0~27\);

-- Location: LCCOMB_X111_Y46_N10
\sc1|sc3|sc0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~28_combout\ = ((\sc4|shift_reg\(13) $ (\sc3|shift_reg\(13) $ (!\sc1|sc3|sc0|Add0~27\)))) # (GND)
-- \sc1|sc3|sc0|Add0~29\ = CARRY((\sc4|shift_reg\(13) & ((\sc3|shift_reg\(13)) # (!\sc1|sc3|sc0|Add0~27\))) # (!\sc4|shift_reg\(13) & (\sc3|shift_reg\(13) & !\sc1|sc3|sc0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(13),
	datab => \sc3|shift_reg\(13),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~27\,
	combout => \sc1|sc3|sc0|Add0~28_combout\,
	cout => \sc1|sc3|sc0|Add0~29\);

-- Location: LCCOMB_X111_Y46_N12
\sc1|sc3|sc0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~30_combout\ = (\sc3|shift_reg\(14) & ((\sc4|shift_reg\(14) & (\sc1|sc3|sc0|Add0~29\ & VCC)) # (!\sc4|shift_reg\(14) & (!\sc1|sc3|sc0|Add0~29\)))) # (!\sc3|shift_reg\(14) & ((\sc4|shift_reg\(14) & (!\sc1|sc3|sc0|Add0~29\)) # 
-- (!\sc4|shift_reg\(14) & ((\sc1|sc3|sc0|Add0~29\) # (GND)))))
-- \sc1|sc3|sc0|Add0~31\ = CARRY((\sc3|shift_reg\(14) & (!\sc4|shift_reg\(14) & !\sc1|sc3|sc0|Add0~29\)) # (!\sc3|shift_reg\(14) & ((!\sc1|sc3|sc0|Add0~29\) # (!\sc4|shift_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(14),
	datab => \sc4|shift_reg\(14),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~29\,
	combout => \sc1|sc3|sc0|Add0~30_combout\,
	cout => \sc1|sc3|sc0|Add0~31\);

-- Location: LCCOMB_X111_Y46_N14
\sc1|sc3|sc0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~32_combout\ = ((\sc4|shift_reg\(15) $ (\sc3|shift_reg\(15) $ (!\sc1|sc3|sc0|Add0~31\)))) # (GND)
-- \sc1|sc3|sc0|Add0~33\ = CARRY((\sc4|shift_reg\(15) & ((\sc3|shift_reg\(15)) # (!\sc1|sc3|sc0|Add0~31\))) # (!\sc4|shift_reg\(15) & (\sc3|shift_reg\(15) & !\sc1|sc3|sc0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(15),
	datab => \sc3|shift_reg\(15),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~31\,
	combout => \sc1|sc3|sc0|Add0~32_combout\,
	cout => \sc1|sc3|sc0|Add0~33\);

-- Location: LCCOMB_X111_Y46_N16
\sc1|sc3|sc0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~34_combout\ = (\sc4|shift_reg\(16) & ((\sc3|shift_reg\(16) & (\sc1|sc3|sc0|Add0~33\ & VCC)) # (!\sc3|shift_reg\(16) & (!\sc1|sc3|sc0|Add0~33\)))) # (!\sc4|shift_reg\(16) & ((\sc3|shift_reg\(16) & (!\sc1|sc3|sc0|Add0~33\)) # 
-- (!\sc3|shift_reg\(16) & ((\sc1|sc3|sc0|Add0~33\) # (GND)))))
-- \sc1|sc3|sc0|Add0~35\ = CARRY((\sc4|shift_reg\(16) & (!\sc3|shift_reg\(16) & !\sc1|sc3|sc0|Add0~33\)) # (!\sc4|shift_reg\(16) & ((!\sc1|sc3|sc0|Add0~33\) # (!\sc3|shift_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(16),
	datab => \sc3|shift_reg\(16),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~33\,
	combout => \sc1|sc3|sc0|Add0~34_combout\,
	cout => \sc1|sc3|sc0|Add0~35\);

-- Location: LCCOMB_X111_Y46_N18
\sc1|sc3|sc0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~36_combout\ = ((\sc3|shift_reg\(17) $ (\sc4|shift_reg\(17) $ (!\sc1|sc3|sc0|Add0~35\)))) # (GND)
-- \sc1|sc3|sc0|Add0~37\ = CARRY((\sc3|shift_reg\(17) & ((\sc4|shift_reg\(17)) # (!\sc1|sc3|sc0|Add0~35\))) # (!\sc3|shift_reg\(17) & (\sc4|shift_reg\(17) & !\sc1|sc3|sc0|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(17),
	datab => \sc4|shift_reg\(17),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~35\,
	combout => \sc1|sc3|sc0|Add0~36_combout\,
	cout => \sc1|sc3|sc0|Add0~37\);

-- Location: LCCOMB_X111_Y46_N20
\sc1|sc3|sc0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~38_combout\ = (\sc4|shift_reg\(18) & ((\sc3|shift_reg\(18) & (\sc1|sc3|sc0|Add0~37\ & VCC)) # (!\sc3|shift_reg\(18) & (!\sc1|sc3|sc0|Add0~37\)))) # (!\sc4|shift_reg\(18) & ((\sc3|shift_reg\(18) & (!\sc1|sc3|sc0|Add0~37\)) # 
-- (!\sc3|shift_reg\(18) & ((\sc1|sc3|sc0|Add0~37\) # (GND)))))
-- \sc1|sc3|sc0|Add0~39\ = CARRY((\sc4|shift_reg\(18) & (!\sc3|shift_reg\(18) & !\sc1|sc3|sc0|Add0~37\)) # (!\sc4|shift_reg\(18) & ((!\sc1|sc3|sc0|Add0~37\) # (!\sc3|shift_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(18),
	datab => \sc3|shift_reg\(18),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~37\,
	combout => \sc1|sc3|sc0|Add0~38_combout\,
	cout => \sc1|sc3|sc0|Add0~39\);

-- Location: LCCOMB_X111_Y46_N22
\sc1|sc3|sc0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~40_combout\ = ((\sc3|shift_reg\(19) $ (\sc4|shift_reg\(19) $ (!\sc1|sc3|sc0|Add0~39\)))) # (GND)
-- \sc1|sc3|sc0|Add0~41\ = CARRY((\sc3|shift_reg\(19) & ((\sc4|shift_reg\(19)) # (!\sc1|sc3|sc0|Add0~39\))) # (!\sc3|shift_reg\(19) & (\sc4|shift_reg\(19) & !\sc1|sc3|sc0|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(19),
	datab => \sc4|shift_reg\(19),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~39\,
	combout => \sc1|sc3|sc0|Add0~40_combout\,
	cout => \sc1|sc3|sc0|Add0~41\);

-- Location: LCCOMB_X111_Y46_N24
\sc1|sc3|sc0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~42_combout\ = (\sc4|shift_reg\(20) & ((\sc3|shift_reg\(20) & (\sc1|sc3|sc0|Add0~41\ & VCC)) # (!\sc3|shift_reg\(20) & (!\sc1|sc3|sc0|Add0~41\)))) # (!\sc4|shift_reg\(20) & ((\sc3|shift_reg\(20) & (!\sc1|sc3|sc0|Add0~41\)) # 
-- (!\sc3|shift_reg\(20) & ((\sc1|sc3|sc0|Add0~41\) # (GND)))))
-- \sc1|sc3|sc0|Add0~43\ = CARRY((\sc4|shift_reg\(20) & (!\sc3|shift_reg\(20) & !\sc1|sc3|sc0|Add0~41\)) # (!\sc4|shift_reg\(20) & ((!\sc1|sc3|sc0|Add0~41\) # (!\sc3|shift_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(20),
	datab => \sc3|shift_reg\(20),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~41\,
	combout => \sc1|sc3|sc0|Add0~42_combout\,
	cout => \sc1|sc3|sc0|Add0~43\);

-- Location: LCCOMB_X111_Y46_N26
\sc1|sc3|sc0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~44_combout\ = ((\sc4|shift_reg\(21) $ (\sc3|shift_reg\(21) $ (!\sc1|sc3|sc0|Add0~43\)))) # (GND)
-- \sc1|sc3|sc0|Add0~45\ = CARRY((\sc4|shift_reg\(21) & ((\sc3|shift_reg\(21)) # (!\sc1|sc3|sc0|Add0~43\))) # (!\sc4|shift_reg\(21) & (\sc3|shift_reg\(21) & !\sc1|sc3|sc0|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(21),
	datab => \sc3|shift_reg\(21),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~43\,
	combout => \sc1|sc3|sc0|Add0~44_combout\,
	cout => \sc1|sc3|sc0|Add0~45\);

-- Location: LCCOMB_X111_Y46_N28
\sc1|sc3|sc0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~46_combout\ = (\sc4|shift_reg\(22) & ((\sc3|shift_reg\(22) & (\sc1|sc3|sc0|Add0~45\ & VCC)) # (!\sc3|shift_reg\(22) & (!\sc1|sc3|sc0|Add0~45\)))) # (!\sc4|shift_reg\(22) & ((\sc3|shift_reg\(22) & (!\sc1|sc3|sc0|Add0~45\)) # 
-- (!\sc3|shift_reg\(22) & ((\sc1|sc3|sc0|Add0~45\) # (GND)))))
-- \sc1|sc3|sc0|Add0~47\ = CARRY((\sc4|shift_reg\(22) & (!\sc3|shift_reg\(22) & !\sc1|sc3|sc0|Add0~45\)) # (!\sc4|shift_reg\(22) & ((!\sc1|sc3|sc0|Add0~45\) # (!\sc3|shift_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(22),
	datab => \sc3|shift_reg\(22),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~45\,
	combout => \sc1|sc3|sc0|Add0~46_combout\,
	cout => \sc1|sc3|sc0|Add0~47\);

-- Location: LCCOMB_X111_Y46_N30
\sc1|sc3|sc0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~48_combout\ = ((\sc4|shift_reg\(23) $ (\sc3|shift_reg\(23) $ (!\sc1|sc3|sc0|Add0~47\)))) # (GND)
-- \sc1|sc3|sc0|Add0~49\ = CARRY((\sc4|shift_reg\(23) & ((\sc3|shift_reg\(23)) # (!\sc1|sc3|sc0|Add0~47\))) # (!\sc4|shift_reg\(23) & (\sc3|shift_reg\(23) & !\sc1|sc3|sc0|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(23),
	datab => \sc3|shift_reg\(23),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~47\,
	combout => \sc1|sc3|sc0|Add0~48_combout\,
	cout => \sc1|sc3|sc0|Add0~49\);

-- Location: LCCOMB_X111_Y45_N0
\sc1|sc3|sc0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~50_combout\ = (\sc4|shift_reg\(24) & ((\sc3|shift_reg\(24) & (\sc1|sc3|sc0|Add0~49\ & VCC)) # (!\sc3|shift_reg\(24) & (!\sc1|sc3|sc0|Add0~49\)))) # (!\sc4|shift_reg\(24) & ((\sc3|shift_reg\(24) & (!\sc1|sc3|sc0|Add0~49\)) # 
-- (!\sc3|shift_reg\(24) & ((\sc1|sc3|sc0|Add0~49\) # (GND)))))
-- \sc1|sc3|sc0|Add0~51\ = CARRY((\sc4|shift_reg\(24) & (!\sc3|shift_reg\(24) & !\sc1|sc3|sc0|Add0~49\)) # (!\sc4|shift_reg\(24) & ((!\sc1|sc3|sc0|Add0~49\) # (!\sc3|shift_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(24),
	datab => \sc3|shift_reg\(24),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~49\,
	combout => \sc1|sc3|sc0|Add0~50_combout\,
	cout => \sc1|sc3|sc0|Add0~51\);

-- Location: LCCOMB_X111_Y45_N2
\sc1|sc3|sc0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~52_combout\ = ((\sc4|shift_reg\(25) $ (\sc3|shift_reg\(25) $ (!\sc1|sc3|sc0|Add0~51\)))) # (GND)
-- \sc1|sc3|sc0|Add0~53\ = CARRY((\sc4|shift_reg\(25) & ((\sc3|shift_reg\(25)) # (!\sc1|sc3|sc0|Add0~51\))) # (!\sc4|shift_reg\(25) & (\sc3|shift_reg\(25) & !\sc1|sc3|sc0|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(25),
	datab => \sc3|shift_reg\(25),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~51\,
	combout => \sc1|sc3|sc0|Add0~52_combout\,
	cout => \sc1|sc3|sc0|Add0~53\);

-- Location: LCCOMB_X111_Y45_N4
\sc1|sc3|sc0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~54_combout\ = (\sc4|shift_reg\(26) & ((\sc3|shift_reg\(26) & (\sc1|sc3|sc0|Add0~53\ & VCC)) # (!\sc3|shift_reg\(26) & (!\sc1|sc3|sc0|Add0~53\)))) # (!\sc4|shift_reg\(26) & ((\sc3|shift_reg\(26) & (!\sc1|sc3|sc0|Add0~53\)) # 
-- (!\sc3|shift_reg\(26) & ((\sc1|sc3|sc0|Add0~53\) # (GND)))))
-- \sc1|sc3|sc0|Add0~55\ = CARRY((\sc4|shift_reg\(26) & (!\sc3|shift_reg\(26) & !\sc1|sc3|sc0|Add0~53\)) # (!\sc4|shift_reg\(26) & ((!\sc1|sc3|sc0|Add0~53\) # (!\sc3|shift_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(26),
	datab => \sc3|shift_reg\(26),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~53\,
	combout => \sc1|sc3|sc0|Add0~54_combout\,
	cout => \sc1|sc3|sc0|Add0~55\);

-- Location: LCCOMB_X111_Y45_N6
\sc1|sc3|sc0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~56_combout\ = ((\sc3|shift_reg\(27) $ (\sc4|shift_reg\(27) $ (!\sc1|sc3|sc0|Add0~55\)))) # (GND)
-- \sc1|sc3|sc0|Add0~57\ = CARRY((\sc3|shift_reg\(27) & ((\sc4|shift_reg\(27)) # (!\sc1|sc3|sc0|Add0~55\))) # (!\sc3|shift_reg\(27) & (\sc4|shift_reg\(27) & !\sc1|sc3|sc0|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(27),
	datab => \sc4|shift_reg\(27),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~55\,
	combout => \sc1|sc3|sc0|Add0~56_combout\,
	cout => \sc1|sc3|sc0|Add0~57\);

-- Location: LCCOMB_X111_Y45_N8
\sc1|sc3|sc0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~58_combout\ = (\sc4|shift_reg\(28) & ((\sc3|shift_reg\(28) & (\sc1|sc3|sc0|Add0~57\ & VCC)) # (!\sc3|shift_reg\(28) & (!\sc1|sc3|sc0|Add0~57\)))) # (!\sc4|shift_reg\(28) & ((\sc3|shift_reg\(28) & (!\sc1|sc3|sc0|Add0~57\)) # 
-- (!\sc3|shift_reg\(28) & ((\sc1|sc3|sc0|Add0~57\) # (GND)))))
-- \sc1|sc3|sc0|Add0~59\ = CARRY((\sc4|shift_reg\(28) & (!\sc3|shift_reg\(28) & !\sc1|sc3|sc0|Add0~57\)) # (!\sc4|shift_reg\(28) & ((!\sc1|sc3|sc0|Add0~57\) # (!\sc3|shift_reg\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(28),
	datab => \sc3|shift_reg\(28),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~57\,
	combout => \sc1|sc3|sc0|Add0~58_combout\,
	cout => \sc1|sc3|sc0|Add0~59\);

-- Location: LCCOMB_X111_Y45_N10
\sc1|sc3|sc0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~60_combout\ = ((\sc4|shift_reg\(29) $ (\sc3|shift_reg\(29) $ (!\sc1|sc3|sc0|Add0~59\)))) # (GND)
-- \sc1|sc3|sc0|Add0~61\ = CARRY((\sc4|shift_reg\(29) & ((\sc3|shift_reg\(29)) # (!\sc1|sc3|sc0|Add0~59\))) # (!\sc4|shift_reg\(29) & (\sc3|shift_reg\(29) & !\sc1|sc3|sc0|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(29),
	datab => \sc3|shift_reg\(29),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~59\,
	combout => \sc1|sc3|sc0|Add0~60_combout\,
	cout => \sc1|sc3|sc0|Add0~61\);

-- Location: LCCOMB_X111_Y45_N12
\sc1|sc3|sc0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~62_combout\ = (\sc3|shift_reg\(30) & ((\sc4|shift_reg\(30) & (\sc1|sc3|sc0|Add0~61\ & VCC)) # (!\sc4|shift_reg\(30) & (!\sc1|sc3|sc0|Add0~61\)))) # (!\sc3|shift_reg\(30) & ((\sc4|shift_reg\(30) & (!\sc1|sc3|sc0|Add0~61\)) # 
-- (!\sc4|shift_reg\(30) & ((\sc1|sc3|sc0|Add0~61\) # (GND)))))
-- \sc1|sc3|sc0|Add0~63\ = CARRY((\sc3|shift_reg\(30) & (!\sc4|shift_reg\(30) & !\sc1|sc3|sc0|Add0~61\)) # (!\sc3|shift_reg\(30) & ((!\sc1|sc3|sc0|Add0~61\) # (!\sc4|shift_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(30),
	datab => \sc4|shift_reg\(30),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~61\,
	combout => \sc1|sc3|sc0|Add0~62_combout\,
	cout => \sc1|sc3|sc0|Add0~63\);

-- Location: LCCOMB_X111_Y45_N14
\sc1|sc3|sc0|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~64_combout\ = ((\sc3|shift_reg\(31) $ (\sc4|shift_reg\(31) $ (!\sc1|sc3|sc0|Add0~63\)))) # (GND)
-- \sc1|sc3|sc0|Add0~65\ = CARRY((\sc3|shift_reg\(31) & ((\sc4|shift_reg\(31)) # (!\sc1|sc3|sc0|Add0~63\))) # (!\sc3|shift_reg\(31) & (\sc4|shift_reg\(31) & !\sc1|sc3|sc0|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(31),
	datab => \sc4|shift_reg\(31),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~63\,
	combout => \sc1|sc3|sc0|Add0~64_combout\,
	cout => \sc1|sc3|sc0|Add0~65\);

-- Location: LCCOMB_X111_Y45_N16
\sc1|sc3|sc0|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~66_combout\ = (\sc4|shift_reg\(32) & ((\sc3|shift_reg\(32) & (\sc1|sc3|sc0|Add0~65\ & VCC)) # (!\sc3|shift_reg\(32) & (!\sc1|sc3|sc0|Add0~65\)))) # (!\sc4|shift_reg\(32) & ((\sc3|shift_reg\(32) & (!\sc1|sc3|sc0|Add0~65\)) # 
-- (!\sc3|shift_reg\(32) & ((\sc1|sc3|sc0|Add0~65\) # (GND)))))
-- \sc1|sc3|sc0|Add0~67\ = CARRY((\sc4|shift_reg\(32) & (!\sc3|shift_reg\(32) & !\sc1|sc3|sc0|Add0~65\)) # (!\sc4|shift_reg\(32) & ((!\sc1|sc3|sc0|Add0~65\) # (!\sc3|shift_reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(32),
	datab => \sc3|shift_reg\(32),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~65\,
	combout => \sc1|sc3|sc0|Add0~66_combout\,
	cout => \sc1|sc3|sc0|Add0~67\);

-- Location: LCCOMB_X111_Y45_N18
\sc1|sc3|sc0|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~68_combout\ = ((\sc3|shift_reg\(33) $ (\sc4|shift_reg\(33) $ (!\sc1|sc3|sc0|Add0~67\)))) # (GND)
-- \sc1|sc3|sc0|Add0~69\ = CARRY((\sc3|shift_reg\(33) & ((\sc4|shift_reg\(33)) # (!\sc1|sc3|sc0|Add0~67\))) # (!\sc3|shift_reg\(33) & (\sc4|shift_reg\(33) & !\sc1|sc3|sc0|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(33),
	datab => \sc4|shift_reg\(33),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~67\,
	combout => \sc1|sc3|sc0|Add0~68_combout\,
	cout => \sc1|sc3|sc0|Add0~69\);

-- Location: LCCOMB_X111_Y45_N20
\sc1|sc3|sc0|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~70_combout\ = (\sc3|shift_reg\(34) & ((\sc4|shift_reg\(34) & (\sc1|sc3|sc0|Add0~69\ & VCC)) # (!\sc4|shift_reg\(34) & (!\sc1|sc3|sc0|Add0~69\)))) # (!\sc3|shift_reg\(34) & ((\sc4|shift_reg\(34) & (!\sc1|sc3|sc0|Add0~69\)) # 
-- (!\sc4|shift_reg\(34) & ((\sc1|sc3|sc0|Add0~69\) # (GND)))))
-- \sc1|sc3|sc0|Add0~71\ = CARRY((\sc3|shift_reg\(34) & (!\sc4|shift_reg\(34) & !\sc1|sc3|sc0|Add0~69\)) # (!\sc3|shift_reg\(34) & ((!\sc1|sc3|sc0|Add0~69\) # (!\sc4|shift_reg\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(34),
	datab => \sc4|shift_reg\(34),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~69\,
	combout => \sc1|sc3|sc0|Add0~70_combout\,
	cout => \sc1|sc3|sc0|Add0~71\);

-- Location: LCCOMB_X111_Y45_N22
\sc1|sc3|sc0|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~72_combout\ = ((\sc4|shift_reg\(35) $ (\sc3|shift_reg\(35) $ (!\sc1|sc3|sc0|Add0~71\)))) # (GND)
-- \sc1|sc3|sc0|Add0~73\ = CARRY((\sc4|shift_reg\(35) & ((\sc3|shift_reg\(35)) # (!\sc1|sc3|sc0|Add0~71\))) # (!\sc4|shift_reg\(35) & (\sc3|shift_reg\(35) & !\sc1|sc3|sc0|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(35),
	datab => \sc3|shift_reg\(35),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~71\,
	combout => \sc1|sc3|sc0|Add0~72_combout\,
	cout => \sc1|sc3|sc0|Add0~73\);

-- Location: LCCOMB_X111_Y45_N24
\sc1|sc3|sc0|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~74_combout\ = (\sc3|shift_reg\(36) & ((\sc4|shift_reg\(36) & (\sc1|sc3|sc0|Add0~73\ & VCC)) # (!\sc4|shift_reg\(36) & (!\sc1|sc3|sc0|Add0~73\)))) # (!\sc3|shift_reg\(36) & ((\sc4|shift_reg\(36) & (!\sc1|sc3|sc0|Add0~73\)) # 
-- (!\sc4|shift_reg\(36) & ((\sc1|sc3|sc0|Add0~73\) # (GND)))))
-- \sc1|sc3|sc0|Add0~75\ = CARRY((\sc3|shift_reg\(36) & (!\sc4|shift_reg\(36) & !\sc1|sc3|sc0|Add0~73\)) # (!\sc3|shift_reg\(36) & ((!\sc1|sc3|sc0|Add0~73\) # (!\sc4|shift_reg\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(36),
	datab => \sc4|shift_reg\(36),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~73\,
	combout => \sc1|sc3|sc0|Add0~74_combout\,
	cout => \sc1|sc3|sc0|Add0~75\);

-- Location: LCCOMB_X111_Y45_N26
\sc1|sc3|sc0|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~76_combout\ = ((\sc4|shift_reg\(37) $ (\sc3|shift_reg\(37) $ (!\sc1|sc3|sc0|Add0~75\)))) # (GND)
-- \sc1|sc3|sc0|Add0~77\ = CARRY((\sc4|shift_reg\(37) & ((\sc3|shift_reg\(37)) # (!\sc1|sc3|sc0|Add0~75\))) # (!\sc4|shift_reg\(37) & (\sc3|shift_reg\(37) & !\sc1|sc3|sc0|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(37),
	datab => \sc3|shift_reg\(37),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~75\,
	combout => \sc1|sc3|sc0|Add0~76_combout\,
	cout => \sc1|sc3|sc0|Add0~77\);

-- Location: LCCOMB_X111_Y45_N28
\sc1|sc3|sc0|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~78_combout\ = (\sc3|shift_reg\(38) & ((\sc4|shift_reg\(38) & (\sc1|sc3|sc0|Add0~77\ & VCC)) # (!\sc4|shift_reg\(38) & (!\sc1|sc3|sc0|Add0~77\)))) # (!\sc3|shift_reg\(38) & ((\sc4|shift_reg\(38) & (!\sc1|sc3|sc0|Add0~77\)) # 
-- (!\sc4|shift_reg\(38) & ((\sc1|sc3|sc0|Add0~77\) # (GND)))))
-- \sc1|sc3|sc0|Add0~79\ = CARRY((\sc3|shift_reg\(38) & (!\sc4|shift_reg\(38) & !\sc1|sc3|sc0|Add0~77\)) # (!\sc3|shift_reg\(38) & ((!\sc1|sc3|sc0|Add0~77\) # (!\sc4|shift_reg\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(38),
	datab => \sc4|shift_reg\(38),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~77\,
	combout => \sc1|sc3|sc0|Add0~78_combout\,
	cout => \sc1|sc3|sc0|Add0~79\);

-- Location: LCCOMB_X111_Y45_N30
\sc1|sc3|sc0|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~80_combout\ = ((\sc4|shift_reg\(39) $ (\sc3|shift_reg\(39) $ (!\sc1|sc3|sc0|Add0~79\)))) # (GND)
-- \sc1|sc3|sc0|Add0~81\ = CARRY((\sc4|shift_reg\(39) & ((\sc3|shift_reg\(39)) # (!\sc1|sc3|sc0|Add0~79\))) # (!\sc4|shift_reg\(39) & (\sc3|shift_reg\(39) & !\sc1|sc3|sc0|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(39),
	datab => \sc3|shift_reg\(39),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~79\,
	combout => \sc1|sc3|sc0|Add0~80_combout\,
	cout => \sc1|sc3|sc0|Add0~81\);

-- Location: LCCOMB_X111_Y44_N0
\sc1|sc3|sc0|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~82_combout\ = (\sc4|shift_reg\(40) & ((\sc3|shift_reg\(40) & (\sc1|sc3|sc0|Add0~81\ & VCC)) # (!\sc3|shift_reg\(40) & (!\sc1|sc3|sc0|Add0~81\)))) # (!\sc4|shift_reg\(40) & ((\sc3|shift_reg\(40) & (!\sc1|sc3|sc0|Add0~81\)) # 
-- (!\sc3|shift_reg\(40) & ((\sc1|sc3|sc0|Add0~81\) # (GND)))))
-- \sc1|sc3|sc0|Add0~83\ = CARRY((\sc4|shift_reg\(40) & (!\sc3|shift_reg\(40) & !\sc1|sc3|sc0|Add0~81\)) # (!\sc4|shift_reg\(40) & ((!\sc1|sc3|sc0|Add0~81\) # (!\sc3|shift_reg\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(40),
	datab => \sc3|shift_reg\(40),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~81\,
	combout => \sc1|sc3|sc0|Add0~82_combout\,
	cout => \sc1|sc3|sc0|Add0~83\);

-- Location: LCCOMB_X111_Y44_N2
\sc1|sc3|sc0|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~84_combout\ = ((\sc4|shift_reg\(41) $ (\sc3|shift_reg\(41) $ (!\sc1|sc3|sc0|Add0~83\)))) # (GND)
-- \sc1|sc3|sc0|Add0~85\ = CARRY((\sc4|shift_reg\(41) & ((\sc3|shift_reg\(41)) # (!\sc1|sc3|sc0|Add0~83\))) # (!\sc4|shift_reg\(41) & (\sc3|shift_reg\(41) & !\sc1|sc3|sc0|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(41),
	datab => \sc3|shift_reg\(41),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~83\,
	combout => \sc1|sc3|sc0|Add0~84_combout\,
	cout => \sc1|sc3|sc0|Add0~85\);

-- Location: LCCOMB_X111_Y44_N4
\sc1|sc3|sc0|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~86_combout\ = (\sc4|shift_reg\(42) & ((\sc3|shift_reg\(42) & (\sc1|sc3|sc0|Add0~85\ & VCC)) # (!\sc3|shift_reg\(42) & (!\sc1|sc3|sc0|Add0~85\)))) # (!\sc4|shift_reg\(42) & ((\sc3|shift_reg\(42) & (!\sc1|sc3|sc0|Add0~85\)) # 
-- (!\sc3|shift_reg\(42) & ((\sc1|sc3|sc0|Add0~85\) # (GND)))))
-- \sc1|sc3|sc0|Add0~87\ = CARRY((\sc4|shift_reg\(42) & (!\sc3|shift_reg\(42) & !\sc1|sc3|sc0|Add0~85\)) # (!\sc4|shift_reg\(42) & ((!\sc1|sc3|sc0|Add0~85\) # (!\sc3|shift_reg\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(42),
	datab => \sc3|shift_reg\(42),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~85\,
	combout => \sc1|sc3|sc0|Add0~86_combout\,
	cout => \sc1|sc3|sc0|Add0~87\);

-- Location: LCCOMB_X111_Y44_N6
\sc1|sc3|sc0|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~88_combout\ = ((\sc3|shift_reg\(43) $ (\sc4|shift_reg\(43) $ (!\sc1|sc3|sc0|Add0~87\)))) # (GND)
-- \sc1|sc3|sc0|Add0~89\ = CARRY((\sc3|shift_reg\(43) & ((\sc4|shift_reg\(43)) # (!\sc1|sc3|sc0|Add0~87\))) # (!\sc3|shift_reg\(43) & (\sc4|shift_reg\(43) & !\sc1|sc3|sc0|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(43),
	datab => \sc4|shift_reg\(43),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~87\,
	combout => \sc1|sc3|sc0|Add0~88_combout\,
	cout => \sc1|sc3|sc0|Add0~89\);

-- Location: LCCOMB_X111_Y44_N8
\sc1|sc3|sc0|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~90_combout\ = (\sc3|shift_reg\(44) & ((\sc4|shift_reg\(44) & (\sc1|sc3|sc0|Add0~89\ & VCC)) # (!\sc4|shift_reg\(44) & (!\sc1|sc3|sc0|Add0~89\)))) # (!\sc3|shift_reg\(44) & ((\sc4|shift_reg\(44) & (!\sc1|sc3|sc0|Add0~89\)) # 
-- (!\sc4|shift_reg\(44) & ((\sc1|sc3|sc0|Add0~89\) # (GND)))))
-- \sc1|sc3|sc0|Add0~91\ = CARRY((\sc3|shift_reg\(44) & (!\sc4|shift_reg\(44) & !\sc1|sc3|sc0|Add0~89\)) # (!\sc3|shift_reg\(44) & ((!\sc1|sc3|sc0|Add0~89\) # (!\sc4|shift_reg\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(44),
	datab => \sc4|shift_reg\(44),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~89\,
	combout => \sc1|sc3|sc0|Add0~90_combout\,
	cout => \sc1|sc3|sc0|Add0~91\);

-- Location: LCCOMB_X111_Y44_N10
\sc1|sc3|sc0|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~92_combout\ = ((\sc3|shift_reg\(45) $ (\sc4|shift_reg\(45) $ (!\sc1|sc3|sc0|Add0~91\)))) # (GND)
-- \sc1|sc3|sc0|Add0~93\ = CARRY((\sc3|shift_reg\(45) & ((\sc4|shift_reg\(45)) # (!\sc1|sc3|sc0|Add0~91\))) # (!\sc3|shift_reg\(45) & (\sc4|shift_reg\(45) & !\sc1|sc3|sc0|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(45),
	datab => \sc4|shift_reg\(45),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~91\,
	combout => \sc1|sc3|sc0|Add0~92_combout\,
	cout => \sc1|sc3|sc0|Add0~93\);

-- Location: LCCOMB_X111_Y44_N12
\sc1|sc3|sc0|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~94_combout\ = (\sc3|shift_reg\(46) & ((\sc4|shift_reg\(46) & (\sc1|sc3|sc0|Add0~93\ & VCC)) # (!\sc4|shift_reg\(46) & (!\sc1|sc3|sc0|Add0~93\)))) # (!\sc3|shift_reg\(46) & ((\sc4|shift_reg\(46) & (!\sc1|sc3|sc0|Add0~93\)) # 
-- (!\sc4|shift_reg\(46) & ((\sc1|sc3|sc0|Add0~93\) # (GND)))))
-- \sc1|sc3|sc0|Add0~95\ = CARRY((\sc3|shift_reg\(46) & (!\sc4|shift_reg\(46) & !\sc1|sc3|sc0|Add0~93\)) # (!\sc3|shift_reg\(46) & ((!\sc1|sc3|sc0|Add0~93\) # (!\sc4|shift_reg\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(46),
	datab => \sc4|shift_reg\(46),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~93\,
	combout => \sc1|sc3|sc0|Add0~94_combout\,
	cout => \sc1|sc3|sc0|Add0~95\);

-- Location: LCCOMB_X111_Y44_N14
\sc1|sc3|sc0|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~96_combout\ = ((\sc3|shift_reg\(47) $ (\sc4|shift_reg\(47) $ (!\sc1|sc3|sc0|Add0~95\)))) # (GND)
-- \sc1|sc3|sc0|Add0~97\ = CARRY((\sc3|shift_reg\(47) & ((\sc4|shift_reg\(47)) # (!\sc1|sc3|sc0|Add0~95\))) # (!\sc3|shift_reg\(47) & (\sc4|shift_reg\(47) & !\sc1|sc3|sc0|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(47),
	datab => \sc4|shift_reg\(47),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~95\,
	combout => \sc1|sc3|sc0|Add0~96_combout\,
	cout => \sc1|sc3|sc0|Add0~97\);

-- Location: LCCOMB_X111_Y44_N16
\sc1|sc3|sc0|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~98_combout\ = (\sc4|shift_reg\(48) & ((\sc3|shift_reg\(48) & (\sc1|sc3|sc0|Add0~97\ & VCC)) # (!\sc3|shift_reg\(48) & (!\sc1|sc3|sc0|Add0~97\)))) # (!\sc4|shift_reg\(48) & ((\sc3|shift_reg\(48) & (!\sc1|sc3|sc0|Add0~97\)) # 
-- (!\sc3|shift_reg\(48) & ((\sc1|sc3|sc0|Add0~97\) # (GND)))))
-- \sc1|sc3|sc0|Add0~99\ = CARRY((\sc4|shift_reg\(48) & (!\sc3|shift_reg\(48) & !\sc1|sc3|sc0|Add0~97\)) # (!\sc4|shift_reg\(48) & ((!\sc1|sc3|sc0|Add0~97\) # (!\sc3|shift_reg\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(48),
	datab => \sc3|shift_reg\(48),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~97\,
	combout => \sc1|sc3|sc0|Add0~98_combout\,
	cout => \sc1|sc3|sc0|Add0~99\);

-- Location: LCCOMB_X111_Y44_N18
\sc1|sc3|sc0|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~100_combout\ = ((\sc4|shift_reg\(49) $ (\sc3|shift_reg\(49) $ (!\sc1|sc3|sc0|Add0~99\)))) # (GND)
-- \sc1|sc3|sc0|Add0~101\ = CARRY((\sc4|shift_reg\(49) & ((\sc3|shift_reg\(49)) # (!\sc1|sc3|sc0|Add0~99\))) # (!\sc4|shift_reg\(49) & (\sc3|shift_reg\(49) & !\sc1|sc3|sc0|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(49),
	datab => \sc3|shift_reg\(49),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~99\,
	combout => \sc1|sc3|sc0|Add0~100_combout\,
	cout => \sc1|sc3|sc0|Add0~101\);

-- Location: LCCOMB_X111_Y44_N20
\sc1|sc3|sc0|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~102_combout\ = (\sc4|shift_reg\(50) & ((\sc3|shift_reg\(50) & (\sc1|sc3|sc0|Add0~101\ & VCC)) # (!\sc3|shift_reg\(50) & (!\sc1|sc3|sc0|Add0~101\)))) # (!\sc4|shift_reg\(50) & ((\sc3|shift_reg\(50) & (!\sc1|sc3|sc0|Add0~101\)) # 
-- (!\sc3|shift_reg\(50) & ((\sc1|sc3|sc0|Add0~101\) # (GND)))))
-- \sc1|sc3|sc0|Add0~103\ = CARRY((\sc4|shift_reg\(50) & (!\sc3|shift_reg\(50) & !\sc1|sc3|sc0|Add0~101\)) # (!\sc4|shift_reg\(50) & ((!\sc1|sc3|sc0|Add0~101\) # (!\sc3|shift_reg\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(50),
	datab => \sc3|shift_reg\(50),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~101\,
	combout => \sc1|sc3|sc0|Add0~102_combout\,
	cout => \sc1|sc3|sc0|Add0~103\);

-- Location: LCCOMB_X111_Y44_N22
\sc1|sc3|sc0|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~104_combout\ = ((\sc3|shift_reg\(51) $ (\sc4|shift_reg\(51) $ (!\sc1|sc3|sc0|Add0~103\)))) # (GND)
-- \sc1|sc3|sc0|Add0~105\ = CARRY((\sc3|shift_reg\(51) & ((\sc4|shift_reg\(51)) # (!\sc1|sc3|sc0|Add0~103\))) # (!\sc3|shift_reg\(51) & (\sc4|shift_reg\(51) & !\sc1|sc3|sc0|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(51),
	datab => \sc4|shift_reg\(51),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~103\,
	combout => \sc1|sc3|sc0|Add0~104_combout\,
	cout => \sc1|sc3|sc0|Add0~105\);

-- Location: LCCOMB_X111_Y44_N24
\sc1|sc3|sc0|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~106_combout\ = (\sc4|shift_reg\(52) & ((\sc3|shift_reg\(52) & (\sc1|sc3|sc0|Add0~105\ & VCC)) # (!\sc3|shift_reg\(52) & (!\sc1|sc3|sc0|Add0~105\)))) # (!\sc4|shift_reg\(52) & ((\sc3|shift_reg\(52) & (!\sc1|sc3|sc0|Add0~105\)) # 
-- (!\sc3|shift_reg\(52) & ((\sc1|sc3|sc0|Add0~105\) # (GND)))))
-- \sc1|sc3|sc0|Add0~107\ = CARRY((\sc4|shift_reg\(52) & (!\sc3|shift_reg\(52) & !\sc1|sc3|sc0|Add0~105\)) # (!\sc4|shift_reg\(52) & ((!\sc1|sc3|sc0|Add0~105\) # (!\sc3|shift_reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(52),
	datab => \sc3|shift_reg\(52),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~105\,
	combout => \sc1|sc3|sc0|Add0~106_combout\,
	cout => \sc1|sc3|sc0|Add0~107\);

-- Location: LCCOMB_X111_Y44_N26
\sc1|sc3|sc0|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~108_combout\ = ((\sc4|shift_reg\(53) $ (\sc3|shift_reg\(53) $ (!\sc1|sc3|sc0|Add0~107\)))) # (GND)
-- \sc1|sc3|sc0|Add0~109\ = CARRY((\sc4|shift_reg\(53) & ((\sc3|shift_reg\(53)) # (!\sc1|sc3|sc0|Add0~107\))) # (!\sc4|shift_reg\(53) & (\sc3|shift_reg\(53) & !\sc1|sc3|sc0|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(53),
	datab => \sc3|shift_reg\(53),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~107\,
	combout => \sc1|sc3|sc0|Add0~108_combout\,
	cout => \sc1|sc3|sc0|Add0~109\);

-- Location: LCCOMB_X111_Y44_N28
\sc1|sc3|sc0|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~110_combout\ = (\sc3|shift_reg\(54) & ((\sc4|shift_reg\(54) & (\sc1|sc3|sc0|Add0~109\ & VCC)) # (!\sc4|shift_reg\(54) & (!\sc1|sc3|sc0|Add0~109\)))) # (!\sc3|shift_reg\(54) & ((\sc4|shift_reg\(54) & (!\sc1|sc3|sc0|Add0~109\)) # 
-- (!\sc4|shift_reg\(54) & ((\sc1|sc3|sc0|Add0~109\) # (GND)))))
-- \sc1|sc3|sc0|Add0~111\ = CARRY((\sc3|shift_reg\(54) & (!\sc4|shift_reg\(54) & !\sc1|sc3|sc0|Add0~109\)) # (!\sc3|shift_reg\(54) & ((!\sc1|sc3|sc0|Add0~109\) # (!\sc4|shift_reg\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(54),
	datab => \sc4|shift_reg\(54),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~109\,
	combout => \sc1|sc3|sc0|Add0~110_combout\,
	cout => \sc1|sc3|sc0|Add0~111\);

-- Location: LCCOMB_X111_Y44_N30
\sc1|sc3|sc0|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~112_combout\ = ((\sc3|shift_reg\(55) $ (\sc4|shift_reg\(55) $ (!\sc1|sc3|sc0|Add0~111\)))) # (GND)
-- \sc1|sc3|sc0|Add0~113\ = CARRY((\sc3|shift_reg\(55) & ((\sc4|shift_reg\(55)) # (!\sc1|sc3|sc0|Add0~111\))) # (!\sc3|shift_reg\(55) & (\sc4|shift_reg\(55) & !\sc1|sc3|sc0|Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(55),
	datab => \sc4|shift_reg\(55),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~111\,
	combout => \sc1|sc3|sc0|Add0~112_combout\,
	cout => \sc1|sc3|sc0|Add0~113\);

-- Location: LCCOMB_X111_Y43_N0
\sc1|sc3|sc0|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~114_combout\ = (\sc3|shift_reg\(56) & ((\sc4|shift_reg\(56) & (\sc1|sc3|sc0|Add0~113\ & VCC)) # (!\sc4|shift_reg\(56) & (!\sc1|sc3|sc0|Add0~113\)))) # (!\sc3|shift_reg\(56) & ((\sc4|shift_reg\(56) & (!\sc1|sc3|sc0|Add0~113\)) # 
-- (!\sc4|shift_reg\(56) & ((\sc1|sc3|sc0|Add0~113\) # (GND)))))
-- \sc1|sc3|sc0|Add0~115\ = CARRY((\sc3|shift_reg\(56) & (!\sc4|shift_reg\(56) & !\sc1|sc3|sc0|Add0~113\)) # (!\sc3|shift_reg\(56) & ((!\sc1|sc3|sc0|Add0~113\) # (!\sc4|shift_reg\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(56),
	datab => \sc4|shift_reg\(56),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~113\,
	combout => \sc1|sc3|sc0|Add0~114_combout\,
	cout => \sc1|sc3|sc0|Add0~115\);

-- Location: LCCOMB_X111_Y43_N2
\sc1|sc3|sc0|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~116_combout\ = ((\sc4|shift_reg\(57) $ (\sc3|shift_reg\(57) $ (!\sc1|sc3|sc0|Add0~115\)))) # (GND)
-- \sc1|sc3|sc0|Add0~117\ = CARRY((\sc4|shift_reg\(57) & ((\sc3|shift_reg\(57)) # (!\sc1|sc3|sc0|Add0~115\))) # (!\sc4|shift_reg\(57) & (\sc3|shift_reg\(57) & !\sc1|sc3|sc0|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(57),
	datab => \sc3|shift_reg\(57),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~115\,
	combout => \sc1|sc3|sc0|Add0~116_combout\,
	cout => \sc1|sc3|sc0|Add0~117\);

-- Location: LCCOMB_X111_Y43_N4
\sc1|sc3|sc0|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~118_combout\ = (\sc3|shift_reg\(58) & ((\sc4|shift_reg\(58) & (\sc1|sc3|sc0|Add0~117\ & VCC)) # (!\sc4|shift_reg\(58) & (!\sc1|sc3|sc0|Add0~117\)))) # (!\sc3|shift_reg\(58) & ((\sc4|shift_reg\(58) & (!\sc1|sc3|sc0|Add0~117\)) # 
-- (!\sc4|shift_reg\(58) & ((\sc1|sc3|sc0|Add0~117\) # (GND)))))
-- \sc1|sc3|sc0|Add0~119\ = CARRY((\sc3|shift_reg\(58) & (!\sc4|shift_reg\(58) & !\sc1|sc3|sc0|Add0~117\)) # (!\sc3|shift_reg\(58) & ((!\sc1|sc3|sc0|Add0~117\) # (!\sc4|shift_reg\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(58),
	datab => \sc4|shift_reg\(58),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~117\,
	combout => \sc1|sc3|sc0|Add0~118_combout\,
	cout => \sc1|sc3|sc0|Add0~119\);

-- Location: LCCOMB_X111_Y43_N6
\sc1|sc3|sc0|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~120_combout\ = ((\sc3|shift_reg\(59) $ (\sc4|shift_reg\(59) $ (!\sc1|sc3|sc0|Add0~119\)))) # (GND)
-- \sc1|sc3|sc0|Add0~121\ = CARRY((\sc3|shift_reg\(59) & ((\sc4|shift_reg\(59)) # (!\sc1|sc3|sc0|Add0~119\))) # (!\sc3|shift_reg\(59) & (\sc4|shift_reg\(59) & !\sc1|sc3|sc0|Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(59),
	datab => \sc4|shift_reg\(59),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~119\,
	combout => \sc1|sc3|sc0|Add0~120_combout\,
	cout => \sc1|sc3|sc0|Add0~121\);

-- Location: LCCOMB_X111_Y43_N8
\sc1|sc3|sc0|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~122_combout\ = (\sc4|shift_reg\(60) & ((\sc3|shift_reg\(60) & (\sc1|sc3|sc0|Add0~121\ & VCC)) # (!\sc3|shift_reg\(60) & (!\sc1|sc3|sc0|Add0~121\)))) # (!\sc4|shift_reg\(60) & ((\sc3|shift_reg\(60) & (!\sc1|sc3|sc0|Add0~121\)) # 
-- (!\sc3|shift_reg\(60) & ((\sc1|sc3|sc0|Add0~121\) # (GND)))))
-- \sc1|sc3|sc0|Add0~123\ = CARRY((\sc4|shift_reg\(60) & (!\sc3|shift_reg\(60) & !\sc1|sc3|sc0|Add0~121\)) # (!\sc4|shift_reg\(60) & ((!\sc1|sc3|sc0|Add0~121\) # (!\sc3|shift_reg\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(60),
	datab => \sc3|shift_reg\(60),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~121\,
	combout => \sc1|sc3|sc0|Add0~122_combout\,
	cout => \sc1|sc3|sc0|Add0~123\);

-- Location: LCCOMB_X111_Y43_N10
\sc1|sc3|sc0|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~124_combout\ = ((\sc3|shift_reg\(61) $ (\sc4|shift_reg\(61) $ (!\sc1|sc3|sc0|Add0~123\)))) # (GND)
-- \sc1|sc3|sc0|Add0~125\ = CARRY((\sc3|shift_reg\(61) & ((\sc4|shift_reg\(61)) # (!\sc1|sc3|sc0|Add0~123\))) # (!\sc3|shift_reg\(61) & (\sc4|shift_reg\(61) & !\sc1|sc3|sc0|Add0~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(61),
	datab => \sc4|shift_reg\(61),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~123\,
	combout => \sc1|sc3|sc0|Add0~124_combout\,
	cout => \sc1|sc3|sc0|Add0~125\);

-- Location: LCCOMB_X111_Y43_N12
\sc1|sc3|sc0|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~126_combout\ = (\sc3|shift_reg\(62) & ((\sc4|shift_reg\(62) & (\sc1|sc3|sc0|Add0~125\ & VCC)) # (!\sc4|shift_reg\(62) & (!\sc1|sc3|sc0|Add0~125\)))) # (!\sc3|shift_reg\(62) & ((\sc4|shift_reg\(62) & (!\sc1|sc3|sc0|Add0~125\)) # 
-- (!\sc4|shift_reg\(62) & ((\sc1|sc3|sc0|Add0~125\) # (GND)))))
-- \sc1|sc3|sc0|Add0~127\ = CARRY((\sc3|shift_reg\(62) & (!\sc4|shift_reg\(62) & !\sc1|sc3|sc0|Add0~125\)) # (!\sc3|shift_reg\(62) & ((!\sc1|sc3|sc0|Add0~125\) # (!\sc4|shift_reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(62),
	datab => \sc4|shift_reg\(62),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~125\,
	combout => \sc1|sc3|sc0|Add0~126_combout\,
	cout => \sc1|sc3|sc0|Add0~127\);

-- Location: LCCOMB_X111_Y43_N14
\sc1|sc3|sc0|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~128_combout\ = ((\sc4|shift_reg\(63) $ (\sc3|shift_reg\(63) $ (!\sc1|sc3|sc0|Add0~127\)))) # (GND)
-- \sc1|sc3|sc0|Add0~129\ = CARRY((\sc4|shift_reg\(63) & ((\sc3|shift_reg\(63)) # (!\sc1|sc3|sc0|Add0~127\))) # (!\sc4|shift_reg\(63) & (\sc3|shift_reg\(63) & !\sc1|sc3|sc0|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(63),
	datab => \sc3|shift_reg\(63),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~127\,
	combout => \sc1|sc3|sc0|Add0~128_combout\,
	cout => \sc1|sc3|sc0|Add0~129\);

-- Location: LCCOMB_X111_Y43_N16
\sc1|sc3|sc0|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~130_combout\ = (\sc4|shift_reg\(64) & ((\sc3|shift_reg\(64) & (\sc1|sc3|sc0|Add0~129\ & VCC)) # (!\sc3|shift_reg\(64) & (!\sc1|sc3|sc0|Add0~129\)))) # (!\sc4|shift_reg\(64) & ((\sc3|shift_reg\(64) & (!\sc1|sc3|sc0|Add0~129\)) # 
-- (!\sc3|shift_reg\(64) & ((\sc1|sc3|sc0|Add0~129\) # (GND)))))
-- \sc1|sc3|sc0|Add0~131\ = CARRY((\sc4|shift_reg\(64) & (!\sc3|shift_reg\(64) & !\sc1|sc3|sc0|Add0~129\)) # (!\sc4|shift_reg\(64) & ((!\sc1|sc3|sc0|Add0~129\) # (!\sc3|shift_reg\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(64),
	datab => \sc3|shift_reg\(64),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~129\,
	combout => \sc1|sc3|sc0|Add0~130_combout\,
	cout => \sc1|sc3|sc0|Add0~131\);

-- Location: LCCOMB_X111_Y43_N18
\sc1|sc3|sc0|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~132_combout\ = ((\sc3|shift_reg\(65) $ (\sc4|shift_reg\(65) $ (!\sc1|sc3|sc0|Add0~131\)))) # (GND)
-- \sc1|sc3|sc0|Add0~133\ = CARRY((\sc3|shift_reg\(65) & ((\sc4|shift_reg\(65)) # (!\sc1|sc3|sc0|Add0~131\))) # (!\sc3|shift_reg\(65) & (\sc4|shift_reg\(65) & !\sc1|sc3|sc0|Add0~131\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(65),
	datab => \sc4|shift_reg\(65),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~131\,
	combout => \sc1|sc3|sc0|Add0~132_combout\,
	cout => \sc1|sc3|sc0|Add0~133\);

-- Location: LCCOMB_X111_Y43_N20
\sc1|sc3|sc0|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~134_combout\ = (\sc4|shift_reg\(66) & ((\sc3|shift_reg\(66) & (\sc1|sc3|sc0|Add0~133\ & VCC)) # (!\sc3|shift_reg\(66) & (!\sc1|sc3|sc0|Add0~133\)))) # (!\sc4|shift_reg\(66) & ((\sc3|shift_reg\(66) & (!\sc1|sc3|sc0|Add0~133\)) # 
-- (!\sc3|shift_reg\(66) & ((\sc1|sc3|sc0|Add0~133\) # (GND)))))
-- \sc1|sc3|sc0|Add0~135\ = CARRY((\sc4|shift_reg\(66) & (!\sc3|shift_reg\(66) & !\sc1|sc3|sc0|Add0~133\)) # (!\sc4|shift_reg\(66) & ((!\sc1|sc3|sc0|Add0~133\) # (!\sc3|shift_reg\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(66),
	datab => \sc3|shift_reg\(66),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~133\,
	combout => \sc1|sc3|sc0|Add0~134_combout\,
	cout => \sc1|sc3|sc0|Add0~135\);

-- Location: LCCOMB_X111_Y43_N22
\sc1|sc3|sc0|Add0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~136_combout\ = ((\sc3|shift_reg\(67) $ (\sc4|shift_reg\(67) $ (!\sc1|sc3|sc0|Add0~135\)))) # (GND)
-- \sc1|sc3|sc0|Add0~137\ = CARRY((\sc3|shift_reg\(67) & ((\sc4|shift_reg\(67)) # (!\sc1|sc3|sc0|Add0~135\))) # (!\sc3|shift_reg\(67) & (\sc4|shift_reg\(67) & !\sc1|sc3|sc0|Add0~135\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(67),
	datab => \sc4|shift_reg\(67),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~135\,
	combout => \sc1|sc3|sc0|Add0~136_combout\,
	cout => \sc1|sc3|sc0|Add0~137\);

-- Location: LCCOMB_X111_Y43_N24
\sc1|sc3|sc0|Add0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~138_combout\ = (\sc4|shift_reg\(68) & ((\sc3|shift_reg\(68) & (\sc1|sc3|sc0|Add0~137\ & VCC)) # (!\sc3|shift_reg\(68) & (!\sc1|sc3|sc0|Add0~137\)))) # (!\sc4|shift_reg\(68) & ((\sc3|shift_reg\(68) & (!\sc1|sc3|sc0|Add0~137\)) # 
-- (!\sc3|shift_reg\(68) & ((\sc1|sc3|sc0|Add0~137\) # (GND)))))
-- \sc1|sc3|sc0|Add0~139\ = CARRY((\sc4|shift_reg\(68) & (!\sc3|shift_reg\(68) & !\sc1|sc3|sc0|Add0~137\)) # (!\sc4|shift_reg\(68) & ((!\sc1|sc3|sc0|Add0~137\) # (!\sc3|shift_reg\(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(68),
	datab => \sc3|shift_reg\(68),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~137\,
	combout => \sc1|sc3|sc0|Add0~138_combout\,
	cout => \sc1|sc3|sc0|Add0~139\);

-- Location: LCCOMB_X111_Y43_N26
\sc1|sc3|sc0|Add0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~140_combout\ = ((\sc3|shift_reg\(69) $ (\sc4|shift_reg\(69) $ (!\sc1|sc3|sc0|Add0~139\)))) # (GND)
-- \sc1|sc3|sc0|Add0~141\ = CARRY((\sc3|shift_reg\(69) & ((\sc4|shift_reg\(69)) # (!\sc1|sc3|sc0|Add0~139\))) # (!\sc3|shift_reg\(69) & (\sc4|shift_reg\(69) & !\sc1|sc3|sc0|Add0~139\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(69),
	datab => \sc4|shift_reg\(69),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~139\,
	combout => \sc1|sc3|sc0|Add0~140_combout\,
	cout => \sc1|sc3|sc0|Add0~141\);

-- Location: LCCOMB_X111_Y43_N28
\sc1|sc3|sc0|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~142_combout\ = (\sc4|shift_reg\(70) & ((\sc3|shift_reg\(70) & (\sc1|sc3|sc0|Add0~141\ & VCC)) # (!\sc3|shift_reg\(70) & (!\sc1|sc3|sc0|Add0~141\)))) # (!\sc4|shift_reg\(70) & ((\sc3|shift_reg\(70) & (!\sc1|sc3|sc0|Add0~141\)) # 
-- (!\sc3|shift_reg\(70) & ((\sc1|sc3|sc0|Add0~141\) # (GND)))))
-- \sc1|sc3|sc0|Add0~143\ = CARRY((\sc4|shift_reg\(70) & (!\sc3|shift_reg\(70) & !\sc1|sc3|sc0|Add0~141\)) # (!\sc4|shift_reg\(70) & ((!\sc1|sc3|sc0|Add0~141\) # (!\sc3|shift_reg\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(70),
	datab => \sc3|shift_reg\(70),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~141\,
	combout => \sc1|sc3|sc0|Add0~142_combout\,
	cout => \sc1|sc3|sc0|Add0~143\);

-- Location: LCCOMB_X111_Y43_N30
\sc1|sc3|sc0|Add0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~144_combout\ = ((\sc3|shift_reg\(71) $ (\sc4|shift_reg\(71) $ (!\sc1|sc3|sc0|Add0~143\)))) # (GND)
-- \sc1|sc3|sc0|Add0~145\ = CARRY((\sc3|shift_reg\(71) & ((\sc4|shift_reg\(71)) # (!\sc1|sc3|sc0|Add0~143\))) # (!\sc3|shift_reg\(71) & (\sc4|shift_reg\(71) & !\sc1|sc3|sc0|Add0~143\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(71),
	datab => \sc4|shift_reg\(71),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~143\,
	combout => \sc1|sc3|sc0|Add0~144_combout\,
	cout => \sc1|sc3|sc0|Add0~145\);

-- Location: LCCOMB_X111_Y42_N0
\sc1|sc3|sc0|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~146_combout\ = (\sc4|shift_reg\(72) & ((\sc3|shift_reg\(72) & (\sc1|sc3|sc0|Add0~145\ & VCC)) # (!\sc3|shift_reg\(72) & (!\sc1|sc3|sc0|Add0~145\)))) # (!\sc4|shift_reg\(72) & ((\sc3|shift_reg\(72) & (!\sc1|sc3|sc0|Add0~145\)) # 
-- (!\sc3|shift_reg\(72) & ((\sc1|sc3|sc0|Add0~145\) # (GND)))))
-- \sc1|sc3|sc0|Add0~147\ = CARRY((\sc4|shift_reg\(72) & (!\sc3|shift_reg\(72) & !\sc1|sc3|sc0|Add0~145\)) # (!\sc4|shift_reg\(72) & ((!\sc1|sc3|sc0|Add0~145\) # (!\sc3|shift_reg\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(72),
	datab => \sc3|shift_reg\(72),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~145\,
	combout => \sc1|sc3|sc0|Add0~146_combout\,
	cout => \sc1|sc3|sc0|Add0~147\);

-- Location: LCCOMB_X111_Y42_N2
\sc1|sc3|sc0|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~148_combout\ = ((\sc4|shift_reg\(73) $ (\sc3|shift_reg\(73) $ (!\sc1|sc3|sc0|Add0~147\)))) # (GND)
-- \sc1|sc3|sc0|Add0~149\ = CARRY((\sc4|shift_reg\(73) & ((\sc3|shift_reg\(73)) # (!\sc1|sc3|sc0|Add0~147\))) # (!\sc4|shift_reg\(73) & (\sc3|shift_reg\(73) & !\sc1|sc3|sc0|Add0~147\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(73),
	datab => \sc3|shift_reg\(73),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~147\,
	combout => \sc1|sc3|sc0|Add0~148_combout\,
	cout => \sc1|sc3|sc0|Add0~149\);

-- Location: LCCOMB_X111_Y42_N4
\sc1|sc3|sc0|Add0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~150_combout\ = (\sc3|shift_reg\(74) & ((\sc4|shift_reg\(74) & (\sc1|sc3|sc0|Add0~149\ & VCC)) # (!\sc4|shift_reg\(74) & (!\sc1|sc3|sc0|Add0~149\)))) # (!\sc3|shift_reg\(74) & ((\sc4|shift_reg\(74) & (!\sc1|sc3|sc0|Add0~149\)) # 
-- (!\sc4|shift_reg\(74) & ((\sc1|sc3|sc0|Add0~149\) # (GND)))))
-- \sc1|sc3|sc0|Add0~151\ = CARRY((\sc3|shift_reg\(74) & (!\sc4|shift_reg\(74) & !\sc1|sc3|sc0|Add0~149\)) # (!\sc3|shift_reg\(74) & ((!\sc1|sc3|sc0|Add0~149\) # (!\sc4|shift_reg\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(74),
	datab => \sc4|shift_reg\(74),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~149\,
	combout => \sc1|sc3|sc0|Add0~150_combout\,
	cout => \sc1|sc3|sc0|Add0~151\);

-- Location: LCCOMB_X111_Y42_N6
\sc1|sc3|sc0|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~152_combout\ = ((\sc4|shift_reg\(75) $ (\sc3|shift_reg\(75) $ (!\sc1|sc3|sc0|Add0~151\)))) # (GND)
-- \sc1|sc3|sc0|Add0~153\ = CARRY((\sc4|shift_reg\(75) & ((\sc3|shift_reg\(75)) # (!\sc1|sc3|sc0|Add0~151\))) # (!\sc4|shift_reg\(75) & (\sc3|shift_reg\(75) & !\sc1|sc3|sc0|Add0~151\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(75),
	datab => \sc3|shift_reg\(75),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~151\,
	combout => \sc1|sc3|sc0|Add0~152_combout\,
	cout => \sc1|sc3|sc0|Add0~153\);

-- Location: LCCOMB_X111_Y42_N8
\sc1|sc3|sc0|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~154_combout\ = (\sc4|shift_reg\(76) & ((\sc3|shift_reg\(76) & (\sc1|sc3|sc0|Add0~153\ & VCC)) # (!\sc3|shift_reg\(76) & (!\sc1|sc3|sc0|Add0~153\)))) # (!\sc4|shift_reg\(76) & ((\sc3|shift_reg\(76) & (!\sc1|sc3|sc0|Add0~153\)) # 
-- (!\sc3|shift_reg\(76) & ((\sc1|sc3|sc0|Add0~153\) # (GND)))))
-- \sc1|sc3|sc0|Add0~155\ = CARRY((\sc4|shift_reg\(76) & (!\sc3|shift_reg\(76) & !\sc1|sc3|sc0|Add0~153\)) # (!\sc4|shift_reg\(76) & ((!\sc1|sc3|sc0|Add0~153\) # (!\sc3|shift_reg\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(76),
	datab => \sc3|shift_reg\(76),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~153\,
	combout => \sc1|sc3|sc0|Add0~154_combout\,
	cout => \sc1|sc3|sc0|Add0~155\);

-- Location: LCCOMB_X111_Y42_N10
\sc1|sc3|sc0|Add0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~156_combout\ = ((\sc4|shift_reg\(77) $ (\sc3|shift_reg\(77) $ (!\sc1|sc3|sc0|Add0~155\)))) # (GND)
-- \sc1|sc3|sc0|Add0~157\ = CARRY((\sc4|shift_reg\(77) & ((\sc3|shift_reg\(77)) # (!\sc1|sc3|sc0|Add0~155\))) # (!\sc4|shift_reg\(77) & (\sc3|shift_reg\(77) & !\sc1|sc3|sc0|Add0~155\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(77),
	datab => \sc3|shift_reg\(77),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~155\,
	combout => \sc1|sc3|sc0|Add0~156_combout\,
	cout => \sc1|sc3|sc0|Add0~157\);

-- Location: LCCOMB_X111_Y42_N12
\sc1|sc3|sc0|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~158_combout\ = (\sc3|shift_reg\(78) & ((\sc4|shift_reg\(78) & (\sc1|sc3|sc0|Add0~157\ & VCC)) # (!\sc4|shift_reg\(78) & (!\sc1|sc3|sc0|Add0~157\)))) # (!\sc3|shift_reg\(78) & ((\sc4|shift_reg\(78) & (!\sc1|sc3|sc0|Add0~157\)) # 
-- (!\sc4|shift_reg\(78) & ((\sc1|sc3|sc0|Add0~157\) # (GND)))))
-- \sc1|sc3|sc0|Add0~159\ = CARRY((\sc3|shift_reg\(78) & (!\sc4|shift_reg\(78) & !\sc1|sc3|sc0|Add0~157\)) # (!\sc3|shift_reg\(78) & ((!\sc1|sc3|sc0|Add0~157\) # (!\sc4|shift_reg\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(78),
	datab => \sc4|shift_reg\(78),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~157\,
	combout => \sc1|sc3|sc0|Add0~158_combout\,
	cout => \sc1|sc3|sc0|Add0~159\);

-- Location: LCCOMB_X111_Y42_N14
\sc1|sc3|sc0|Add0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~160_combout\ = ((\sc4|shift_reg\(79) $ (\sc3|shift_reg\(79) $ (!\sc1|sc3|sc0|Add0~159\)))) # (GND)
-- \sc1|sc3|sc0|Add0~161\ = CARRY((\sc4|shift_reg\(79) & ((\sc3|shift_reg\(79)) # (!\sc1|sc3|sc0|Add0~159\))) # (!\sc4|shift_reg\(79) & (\sc3|shift_reg\(79) & !\sc1|sc3|sc0|Add0~159\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(79),
	datab => \sc3|shift_reg\(79),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~159\,
	combout => \sc1|sc3|sc0|Add0~160_combout\,
	cout => \sc1|sc3|sc0|Add0~161\);

-- Location: LCCOMB_X111_Y42_N16
\sc1|sc3|sc0|Add0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~162_combout\ = (\sc3|shift_reg\(80) & ((\sc4|shift_reg\(80) & (\sc1|sc3|sc0|Add0~161\ & VCC)) # (!\sc4|shift_reg\(80) & (!\sc1|sc3|sc0|Add0~161\)))) # (!\sc3|shift_reg\(80) & ((\sc4|shift_reg\(80) & (!\sc1|sc3|sc0|Add0~161\)) # 
-- (!\sc4|shift_reg\(80) & ((\sc1|sc3|sc0|Add0~161\) # (GND)))))
-- \sc1|sc3|sc0|Add0~163\ = CARRY((\sc3|shift_reg\(80) & (!\sc4|shift_reg\(80) & !\sc1|sc3|sc0|Add0~161\)) # (!\sc3|shift_reg\(80) & ((!\sc1|sc3|sc0|Add0~161\) # (!\sc4|shift_reg\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(80),
	datab => \sc4|shift_reg\(80),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~161\,
	combout => \sc1|sc3|sc0|Add0~162_combout\,
	cout => \sc1|sc3|sc0|Add0~163\);

-- Location: LCCOMB_X111_Y42_N18
\sc1|sc3|sc0|Add0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~164_combout\ = ((\sc3|shift_reg\(81) $ (\sc4|shift_reg\(81) $ (!\sc1|sc3|sc0|Add0~163\)))) # (GND)
-- \sc1|sc3|sc0|Add0~165\ = CARRY((\sc3|shift_reg\(81) & ((\sc4|shift_reg\(81)) # (!\sc1|sc3|sc0|Add0~163\))) # (!\sc3|shift_reg\(81) & (\sc4|shift_reg\(81) & !\sc1|sc3|sc0|Add0~163\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(81),
	datab => \sc4|shift_reg\(81),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~163\,
	combout => \sc1|sc3|sc0|Add0~164_combout\,
	cout => \sc1|sc3|sc0|Add0~165\);

-- Location: LCCOMB_X111_Y42_N20
\sc1|sc3|sc0|Add0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~166_combout\ = (\sc4|shift_reg\(82) & ((\sc3|shift_reg\(82) & (\sc1|sc3|sc0|Add0~165\ & VCC)) # (!\sc3|shift_reg\(82) & (!\sc1|sc3|sc0|Add0~165\)))) # (!\sc4|shift_reg\(82) & ((\sc3|shift_reg\(82) & (!\sc1|sc3|sc0|Add0~165\)) # 
-- (!\sc3|shift_reg\(82) & ((\sc1|sc3|sc0|Add0~165\) # (GND)))))
-- \sc1|sc3|sc0|Add0~167\ = CARRY((\sc4|shift_reg\(82) & (!\sc3|shift_reg\(82) & !\sc1|sc3|sc0|Add0~165\)) # (!\sc4|shift_reg\(82) & ((!\sc1|sc3|sc0|Add0~165\) # (!\sc3|shift_reg\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(82),
	datab => \sc3|shift_reg\(82),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~165\,
	combout => \sc1|sc3|sc0|Add0~166_combout\,
	cout => \sc1|sc3|sc0|Add0~167\);

-- Location: LCCOMB_X111_Y42_N22
\sc1|sc3|sc0|Add0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~168_combout\ = ((\sc3|shift_reg\(83) $ (\sc4|shift_reg\(83) $ (!\sc1|sc3|sc0|Add0~167\)))) # (GND)
-- \sc1|sc3|sc0|Add0~169\ = CARRY((\sc3|shift_reg\(83) & ((\sc4|shift_reg\(83)) # (!\sc1|sc3|sc0|Add0~167\))) # (!\sc3|shift_reg\(83) & (\sc4|shift_reg\(83) & !\sc1|sc3|sc0|Add0~167\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(83),
	datab => \sc4|shift_reg\(83),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~167\,
	combout => \sc1|sc3|sc0|Add0~168_combout\,
	cout => \sc1|sc3|sc0|Add0~169\);

-- Location: LCCOMB_X111_Y42_N24
\sc1|sc3|sc0|Add0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~170_combout\ = (\sc4|shift_reg\(84) & ((\sc3|shift_reg\(84) & (\sc1|sc3|sc0|Add0~169\ & VCC)) # (!\sc3|shift_reg\(84) & (!\sc1|sc3|sc0|Add0~169\)))) # (!\sc4|shift_reg\(84) & ((\sc3|shift_reg\(84) & (!\sc1|sc3|sc0|Add0~169\)) # 
-- (!\sc3|shift_reg\(84) & ((\sc1|sc3|sc0|Add0~169\) # (GND)))))
-- \sc1|sc3|sc0|Add0~171\ = CARRY((\sc4|shift_reg\(84) & (!\sc3|shift_reg\(84) & !\sc1|sc3|sc0|Add0~169\)) # (!\sc4|shift_reg\(84) & ((!\sc1|sc3|sc0|Add0~169\) # (!\sc3|shift_reg\(84)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(84),
	datab => \sc3|shift_reg\(84),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~169\,
	combout => \sc1|sc3|sc0|Add0~170_combout\,
	cout => \sc1|sc3|sc0|Add0~171\);

-- Location: LCCOMB_X111_Y42_N26
\sc1|sc3|sc0|Add0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~172_combout\ = ((\sc4|shift_reg\(85) $ (\sc3|shift_reg\(85) $ (!\sc1|sc3|sc0|Add0~171\)))) # (GND)
-- \sc1|sc3|sc0|Add0~173\ = CARRY((\sc4|shift_reg\(85) & ((\sc3|shift_reg\(85)) # (!\sc1|sc3|sc0|Add0~171\))) # (!\sc4|shift_reg\(85) & (\sc3|shift_reg\(85) & !\sc1|sc3|sc0|Add0~171\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(85),
	datab => \sc3|shift_reg\(85),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~171\,
	combout => \sc1|sc3|sc0|Add0~172_combout\,
	cout => \sc1|sc3|sc0|Add0~173\);

-- Location: LCCOMB_X111_Y42_N28
\sc1|sc3|sc0|Add0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~174_combout\ = (\sc4|shift_reg\(86) & ((\sc3|shift_reg\(86) & (\sc1|sc3|sc0|Add0~173\ & VCC)) # (!\sc3|shift_reg\(86) & (!\sc1|sc3|sc0|Add0~173\)))) # (!\sc4|shift_reg\(86) & ((\sc3|shift_reg\(86) & (!\sc1|sc3|sc0|Add0~173\)) # 
-- (!\sc3|shift_reg\(86) & ((\sc1|sc3|sc0|Add0~173\) # (GND)))))
-- \sc1|sc3|sc0|Add0~175\ = CARRY((\sc4|shift_reg\(86) & (!\sc3|shift_reg\(86) & !\sc1|sc3|sc0|Add0~173\)) # (!\sc4|shift_reg\(86) & ((!\sc1|sc3|sc0|Add0~173\) # (!\sc3|shift_reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(86),
	datab => \sc3|shift_reg\(86),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~173\,
	combout => \sc1|sc3|sc0|Add0~174_combout\,
	cout => \sc1|sc3|sc0|Add0~175\);

-- Location: LCCOMB_X111_Y42_N30
\sc1|sc3|sc0|Add0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~176_combout\ = ((\sc4|shift_reg\(87) $ (\sc3|shift_reg\(87) $ (!\sc1|sc3|sc0|Add0~175\)))) # (GND)
-- \sc1|sc3|sc0|Add0~177\ = CARRY((\sc4|shift_reg\(87) & ((\sc3|shift_reg\(87)) # (!\sc1|sc3|sc0|Add0~175\))) # (!\sc4|shift_reg\(87) & (\sc3|shift_reg\(87) & !\sc1|sc3|sc0|Add0~175\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(87),
	datab => \sc3|shift_reg\(87),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~175\,
	combout => \sc1|sc3|sc0|Add0~176_combout\,
	cout => \sc1|sc3|sc0|Add0~177\);

-- Location: LCCOMB_X111_Y41_N0
\sc1|sc3|sc0|Add0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~178_combout\ = (\sc3|shift_reg\(88) & ((\sc4|shift_reg\(88) & (\sc1|sc3|sc0|Add0~177\ & VCC)) # (!\sc4|shift_reg\(88) & (!\sc1|sc3|sc0|Add0~177\)))) # (!\sc3|shift_reg\(88) & ((\sc4|shift_reg\(88) & (!\sc1|sc3|sc0|Add0~177\)) # 
-- (!\sc4|shift_reg\(88) & ((\sc1|sc3|sc0|Add0~177\) # (GND)))))
-- \sc1|sc3|sc0|Add0~179\ = CARRY((\sc3|shift_reg\(88) & (!\sc4|shift_reg\(88) & !\sc1|sc3|sc0|Add0~177\)) # (!\sc3|shift_reg\(88) & ((!\sc1|sc3|sc0|Add0~177\) # (!\sc4|shift_reg\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(88),
	datab => \sc4|shift_reg\(88),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~177\,
	combout => \sc1|sc3|sc0|Add0~178_combout\,
	cout => \sc1|sc3|sc0|Add0~179\);

-- Location: LCCOMB_X111_Y41_N2
\sc1|sc3|sc0|Add0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~180_combout\ = ((\sc3|shift_reg\(89) $ (\sc4|shift_reg\(89) $ (!\sc1|sc3|sc0|Add0~179\)))) # (GND)
-- \sc1|sc3|sc0|Add0~181\ = CARRY((\sc3|shift_reg\(89) & ((\sc4|shift_reg\(89)) # (!\sc1|sc3|sc0|Add0~179\))) # (!\sc3|shift_reg\(89) & (\sc4|shift_reg\(89) & !\sc1|sc3|sc0|Add0~179\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(89),
	datab => \sc4|shift_reg\(89),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~179\,
	combout => \sc1|sc3|sc0|Add0~180_combout\,
	cout => \sc1|sc3|sc0|Add0~181\);

-- Location: LCCOMB_X111_Y41_N4
\sc1|sc3|sc0|Add0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~182_combout\ = (\sc4|shift_reg\(90) & ((\sc3|shift_reg\(90) & (\sc1|sc3|sc0|Add0~181\ & VCC)) # (!\sc3|shift_reg\(90) & (!\sc1|sc3|sc0|Add0~181\)))) # (!\sc4|shift_reg\(90) & ((\sc3|shift_reg\(90) & (!\sc1|sc3|sc0|Add0~181\)) # 
-- (!\sc3|shift_reg\(90) & ((\sc1|sc3|sc0|Add0~181\) # (GND)))))
-- \sc1|sc3|sc0|Add0~183\ = CARRY((\sc4|shift_reg\(90) & (!\sc3|shift_reg\(90) & !\sc1|sc3|sc0|Add0~181\)) # (!\sc4|shift_reg\(90) & ((!\sc1|sc3|sc0|Add0~181\) # (!\sc3|shift_reg\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(90),
	datab => \sc3|shift_reg\(90),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~181\,
	combout => \sc1|sc3|sc0|Add0~182_combout\,
	cout => \sc1|sc3|sc0|Add0~183\);

-- Location: LCCOMB_X111_Y41_N6
\sc1|sc3|sc0|Add0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~184_combout\ = ((\sc4|shift_reg\(91) $ (\sc3|shift_reg\(91) $ (!\sc1|sc3|sc0|Add0~183\)))) # (GND)
-- \sc1|sc3|sc0|Add0~185\ = CARRY((\sc4|shift_reg\(91) & ((\sc3|shift_reg\(91)) # (!\sc1|sc3|sc0|Add0~183\))) # (!\sc4|shift_reg\(91) & (\sc3|shift_reg\(91) & !\sc1|sc3|sc0|Add0~183\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(91),
	datab => \sc3|shift_reg\(91),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~183\,
	combout => \sc1|sc3|sc0|Add0~184_combout\,
	cout => \sc1|sc3|sc0|Add0~185\);

-- Location: LCCOMB_X111_Y41_N8
\sc1|sc3|sc0|Add0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~186_combout\ = (\sc4|shift_reg\(92) & ((\sc3|shift_reg\(92) & (\sc1|sc3|sc0|Add0~185\ & VCC)) # (!\sc3|shift_reg\(92) & (!\sc1|sc3|sc0|Add0~185\)))) # (!\sc4|shift_reg\(92) & ((\sc3|shift_reg\(92) & (!\sc1|sc3|sc0|Add0~185\)) # 
-- (!\sc3|shift_reg\(92) & ((\sc1|sc3|sc0|Add0~185\) # (GND)))))
-- \sc1|sc3|sc0|Add0~187\ = CARRY((\sc4|shift_reg\(92) & (!\sc3|shift_reg\(92) & !\sc1|sc3|sc0|Add0~185\)) # (!\sc4|shift_reg\(92) & ((!\sc1|sc3|sc0|Add0~185\) # (!\sc3|shift_reg\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(92),
	datab => \sc3|shift_reg\(92),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~185\,
	combout => \sc1|sc3|sc0|Add0~186_combout\,
	cout => \sc1|sc3|sc0|Add0~187\);

-- Location: LCCOMB_X111_Y41_N10
\sc1|sc3|sc0|Add0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~188_combout\ = ((\sc3|shift_reg\(93) $ (\sc4|shift_reg\(93) $ (!\sc1|sc3|sc0|Add0~187\)))) # (GND)
-- \sc1|sc3|sc0|Add0~189\ = CARRY((\sc3|shift_reg\(93) & ((\sc4|shift_reg\(93)) # (!\sc1|sc3|sc0|Add0~187\))) # (!\sc3|shift_reg\(93) & (\sc4|shift_reg\(93) & !\sc1|sc3|sc0|Add0~187\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(93),
	datab => \sc4|shift_reg\(93),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~187\,
	combout => \sc1|sc3|sc0|Add0~188_combout\,
	cout => \sc1|sc3|sc0|Add0~189\);

-- Location: LCCOMB_X111_Y41_N12
\sc1|sc3|sc0|Add0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~190_combout\ = (\sc4|shift_reg\(94) & ((\sc3|shift_reg\(94) & (\sc1|sc3|sc0|Add0~189\ & VCC)) # (!\sc3|shift_reg\(94) & (!\sc1|sc3|sc0|Add0~189\)))) # (!\sc4|shift_reg\(94) & ((\sc3|shift_reg\(94) & (!\sc1|sc3|sc0|Add0~189\)) # 
-- (!\sc3|shift_reg\(94) & ((\sc1|sc3|sc0|Add0~189\) # (GND)))))
-- \sc1|sc3|sc0|Add0~191\ = CARRY((\sc4|shift_reg\(94) & (!\sc3|shift_reg\(94) & !\sc1|sc3|sc0|Add0~189\)) # (!\sc4|shift_reg\(94) & ((!\sc1|sc3|sc0|Add0~189\) # (!\sc3|shift_reg\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(94),
	datab => \sc3|shift_reg\(94),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~189\,
	combout => \sc1|sc3|sc0|Add0~190_combout\,
	cout => \sc1|sc3|sc0|Add0~191\);

-- Location: LCCOMB_X111_Y41_N14
\sc1|sc3|sc0|Add0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~192_combout\ = ((\sc3|shift_reg\(95) $ (\sc4|shift_reg\(95) $ (!\sc1|sc3|sc0|Add0~191\)))) # (GND)
-- \sc1|sc3|sc0|Add0~193\ = CARRY((\sc3|shift_reg\(95) & ((\sc4|shift_reg\(95)) # (!\sc1|sc3|sc0|Add0~191\))) # (!\sc3|shift_reg\(95) & (\sc4|shift_reg\(95) & !\sc1|sc3|sc0|Add0~191\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(95),
	datab => \sc4|shift_reg\(95),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~191\,
	combout => \sc1|sc3|sc0|Add0~192_combout\,
	cout => \sc1|sc3|sc0|Add0~193\);

-- Location: LCCOMB_X111_Y41_N16
\sc1|sc3|sc0|Add0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~194_combout\ = (\sc4|shift_reg\(96) & ((\sc3|shift_reg\(96) & (\sc1|sc3|sc0|Add0~193\ & VCC)) # (!\sc3|shift_reg\(96) & (!\sc1|sc3|sc0|Add0~193\)))) # (!\sc4|shift_reg\(96) & ((\sc3|shift_reg\(96) & (!\sc1|sc3|sc0|Add0~193\)) # 
-- (!\sc3|shift_reg\(96) & ((\sc1|sc3|sc0|Add0~193\) # (GND)))))
-- \sc1|sc3|sc0|Add0~195\ = CARRY((\sc4|shift_reg\(96) & (!\sc3|shift_reg\(96) & !\sc1|sc3|sc0|Add0~193\)) # (!\sc4|shift_reg\(96) & ((!\sc1|sc3|sc0|Add0~193\) # (!\sc3|shift_reg\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(96),
	datab => \sc3|shift_reg\(96),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~193\,
	combout => \sc1|sc3|sc0|Add0~194_combout\,
	cout => \sc1|sc3|sc0|Add0~195\);

-- Location: LCCOMB_X111_Y41_N18
\sc1|sc3|sc0|Add0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~196_combout\ = ((\sc3|shift_reg\(97) $ (\sc4|shift_reg\(97) $ (!\sc1|sc3|sc0|Add0~195\)))) # (GND)
-- \sc1|sc3|sc0|Add0~197\ = CARRY((\sc3|shift_reg\(97) & ((\sc4|shift_reg\(97)) # (!\sc1|sc3|sc0|Add0~195\))) # (!\sc3|shift_reg\(97) & (\sc4|shift_reg\(97) & !\sc1|sc3|sc0|Add0~195\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(97),
	datab => \sc4|shift_reg\(97),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~195\,
	combout => \sc1|sc3|sc0|Add0~196_combout\,
	cout => \sc1|sc3|sc0|Add0~197\);

-- Location: LCCOMB_X111_Y41_N20
\sc1|sc3|sc0|Add0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~198_combout\ = (\sc4|shift_reg\(98) & ((\sc3|shift_reg\(98) & (\sc1|sc3|sc0|Add0~197\ & VCC)) # (!\sc3|shift_reg\(98) & (!\sc1|sc3|sc0|Add0~197\)))) # (!\sc4|shift_reg\(98) & ((\sc3|shift_reg\(98) & (!\sc1|sc3|sc0|Add0~197\)) # 
-- (!\sc3|shift_reg\(98) & ((\sc1|sc3|sc0|Add0~197\) # (GND)))))
-- \sc1|sc3|sc0|Add0~199\ = CARRY((\sc4|shift_reg\(98) & (!\sc3|shift_reg\(98) & !\sc1|sc3|sc0|Add0~197\)) # (!\sc4|shift_reg\(98) & ((!\sc1|sc3|sc0|Add0~197\) # (!\sc3|shift_reg\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(98),
	datab => \sc3|shift_reg\(98),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~197\,
	combout => \sc1|sc3|sc0|Add0~198_combout\,
	cout => \sc1|sc3|sc0|Add0~199\);

-- Location: LCCOMB_X111_Y41_N22
\sc1|sc3|sc0|Add0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~200_combout\ = ((\sc4|shift_reg\(99) $ (\sc3|shift_reg\(99) $ (!\sc1|sc3|sc0|Add0~199\)))) # (GND)
-- \sc1|sc3|sc0|Add0~201\ = CARRY((\sc4|shift_reg\(99) & ((\sc3|shift_reg\(99)) # (!\sc1|sc3|sc0|Add0~199\))) # (!\sc4|shift_reg\(99) & (\sc3|shift_reg\(99) & !\sc1|sc3|sc0|Add0~199\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(99),
	datab => \sc3|shift_reg\(99),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~199\,
	combout => \sc1|sc3|sc0|Add0~200_combout\,
	cout => \sc1|sc3|sc0|Add0~201\);

-- Location: LCCOMB_X111_Y41_N24
\sc1|sc3|sc0|Add0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~202_combout\ = (\sc4|shift_reg\(100) & ((\sc3|shift_reg\(100) & (\sc1|sc3|sc0|Add0~201\ & VCC)) # (!\sc3|shift_reg\(100) & (!\sc1|sc3|sc0|Add0~201\)))) # (!\sc4|shift_reg\(100) & ((\sc3|shift_reg\(100) & (!\sc1|sc3|sc0|Add0~201\)) # 
-- (!\sc3|shift_reg\(100) & ((\sc1|sc3|sc0|Add0~201\) # (GND)))))
-- \sc1|sc3|sc0|Add0~203\ = CARRY((\sc4|shift_reg\(100) & (!\sc3|shift_reg\(100) & !\sc1|sc3|sc0|Add0~201\)) # (!\sc4|shift_reg\(100) & ((!\sc1|sc3|sc0|Add0~201\) # (!\sc3|shift_reg\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(100),
	datab => \sc3|shift_reg\(100),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~201\,
	combout => \sc1|sc3|sc0|Add0~202_combout\,
	cout => \sc1|sc3|sc0|Add0~203\);

-- Location: LCCOMB_X111_Y41_N26
\sc1|sc3|sc0|Add0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~204_combout\ = ((\sc3|shift_reg\(101) $ (\sc4|shift_reg\(101) $ (!\sc1|sc3|sc0|Add0~203\)))) # (GND)
-- \sc1|sc3|sc0|Add0~205\ = CARRY((\sc3|shift_reg\(101) & ((\sc4|shift_reg\(101)) # (!\sc1|sc3|sc0|Add0~203\))) # (!\sc3|shift_reg\(101) & (\sc4|shift_reg\(101) & !\sc1|sc3|sc0|Add0~203\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(101),
	datab => \sc4|shift_reg\(101),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~203\,
	combout => \sc1|sc3|sc0|Add0~204_combout\,
	cout => \sc1|sc3|sc0|Add0~205\);

-- Location: LCCOMB_X111_Y41_N28
\sc1|sc3|sc0|Add0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~206_combout\ = (\sc4|shift_reg\(102) & ((\sc3|shift_reg\(102) & (\sc1|sc3|sc0|Add0~205\ & VCC)) # (!\sc3|shift_reg\(102) & (!\sc1|sc3|sc0|Add0~205\)))) # (!\sc4|shift_reg\(102) & ((\sc3|shift_reg\(102) & (!\sc1|sc3|sc0|Add0~205\)) # 
-- (!\sc3|shift_reg\(102) & ((\sc1|sc3|sc0|Add0~205\) # (GND)))))
-- \sc1|sc3|sc0|Add0~207\ = CARRY((\sc4|shift_reg\(102) & (!\sc3|shift_reg\(102) & !\sc1|sc3|sc0|Add0~205\)) # (!\sc4|shift_reg\(102) & ((!\sc1|sc3|sc0|Add0~205\) # (!\sc3|shift_reg\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(102),
	datab => \sc3|shift_reg\(102),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~205\,
	combout => \sc1|sc3|sc0|Add0~206_combout\,
	cout => \sc1|sc3|sc0|Add0~207\);

-- Location: LCCOMB_X111_Y41_N30
\sc1|sc3|sc0|Add0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~208_combout\ = ((\sc3|shift_reg\(103) $ (\sc4|shift_reg\(103) $ (!\sc1|sc3|sc0|Add0~207\)))) # (GND)
-- \sc1|sc3|sc0|Add0~209\ = CARRY((\sc3|shift_reg\(103) & ((\sc4|shift_reg\(103)) # (!\sc1|sc3|sc0|Add0~207\))) # (!\sc3|shift_reg\(103) & (\sc4|shift_reg\(103) & !\sc1|sc3|sc0|Add0~207\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(103),
	datab => \sc4|shift_reg\(103),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~207\,
	combout => \sc1|sc3|sc0|Add0~208_combout\,
	cout => \sc1|sc3|sc0|Add0~209\);

-- Location: LCCOMB_X111_Y40_N0
\sc1|sc3|sc0|Add0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~210_combout\ = (\sc4|shift_reg\(104) & ((\sc3|shift_reg\(104) & (\sc1|sc3|sc0|Add0~209\ & VCC)) # (!\sc3|shift_reg\(104) & (!\sc1|sc3|sc0|Add0~209\)))) # (!\sc4|shift_reg\(104) & ((\sc3|shift_reg\(104) & (!\sc1|sc3|sc0|Add0~209\)) # 
-- (!\sc3|shift_reg\(104) & ((\sc1|sc3|sc0|Add0~209\) # (GND)))))
-- \sc1|sc3|sc0|Add0~211\ = CARRY((\sc4|shift_reg\(104) & (!\sc3|shift_reg\(104) & !\sc1|sc3|sc0|Add0~209\)) # (!\sc4|shift_reg\(104) & ((!\sc1|sc3|sc0|Add0~209\) # (!\sc3|shift_reg\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(104),
	datab => \sc3|shift_reg\(104),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~209\,
	combout => \sc1|sc3|sc0|Add0~210_combout\,
	cout => \sc1|sc3|sc0|Add0~211\);

-- Location: LCCOMB_X111_Y40_N2
\sc1|sc3|sc0|Add0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~212_combout\ = ((\sc4|shift_reg\(105) $ (\sc3|shift_reg\(105) $ (!\sc1|sc3|sc0|Add0~211\)))) # (GND)
-- \sc1|sc3|sc0|Add0~213\ = CARRY((\sc4|shift_reg\(105) & ((\sc3|shift_reg\(105)) # (!\sc1|sc3|sc0|Add0~211\))) # (!\sc4|shift_reg\(105) & (\sc3|shift_reg\(105) & !\sc1|sc3|sc0|Add0~211\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(105),
	datab => \sc3|shift_reg\(105),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~211\,
	combout => \sc1|sc3|sc0|Add0~212_combout\,
	cout => \sc1|sc3|sc0|Add0~213\);

-- Location: LCCOMB_X111_Y40_N4
\sc1|sc3|sc0|Add0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~214_combout\ = (\sc4|shift_reg\(106) & ((\sc3|shift_reg\(106) & (\sc1|sc3|sc0|Add0~213\ & VCC)) # (!\sc3|shift_reg\(106) & (!\sc1|sc3|sc0|Add0~213\)))) # (!\sc4|shift_reg\(106) & ((\sc3|shift_reg\(106) & (!\sc1|sc3|sc0|Add0~213\)) # 
-- (!\sc3|shift_reg\(106) & ((\sc1|sc3|sc0|Add0~213\) # (GND)))))
-- \sc1|sc3|sc0|Add0~215\ = CARRY((\sc4|shift_reg\(106) & (!\sc3|shift_reg\(106) & !\sc1|sc3|sc0|Add0~213\)) # (!\sc4|shift_reg\(106) & ((!\sc1|sc3|sc0|Add0~213\) # (!\sc3|shift_reg\(106)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(106),
	datab => \sc3|shift_reg\(106),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~213\,
	combout => \sc1|sc3|sc0|Add0~214_combout\,
	cout => \sc1|sc3|sc0|Add0~215\);

-- Location: LCCOMB_X111_Y40_N6
\sc1|sc3|sc0|Add0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~216_combout\ = ((\sc4|shift_reg\(107) $ (\sc3|shift_reg\(107) $ (!\sc1|sc3|sc0|Add0~215\)))) # (GND)
-- \sc1|sc3|sc0|Add0~217\ = CARRY((\sc4|shift_reg\(107) & ((\sc3|shift_reg\(107)) # (!\sc1|sc3|sc0|Add0~215\))) # (!\sc4|shift_reg\(107) & (\sc3|shift_reg\(107) & !\sc1|sc3|sc0|Add0~215\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(107),
	datab => \sc3|shift_reg\(107),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~215\,
	combout => \sc1|sc3|sc0|Add0~216_combout\,
	cout => \sc1|sc3|sc0|Add0~217\);

-- Location: LCCOMB_X111_Y40_N8
\sc1|sc3|sc0|Add0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~218_combout\ = (\sc3|shift_reg\(108) & ((\sc4|shift_reg\(108) & (\sc1|sc3|sc0|Add0~217\ & VCC)) # (!\sc4|shift_reg\(108) & (!\sc1|sc3|sc0|Add0~217\)))) # (!\sc3|shift_reg\(108) & ((\sc4|shift_reg\(108) & (!\sc1|sc3|sc0|Add0~217\)) # 
-- (!\sc4|shift_reg\(108) & ((\sc1|sc3|sc0|Add0~217\) # (GND)))))
-- \sc1|sc3|sc0|Add0~219\ = CARRY((\sc3|shift_reg\(108) & (!\sc4|shift_reg\(108) & !\sc1|sc3|sc0|Add0~217\)) # (!\sc3|shift_reg\(108) & ((!\sc1|sc3|sc0|Add0~217\) # (!\sc4|shift_reg\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(108),
	datab => \sc4|shift_reg\(108),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~217\,
	combout => \sc1|sc3|sc0|Add0~218_combout\,
	cout => \sc1|sc3|sc0|Add0~219\);

-- Location: LCCOMB_X111_Y40_N10
\sc1|sc3|sc0|Add0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~220_combout\ = ((\sc4|shift_reg\(109) $ (\sc3|shift_reg\(109) $ (!\sc1|sc3|sc0|Add0~219\)))) # (GND)
-- \sc1|sc3|sc0|Add0~221\ = CARRY((\sc4|shift_reg\(109) & ((\sc3|shift_reg\(109)) # (!\sc1|sc3|sc0|Add0~219\))) # (!\sc4|shift_reg\(109) & (\sc3|shift_reg\(109) & !\sc1|sc3|sc0|Add0~219\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(109),
	datab => \sc3|shift_reg\(109),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~219\,
	combout => \sc1|sc3|sc0|Add0~220_combout\,
	cout => \sc1|sc3|sc0|Add0~221\);

-- Location: LCCOMB_X111_Y40_N12
\sc1|sc3|sc0|Add0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~222_combout\ = (\sc3|shift_reg\(110) & ((\sc4|shift_reg\(110) & (\sc1|sc3|sc0|Add0~221\ & VCC)) # (!\sc4|shift_reg\(110) & (!\sc1|sc3|sc0|Add0~221\)))) # (!\sc3|shift_reg\(110) & ((\sc4|shift_reg\(110) & (!\sc1|sc3|sc0|Add0~221\)) # 
-- (!\sc4|shift_reg\(110) & ((\sc1|sc3|sc0|Add0~221\) # (GND)))))
-- \sc1|sc3|sc0|Add0~223\ = CARRY((\sc3|shift_reg\(110) & (!\sc4|shift_reg\(110) & !\sc1|sc3|sc0|Add0~221\)) # (!\sc3|shift_reg\(110) & ((!\sc1|sc3|sc0|Add0~221\) # (!\sc4|shift_reg\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(110),
	datab => \sc4|shift_reg\(110),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~221\,
	combout => \sc1|sc3|sc0|Add0~222_combout\,
	cout => \sc1|sc3|sc0|Add0~223\);

-- Location: LCCOMB_X111_Y40_N14
\sc1|sc3|sc0|Add0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~224_combout\ = ((\sc4|shift_reg\(111) $ (\sc3|shift_reg\(111) $ (!\sc1|sc3|sc0|Add0~223\)))) # (GND)
-- \sc1|sc3|sc0|Add0~225\ = CARRY((\sc4|shift_reg\(111) & ((\sc3|shift_reg\(111)) # (!\sc1|sc3|sc0|Add0~223\))) # (!\sc4|shift_reg\(111) & (\sc3|shift_reg\(111) & !\sc1|sc3|sc0|Add0~223\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(111),
	datab => \sc3|shift_reg\(111),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~223\,
	combout => \sc1|sc3|sc0|Add0~224_combout\,
	cout => \sc1|sc3|sc0|Add0~225\);

-- Location: LCCOMB_X111_Y40_N16
\sc1|sc3|sc0|Add0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~226_combout\ = (\sc3|shift_reg\(112) & ((\sc4|shift_reg\(112) & (\sc1|sc3|sc0|Add0~225\ & VCC)) # (!\sc4|shift_reg\(112) & (!\sc1|sc3|sc0|Add0~225\)))) # (!\sc3|shift_reg\(112) & ((\sc4|shift_reg\(112) & (!\sc1|sc3|sc0|Add0~225\)) # 
-- (!\sc4|shift_reg\(112) & ((\sc1|sc3|sc0|Add0~225\) # (GND)))))
-- \sc1|sc3|sc0|Add0~227\ = CARRY((\sc3|shift_reg\(112) & (!\sc4|shift_reg\(112) & !\sc1|sc3|sc0|Add0~225\)) # (!\sc3|shift_reg\(112) & ((!\sc1|sc3|sc0|Add0~225\) # (!\sc4|shift_reg\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(112),
	datab => \sc4|shift_reg\(112),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~225\,
	combout => \sc1|sc3|sc0|Add0~226_combout\,
	cout => \sc1|sc3|sc0|Add0~227\);

-- Location: LCCOMB_X111_Y40_N18
\sc1|sc3|sc0|Add0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~228_combout\ = ((\sc4|shift_reg\(113) $ (\sc3|shift_reg\(113) $ (!\sc1|sc3|sc0|Add0~227\)))) # (GND)
-- \sc1|sc3|sc0|Add0~229\ = CARRY((\sc4|shift_reg\(113) & ((\sc3|shift_reg\(113)) # (!\sc1|sc3|sc0|Add0~227\))) # (!\sc4|shift_reg\(113) & (\sc3|shift_reg\(113) & !\sc1|sc3|sc0|Add0~227\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(113),
	datab => \sc3|shift_reg\(113),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~227\,
	combout => \sc1|sc3|sc0|Add0~228_combout\,
	cout => \sc1|sc3|sc0|Add0~229\);

-- Location: LCCOMB_X111_Y40_N20
\sc1|sc3|sc0|Add0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~230_combout\ = (\sc4|shift_reg\(114) & ((\sc3|shift_reg\(114) & (\sc1|sc3|sc0|Add0~229\ & VCC)) # (!\sc3|shift_reg\(114) & (!\sc1|sc3|sc0|Add0~229\)))) # (!\sc4|shift_reg\(114) & ((\sc3|shift_reg\(114) & (!\sc1|sc3|sc0|Add0~229\)) # 
-- (!\sc3|shift_reg\(114) & ((\sc1|sc3|sc0|Add0~229\) # (GND)))))
-- \sc1|sc3|sc0|Add0~231\ = CARRY((\sc4|shift_reg\(114) & (!\sc3|shift_reg\(114) & !\sc1|sc3|sc0|Add0~229\)) # (!\sc4|shift_reg\(114) & ((!\sc1|sc3|sc0|Add0~229\) # (!\sc3|shift_reg\(114)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(114),
	datab => \sc3|shift_reg\(114),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~229\,
	combout => \sc1|sc3|sc0|Add0~230_combout\,
	cout => \sc1|sc3|sc0|Add0~231\);

-- Location: LCCOMB_X111_Y40_N22
\sc1|sc3|sc0|Add0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~232_combout\ = ((\sc3|shift_reg\(115) $ (\sc4|shift_reg\(115) $ (!\sc1|sc3|sc0|Add0~231\)))) # (GND)
-- \sc1|sc3|sc0|Add0~233\ = CARRY((\sc3|shift_reg\(115) & ((\sc4|shift_reg\(115)) # (!\sc1|sc3|sc0|Add0~231\))) # (!\sc3|shift_reg\(115) & (\sc4|shift_reg\(115) & !\sc1|sc3|sc0|Add0~231\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(115),
	datab => \sc4|shift_reg\(115),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~231\,
	combout => \sc1|sc3|sc0|Add0~232_combout\,
	cout => \sc1|sc3|sc0|Add0~233\);

-- Location: LCCOMB_X111_Y40_N24
\sc1|sc3|sc0|Add0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~234_combout\ = (\sc3|shift_reg\(116) & ((\sc4|shift_reg\(116) & (\sc1|sc3|sc0|Add0~233\ & VCC)) # (!\sc4|shift_reg\(116) & (!\sc1|sc3|sc0|Add0~233\)))) # (!\sc3|shift_reg\(116) & ((\sc4|shift_reg\(116) & (!\sc1|sc3|sc0|Add0~233\)) # 
-- (!\sc4|shift_reg\(116) & ((\sc1|sc3|sc0|Add0~233\) # (GND)))))
-- \sc1|sc3|sc0|Add0~235\ = CARRY((\sc3|shift_reg\(116) & (!\sc4|shift_reg\(116) & !\sc1|sc3|sc0|Add0~233\)) # (!\sc3|shift_reg\(116) & ((!\sc1|sc3|sc0|Add0~233\) # (!\sc4|shift_reg\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(116),
	datab => \sc4|shift_reg\(116),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~233\,
	combout => \sc1|sc3|sc0|Add0~234_combout\,
	cout => \sc1|sc3|sc0|Add0~235\);

-- Location: LCCOMB_X111_Y40_N26
\sc1|sc3|sc0|Add0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~236_combout\ = ((\sc4|shift_reg\(117) $ (\sc3|shift_reg\(117) $ (!\sc1|sc3|sc0|Add0~235\)))) # (GND)
-- \sc1|sc3|sc0|Add0~237\ = CARRY((\sc4|shift_reg\(117) & ((\sc3|shift_reg\(117)) # (!\sc1|sc3|sc0|Add0~235\))) # (!\sc4|shift_reg\(117) & (\sc3|shift_reg\(117) & !\sc1|sc3|sc0|Add0~235\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(117),
	datab => \sc3|shift_reg\(117),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~235\,
	combout => \sc1|sc3|sc0|Add0~236_combout\,
	cout => \sc1|sc3|sc0|Add0~237\);

-- Location: LCCOMB_X111_Y40_N28
\sc1|sc3|sc0|Add0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~238_combout\ = (\sc4|shift_reg\(118) & ((\sc3|shift_reg\(118) & (\sc1|sc3|sc0|Add0~237\ & VCC)) # (!\sc3|shift_reg\(118) & (!\sc1|sc3|sc0|Add0~237\)))) # (!\sc4|shift_reg\(118) & ((\sc3|shift_reg\(118) & (!\sc1|sc3|sc0|Add0~237\)) # 
-- (!\sc3|shift_reg\(118) & ((\sc1|sc3|sc0|Add0~237\) # (GND)))))
-- \sc1|sc3|sc0|Add0~239\ = CARRY((\sc4|shift_reg\(118) & (!\sc3|shift_reg\(118) & !\sc1|sc3|sc0|Add0~237\)) # (!\sc4|shift_reg\(118) & ((!\sc1|sc3|sc0|Add0~237\) # (!\sc3|shift_reg\(118)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(118),
	datab => \sc3|shift_reg\(118),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~237\,
	combout => \sc1|sc3|sc0|Add0~238_combout\,
	cout => \sc1|sc3|sc0|Add0~239\);

-- Location: LCCOMB_X111_Y40_N30
\sc1|sc3|sc0|Add0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~240_combout\ = ((\sc3|shift_reg\(119) $ (\sc4|shift_reg\(119) $ (!\sc1|sc3|sc0|Add0~239\)))) # (GND)
-- \sc1|sc3|sc0|Add0~241\ = CARRY((\sc3|shift_reg\(119) & ((\sc4|shift_reg\(119)) # (!\sc1|sc3|sc0|Add0~239\))) # (!\sc3|shift_reg\(119) & (\sc4|shift_reg\(119) & !\sc1|sc3|sc0|Add0~239\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(119),
	datab => \sc4|shift_reg\(119),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~239\,
	combout => \sc1|sc3|sc0|Add0~240_combout\,
	cout => \sc1|sc3|sc0|Add0~241\);

-- Location: LCCOMB_X111_Y39_N0
\sc1|sc3|sc0|Add0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~242_combout\ = (\sc3|shift_reg\(120) & ((\sc4|shift_reg\(120) & (\sc1|sc3|sc0|Add0~241\ & VCC)) # (!\sc4|shift_reg\(120) & (!\sc1|sc3|sc0|Add0~241\)))) # (!\sc3|shift_reg\(120) & ((\sc4|shift_reg\(120) & (!\sc1|sc3|sc0|Add0~241\)) # 
-- (!\sc4|shift_reg\(120) & ((\sc1|sc3|sc0|Add0~241\) # (GND)))))
-- \sc1|sc3|sc0|Add0~243\ = CARRY((\sc3|shift_reg\(120) & (!\sc4|shift_reg\(120) & !\sc1|sc3|sc0|Add0~241\)) # (!\sc3|shift_reg\(120) & ((!\sc1|sc3|sc0|Add0~241\) # (!\sc4|shift_reg\(120)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(120),
	datab => \sc4|shift_reg\(120),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~241\,
	combout => \sc1|sc3|sc0|Add0~242_combout\,
	cout => \sc1|sc3|sc0|Add0~243\);

-- Location: LCCOMB_X111_Y39_N2
\sc1|sc3|sc0|Add0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~244_combout\ = ((\sc3|shift_reg\(121) $ (\sc4|shift_reg\(121) $ (!\sc1|sc3|sc0|Add0~243\)))) # (GND)
-- \sc1|sc3|sc0|Add0~245\ = CARRY((\sc3|shift_reg\(121) & ((\sc4|shift_reg\(121)) # (!\sc1|sc3|sc0|Add0~243\))) # (!\sc3|shift_reg\(121) & (\sc4|shift_reg\(121) & !\sc1|sc3|sc0|Add0~243\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(121),
	datab => \sc4|shift_reg\(121),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~243\,
	combout => \sc1|sc3|sc0|Add0~244_combout\,
	cout => \sc1|sc3|sc0|Add0~245\);

-- Location: LCCOMB_X111_Y39_N4
\sc1|sc3|sc0|Add0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~246_combout\ = (\sc4|shift_reg\(122) & ((\sc3|shift_reg\(122) & (\sc1|sc3|sc0|Add0~245\ & VCC)) # (!\sc3|shift_reg\(122) & (!\sc1|sc3|sc0|Add0~245\)))) # (!\sc4|shift_reg\(122) & ((\sc3|shift_reg\(122) & (!\sc1|sc3|sc0|Add0~245\)) # 
-- (!\sc3|shift_reg\(122) & ((\sc1|sc3|sc0|Add0~245\) # (GND)))))
-- \sc1|sc3|sc0|Add0~247\ = CARRY((\sc4|shift_reg\(122) & (!\sc3|shift_reg\(122) & !\sc1|sc3|sc0|Add0~245\)) # (!\sc4|shift_reg\(122) & ((!\sc1|sc3|sc0|Add0~245\) # (!\sc3|shift_reg\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(122),
	datab => \sc3|shift_reg\(122),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~245\,
	combout => \sc1|sc3|sc0|Add0~246_combout\,
	cout => \sc1|sc3|sc0|Add0~247\);

-- Location: LCCOMB_X111_Y39_N6
\sc1|sc3|sc0|Add0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~248_combout\ = ((\sc4|shift_reg\(123) $ (\sc3|shift_reg\(123) $ (!\sc1|sc3|sc0|Add0~247\)))) # (GND)
-- \sc1|sc3|sc0|Add0~249\ = CARRY((\sc4|shift_reg\(123) & ((\sc3|shift_reg\(123)) # (!\sc1|sc3|sc0|Add0~247\))) # (!\sc4|shift_reg\(123) & (\sc3|shift_reg\(123) & !\sc1|sc3|sc0|Add0~247\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(123),
	datab => \sc3|shift_reg\(123),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~247\,
	combout => \sc1|sc3|sc0|Add0~248_combout\,
	cout => \sc1|sc3|sc0|Add0~249\);

-- Location: LCCOMB_X111_Y39_N8
\sc1|sc3|sc0|Add0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~250_combout\ = (\sc3|shift_reg\(124) & ((\sc4|shift_reg\(124) & (\sc1|sc3|sc0|Add0~249\ & VCC)) # (!\sc4|shift_reg\(124) & (!\sc1|sc3|sc0|Add0~249\)))) # (!\sc3|shift_reg\(124) & ((\sc4|shift_reg\(124) & (!\sc1|sc3|sc0|Add0~249\)) # 
-- (!\sc4|shift_reg\(124) & ((\sc1|sc3|sc0|Add0~249\) # (GND)))))
-- \sc1|sc3|sc0|Add0~251\ = CARRY((\sc3|shift_reg\(124) & (!\sc4|shift_reg\(124) & !\sc1|sc3|sc0|Add0~249\)) # (!\sc3|shift_reg\(124) & ((!\sc1|sc3|sc0|Add0~249\) # (!\sc4|shift_reg\(124)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(124),
	datab => \sc4|shift_reg\(124),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~249\,
	combout => \sc1|sc3|sc0|Add0~250_combout\,
	cout => \sc1|sc3|sc0|Add0~251\);

-- Location: LCCOMB_X111_Y39_N10
\sc1|sc3|sc0|Add0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~252_combout\ = ((\sc3|shift_reg\(125) $ (\sc4|shift_reg\(125) $ (!\sc1|sc3|sc0|Add0~251\)))) # (GND)
-- \sc1|sc3|sc0|Add0~253\ = CARRY((\sc3|shift_reg\(125) & ((\sc4|shift_reg\(125)) # (!\sc1|sc3|sc0|Add0~251\))) # (!\sc3|shift_reg\(125) & (\sc4|shift_reg\(125) & !\sc1|sc3|sc0|Add0~251\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(125),
	datab => \sc4|shift_reg\(125),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~251\,
	combout => \sc1|sc3|sc0|Add0~252_combout\,
	cout => \sc1|sc3|sc0|Add0~253\);

-- Location: LCCOMB_X111_Y39_N12
\sc1|sc3|sc0|Add0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~254_combout\ = (\sc3|shift_reg\(126) & ((\sc4|shift_reg\(126) & (\sc1|sc3|sc0|Add0~253\ & VCC)) # (!\sc4|shift_reg\(126) & (!\sc1|sc3|sc0|Add0~253\)))) # (!\sc3|shift_reg\(126) & ((\sc4|shift_reg\(126) & (!\sc1|sc3|sc0|Add0~253\)) # 
-- (!\sc4|shift_reg\(126) & ((\sc1|sc3|sc0|Add0~253\) # (GND)))))
-- \sc1|sc3|sc0|Add0~255\ = CARRY((\sc3|shift_reg\(126) & (!\sc4|shift_reg\(126) & !\sc1|sc3|sc0|Add0~253\)) # (!\sc3|shift_reg\(126) & ((!\sc1|sc3|sc0|Add0~253\) # (!\sc4|shift_reg\(126)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(126),
	datab => \sc4|shift_reg\(126),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~253\,
	combout => \sc1|sc3|sc0|Add0~254_combout\,
	cout => \sc1|sc3|sc0|Add0~255\);

-- Location: LCCOMB_X111_Y39_N14
\sc1|sc3|sc0|Add0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~256_combout\ = ((\sc4|shift_reg\(127) $ (\sc3|shift_reg\(127) $ (!\sc1|sc3|sc0|Add0~255\)))) # (GND)
-- \sc1|sc3|sc0|Add0~257\ = CARRY((\sc4|shift_reg\(127) & ((\sc3|shift_reg\(127)) # (!\sc1|sc3|sc0|Add0~255\))) # (!\sc4|shift_reg\(127) & (\sc3|shift_reg\(127) & !\sc1|sc3|sc0|Add0~255\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(127),
	datab => \sc3|shift_reg\(127),
	datad => VCC,
	cin => \sc1|sc3|sc0|Add0~255\,
	combout => \sc1|sc3|sc0|Add0~256_combout\,
	cout => \sc1|sc3|sc0|Add0~257\);

-- Location: LCCOMB_X111_Y39_N16
\sc1|sc3|sc0|Add0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc3|sc0|Add0~258_combout\ = \sc1|sc3|sc0|Add0~257\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sc1|sc3|sc0|Add0~257\,
	combout => \sc1|sc3|sc0|Add0~258_combout\);

-- Location: IOIBUF_X115_Y68_N15
\Hit~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hit,
	ibar => \ww_Hit(n)\,
	o => \Hit~input_o\);

-- Location: LCCOMB_X114_Y43_N6
\sc0|sc6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc6|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc0|sc6|Q~feeder_combout\);

-- Location: LCCOMB_X112_Y39_N28
\sc0|sc0|sc1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|sc1|Q~feeder_combout\ = \sc0|sc0|sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|sc0|Q~q\,
	combout => \sc0|sc0|sc1|Q~feeder_combout\);

-- Location: LCCOMB_X112_Y39_N14
\sc0|sc5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|Mux2~0_combout\ = ((\sc0|sc5|qp\(1)) # (!\sc0|sc5|qp\(0))) # (!\sc0|sc4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc4|Q~q\,
	datac => \sc0|sc5|qp\(1),
	datad => \sc0|sc5|qp\(0),
	combout => \sc0|sc5|Mux2~0_combout\);

-- Location: FF_X112_Y39_N1
\sc0|sc5|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc0|sc5|Mux2~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(0));

-- Location: LCCOMB_X112_Y39_N12
\sc0|sc5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|Mux1~0_combout\ = (\sc0|sc5|qp\(1) & (\sc0|sc4|Q~q\)) # (!\sc0|sc5|qp\(1) & ((!\sc0|sc5|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|Q~q\,
	datac => \sc0|sc5|qp\(1),
	datad => \sc0|sc5|qp\(0),
	combout => \sc0|sc5|Mux1~0_combout\);

-- Location: FF_X112_Y39_N15
\sc0|sc5|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc0|sc5|Mux1~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(1));

-- Location: LCCOMB_X112_Y39_N6
\sc0|sc5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|Mux0~0_combout\ = (\sc0|sc5|qp\(1)) # (!\sc0|sc5|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc5|qp\(1),
	datad => \sc0|sc5|qp\(0),
	combout => \sc0|sc5|Mux0~0_combout\);

-- Location: FF_X112_Y39_N29
\sc0|sc0|sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	d => \sc0|sc0|sc1|Q~feeder_combout\,
	clrn => \sc0|sc5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc0|sc1|Q~q\);

-- Location: LCCOMB_X112_Y39_N8
\sc0|sc0|sc2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|sc2|Q~feeder_combout\ = \sc0|sc0|sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc0|sc1|Q~q\,
	combout => \sc0|sc0|sc2|Q~feeder_combout\);

-- Location: FF_X112_Y39_N9
\sc0|sc0|sc2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	d => \sc0|sc0|sc2|Q~feeder_combout\,
	clrn => \sc0|sc5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc0|sc2|Q~q\);

-- Location: LCCOMB_X112_Y39_N24
\sc0|sc4|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc0|sc4|Q~feeder_combout\);

-- Location: FF_X112_Y39_N25
\sc0|sc4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc0|sc2|Q~q\,
	d => \sc0|sc4|Q~feeder_combout\,
	clrn => \sc0|sc5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|Q~q\);

-- Location: LCCOMB_X114_Y43_N16
\sc0|HRST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|HRST~0_combout\ = ((\sc0|sc4|Q~q\) # ((\sc1|sc6|Q~q\) # (!\RST~input_o\))) # (!\sc1|sc1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc1|Q~q\,
	datab => \sc0|sc4|Q~q\,
	datac => \sc1|sc6|Q~q\,
	datad => \RST~input_o\,
	combout => \sc0|HRST~0_combout\);

-- Location: FF_X114_Y43_N7
\sc0|sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hit~input_o\,
	d => \sc0|sc6|Q~feeder_combout\,
	clrn => \sc0|ALT_INV_HRST~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|Q~q\);

-- Location: LCCOMB_X113_Y39_N8
\sc0|sc0|sc0|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|sc0|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc0|sc0|sc0|Q~feeder_combout\);

-- Location: FF_X113_Y39_N9
\sc0|sc0|sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc6|Q~q\,
	d => \sc0|sc0|sc0|Q~feeder_combout\,
	clrn => \sc0|sc5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc0|sc0|Q~q\);

-- Location: LCCOMB_X110_Y47_N14
\sc0|sc1|sc0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~1_cout\ = CARRY(\sc0|sc0|sc0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|sc0|Q~q\,
	datad => VCC,
	cout => \sc0|sc1|sc0|Add0~1_cout\);

-- Location: LCCOMB_X110_Y47_N16
\sc0|sc1|sc0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~2_combout\ = (\sc4|shift_reg\(0) & ((\sc3|shift_reg\(0) & (\sc0|sc1|sc0|Add0~1_cout\ & VCC)) # (!\sc3|shift_reg\(0) & (!\sc0|sc1|sc0|Add0~1_cout\)))) # (!\sc4|shift_reg\(0) & ((\sc3|shift_reg\(0) & (!\sc0|sc1|sc0|Add0~1_cout\)) # 
-- (!\sc3|shift_reg\(0) & ((\sc0|sc1|sc0|Add0~1_cout\) # (GND)))))
-- \sc0|sc1|sc0|Add0~3\ = CARRY((\sc4|shift_reg\(0) & (!\sc3|shift_reg\(0) & !\sc0|sc1|sc0|Add0~1_cout\)) # (!\sc4|shift_reg\(0) & ((!\sc0|sc1|sc0|Add0~1_cout\) # (!\sc3|shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(0),
	datab => \sc3|shift_reg\(0),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~1_cout\,
	combout => \sc0|sc1|sc0|Add0~2_combout\,
	cout => \sc0|sc1|sc0|Add0~3\);

-- Location: LCCOMB_X110_Y47_N18
\sc0|sc1|sc0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~4_combout\ = ((\sc4|shift_reg\(1) $ (\sc3|shift_reg\(1) $ (!\sc0|sc1|sc0|Add0~3\)))) # (GND)
-- \sc0|sc1|sc0|Add0~5\ = CARRY((\sc4|shift_reg\(1) & ((\sc3|shift_reg\(1)) # (!\sc0|sc1|sc0|Add0~3\))) # (!\sc4|shift_reg\(1) & (\sc3|shift_reg\(1) & !\sc0|sc1|sc0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(1),
	datab => \sc3|shift_reg\(1),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~3\,
	combout => \sc0|sc1|sc0|Add0~4_combout\,
	cout => \sc0|sc1|sc0|Add0~5\);

-- Location: LCCOMB_X110_Y47_N20
\sc0|sc1|sc0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~6_combout\ = (\sc3|shift_reg\(2) & ((\sc4|shift_reg\(2) & (\sc0|sc1|sc0|Add0~5\ & VCC)) # (!\sc4|shift_reg\(2) & (!\sc0|sc1|sc0|Add0~5\)))) # (!\sc3|shift_reg\(2) & ((\sc4|shift_reg\(2) & (!\sc0|sc1|sc0|Add0~5\)) # (!\sc4|shift_reg\(2) & 
-- ((\sc0|sc1|sc0|Add0~5\) # (GND)))))
-- \sc0|sc1|sc0|Add0~7\ = CARRY((\sc3|shift_reg\(2) & (!\sc4|shift_reg\(2) & !\sc0|sc1|sc0|Add0~5\)) # (!\sc3|shift_reg\(2) & ((!\sc0|sc1|sc0|Add0~5\) # (!\sc4|shift_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(2),
	datab => \sc4|shift_reg\(2),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~5\,
	combout => \sc0|sc1|sc0|Add0~6_combout\,
	cout => \sc0|sc1|sc0|Add0~7\);

-- Location: LCCOMB_X110_Y47_N22
\sc0|sc1|sc0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~8_combout\ = ((\sc4|shift_reg\(3) $ (\sc3|shift_reg\(3) $ (!\sc0|sc1|sc0|Add0~7\)))) # (GND)
-- \sc0|sc1|sc0|Add0~9\ = CARRY((\sc4|shift_reg\(3) & ((\sc3|shift_reg\(3)) # (!\sc0|sc1|sc0|Add0~7\))) # (!\sc4|shift_reg\(3) & (\sc3|shift_reg\(3) & !\sc0|sc1|sc0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(3),
	datab => \sc3|shift_reg\(3),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~7\,
	combout => \sc0|sc1|sc0|Add0~8_combout\,
	cout => \sc0|sc1|sc0|Add0~9\);

-- Location: LCCOMB_X110_Y47_N24
\sc0|sc1|sc0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~10_combout\ = (\sc3|shift_reg\(4) & ((\sc4|shift_reg\(4) & (\sc0|sc1|sc0|Add0~9\ & VCC)) # (!\sc4|shift_reg\(4) & (!\sc0|sc1|sc0|Add0~9\)))) # (!\sc3|shift_reg\(4) & ((\sc4|shift_reg\(4) & (!\sc0|sc1|sc0|Add0~9\)) # (!\sc4|shift_reg\(4) 
-- & ((\sc0|sc1|sc0|Add0~9\) # (GND)))))
-- \sc0|sc1|sc0|Add0~11\ = CARRY((\sc3|shift_reg\(4) & (!\sc4|shift_reg\(4) & !\sc0|sc1|sc0|Add0~9\)) # (!\sc3|shift_reg\(4) & ((!\sc0|sc1|sc0|Add0~9\) # (!\sc4|shift_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(4),
	datab => \sc4|shift_reg\(4),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~9\,
	combout => \sc0|sc1|sc0|Add0~10_combout\,
	cout => \sc0|sc1|sc0|Add0~11\);

-- Location: LCCOMB_X110_Y47_N26
\sc0|sc1|sc0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~12_combout\ = ((\sc3|shift_reg\(5) $ (\sc4|shift_reg\(5) $ (!\sc0|sc1|sc0|Add0~11\)))) # (GND)
-- \sc0|sc1|sc0|Add0~13\ = CARRY((\sc3|shift_reg\(5) & ((\sc4|shift_reg\(5)) # (!\sc0|sc1|sc0|Add0~11\))) # (!\sc3|shift_reg\(5) & (\sc4|shift_reg\(5) & !\sc0|sc1|sc0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(5),
	datab => \sc4|shift_reg\(5),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~11\,
	combout => \sc0|sc1|sc0|Add0~12_combout\,
	cout => \sc0|sc1|sc0|Add0~13\);

-- Location: LCCOMB_X110_Y47_N28
\sc0|sc1|sc0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~14_combout\ = (\sc4|shift_reg\(6) & ((\sc3|shift_reg\(6) & (\sc0|sc1|sc0|Add0~13\ & VCC)) # (!\sc3|shift_reg\(6) & (!\sc0|sc1|sc0|Add0~13\)))) # (!\sc4|shift_reg\(6) & ((\sc3|shift_reg\(6) & (!\sc0|sc1|sc0|Add0~13\)) # 
-- (!\sc3|shift_reg\(6) & ((\sc0|sc1|sc0|Add0~13\) # (GND)))))
-- \sc0|sc1|sc0|Add0~15\ = CARRY((\sc4|shift_reg\(6) & (!\sc3|shift_reg\(6) & !\sc0|sc1|sc0|Add0~13\)) # (!\sc4|shift_reg\(6) & ((!\sc0|sc1|sc0|Add0~13\) # (!\sc3|shift_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(6),
	datab => \sc3|shift_reg\(6),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~13\,
	combout => \sc0|sc1|sc0|Add0~14_combout\,
	cout => \sc0|sc1|sc0|Add0~15\);

-- Location: LCCOMB_X110_Y47_N30
\sc0|sc1|sc0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~16_combout\ = ((\sc3|shift_reg\(7) $ (\sc4|shift_reg\(7) $ (!\sc0|sc1|sc0|Add0~15\)))) # (GND)
-- \sc0|sc1|sc0|Add0~17\ = CARRY((\sc3|shift_reg\(7) & ((\sc4|shift_reg\(7)) # (!\sc0|sc1|sc0|Add0~15\))) # (!\sc3|shift_reg\(7) & (\sc4|shift_reg\(7) & !\sc0|sc1|sc0|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(7),
	datab => \sc4|shift_reg\(7),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~15\,
	combout => \sc0|sc1|sc0|Add0~16_combout\,
	cout => \sc0|sc1|sc0|Add0~17\);

-- Location: LCCOMB_X110_Y46_N0
\sc0|sc1|sc0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~18_combout\ = (\sc4|shift_reg\(8) & ((\sc3|shift_reg\(8) & (\sc0|sc1|sc0|Add0~17\ & VCC)) # (!\sc3|shift_reg\(8) & (!\sc0|sc1|sc0|Add0~17\)))) # (!\sc4|shift_reg\(8) & ((\sc3|shift_reg\(8) & (!\sc0|sc1|sc0|Add0~17\)) # 
-- (!\sc3|shift_reg\(8) & ((\sc0|sc1|sc0|Add0~17\) # (GND)))))
-- \sc0|sc1|sc0|Add0~19\ = CARRY((\sc4|shift_reg\(8) & (!\sc3|shift_reg\(8) & !\sc0|sc1|sc0|Add0~17\)) # (!\sc4|shift_reg\(8) & ((!\sc0|sc1|sc0|Add0~17\) # (!\sc3|shift_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(8),
	datab => \sc3|shift_reg\(8),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~17\,
	combout => \sc0|sc1|sc0|Add0~18_combout\,
	cout => \sc0|sc1|sc0|Add0~19\);

-- Location: LCCOMB_X110_Y46_N2
\sc0|sc1|sc0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~20_combout\ = ((\sc4|shift_reg\(9) $ (\sc3|shift_reg\(9) $ (!\sc0|sc1|sc0|Add0~19\)))) # (GND)
-- \sc0|sc1|sc0|Add0~21\ = CARRY((\sc4|shift_reg\(9) & ((\sc3|shift_reg\(9)) # (!\sc0|sc1|sc0|Add0~19\))) # (!\sc4|shift_reg\(9) & (\sc3|shift_reg\(9) & !\sc0|sc1|sc0|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(9),
	datab => \sc3|shift_reg\(9),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~19\,
	combout => \sc0|sc1|sc0|Add0~20_combout\,
	cout => \sc0|sc1|sc0|Add0~21\);

-- Location: LCCOMB_X110_Y46_N4
\sc0|sc1|sc0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~22_combout\ = (\sc3|shift_reg\(10) & ((\sc4|shift_reg\(10) & (\sc0|sc1|sc0|Add0~21\ & VCC)) # (!\sc4|shift_reg\(10) & (!\sc0|sc1|sc0|Add0~21\)))) # (!\sc3|shift_reg\(10) & ((\sc4|shift_reg\(10) & (!\sc0|sc1|sc0|Add0~21\)) # 
-- (!\sc4|shift_reg\(10) & ((\sc0|sc1|sc0|Add0~21\) # (GND)))))
-- \sc0|sc1|sc0|Add0~23\ = CARRY((\sc3|shift_reg\(10) & (!\sc4|shift_reg\(10) & !\sc0|sc1|sc0|Add0~21\)) # (!\sc3|shift_reg\(10) & ((!\sc0|sc1|sc0|Add0~21\) # (!\sc4|shift_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(10),
	datab => \sc4|shift_reg\(10),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~21\,
	combout => \sc0|sc1|sc0|Add0~22_combout\,
	cout => \sc0|sc1|sc0|Add0~23\);

-- Location: LCCOMB_X110_Y46_N6
\sc0|sc1|sc0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~24_combout\ = ((\sc3|shift_reg\(11) $ (\sc4|shift_reg\(11) $ (!\sc0|sc1|sc0|Add0~23\)))) # (GND)
-- \sc0|sc1|sc0|Add0~25\ = CARRY((\sc3|shift_reg\(11) & ((\sc4|shift_reg\(11)) # (!\sc0|sc1|sc0|Add0~23\))) # (!\sc3|shift_reg\(11) & (\sc4|shift_reg\(11) & !\sc0|sc1|sc0|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(11),
	datab => \sc4|shift_reg\(11),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~23\,
	combout => \sc0|sc1|sc0|Add0~24_combout\,
	cout => \sc0|sc1|sc0|Add0~25\);

-- Location: LCCOMB_X110_Y46_N8
\sc0|sc1|sc0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~26_combout\ = (\sc3|shift_reg\(12) & ((\sc4|shift_reg\(12) & (\sc0|sc1|sc0|Add0~25\ & VCC)) # (!\sc4|shift_reg\(12) & (!\sc0|sc1|sc0|Add0~25\)))) # (!\sc3|shift_reg\(12) & ((\sc4|shift_reg\(12) & (!\sc0|sc1|sc0|Add0~25\)) # 
-- (!\sc4|shift_reg\(12) & ((\sc0|sc1|sc0|Add0~25\) # (GND)))))
-- \sc0|sc1|sc0|Add0~27\ = CARRY((\sc3|shift_reg\(12) & (!\sc4|shift_reg\(12) & !\sc0|sc1|sc0|Add0~25\)) # (!\sc3|shift_reg\(12) & ((!\sc0|sc1|sc0|Add0~25\) # (!\sc4|shift_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(12),
	datab => \sc4|shift_reg\(12),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~25\,
	combout => \sc0|sc1|sc0|Add0~26_combout\,
	cout => \sc0|sc1|sc0|Add0~27\);

-- Location: LCCOMB_X110_Y46_N10
\sc0|sc1|sc0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~28_combout\ = ((\sc4|shift_reg\(13) $ (\sc3|shift_reg\(13) $ (!\sc0|sc1|sc0|Add0~27\)))) # (GND)
-- \sc0|sc1|sc0|Add0~29\ = CARRY((\sc4|shift_reg\(13) & ((\sc3|shift_reg\(13)) # (!\sc0|sc1|sc0|Add0~27\))) # (!\sc4|shift_reg\(13) & (\sc3|shift_reg\(13) & !\sc0|sc1|sc0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(13),
	datab => \sc3|shift_reg\(13),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~27\,
	combout => \sc0|sc1|sc0|Add0~28_combout\,
	cout => \sc0|sc1|sc0|Add0~29\);

-- Location: LCCOMB_X110_Y46_N12
\sc0|sc1|sc0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~30_combout\ = (\sc4|shift_reg\(14) & ((\sc3|shift_reg\(14) & (\sc0|sc1|sc0|Add0~29\ & VCC)) # (!\sc3|shift_reg\(14) & (!\sc0|sc1|sc0|Add0~29\)))) # (!\sc4|shift_reg\(14) & ((\sc3|shift_reg\(14) & (!\sc0|sc1|sc0|Add0~29\)) # 
-- (!\sc3|shift_reg\(14) & ((\sc0|sc1|sc0|Add0~29\) # (GND)))))
-- \sc0|sc1|sc0|Add0~31\ = CARRY((\sc4|shift_reg\(14) & (!\sc3|shift_reg\(14) & !\sc0|sc1|sc0|Add0~29\)) # (!\sc4|shift_reg\(14) & ((!\sc0|sc1|sc0|Add0~29\) # (!\sc3|shift_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(14),
	datab => \sc3|shift_reg\(14),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~29\,
	combout => \sc0|sc1|sc0|Add0~30_combout\,
	cout => \sc0|sc1|sc0|Add0~31\);

-- Location: LCCOMB_X110_Y46_N14
\sc0|sc1|sc0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~32_combout\ = ((\sc4|shift_reg\(15) $ (\sc3|shift_reg\(15) $ (!\sc0|sc1|sc0|Add0~31\)))) # (GND)
-- \sc0|sc1|sc0|Add0~33\ = CARRY((\sc4|shift_reg\(15) & ((\sc3|shift_reg\(15)) # (!\sc0|sc1|sc0|Add0~31\))) # (!\sc4|shift_reg\(15) & (\sc3|shift_reg\(15) & !\sc0|sc1|sc0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(15),
	datab => \sc3|shift_reg\(15),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~31\,
	combout => \sc0|sc1|sc0|Add0~32_combout\,
	cout => \sc0|sc1|sc0|Add0~33\);

-- Location: LCCOMB_X110_Y46_N16
\sc0|sc1|sc0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~34_combout\ = (\sc3|shift_reg\(16) & ((\sc4|shift_reg\(16) & (\sc0|sc1|sc0|Add0~33\ & VCC)) # (!\sc4|shift_reg\(16) & (!\sc0|sc1|sc0|Add0~33\)))) # (!\sc3|shift_reg\(16) & ((\sc4|shift_reg\(16) & (!\sc0|sc1|sc0|Add0~33\)) # 
-- (!\sc4|shift_reg\(16) & ((\sc0|sc1|sc0|Add0~33\) # (GND)))))
-- \sc0|sc1|sc0|Add0~35\ = CARRY((\sc3|shift_reg\(16) & (!\sc4|shift_reg\(16) & !\sc0|sc1|sc0|Add0~33\)) # (!\sc3|shift_reg\(16) & ((!\sc0|sc1|sc0|Add0~33\) # (!\sc4|shift_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(16),
	datab => \sc4|shift_reg\(16),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~33\,
	combout => \sc0|sc1|sc0|Add0~34_combout\,
	cout => \sc0|sc1|sc0|Add0~35\);

-- Location: LCCOMB_X110_Y46_N18
\sc0|sc1|sc0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~36_combout\ = ((\sc4|shift_reg\(17) $ (\sc3|shift_reg\(17) $ (!\sc0|sc1|sc0|Add0~35\)))) # (GND)
-- \sc0|sc1|sc0|Add0~37\ = CARRY((\sc4|shift_reg\(17) & ((\sc3|shift_reg\(17)) # (!\sc0|sc1|sc0|Add0~35\))) # (!\sc4|shift_reg\(17) & (\sc3|shift_reg\(17) & !\sc0|sc1|sc0|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(17),
	datab => \sc3|shift_reg\(17),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~35\,
	combout => \sc0|sc1|sc0|Add0~36_combout\,
	cout => \sc0|sc1|sc0|Add0~37\);

-- Location: LCCOMB_X110_Y46_N20
\sc0|sc1|sc0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~38_combout\ = (\sc4|shift_reg\(18) & ((\sc3|shift_reg\(18) & (\sc0|sc1|sc0|Add0~37\ & VCC)) # (!\sc3|shift_reg\(18) & (!\sc0|sc1|sc0|Add0~37\)))) # (!\sc4|shift_reg\(18) & ((\sc3|shift_reg\(18) & (!\sc0|sc1|sc0|Add0~37\)) # 
-- (!\sc3|shift_reg\(18) & ((\sc0|sc1|sc0|Add0~37\) # (GND)))))
-- \sc0|sc1|sc0|Add0~39\ = CARRY((\sc4|shift_reg\(18) & (!\sc3|shift_reg\(18) & !\sc0|sc1|sc0|Add0~37\)) # (!\sc4|shift_reg\(18) & ((!\sc0|sc1|sc0|Add0~37\) # (!\sc3|shift_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(18),
	datab => \sc3|shift_reg\(18),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~37\,
	combout => \sc0|sc1|sc0|Add0~38_combout\,
	cout => \sc0|sc1|sc0|Add0~39\);

-- Location: LCCOMB_X110_Y46_N22
\sc0|sc1|sc0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~40_combout\ = ((\sc4|shift_reg\(19) $ (\sc3|shift_reg\(19) $ (!\sc0|sc1|sc0|Add0~39\)))) # (GND)
-- \sc0|sc1|sc0|Add0~41\ = CARRY((\sc4|shift_reg\(19) & ((\sc3|shift_reg\(19)) # (!\sc0|sc1|sc0|Add0~39\))) # (!\sc4|shift_reg\(19) & (\sc3|shift_reg\(19) & !\sc0|sc1|sc0|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(19),
	datab => \sc3|shift_reg\(19),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~39\,
	combout => \sc0|sc1|sc0|Add0~40_combout\,
	cout => \sc0|sc1|sc0|Add0~41\);

-- Location: LCCOMB_X110_Y46_N24
\sc0|sc1|sc0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~42_combout\ = (\sc3|shift_reg\(20) & ((\sc4|shift_reg\(20) & (\sc0|sc1|sc0|Add0~41\ & VCC)) # (!\sc4|shift_reg\(20) & (!\sc0|sc1|sc0|Add0~41\)))) # (!\sc3|shift_reg\(20) & ((\sc4|shift_reg\(20) & (!\sc0|sc1|sc0|Add0~41\)) # 
-- (!\sc4|shift_reg\(20) & ((\sc0|sc1|sc0|Add0~41\) # (GND)))))
-- \sc0|sc1|sc0|Add0~43\ = CARRY((\sc3|shift_reg\(20) & (!\sc4|shift_reg\(20) & !\sc0|sc1|sc0|Add0~41\)) # (!\sc3|shift_reg\(20) & ((!\sc0|sc1|sc0|Add0~41\) # (!\sc4|shift_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(20),
	datab => \sc4|shift_reg\(20),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~41\,
	combout => \sc0|sc1|sc0|Add0~42_combout\,
	cout => \sc0|sc1|sc0|Add0~43\);

-- Location: LCCOMB_X110_Y46_N26
\sc0|sc1|sc0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~44_combout\ = ((\sc4|shift_reg\(21) $ (\sc3|shift_reg\(21) $ (!\sc0|sc1|sc0|Add0~43\)))) # (GND)
-- \sc0|sc1|sc0|Add0~45\ = CARRY((\sc4|shift_reg\(21) & ((\sc3|shift_reg\(21)) # (!\sc0|sc1|sc0|Add0~43\))) # (!\sc4|shift_reg\(21) & (\sc3|shift_reg\(21) & !\sc0|sc1|sc0|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(21),
	datab => \sc3|shift_reg\(21),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~43\,
	combout => \sc0|sc1|sc0|Add0~44_combout\,
	cout => \sc0|sc1|sc0|Add0~45\);

-- Location: LCCOMB_X110_Y46_N28
\sc0|sc1|sc0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~46_combout\ = (\sc4|shift_reg\(22) & ((\sc3|shift_reg\(22) & (\sc0|sc1|sc0|Add0~45\ & VCC)) # (!\sc3|shift_reg\(22) & (!\sc0|sc1|sc0|Add0~45\)))) # (!\sc4|shift_reg\(22) & ((\sc3|shift_reg\(22) & (!\sc0|sc1|sc0|Add0~45\)) # 
-- (!\sc3|shift_reg\(22) & ((\sc0|sc1|sc0|Add0~45\) # (GND)))))
-- \sc0|sc1|sc0|Add0~47\ = CARRY((\sc4|shift_reg\(22) & (!\sc3|shift_reg\(22) & !\sc0|sc1|sc0|Add0~45\)) # (!\sc4|shift_reg\(22) & ((!\sc0|sc1|sc0|Add0~45\) # (!\sc3|shift_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(22),
	datab => \sc3|shift_reg\(22),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~45\,
	combout => \sc0|sc1|sc0|Add0~46_combout\,
	cout => \sc0|sc1|sc0|Add0~47\);

-- Location: LCCOMB_X110_Y46_N30
\sc0|sc1|sc0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~48_combout\ = ((\sc3|shift_reg\(23) $ (\sc4|shift_reg\(23) $ (!\sc0|sc1|sc0|Add0~47\)))) # (GND)
-- \sc0|sc1|sc0|Add0~49\ = CARRY((\sc3|shift_reg\(23) & ((\sc4|shift_reg\(23)) # (!\sc0|sc1|sc0|Add0~47\))) # (!\sc3|shift_reg\(23) & (\sc4|shift_reg\(23) & !\sc0|sc1|sc0|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(23),
	datab => \sc4|shift_reg\(23),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~47\,
	combout => \sc0|sc1|sc0|Add0~48_combout\,
	cout => \sc0|sc1|sc0|Add0~49\);

-- Location: LCCOMB_X110_Y45_N0
\sc0|sc1|sc0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~50_combout\ = (\sc3|shift_reg\(24) & ((\sc4|shift_reg\(24) & (\sc0|sc1|sc0|Add0~49\ & VCC)) # (!\sc4|shift_reg\(24) & (!\sc0|sc1|sc0|Add0~49\)))) # (!\sc3|shift_reg\(24) & ((\sc4|shift_reg\(24) & (!\sc0|sc1|sc0|Add0~49\)) # 
-- (!\sc4|shift_reg\(24) & ((\sc0|sc1|sc0|Add0~49\) # (GND)))))
-- \sc0|sc1|sc0|Add0~51\ = CARRY((\sc3|shift_reg\(24) & (!\sc4|shift_reg\(24) & !\sc0|sc1|sc0|Add0~49\)) # (!\sc3|shift_reg\(24) & ((!\sc0|sc1|sc0|Add0~49\) # (!\sc4|shift_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(24),
	datab => \sc4|shift_reg\(24),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~49\,
	combout => \sc0|sc1|sc0|Add0~50_combout\,
	cout => \sc0|sc1|sc0|Add0~51\);

-- Location: LCCOMB_X110_Y45_N2
\sc0|sc1|sc0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~52_combout\ = ((\sc4|shift_reg\(25) $ (\sc3|shift_reg\(25) $ (!\sc0|sc1|sc0|Add0~51\)))) # (GND)
-- \sc0|sc1|sc0|Add0~53\ = CARRY((\sc4|shift_reg\(25) & ((\sc3|shift_reg\(25)) # (!\sc0|sc1|sc0|Add0~51\))) # (!\sc4|shift_reg\(25) & (\sc3|shift_reg\(25) & !\sc0|sc1|sc0|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(25),
	datab => \sc3|shift_reg\(25),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~51\,
	combout => \sc0|sc1|sc0|Add0~52_combout\,
	cout => \sc0|sc1|sc0|Add0~53\);

-- Location: LCCOMB_X110_Y45_N4
\sc0|sc1|sc0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~54_combout\ = (\sc3|shift_reg\(26) & ((\sc4|shift_reg\(26) & (\sc0|sc1|sc0|Add0~53\ & VCC)) # (!\sc4|shift_reg\(26) & (!\sc0|sc1|sc0|Add0~53\)))) # (!\sc3|shift_reg\(26) & ((\sc4|shift_reg\(26) & (!\sc0|sc1|sc0|Add0~53\)) # 
-- (!\sc4|shift_reg\(26) & ((\sc0|sc1|sc0|Add0~53\) # (GND)))))
-- \sc0|sc1|sc0|Add0~55\ = CARRY((\sc3|shift_reg\(26) & (!\sc4|shift_reg\(26) & !\sc0|sc1|sc0|Add0~53\)) # (!\sc3|shift_reg\(26) & ((!\sc0|sc1|sc0|Add0~53\) # (!\sc4|shift_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(26),
	datab => \sc4|shift_reg\(26),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~53\,
	combout => \sc0|sc1|sc0|Add0~54_combout\,
	cout => \sc0|sc1|sc0|Add0~55\);

-- Location: LCCOMB_X110_Y45_N6
\sc0|sc1|sc0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~56_combout\ = ((\sc3|shift_reg\(27) $ (\sc4|shift_reg\(27) $ (!\sc0|sc1|sc0|Add0~55\)))) # (GND)
-- \sc0|sc1|sc0|Add0~57\ = CARRY((\sc3|shift_reg\(27) & ((\sc4|shift_reg\(27)) # (!\sc0|sc1|sc0|Add0~55\))) # (!\sc3|shift_reg\(27) & (\sc4|shift_reg\(27) & !\sc0|sc1|sc0|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(27),
	datab => \sc4|shift_reg\(27),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~55\,
	combout => \sc0|sc1|sc0|Add0~56_combout\,
	cout => \sc0|sc1|sc0|Add0~57\);

-- Location: LCCOMB_X110_Y45_N8
\sc0|sc1|sc0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~58_combout\ = (\sc4|shift_reg\(28) & ((\sc3|shift_reg\(28) & (\sc0|sc1|sc0|Add0~57\ & VCC)) # (!\sc3|shift_reg\(28) & (!\sc0|sc1|sc0|Add0~57\)))) # (!\sc4|shift_reg\(28) & ((\sc3|shift_reg\(28) & (!\sc0|sc1|sc0|Add0~57\)) # 
-- (!\sc3|shift_reg\(28) & ((\sc0|sc1|sc0|Add0~57\) # (GND)))))
-- \sc0|sc1|sc0|Add0~59\ = CARRY((\sc4|shift_reg\(28) & (!\sc3|shift_reg\(28) & !\sc0|sc1|sc0|Add0~57\)) # (!\sc4|shift_reg\(28) & ((!\sc0|sc1|sc0|Add0~57\) # (!\sc3|shift_reg\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(28),
	datab => \sc3|shift_reg\(28),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~57\,
	combout => \sc0|sc1|sc0|Add0~58_combout\,
	cout => \sc0|sc1|sc0|Add0~59\);

-- Location: LCCOMB_X110_Y45_N10
\sc0|sc1|sc0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~60_combout\ = ((\sc4|shift_reg\(29) $ (\sc3|shift_reg\(29) $ (!\sc0|sc1|sc0|Add0~59\)))) # (GND)
-- \sc0|sc1|sc0|Add0~61\ = CARRY((\sc4|shift_reg\(29) & ((\sc3|shift_reg\(29)) # (!\sc0|sc1|sc0|Add0~59\))) # (!\sc4|shift_reg\(29) & (\sc3|shift_reg\(29) & !\sc0|sc1|sc0|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(29),
	datab => \sc3|shift_reg\(29),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~59\,
	combout => \sc0|sc1|sc0|Add0~60_combout\,
	cout => \sc0|sc1|sc0|Add0~61\);

-- Location: LCCOMB_X110_Y45_N12
\sc0|sc1|sc0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~62_combout\ = (\sc4|shift_reg\(30) & ((\sc3|shift_reg\(30) & (\sc0|sc1|sc0|Add0~61\ & VCC)) # (!\sc3|shift_reg\(30) & (!\sc0|sc1|sc0|Add0~61\)))) # (!\sc4|shift_reg\(30) & ((\sc3|shift_reg\(30) & (!\sc0|sc1|sc0|Add0~61\)) # 
-- (!\sc3|shift_reg\(30) & ((\sc0|sc1|sc0|Add0~61\) # (GND)))))
-- \sc0|sc1|sc0|Add0~63\ = CARRY((\sc4|shift_reg\(30) & (!\sc3|shift_reg\(30) & !\sc0|sc1|sc0|Add0~61\)) # (!\sc4|shift_reg\(30) & ((!\sc0|sc1|sc0|Add0~61\) # (!\sc3|shift_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(30),
	datab => \sc3|shift_reg\(30),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~61\,
	combout => \sc0|sc1|sc0|Add0~62_combout\,
	cout => \sc0|sc1|sc0|Add0~63\);

-- Location: LCCOMB_X110_Y45_N14
\sc0|sc1|sc0|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~64_combout\ = ((\sc4|shift_reg\(31) $ (\sc3|shift_reg\(31) $ (!\sc0|sc1|sc0|Add0~63\)))) # (GND)
-- \sc0|sc1|sc0|Add0~65\ = CARRY((\sc4|shift_reg\(31) & ((\sc3|shift_reg\(31)) # (!\sc0|sc1|sc0|Add0~63\))) # (!\sc4|shift_reg\(31) & (\sc3|shift_reg\(31) & !\sc0|sc1|sc0|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(31),
	datab => \sc3|shift_reg\(31),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~63\,
	combout => \sc0|sc1|sc0|Add0~64_combout\,
	cout => \sc0|sc1|sc0|Add0~65\);

-- Location: LCCOMB_X110_Y45_N16
\sc0|sc1|sc0|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~66_combout\ = (\sc3|shift_reg\(32) & ((\sc4|shift_reg\(32) & (\sc0|sc1|sc0|Add0~65\ & VCC)) # (!\sc4|shift_reg\(32) & (!\sc0|sc1|sc0|Add0~65\)))) # (!\sc3|shift_reg\(32) & ((\sc4|shift_reg\(32) & (!\sc0|sc1|sc0|Add0~65\)) # 
-- (!\sc4|shift_reg\(32) & ((\sc0|sc1|sc0|Add0~65\) # (GND)))))
-- \sc0|sc1|sc0|Add0~67\ = CARRY((\sc3|shift_reg\(32) & (!\sc4|shift_reg\(32) & !\sc0|sc1|sc0|Add0~65\)) # (!\sc3|shift_reg\(32) & ((!\sc0|sc1|sc0|Add0~65\) # (!\sc4|shift_reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(32),
	datab => \sc4|shift_reg\(32),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~65\,
	combout => \sc0|sc1|sc0|Add0~66_combout\,
	cout => \sc0|sc1|sc0|Add0~67\);

-- Location: LCCOMB_X110_Y45_N18
\sc0|sc1|sc0|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~68_combout\ = ((\sc4|shift_reg\(33) $ (\sc3|shift_reg\(33) $ (!\sc0|sc1|sc0|Add0~67\)))) # (GND)
-- \sc0|sc1|sc0|Add0~69\ = CARRY((\sc4|shift_reg\(33) & ((\sc3|shift_reg\(33)) # (!\sc0|sc1|sc0|Add0~67\))) # (!\sc4|shift_reg\(33) & (\sc3|shift_reg\(33) & !\sc0|sc1|sc0|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(33),
	datab => \sc3|shift_reg\(33),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~67\,
	combout => \sc0|sc1|sc0|Add0~68_combout\,
	cout => \sc0|sc1|sc0|Add0~69\);

-- Location: LCCOMB_X110_Y45_N20
\sc0|sc1|sc0|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~70_combout\ = (\sc3|shift_reg\(34) & ((\sc4|shift_reg\(34) & (\sc0|sc1|sc0|Add0~69\ & VCC)) # (!\sc4|shift_reg\(34) & (!\sc0|sc1|sc0|Add0~69\)))) # (!\sc3|shift_reg\(34) & ((\sc4|shift_reg\(34) & (!\sc0|sc1|sc0|Add0~69\)) # 
-- (!\sc4|shift_reg\(34) & ((\sc0|sc1|sc0|Add0~69\) # (GND)))))
-- \sc0|sc1|sc0|Add0~71\ = CARRY((\sc3|shift_reg\(34) & (!\sc4|shift_reg\(34) & !\sc0|sc1|sc0|Add0~69\)) # (!\sc3|shift_reg\(34) & ((!\sc0|sc1|sc0|Add0~69\) # (!\sc4|shift_reg\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(34),
	datab => \sc4|shift_reg\(34),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~69\,
	combout => \sc0|sc1|sc0|Add0~70_combout\,
	cout => \sc0|sc1|sc0|Add0~71\);

-- Location: LCCOMB_X110_Y45_N22
\sc0|sc1|sc0|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~72_combout\ = ((\sc3|shift_reg\(35) $ (\sc4|shift_reg\(35) $ (!\sc0|sc1|sc0|Add0~71\)))) # (GND)
-- \sc0|sc1|sc0|Add0~73\ = CARRY((\sc3|shift_reg\(35) & ((\sc4|shift_reg\(35)) # (!\sc0|sc1|sc0|Add0~71\))) # (!\sc3|shift_reg\(35) & (\sc4|shift_reg\(35) & !\sc0|sc1|sc0|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(35),
	datab => \sc4|shift_reg\(35),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~71\,
	combout => \sc0|sc1|sc0|Add0~72_combout\,
	cout => \sc0|sc1|sc0|Add0~73\);

-- Location: LCCOMB_X110_Y45_N24
\sc0|sc1|sc0|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~74_combout\ = (\sc4|shift_reg\(36) & ((\sc3|shift_reg\(36) & (\sc0|sc1|sc0|Add0~73\ & VCC)) # (!\sc3|shift_reg\(36) & (!\sc0|sc1|sc0|Add0~73\)))) # (!\sc4|shift_reg\(36) & ((\sc3|shift_reg\(36) & (!\sc0|sc1|sc0|Add0~73\)) # 
-- (!\sc3|shift_reg\(36) & ((\sc0|sc1|sc0|Add0~73\) # (GND)))))
-- \sc0|sc1|sc0|Add0~75\ = CARRY((\sc4|shift_reg\(36) & (!\sc3|shift_reg\(36) & !\sc0|sc1|sc0|Add0~73\)) # (!\sc4|shift_reg\(36) & ((!\sc0|sc1|sc0|Add0~73\) # (!\sc3|shift_reg\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(36),
	datab => \sc3|shift_reg\(36),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~73\,
	combout => \sc0|sc1|sc0|Add0~74_combout\,
	cout => \sc0|sc1|sc0|Add0~75\);

-- Location: LCCOMB_X110_Y45_N26
\sc0|sc1|sc0|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~76_combout\ = ((\sc3|shift_reg\(37) $ (\sc4|shift_reg\(37) $ (!\sc0|sc1|sc0|Add0~75\)))) # (GND)
-- \sc0|sc1|sc0|Add0~77\ = CARRY((\sc3|shift_reg\(37) & ((\sc4|shift_reg\(37)) # (!\sc0|sc1|sc0|Add0~75\))) # (!\sc3|shift_reg\(37) & (\sc4|shift_reg\(37) & !\sc0|sc1|sc0|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(37),
	datab => \sc4|shift_reg\(37),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~75\,
	combout => \sc0|sc1|sc0|Add0~76_combout\,
	cout => \sc0|sc1|sc0|Add0~77\);

-- Location: LCCOMB_X110_Y45_N28
\sc0|sc1|sc0|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~78_combout\ = (\sc4|shift_reg\(38) & ((\sc3|shift_reg\(38) & (\sc0|sc1|sc0|Add0~77\ & VCC)) # (!\sc3|shift_reg\(38) & (!\sc0|sc1|sc0|Add0~77\)))) # (!\sc4|shift_reg\(38) & ((\sc3|shift_reg\(38) & (!\sc0|sc1|sc0|Add0~77\)) # 
-- (!\sc3|shift_reg\(38) & ((\sc0|sc1|sc0|Add0~77\) # (GND)))))
-- \sc0|sc1|sc0|Add0~79\ = CARRY((\sc4|shift_reg\(38) & (!\sc3|shift_reg\(38) & !\sc0|sc1|sc0|Add0~77\)) # (!\sc4|shift_reg\(38) & ((!\sc0|sc1|sc0|Add0~77\) # (!\sc3|shift_reg\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(38),
	datab => \sc3|shift_reg\(38),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~77\,
	combout => \sc0|sc1|sc0|Add0~78_combout\,
	cout => \sc0|sc1|sc0|Add0~79\);

-- Location: LCCOMB_X110_Y45_N30
\sc0|sc1|sc0|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~80_combout\ = ((\sc4|shift_reg\(39) $ (\sc3|shift_reg\(39) $ (!\sc0|sc1|sc0|Add0~79\)))) # (GND)
-- \sc0|sc1|sc0|Add0~81\ = CARRY((\sc4|shift_reg\(39) & ((\sc3|shift_reg\(39)) # (!\sc0|sc1|sc0|Add0~79\))) # (!\sc4|shift_reg\(39) & (\sc3|shift_reg\(39) & !\sc0|sc1|sc0|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(39),
	datab => \sc3|shift_reg\(39),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~79\,
	combout => \sc0|sc1|sc0|Add0~80_combout\,
	cout => \sc0|sc1|sc0|Add0~81\);

-- Location: LCCOMB_X110_Y44_N0
\sc0|sc1|sc0|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~82_combout\ = (\sc4|shift_reg\(40) & ((\sc3|shift_reg\(40) & (\sc0|sc1|sc0|Add0~81\ & VCC)) # (!\sc3|shift_reg\(40) & (!\sc0|sc1|sc0|Add0~81\)))) # (!\sc4|shift_reg\(40) & ((\sc3|shift_reg\(40) & (!\sc0|sc1|sc0|Add0~81\)) # 
-- (!\sc3|shift_reg\(40) & ((\sc0|sc1|sc0|Add0~81\) # (GND)))))
-- \sc0|sc1|sc0|Add0~83\ = CARRY((\sc4|shift_reg\(40) & (!\sc3|shift_reg\(40) & !\sc0|sc1|sc0|Add0~81\)) # (!\sc4|shift_reg\(40) & ((!\sc0|sc1|sc0|Add0~81\) # (!\sc3|shift_reg\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(40),
	datab => \sc3|shift_reg\(40),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~81\,
	combout => \sc0|sc1|sc0|Add0~82_combout\,
	cout => \sc0|sc1|sc0|Add0~83\);

-- Location: LCCOMB_X110_Y44_N2
\sc0|sc1|sc0|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~84_combout\ = ((\sc4|shift_reg\(41) $ (\sc3|shift_reg\(41) $ (!\sc0|sc1|sc0|Add0~83\)))) # (GND)
-- \sc0|sc1|sc0|Add0~85\ = CARRY((\sc4|shift_reg\(41) & ((\sc3|shift_reg\(41)) # (!\sc0|sc1|sc0|Add0~83\))) # (!\sc4|shift_reg\(41) & (\sc3|shift_reg\(41) & !\sc0|sc1|sc0|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(41),
	datab => \sc3|shift_reg\(41),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~83\,
	combout => \sc0|sc1|sc0|Add0~84_combout\,
	cout => \sc0|sc1|sc0|Add0~85\);

-- Location: LCCOMB_X110_Y44_N4
\sc0|sc1|sc0|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~86_combout\ = (\sc3|shift_reg\(42) & ((\sc4|shift_reg\(42) & (\sc0|sc1|sc0|Add0~85\ & VCC)) # (!\sc4|shift_reg\(42) & (!\sc0|sc1|sc0|Add0~85\)))) # (!\sc3|shift_reg\(42) & ((\sc4|shift_reg\(42) & (!\sc0|sc1|sc0|Add0~85\)) # 
-- (!\sc4|shift_reg\(42) & ((\sc0|sc1|sc0|Add0~85\) # (GND)))))
-- \sc0|sc1|sc0|Add0~87\ = CARRY((\sc3|shift_reg\(42) & (!\sc4|shift_reg\(42) & !\sc0|sc1|sc0|Add0~85\)) # (!\sc3|shift_reg\(42) & ((!\sc0|sc1|sc0|Add0~85\) # (!\sc4|shift_reg\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(42),
	datab => \sc4|shift_reg\(42),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~85\,
	combout => \sc0|sc1|sc0|Add0~86_combout\,
	cout => \sc0|sc1|sc0|Add0~87\);

-- Location: LCCOMB_X110_Y44_N6
\sc0|sc1|sc0|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~88_combout\ = ((\sc4|shift_reg\(43) $ (\sc3|shift_reg\(43) $ (!\sc0|sc1|sc0|Add0~87\)))) # (GND)
-- \sc0|sc1|sc0|Add0~89\ = CARRY((\sc4|shift_reg\(43) & ((\sc3|shift_reg\(43)) # (!\sc0|sc1|sc0|Add0~87\))) # (!\sc4|shift_reg\(43) & (\sc3|shift_reg\(43) & !\sc0|sc1|sc0|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(43),
	datab => \sc3|shift_reg\(43),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~87\,
	combout => \sc0|sc1|sc0|Add0~88_combout\,
	cout => \sc0|sc1|sc0|Add0~89\);

-- Location: LCCOMB_X110_Y44_N8
\sc0|sc1|sc0|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~90_combout\ = (\sc3|shift_reg\(44) & ((\sc4|shift_reg\(44) & (\sc0|sc1|sc0|Add0~89\ & VCC)) # (!\sc4|shift_reg\(44) & (!\sc0|sc1|sc0|Add0~89\)))) # (!\sc3|shift_reg\(44) & ((\sc4|shift_reg\(44) & (!\sc0|sc1|sc0|Add0~89\)) # 
-- (!\sc4|shift_reg\(44) & ((\sc0|sc1|sc0|Add0~89\) # (GND)))))
-- \sc0|sc1|sc0|Add0~91\ = CARRY((\sc3|shift_reg\(44) & (!\sc4|shift_reg\(44) & !\sc0|sc1|sc0|Add0~89\)) # (!\sc3|shift_reg\(44) & ((!\sc0|sc1|sc0|Add0~89\) # (!\sc4|shift_reg\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(44),
	datab => \sc4|shift_reg\(44),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~89\,
	combout => \sc0|sc1|sc0|Add0~90_combout\,
	cout => \sc0|sc1|sc0|Add0~91\);

-- Location: LCCOMB_X110_Y44_N10
\sc0|sc1|sc0|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~92_combout\ = ((\sc4|shift_reg\(45) $ (\sc3|shift_reg\(45) $ (!\sc0|sc1|sc0|Add0~91\)))) # (GND)
-- \sc0|sc1|sc0|Add0~93\ = CARRY((\sc4|shift_reg\(45) & ((\sc3|shift_reg\(45)) # (!\sc0|sc1|sc0|Add0~91\))) # (!\sc4|shift_reg\(45) & (\sc3|shift_reg\(45) & !\sc0|sc1|sc0|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(45),
	datab => \sc3|shift_reg\(45),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~91\,
	combout => \sc0|sc1|sc0|Add0~92_combout\,
	cout => \sc0|sc1|sc0|Add0~93\);

-- Location: LCCOMB_X110_Y44_N12
\sc0|sc1|sc0|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~94_combout\ = (\sc4|shift_reg\(46) & ((\sc3|shift_reg\(46) & (\sc0|sc1|sc0|Add0~93\ & VCC)) # (!\sc3|shift_reg\(46) & (!\sc0|sc1|sc0|Add0~93\)))) # (!\sc4|shift_reg\(46) & ((\sc3|shift_reg\(46) & (!\sc0|sc1|sc0|Add0~93\)) # 
-- (!\sc3|shift_reg\(46) & ((\sc0|sc1|sc0|Add0~93\) # (GND)))))
-- \sc0|sc1|sc0|Add0~95\ = CARRY((\sc4|shift_reg\(46) & (!\sc3|shift_reg\(46) & !\sc0|sc1|sc0|Add0~93\)) # (!\sc4|shift_reg\(46) & ((!\sc0|sc1|sc0|Add0~93\) # (!\sc3|shift_reg\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(46),
	datab => \sc3|shift_reg\(46),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~93\,
	combout => \sc0|sc1|sc0|Add0~94_combout\,
	cout => \sc0|sc1|sc0|Add0~95\);

-- Location: LCCOMB_X110_Y44_N14
\sc0|sc1|sc0|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~96_combout\ = ((\sc3|shift_reg\(47) $ (\sc4|shift_reg\(47) $ (!\sc0|sc1|sc0|Add0~95\)))) # (GND)
-- \sc0|sc1|sc0|Add0~97\ = CARRY((\sc3|shift_reg\(47) & ((\sc4|shift_reg\(47)) # (!\sc0|sc1|sc0|Add0~95\))) # (!\sc3|shift_reg\(47) & (\sc4|shift_reg\(47) & !\sc0|sc1|sc0|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(47),
	datab => \sc4|shift_reg\(47),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~95\,
	combout => \sc0|sc1|sc0|Add0~96_combout\,
	cout => \sc0|sc1|sc0|Add0~97\);

-- Location: LCCOMB_X110_Y44_N16
\sc0|sc1|sc0|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~98_combout\ = (\sc4|shift_reg\(48) & ((\sc3|shift_reg\(48) & (\sc0|sc1|sc0|Add0~97\ & VCC)) # (!\sc3|shift_reg\(48) & (!\sc0|sc1|sc0|Add0~97\)))) # (!\sc4|shift_reg\(48) & ((\sc3|shift_reg\(48) & (!\sc0|sc1|sc0|Add0~97\)) # 
-- (!\sc3|shift_reg\(48) & ((\sc0|sc1|sc0|Add0~97\) # (GND)))))
-- \sc0|sc1|sc0|Add0~99\ = CARRY((\sc4|shift_reg\(48) & (!\sc3|shift_reg\(48) & !\sc0|sc1|sc0|Add0~97\)) # (!\sc4|shift_reg\(48) & ((!\sc0|sc1|sc0|Add0~97\) # (!\sc3|shift_reg\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(48),
	datab => \sc3|shift_reg\(48),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~97\,
	combout => \sc0|sc1|sc0|Add0~98_combout\,
	cout => \sc0|sc1|sc0|Add0~99\);

-- Location: LCCOMB_X110_Y44_N18
\sc0|sc1|sc0|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~100_combout\ = ((\sc4|shift_reg\(49) $ (\sc3|shift_reg\(49) $ (!\sc0|sc1|sc0|Add0~99\)))) # (GND)
-- \sc0|sc1|sc0|Add0~101\ = CARRY((\sc4|shift_reg\(49) & ((\sc3|shift_reg\(49)) # (!\sc0|sc1|sc0|Add0~99\))) # (!\sc4|shift_reg\(49) & (\sc3|shift_reg\(49) & !\sc0|sc1|sc0|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(49),
	datab => \sc3|shift_reg\(49),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~99\,
	combout => \sc0|sc1|sc0|Add0~100_combout\,
	cout => \sc0|sc1|sc0|Add0~101\);

-- Location: LCCOMB_X110_Y44_N20
\sc0|sc1|sc0|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~102_combout\ = (\sc3|shift_reg\(50) & ((\sc4|shift_reg\(50) & (\sc0|sc1|sc0|Add0~101\ & VCC)) # (!\sc4|shift_reg\(50) & (!\sc0|sc1|sc0|Add0~101\)))) # (!\sc3|shift_reg\(50) & ((\sc4|shift_reg\(50) & (!\sc0|sc1|sc0|Add0~101\)) # 
-- (!\sc4|shift_reg\(50) & ((\sc0|sc1|sc0|Add0~101\) # (GND)))))
-- \sc0|sc1|sc0|Add0~103\ = CARRY((\sc3|shift_reg\(50) & (!\sc4|shift_reg\(50) & !\sc0|sc1|sc0|Add0~101\)) # (!\sc3|shift_reg\(50) & ((!\sc0|sc1|sc0|Add0~101\) # (!\sc4|shift_reg\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(50),
	datab => \sc4|shift_reg\(50),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~101\,
	combout => \sc0|sc1|sc0|Add0~102_combout\,
	cout => \sc0|sc1|sc0|Add0~103\);

-- Location: LCCOMB_X110_Y44_N22
\sc0|sc1|sc0|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~104_combout\ = ((\sc3|shift_reg\(51) $ (\sc4|shift_reg\(51) $ (!\sc0|sc1|sc0|Add0~103\)))) # (GND)
-- \sc0|sc1|sc0|Add0~105\ = CARRY((\sc3|shift_reg\(51) & ((\sc4|shift_reg\(51)) # (!\sc0|sc1|sc0|Add0~103\))) # (!\sc3|shift_reg\(51) & (\sc4|shift_reg\(51) & !\sc0|sc1|sc0|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(51),
	datab => \sc4|shift_reg\(51),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~103\,
	combout => \sc0|sc1|sc0|Add0~104_combout\,
	cout => \sc0|sc1|sc0|Add0~105\);

-- Location: LCCOMB_X110_Y44_N24
\sc0|sc1|sc0|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~106_combout\ = (\sc3|shift_reg\(52) & ((\sc4|shift_reg\(52) & (\sc0|sc1|sc0|Add0~105\ & VCC)) # (!\sc4|shift_reg\(52) & (!\sc0|sc1|sc0|Add0~105\)))) # (!\sc3|shift_reg\(52) & ((\sc4|shift_reg\(52) & (!\sc0|sc1|sc0|Add0~105\)) # 
-- (!\sc4|shift_reg\(52) & ((\sc0|sc1|sc0|Add0~105\) # (GND)))))
-- \sc0|sc1|sc0|Add0~107\ = CARRY((\sc3|shift_reg\(52) & (!\sc4|shift_reg\(52) & !\sc0|sc1|sc0|Add0~105\)) # (!\sc3|shift_reg\(52) & ((!\sc0|sc1|sc0|Add0~105\) # (!\sc4|shift_reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(52),
	datab => \sc4|shift_reg\(52),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~105\,
	combout => \sc0|sc1|sc0|Add0~106_combout\,
	cout => \sc0|sc1|sc0|Add0~107\);

-- Location: LCCOMB_X110_Y44_N26
\sc0|sc1|sc0|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~108_combout\ = ((\sc4|shift_reg\(53) $ (\sc3|shift_reg\(53) $ (!\sc0|sc1|sc0|Add0~107\)))) # (GND)
-- \sc0|sc1|sc0|Add0~109\ = CARRY((\sc4|shift_reg\(53) & ((\sc3|shift_reg\(53)) # (!\sc0|sc1|sc0|Add0~107\))) # (!\sc4|shift_reg\(53) & (\sc3|shift_reg\(53) & !\sc0|sc1|sc0|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(53),
	datab => \sc3|shift_reg\(53),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~107\,
	combout => \sc0|sc1|sc0|Add0~108_combout\,
	cout => \sc0|sc1|sc0|Add0~109\);

-- Location: LCCOMB_X110_Y44_N28
\sc0|sc1|sc0|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~110_combout\ = (\sc4|shift_reg\(54) & ((\sc3|shift_reg\(54) & (\sc0|sc1|sc0|Add0~109\ & VCC)) # (!\sc3|shift_reg\(54) & (!\sc0|sc1|sc0|Add0~109\)))) # (!\sc4|shift_reg\(54) & ((\sc3|shift_reg\(54) & (!\sc0|sc1|sc0|Add0~109\)) # 
-- (!\sc3|shift_reg\(54) & ((\sc0|sc1|sc0|Add0~109\) # (GND)))))
-- \sc0|sc1|sc0|Add0~111\ = CARRY((\sc4|shift_reg\(54) & (!\sc3|shift_reg\(54) & !\sc0|sc1|sc0|Add0~109\)) # (!\sc4|shift_reg\(54) & ((!\sc0|sc1|sc0|Add0~109\) # (!\sc3|shift_reg\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(54),
	datab => \sc3|shift_reg\(54),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~109\,
	combout => \sc0|sc1|sc0|Add0~110_combout\,
	cout => \sc0|sc1|sc0|Add0~111\);

-- Location: LCCOMB_X110_Y44_N30
\sc0|sc1|sc0|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~112_combout\ = ((\sc4|shift_reg\(55) $ (\sc3|shift_reg\(55) $ (!\sc0|sc1|sc0|Add0~111\)))) # (GND)
-- \sc0|sc1|sc0|Add0~113\ = CARRY((\sc4|shift_reg\(55) & ((\sc3|shift_reg\(55)) # (!\sc0|sc1|sc0|Add0~111\))) # (!\sc4|shift_reg\(55) & (\sc3|shift_reg\(55) & !\sc0|sc1|sc0|Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(55),
	datab => \sc3|shift_reg\(55),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~111\,
	combout => \sc0|sc1|sc0|Add0~112_combout\,
	cout => \sc0|sc1|sc0|Add0~113\);

-- Location: LCCOMB_X110_Y43_N0
\sc0|sc1|sc0|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~114_combout\ = (\sc4|shift_reg\(56) & ((\sc3|shift_reg\(56) & (\sc0|sc1|sc0|Add0~113\ & VCC)) # (!\sc3|shift_reg\(56) & (!\sc0|sc1|sc0|Add0~113\)))) # (!\sc4|shift_reg\(56) & ((\sc3|shift_reg\(56) & (!\sc0|sc1|sc0|Add0~113\)) # 
-- (!\sc3|shift_reg\(56) & ((\sc0|sc1|sc0|Add0~113\) # (GND)))))
-- \sc0|sc1|sc0|Add0~115\ = CARRY((\sc4|shift_reg\(56) & (!\sc3|shift_reg\(56) & !\sc0|sc1|sc0|Add0~113\)) # (!\sc4|shift_reg\(56) & ((!\sc0|sc1|sc0|Add0~113\) # (!\sc3|shift_reg\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(56),
	datab => \sc3|shift_reg\(56),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~113\,
	combout => \sc0|sc1|sc0|Add0~114_combout\,
	cout => \sc0|sc1|sc0|Add0~115\);

-- Location: LCCOMB_X110_Y43_N2
\sc0|sc1|sc0|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~116_combout\ = ((\sc4|shift_reg\(57) $ (\sc3|shift_reg\(57) $ (!\sc0|sc1|sc0|Add0~115\)))) # (GND)
-- \sc0|sc1|sc0|Add0~117\ = CARRY((\sc4|shift_reg\(57) & ((\sc3|shift_reg\(57)) # (!\sc0|sc1|sc0|Add0~115\))) # (!\sc4|shift_reg\(57) & (\sc3|shift_reg\(57) & !\sc0|sc1|sc0|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(57),
	datab => \sc3|shift_reg\(57),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~115\,
	combout => \sc0|sc1|sc0|Add0~116_combout\,
	cout => \sc0|sc1|sc0|Add0~117\);

-- Location: LCCOMB_X110_Y43_N4
\sc0|sc1|sc0|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~118_combout\ = (\sc3|shift_reg\(58) & ((\sc4|shift_reg\(58) & (\sc0|sc1|sc0|Add0~117\ & VCC)) # (!\sc4|shift_reg\(58) & (!\sc0|sc1|sc0|Add0~117\)))) # (!\sc3|shift_reg\(58) & ((\sc4|shift_reg\(58) & (!\sc0|sc1|sc0|Add0~117\)) # 
-- (!\sc4|shift_reg\(58) & ((\sc0|sc1|sc0|Add0~117\) # (GND)))))
-- \sc0|sc1|sc0|Add0~119\ = CARRY((\sc3|shift_reg\(58) & (!\sc4|shift_reg\(58) & !\sc0|sc1|sc0|Add0~117\)) # (!\sc3|shift_reg\(58) & ((!\sc0|sc1|sc0|Add0~117\) # (!\sc4|shift_reg\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(58),
	datab => \sc4|shift_reg\(58),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~117\,
	combout => \sc0|sc1|sc0|Add0~118_combout\,
	cout => \sc0|sc1|sc0|Add0~119\);

-- Location: LCCOMB_X110_Y43_N6
\sc0|sc1|sc0|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~120_combout\ = ((\sc4|shift_reg\(59) $ (\sc3|shift_reg\(59) $ (!\sc0|sc1|sc0|Add0~119\)))) # (GND)
-- \sc0|sc1|sc0|Add0~121\ = CARRY((\sc4|shift_reg\(59) & ((\sc3|shift_reg\(59)) # (!\sc0|sc1|sc0|Add0~119\))) # (!\sc4|shift_reg\(59) & (\sc3|shift_reg\(59) & !\sc0|sc1|sc0|Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(59),
	datab => \sc3|shift_reg\(59),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~119\,
	combout => \sc0|sc1|sc0|Add0~120_combout\,
	cout => \sc0|sc1|sc0|Add0~121\);

-- Location: LCCOMB_X110_Y43_N8
\sc0|sc1|sc0|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~122_combout\ = (\sc3|shift_reg\(60) & ((\sc4|shift_reg\(60) & (\sc0|sc1|sc0|Add0~121\ & VCC)) # (!\sc4|shift_reg\(60) & (!\sc0|sc1|sc0|Add0~121\)))) # (!\sc3|shift_reg\(60) & ((\sc4|shift_reg\(60) & (!\sc0|sc1|sc0|Add0~121\)) # 
-- (!\sc4|shift_reg\(60) & ((\sc0|sc1|sc0|Add0~121\) # (GND)))))
-- \sc0|sc1|sc0|Add0~123\ = CARRY((\sc3|shift_reg\(60) & (!\sc4|shift_reg\(60) & !\sc0|sc1|sc0|Add0~121\)) # (!\sc3|shift_reg\(60) & ((!\sc0|sc1|sc0|Add0~121\) # (!\sc4|shift_reg\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(60),
	datab => \sc4|shift_reg\(60),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~121\,
	combout => \sc0|sc1|sc0|Add0~122_combout\,
	cout => \sc0|sc1|sc0|Add0~123\);

-- Location: LCCOMB_X110_Y43_N10
\sc0|sc1|sc0|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~124_combout\ = ((\sc3|shift_reg\(61) $ (\sc4|shift_reg\(61) $ (!\sc0|sc1|sc0|Add0~123\)))) # (GND)
-- \sc0|sc1|sc0|Add0~125\ = CARRY((\sc3|shift_reg\(61) & ((\sc4|shift_reg\(61)) # (!\sc0|sc1|sc0|Add0~123\))) # (!\sc3|shift_reg\(61) & (\sc4|shift_reg\(61) & !\sc0|sc1|sc0|Add0~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(61),
	datab => \sc4|shift_reg\(61),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~123\,
	combout => \sc0|sc1|sc0|Add0~124_combout\,
	cout => \sc0|sc1|sc0|Add0~125\);

-- Location: LCCOMB_X110_Y43_N12
\sc0|sc1|sc0|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~126_combout\ = (\sc4|shift_reg\(62) & ((\sc3|shift_reg\(62) & (\sc0|sc1|sc0|Add0~125\ & VCC)) # (!\sc3|shift_reg\(62) & (!\sc0|sc1|sc0|Add0~125\)))) # (!\sc4|shift_reg\(62) & ((\sc3|shift_reg\(62) & (!\sc0|sc1|sc0|Add0~125\)) # 
-- (!\sc3|shift_reg\(62) & ((\sc0|sc1|sc0|Add0~125\) # (GND)))))
-- \sc0|sc1|sc0|Add0~127\ = CARRY((\sc4|shift_reg\(62) & (!\sc3|shift_reg\(62) & !\sc0|sc1|sc0|Add0~125\)) # (!\sc4|shift_reg\(62) & ((!\sc0|sc1|sc0|Add0~125\) # (!\sc3|shift_reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(62),
	datab => \sc3|shift_reg\(62),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~125\,
	combout => \sc0|sc1|sc0|Add0~126_combout\,
	cout => \sc0|sc1|sc0|Add0~127\);

-- Location: LCCOMB_X110_Y43_N14
\sc0|sc1|sc0|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~128_combout\ = ((\sc4|shift_reg\(63) $ (\sc3|shift_reg\(63) $ (!\sc0|sc1|sc0|Add0~127\)))) # (GND)
-- \sc0|sc1|sc0|Add0~129\ = CARRY((\sc4|shift_reg\(63) & ((\sc3|shift_reg\(63)) # (!\sc0|sc1|sc0|Add0~127\))) # (!\sc4|shift_reg\(63) & (\sc3|shift_reg\(63) & !\sc0|sc1|sc0|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(63),
	datab => \sc3|shift_reg\(63),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~127\,
	combout => \sc0|sc1|sc0|Add0~128_combout\,
	cout => \sc0|sc1|sc0|Add0~129\);

-- Location: LCCOMB_X110_Y43_N16
\sc0|sc1|sc0|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~130_combout\ = (\sc3|shift_reg\(64) & ((\sc4|shift_reg\(64) & (\sc0|sc1|sc0|Add0~129\ & VCC)) # (!\sc4|shift_reg\(64) & (!\sc0|sc1|sc0|Add0~129\)))) # (!\sc3|shift_reg\(64) & ((\sc4|shift_reg\(64) & (!\sc0|sc1|sc0|Add0~129\)) # 
-- (!\sc4|shift_reg\(64) & ((\sc0|sc1|sc0|Add0~129\) # (GND)))))
-- \sc0|sc1|sc0|Add0~131\ = CARRY((\sc3|shift_reg\(64) & (!\sc4|shift_reg\(64) & !\sc0|sc1|sc0|Add0~129\)) # (!\sc3|shift_reg\(64) & ((!\sc0|sc1|sc0|Add0~129\) # (!\sc4|shift_reg\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(64),
	datab => \sc4|shift_reg\(64),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~129\,
	combout => \sc0|sc1|sc0|Add0~130_combout\,
	cout => \sc0|sc1|sc0|Add0~131\);

-- Location: LCCOMB_X110_Y43_N18
\sc0|sc1|sc0|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~132_combout\ = ((\sc4|shift_reg\(65) $ (\sc3|shift_reg\(65) $ (!\sc0|sc1|sc0|Add0~131\)))) # (GND)
-- \sc0|sc1|sc0|Add0~133\ = CARRY((\sc4|shift_reg\(65) & ((\sc3|shift_reg\(65)) # (!\sc0|sc1|sc0|Add0~131\))) # (!\sc4|shift_reg\(65) & (\sc3|shift_reg\(65) & !\sc0|sc1|sc0|Add0~131\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(65),
	datab => \sc3|shift_reg\(65),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~131\,
	combout => \sc0|sc1|sc0|Add0~132_combout\,
	cout => \sc0|sc1|sc0|Add0~133\);

-- Location: LCCOMB_X110_Y43_N20
\sc0|sc1|sc0|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~134_combout\ = (\sc4|shift_reg\(66) & ((\sc3|shift_reg\(66) & (\sc0|sc1|sc0|Add0~133\ & VCC)) # (!\sc3|shift_reg\(66) & (!\sc0|sc1|sc0|Add0~133\)))) # (!\sc4|shift_reg\(66) & ((\sc3|shift_reg\(66) & (!\sc0|sc1|sc0|Add0~133\)) # 
-- (!\sc3|shift_reg\(66) & ((\sc0|sc1|sc0|Add0~133\) # (GND)))))
-- \sc0|sc1|sc0|Add0~135\ = CARRY((\sc4|shift_reg\(66) & (!\sc3|shift_reg\(66) & !\sc0|sc1|sc0|Add0~133\)) # (!\sc4|shift_reg\(66) & ((!\sc0|sc1|sc0|Add0~133\) # (!\sc3|shift_reg\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(66),
	datab => \sc3|shift_reg\(66),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~133\,
	combout => \sc0|sc1|sc0|Add0~134_combout\,
	cout => \sc0|sc1|sc0|Add0~135\);

-- Location: LCCOMB_X110_Y43_N22
\sc0|sc1|sc0|Add0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~136_combout\ = ((\sc3|shift_reg\(67) $ (\sc4|shift_reg\(67) $ (!\sc0|sc1|sc0|Add0~135\)))) # (GND)
-- \sc0|sc1|sc0|Add0~137\ = CARRY((\sc3|shift_reg\(67) & ((\sc4|shift_reg\(67)) # (!\sc0|sc1|sc0|Add0~135\))) # (!\sc3|shift_reg\(67) & (\sc4|shift_reg\(67) & !\sc0|sc1|sc0|Add0~135\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(67),
	datab => \sc4|shift_reg\(67),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~135\,
	combout => \sc0|sc1|sc0|Add0~136_combout\,
	cout => \sc0|sc1|sc0|Add0~137\);

-- Location: LCCOMB_X110_Y43_N24
\sc0|sc1|sc0|Add0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~138_combout\ = (\sc4|shift_reg\(68) & ((\sc3|shift_reg\(68) & (\sc0|sc1|sc0|Add0~137\ & VCC)) # (!\sc3|shift_reg\(68) & (!\sc0|sc1|sc0|Add0~137\)))) # (!\sc4|shift_reg\(68) & ((\sc3|shift_reg\(68) & (!\sc0|sc1|sc0|Add0~137\)) # 
-- (!\sc3|shift_reg\(68) & ((\sc0|sc1|sc0|Add0~137\) # (GND)))))
-- \sc0|sc1|sc0|Add0~139\ = CARRY((\sc4|shift_reg\(68) & (!\sc3|shift_reg\(68) & !\sc0|sc1|sc0|Add0~137\)) # (!\sc4|shift_reg\(68) & ((!\sc0|sc1|sc0|Add0~137\) # (!\sc3|shift_reg\(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(68),
	datab => \sc3|shift_reg\(68),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~137\,
	combout => \sc0|sc1|sc0|Add0~138_combout\,
	cout => \sc0|sc1|sc0|Add0~139\);

-- Location: LCCOMB_X110_Y43_N26
\sc0|sc1|sc0|Add0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~140_combout\ = ((\sc4|shift_reg\(69) $ (\sc3|shift_reg\(69) $ (!\sc0|sc1|sc0|Add0~139\)))) # (GND)
-- \sc0|sc1|sc0|Add0~141\ = CARRY((\sc4|shift_reg\(69) & ((\sc3|shift_reg\(69)) # (!\sc0|sc1|sc0|Add0~139\))) # (!\sc4|shift_reg\(69) & (\sc3|shift_reg\(69) & !\sc0|sc1|sc0|Add0~139\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(69),
	datab => \sc3|shift_reg\(69),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~139\,
	combout => \sc0|sc1|sc0|Add0~140_combout\,
	cout => \sc0|sc1|sc0|Add0~141\);

-- Location: LCCOMB_X110_Y43_N28
\sc0|sc1|sc0|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~142_combout\ = (\sc4|shift_reg\(70) & ((\sc3|shift_reg\(70) & (\sc0|sc1|sc0|Add0~141\ & VCC)) # (!\sc3|shift_reg\(70) & (!\sc0|sc1|sc0|Add0~141\)))) # (!\sc4|shift_reg\(70) & ((\sc3|shift_reg\(70) & (!\sc0|sc1|sc0|Add0~141\)) # 
-- (!\sc3|shift_reg\(70) & ((\sc0|sc1|sc0|Add0~141\) # (GND)))))
-- \sc0|sc1|sc0|Add0~143\ = CARRY((\sc4|shift_reg\(70) & (!\sc3|shift_reg\(70) & !\sc0|sc1|sc0|Add0~141\)) # (!\sc4|shift_reg\(70) & ((!\sc0|sc1|sc0|Add0~141\) # (!\sc3|shift_reg\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(70),
	datab => \sc3|shift_reg\(70),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~141\,
	combout => \sc0|sc1|sc0|Add0~142_combout\,
	cout => \sc0|sc1|sc0|Add0~143\);

-- Location: LCCOMB_X110_Y43_N30
\sc0|sc1|sc0|Add0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~144_combout\ = ((\sc4|shift_reg\(71) $ (\sc3|shift_reg\(71) $ (!\sc0|sc1|sc0|Add0~143\)))) # (GND)
-- \sc0|sc1|sc0|Add0~145\ = CARRY((\sc4|shift_reg\(71) & ((\sc3|shift_reg\(71)) # (!\sc0|sc1|sc0|Add0~143\))) # (!\sc4|shift_reg\(71) & (\sc3|shift_reg\(71) & !\sc0|sc1|sc0|Add0~143\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(71),
	datab => \sc3|shift_reg\(71),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~143\,
	combout => \sc0|sc1|sc0|Add0~144_combout\,
	cout => \sc0|sc1|sc0|Add0~145\);

-- Location: LCCOMB_X110_Y42_N0
\sc0|sc1|sc0|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~146_combout\ = (\sc3|shift_reg\(72) & ((\sc4|shift_reg\(72) & (\sc0|sc1|sc0|Add0~145\ & VCC)) # (!\sc4|shift_reg\(72) & (!\sc0|sc1|sc0|Add0~145\)))) # (!\sc3|shift_reg\(72) & ((\sc4|shift_reg\(72) & (!\sc0|sc1|sc0|Add0~145\)) # 
-- (!\sc4|shift_reg\(72) & ((\sc0|sc1|sc0|Add0~145\) # (GND)))))
-- \sc0|sc1|sc0|Add0~147\ = CARRY((\sc3|shift_reg\(72) & (!\sc4|shift_reg\(72) & !\sc0|sc1|sc0|Add0~145\)) # (!\sc3|shift_reg\(72) & ((!\sc0|sc1|sc0|Add0~145\) # (!\sc4|shift_reg\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(72),
	datab => \sc4|shift_reg\(72),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~145\,
	combout => \sc0|sc1|sc0|Add0~146_combout\,
	cout => \sc0|sc1|sc0|Add0~147\);

-- Location: LCCOMB_X110_Y42_N2
\sc0|sc1|sc0|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~148_combout\ = ((\sc4|shift_reg\(73) $ (\sc3|shift_reg\(73) $ (!\sc0|sc1|sc0|Add0~147\)))) # (GND)
-- \sc0|sc1|sc0|Add0~149\ = CARRY((\sc4|shift_reg\(73) & ((\sc3|shift_reg\(73)) # (!\sc0|sc1|sc0|Add0~147\))) # (!\sc4|shift_reg\(73) & (\sc3|shift_reg\(73) & !\sc0|sc1|sc0|Add0~147\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(73),
	datab => \sc3|shift_reg\(73),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~147\,
	combout => \sc0|sc1|sc0|Add0~148_combout\,
	cout => \sc0|sc1|sc0|Add0~149\);

-- Location: LCCOMB_X110_Y42_N4
\sc0|sc1|sc0|Add0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~150_combout\ = (\sc3|shift_reg\(74) & ((\sc4|shift_reg\(74) & (\sc0|sc1|sc0|Add0~149\ & VCC)) # (!\sc4|shift_reg\(74) & (!\sc0|sc1|sc0|Add0~149\)))) # (!\sc3|shift_reg\(74) & ((\sc4|shift_reg\(74) & (!\sc0|sc1|sc0|Add0~149\)) # 
-- (!\sc4|shift_reg\(74) & ((\sc0|sc1|sc0|Add0~149\) # (GND)))))
-- \sc0|sc1|sc0|Add0~151\ = CARRY((\sc3|shift_reg\(74) & (!\sc4|shift_reg\(74) & !\sc0|sc1|sc0|Add0~149\)) # (!\sc3|shift_reg\(74) & ((!\sc0|sc1|sc0|Add0~149\) # (!\sc4|shift_reg\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(74),
	datab => \sc4|shift_reg\(74),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~149\,
	combout => \sc0|sc1|sc0|Add0~150_combout\,
	cout => \sc0|sc1|sc0|Add0~151\);

-- Location: LCCOMB_X110_Y42_N6
\sc0|sc1|sc0|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~152_combout\ = ((\sc3|shift_reg\(75) $ (\sc4|shift_reg\(75) $ (!\sc0|sc1|sc0|Add0~151\)))) # (GND)
-- \sc0|sc1|sc0|Add0~153\ = CARRY((\sc3|shift_reg\(75) & ((\sc4|shift_reg\(75)) # (!\sc0|sc1|sc0|Add0~151\))) # (!\sc3|shift_reg\(75) & (\sc4|shift_reg\(75) & !\sc0|sc1|sc0|Add0~151\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(75),
	datab => \sc4|shift_reg\(75),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~151\,
	combout => \sc0|sc1|sc0|Add0~152_combout\,
	cout => \sc0|sc1|sc0|Add0~153\);

-- Location: LCCOMB_X110_Y42_N8
\sc0|sc1|sc0|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~154_combout\ = (\sc4|shift_reg\(76) & ((\sc3|shift_reg\(76) & (\sc0|sc1|sc0|Add0~153\ & VCC)) # (!\sc3|shift_reg\(76) & (!\sc0|sc1|sc0|Add0~153\)))) # (!\sc4|shift_reg\(76) & ((\sc3|shift_reg\(76) & (!\sc0|sc1|sc0|Add0~153\)) # 
-- (!\sc3|shift_reg\(76) & ((\sc0|sc1|sc0|Add0~153\) # (GND)))))
-- \sc0|sc1|sc0|Add0~155\ = CARRY((\sc4|shift_reg\(76) & (!\sc3|shift_reg\(76) & !\sc0|sc1|sc0|Add0~153\)) # (!\sc4|shift_reg\(76) & ((!\sc0|sc1|sc0|Add0~153\) # (!\sc3|shift_reg\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(76),
	datab => \sc3|shift_reg\(76),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~153\,
	combout => \sc0|sc1|sc0|Add0~154_combout\,
	cout => \sc0|sc1|sc0|Add0~155\);

-- Location: LCCOMB_X110_Y42_N10
\sc0|sc1|sc0|Add0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~156_combout\ = ((\sc3|shift_reg\(77) $ (\sc4|shift_reg\(77) $ (!\sc0|sc1|sc0|Add0~155\)))) # (GND)
-- \sc0|sc1|sc0|Add0~157\ = CARRY((\sc3|shift_reg\(77) & ((\sc4|shift_reg\(77)) # (!\sc0|sc1|sc0|Add0~155\))) # (!\sc3|shift_reg\(77) & (\sc4|shift_reg\(77) & !\sc0|sc1|sc0|Add0~155\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(77),
	datab => \sc4|shift_reg\(77),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~155\,
	combout => \sc0|sc1|sc0|Add0~156_combout\,
	cout => \sc0|sc1|sc0|Add0~157\);

-- Location: LCCOMB_X110_Y42_N12
\sc0|sc1|sc0|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~158_combout\ = (\sc3|shift_reg\(78) & ((\sc4|shift_reg\(78) & (\sc0|sc1|sc0|Add0~157\ & VCC)) # (!\sc4|shift_reg\(78) & (!\sc0|sc1|sc0|Add0~157\)))) # (!\sc3|shift_reg\(78) & ((\sc4|shift_reg\(78) & (!\sc0|sc1|sc0|Add0~157\)) # 
-- (!\sc4|shift_reg\(78) & ((\sc0|sc1|sc0|Add0~157\) # (GND)))))
-- \sc0|sc1|sc0|Add0~159\ = CARRY((\sc3|shift_reg\(78) & (!\sc4|shift_reg\(78) & !\sc0|sc1|sc0|Add0~157\)) # (!\sc3|shift_reg\(78) & ((!\sc0|sc1|sc0|Add0~157\) # (!\sc4|shift_reg\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(78),
	datab => \sc4|shift_reg\(78),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~157\,
	combout => \sc0|sc1|sc0|Add0~158_combout\,
	cout => \sc0|sc1|sc0|Add0~159\);

-- Location: LCCOMB_X110_Y42_N14
\sc0|sc1|sc0|Add0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~160_combout\ = ((\sc3|shift_reg\(79) $ (\sc4|shift_reg\(79) $ (!\sc0|sc1|sc0|Add0~159\)))) # (GND)
-- \sc0|sc1|sc0|Add0~161\ = CARRY((\sc3|shift_reg\(79) & ((\sc4|shift_reg\(79)) # (!\sc0|sc1|sc0|Add0~159\))) # (!\sc3|shift_reg\(79) & (\sc4|shift_reg\(79) & !\sc0|sc1|sc0|Add0~159\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(79),
	datab => \sc4|shift_reg\(79),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~159\,
	combout => \sc0|sc1|sc0|Add0~160_combout\,
	cout => \sc0|sc1|sc0|Add0~161\);

-- Location: LCCOMB_X110_Y42_N16
\sc0|sc1|sc0|Add0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~162_combout\ = (\sc3|shift_reg\(80) & ((\sc4|shift_reg\(80) & (\sc0|sc1|sc0|Add0~161\ & VCC)) # (!\sc4|shift_reg\(80) & (!\sc0|sc1|sc0|Add0~161\)))) # (!\sc3|shift_reg\(80) & ((\sc4|shift_reg\(80) & (!\sc0|sc1|sc0|Add0~161\)) # 
-- (!\sc4|shift_reg\(80) & ((\sc0|sc1|sc0|Add0~161\) # (GND)))))
-- \sc0|sc1|sc0|Add0~163\ = CARRY((\sc3|shift_reg\(80) & (!\sc4|shift_reg\(80) & !\sc0|sc1|sc0|Add0~161\)) # (!\sc3|shift_reg\(80) & ((!\sc0|sc1|sc0|Add0~161\) # (!\sc4|shift_reg\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(80),
	datab => \sc4|shift_reg\(80),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~161\,
	combout => \sc0|sc1|sc0|Add0~162_combout\,
	cout => \sc0|sc1|sc0|Add0~163\);

-- Location: LCCOMB_X110_Y42_N18
\sc0|sc1|sc0|Add0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~164_combout\ = ((\sc4|shift_reg\(81) $ (\sc3|shift_reg\(81) $ (!\sc0|sc1|sc0|Add0~163\)))) # (GND)
-- \sc0|sc1|sc0|Add0~165\ = CARRY((\sc4|shift_reg\(81) & ((\sc3|shift_reg\(81)) # (!\sc0|sc1|sc0|Add0~163\))) # (!\sc4|shift_reg\(81) & (\sc3|shift_reg\(81) & !\sc0|sc1|sc0|Add0~163\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(81),
	datab => \sc3|shift_reg\(81),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~163\,
	combout => \sc0|sc1|sc0|Add0~164_combout\,
	cout => \sc0|sc1|sc0|Add0~165\);

-- Location: LCCOMB_X110_Y42_N20
\sc0|sc1|sc0|Add0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~166_combout\ = (\sc3|shift_reg\(82) & ((\sc4|shift_reg\(82) & (\sc0|sc1|sc0|Add0~165\ & VCC)) # (!\sc4|shift_reg\(82) & (!\sc0|sc1|sc0|Add0~165\)))) # (!\sc3|shift_reg\(82) & ((\sc4|shift_reg\(82) & (!\sc0|sc1|sc0|Add0~165\)) # 
-- (!\sc4|shift_reg\(82) & ((\sc0|sc1|sc0|Add0~165\) # (GND)))))
-- \sc0|sc1|sc0|Add0~167\ = CARRY((\sc3|shift_reg\(82) & (!\sc4|shift_reg\(82) & !\sc0|sc1|sc0|Add0~165\)) # (!\sc3|shift_reg\(82) & ((!\sc0|sc1|sc0|Add0~165\) # (!\sc4|shift_reg\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(82),
	datab => \sc4|shift_reg\(82),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~165\,
	combout => \sc0|sc1|sc0|Add0~166_combout\,
	cout => \sc0|sc1|sc0|Add0~167\);

-- Location: LCCOMB_X110_Y42_N22
\sc0|sc1|sc0|Add0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~168_combout\ = ((\sc3|shift_reg\(83) $ (\sc4|shift_reg\(83) $ (!\sc0|sc1|sc0|Add0~167\)))) # (GND)
-- \sc0|sc1|sc0|Add0~169\ = CARRY((\sc3|shift_reg\(83) & ((\sc4|shift_reg\(83)) # (!\sc0|sc1|sc0|Add0~167\))) # (!\sc3|shift_reg\(83) & (\sc4|shift_reg\(83) & !\sc0|sc1|sc0|Add0~167\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(83),
	datab => \sc4|shift_reg\(83),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~167\,
	combout => \sc0|sc1|sc0|Add0~168_combout\,
	cout => \sc0|sc1|sc0|Add0~169\);

-- Location: LCCOMB_X110_Y42_N24
\sc0|sc1|sc0|Add0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~170_combout\ = (\sc3|shift_reg\(84) & ((\sc4|shift_reg\(84) & (\sc0|sc1|sc0|Add0~169\ & VCC)) # (!\sc4|shift_reg\(84) & (!\sc0|sc1|sc0|Add0~169\)))) # (!\sc3|shift_reg\(84) & ((\sc4|shift_reg\(84) & (!\sc0|sc1|sc0|Add0~169\)) # 
-- (!\sc4|shift_reg\(84) & ((\sc0|sc1|sc0|Add0~169\) # (GND)))))
-- \sc0|sc1|sc0|Add0~171\ = CARRY((\sc3|shift_reg\(84) & (!\sc4|shift_reg\(84) & !\sc0|sc1|sc0|Add0~169\)) # (!\sc3|shift_reg\(84) & ((!\sc0|sc1|sc0|Add0~169\) # (!\sc4|shift_reg\(84)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(84),
	datab => \sc4|shift_reg\(84),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~169\,
	combout => \sc0|sc1|sc0|Add0~170_combout\,
	cout => \sc0|sc1|sc0|Add0~171\);

-- Location: LCCOMB_X110_Y42_N26
\sc0|sc1|sc0|Add0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~172_combout\ = ((\sc3|shift_reg\(85) $ (\sc4|shift_reg\(85) $ (!\sc0|sc1|sc0|Add0~171\)))) # (GND)
-- \sc0|sc1|sc0|Add0~173\ = CARRY((\sc3|shift_reg\(85) & ((\sc4|shift_reg\(85)) # (!\sc0|sc1|sc0|Add0~171\))) # (!\sc3|shift_reg\(85) & (\sc4|shift_reg\(85) & !\sc0|sc1|sc0|Add0~171\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(85),
	datab => \sc4|shift_reg\(85),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~171\,
	combout => \sc0|sc1|sc0|Add0~172_combout\,
	cout => \sc0|sc1|sc0|Add0~173\);

-- Location: LCCOMB_X110_Y42_N28
\sc0|sc1|sc0|Add0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~174_combout\ = (\sc4|shift_reg\(86) & ((\sc3|shift_reg\(86) & (\sc0|sc1|sc0|Add0~173\ & VCC)) # (!\sc3|shift_reg\(86) & (!\sc0|sc1|sc0|Add0~173\)))) # (!\sc4|shift_reg\(86) & ((\sc3|shift_reg\(86) & (!\sc0|sc1|sc0|Add0~173\)) # 
-- (!\sc3|shift_reg\(86) & ((\sc0|sc1|sc0|Add0~173\) # (GND)))))
-- \sc0|sc1|sc0|Add0~175\ = CARRY((\sc4|shift_reg\(86) & (!\sc3|shift_reg\(86) & !\sc0|sc1|sc0|Add0~173\)) # (!\sc4|shift_reg\(86) & ((!\sc0|sc1|sc0|Add0~173\) # (!\sc3|shift_reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(86),
	datab => \sc3|shift_reg\(86),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~173\,
	combout => \sc0|sc1|sc0|Add0~174_combout\,
	cout => \sc0|sc1|sc0|Add0~175\);

-- Location: LCCOMB_X110_Y42_N30
\sc0|sc1|sc0|Add0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~176_combout\ = ((\sc3|shift_reg\(87) $ (\sc4|shift_reg\(87) $ (!\sc0|sc1|sc0|Add0~175\)))) # (GND)
-- \sc0|sc1|sc0|Add0~177\ = CARRY((\sc3|shift_reg\(87) & ((\sc4|shift_reg\(87)) # (!\sc0|sc1|sc0|Add0~175\))) # (!\sc3|shift_reg\(87) & (\sc4|shift_reg\(87) & !\sc0|sc1|sc0|Add0~175\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(87),
	datab => \sc4|shift_reg\(87),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~175\,
	combout => \sc0|sc1|sc0|Add0~176_combout\,
	cout => \sc0|sc1|sc0|Add0~177\);

-- Location: LCCOMB_X110_Y41_N0
\sc0|sc1|sc0|Add0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~178_combout\ = (\sc3|shift_reg\(88) & ((\sc4|shift_reg\(88) & (\sc0|sc1|sc0|Add0~177\ & VCC)) # (!\sc4|shift_reg\(88) & (!\sc0|sc1|sc0|Add0~177\)))) # (!\sc3|shift_reg\(88) & ((\sc4|shift_reg\(88) & (!\sc0|sc1|sc0|Add0~177\)) # 
-- (!\sc4|shift_reg\(88) & ((\sc0|sc1|sc0|Add0~177\) # (GND)))))
-- \sc0|sc1|sc0|Add0~179\ = CARRY((\sc3|shift_reg\(88) & (!\sc4|shift_reg\(88) & !\sc0|sc1|sc0|Add0~177\)) # (!\sc3|shift_reg\(88) & ((!\sc0|sc1|sc0|Add0~177\) # (!\sc4|shift_reg\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(88),
	datab => \sc4|shift_reg\(88),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~177\,
	combout => \sc0|sc1|sc0|Add0~178_combout\,
	cout => \sc0|sc1|sc0|Add0~179\);

-- Location: LCCOMB_X110_Y41_N2
\sc0|sc1|sc0|Add0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~180_combout\ = ((\sc4|shift_reg\(89) $ (\sc3|shift_reg\(89) $ (!\sc0|sc1|sc0|Add0~179\)))) # (GND)
-- \sc0|sc1|sc0|Add0~181\ = CARRY((\sc4|shift_reg\(89) & ((\sc3|shift_reg\(89)) # (!\sc0|sc1|sc0|Add0~179\))) # (!\sc4|shift_reg\(89) & (\sc3|shift_reg\(89) & !\sc0|sc1|sc0|Add0~179\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(89),
	datab => \sc3|shift_reg\(89),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~179\,
	combout => \sc0|sc1|sc0|Add0~180_combout\,
	cout => \sc0|sc1|sc0|Add0~181\);

-- Location: LCCOMB_X110_Y41_N4
\sc0|sc1|sc0|Add0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~182_combout\ = (\sc4|shift_reg\(90) & ((\sc3|shift_reg\(90) & (\sc0|sc1|sc0|Add0~181\ & VCC)) # (!\sc3|shift_reg\(90) & (!\sc0|sc1|sc0|Add0~181\)))) # (!\sc4|shift_reg\(90) & ((\sc3|shift_reg\(90) & (!\sc0|sc1|sc0|Add0~181\)) # 
-- (!\sc3|shift_reg\(90) & ((\sc0|sc1|sc0|Add0~181\) # (GND)))))
-- \sc0|sc1|sc0|Add0~183\ = CARRY((\sc4|shift_reg\(90) & (!\sc3|shift_reg\(90) & !\sc0|sc1|sc0|Add0~181\)) # (!\sc4|shift_reg\(90) & ((!\sc0|sc1|sc0|Add0~181\) # (!\sc3|shift_reg\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(90),
	datab => \sc3|shift_reg\(90),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~181\,
	combout => \sc0|sc1|sc0|Add0~182_combout\,
	cout => \sc0|sc1|sc0|Add0~183\);

-- Location: LCCOMB_X110_Y41_N6
\sc0|sc1|sc0|Add0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~184_combout\ = ((\sc4|shift_reg\(91) $ (\sc3|shift_reg\(91) $ (!\sc0|sc1|sc0|Add0~183\)))) # (GND)
-- \sc0|sc1|sc0|Add0~185\ = CARRY((\sc4|shift_reg\(91) & ((\sc3|shift_reg\(91)) # (!\sc0|sc1|sc0|Add0~183\))) # (!\sc4|shift_reg\(91) & (\sc3|shift_reg\(91) & !\sc0|sc1|sc0|Add0~183\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(91),
	datab => \sc3|shift_reg\(91),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~183\,
	combout => \sc0|sc1|sc0|Add0~184_combout\,
	cout => \sc0|sc1|sc0|Add0~185\);

-- Location: LCCOMB_X110_Y41_N8
\sc0|sc1|sc0|Add0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~186_combout\ = (\sc4|shift_reg\(92) & ((\sc3|shift_reg\(92) & (\sc0|sc1|sc0|Add0~185\ & VCC)) # (!\sc3|shift_reg\(92) & (!\sc0|sc1|sc0|Add0~185\)))) # (!\sc4|shift_reg\(92) & ((\sc3|shift_reg\(92) & (!\sc0|sc1|sc0|Add0~185\)) # 
-- (!\sc3|shift_reg\(92) & ((\sc0|sc1|sc0|Add0~185\) # (GND)))))
-- \sc0|sc1|sc0|Add0~187\ = CARRY((\sc4|shift_reg\(92) & (!\sc3|shift_reg\(92) & !\sc0|sc1|sc0|Add0~185\)) # (!\sc4|shift_reg\(92) & ((!\sc0|sc1|sc0|Add0~185\) # (!\sc3|shift_reg\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(92),
	datab => \sc3|shift_reg\(92),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~185\,
	combout => \sc0|sc1|sc0|Add0~186_combout\,
	cout => \sc0|sc1|sc0|Add0~187\);

-- Location: LCCOMB_X110_Y41_N10
\sc0|sc1|sc0|Add0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~188_combout\ = ((\sc4|shift_reg\(93) $ (\sc3|shift_reg\(93) $ (!\sc0|sc1|sc0|Add0~187\)))) # (GND)
-- \sc0|sc1|sc0|Add0~189\ = CARRY((\sc4|shift_reg\(93) & ((\sc3|shift_reg\(93)) # (!\sc0|sc1|sc0|Add0~187\))) # (!\sc4|shift_reg\(93) & (\sc3|shift_reg\(93) & !\sc0|sc1|sc0|Add0~187\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(93),
	datab => \sc3|shift_reg\(93),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~187\,
	combout => \sc0|sc1|sc0|Add0~188_combout\,
	cout => \sc0|sc1|sc0|Add0~189\);

-- Location: LCCOMB_X110_Y41_N12
\sc0|sc1|sc0|Add0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~190_combout\ = (\sc3|shift_reg\(94) & ((\sc4|shift_reg\(94) & (\sc0|sc1|sc0|Add0~189\ & VCC)) # (!\sc4|shift_reg\(94) & (!\sc0|sc1|sc0|Add0~189\)))) # (!\sc3|shift_reg\(94) & ((\sc4|shift_reg\(94) & (!\sc0|sc1|sc0|Add0~189\)) # 
-- (!\sc4|shift_reg\(94) & ((\sc0|sc1|sc0|Add0~189\) # (GND)))))
-- \sc0|sc1|sc0|Add0~191\ = CARRY((\sc3|shift_reg\(94) & (!\sc4|shift_reg\(94) & !\sc0|sc1|sc0|Add0~189\)) # (!\sc3|shift_reg\(94) & ((!\sc0|sc1|sc0|Add0~189\) # (!\sc4|shift_reg\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(94),
	datab => \sc4|shift_reg\(94),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~189\,
	combout => \sc0|sc1|sc0|Add0~190_combout\,
	cout => \sc0|sc1|sc0|Add0~191\);

-- Location: LCCOMB_X110_Y41_N14
\sc0|sc1|sc0|Add0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~192_combout\ = ((\sc4|shift_reg\(95) $ (\sc3|shift_reg\(95) $ (!\sc0|sc1|sc0|Add0~191\)))) # (GND)
-- \sc0|sc1|sc0|Add0~193\ = CARRY((\sc4|shift_reg\(95) & ((\sc3|shift_reg\(95)) # (!\sc0|sc1|sc0|Add0~191\))) # (!\sc4|shift_reg\(95) & (\sc3|shift_reg\(95) & !\sc0|sc1|sc0|Add0~191\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(95),
	datab => \sc3|shift_reg\(95),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~191\,
	combout => \sc0|sc1|sc0|Add0~192_combout\,
	cout => \sc0|sc1|sc0|Add0~193\);

-- Location: LCCOMB_X110_Y41_N16
\sc0|sc1|sc0|Add0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~194_combout\ = (\sc4|shift_reg\(96) & ((\sc3|shift_reg\(96) & (\sc0|sc1|sc0|Add0~193\ & VCC)) # (!\sc3|shift_reg\(96) & (!\sc0|sc1|sc0|Add0~193\)))) # (!\sc4|shift_reg\(96) & ((\sc3|shift_reg\(96) & (!\sc0|sc1|sc0|Add0~193\)) # 
-- (!\sc3|shift_reg\(96) & ((\sc0|sc1|sc0|Add0~193\) # (GND)))))
-- \sc0|sc1|sc0|Add0~195\ = CARRY((\sc4|shift_reg\(96) & (!\sc3|shift_reg\(96) & !\sc0|sc1|sc0|Add0~193\)) # (!\sc4|shift_reg\(96) & ((!\sc0|sc1|sc0|Add0~193\) # (!\sc3|shift_reg\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(96),
	datab => \sc3|shift_reg\(96),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~193\,
	combout => \sc0|sc1|sc0|Add0~194_combout\,
	cout => \sc0|sc1|sc0|Add0~195\);

-- Location: LCCOMB_X110_Y41_N18
\sc0|sc1|sc0|Add0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~196_combout\ = ((\sc4|shift_reg\(97) $ (\sc3|shift_reg\(97) $ (!\sc0|sc1|sc0|Add0~195\)))) # (GND)
-- \sc0|sc1|sc0|Add0~197\ = CARRY((\sc4|shift_reg\(97) & ((\sc3|shift_reg\(97)) # (!\sc0|sc1|sc0|Add0~195\))) # (!\sc4|shift_reg\(97) & (\sc3|shift_reg\(97) & !\sc0|sc1|sc0|Add0~195\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(97),
	datab => \sc3|shift_reg\(97),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~195\,
	combout => \sc0|sc1|sc0|Add0~196_combout\,
	cout => \sc0|sc1|sc0|Add0~197\);

-- Location: LCCOMB_X110_Y41_N20
\sc0|sc1|sc0|Add0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~198_combout\ = (\sc4|shift_reg\(98) & ((\sc3|shift_reg\(98) & (\sc0|sc1|sc0|Add0~197\ & VCC)) # (!\sc3|shift_reg\(98) & (!\sc0|sc1|sc0|Add0~197\)))) # (!\sc4|shift_reg\(98) & ((\sc3|shift_reg\(98) & (!\sc0|sc1|sc0|Add0~197\)) # 
-- (!\sc3|shift_reg\(98) & ((\sc0|sc1|sc0|Add0~197\) # (GND)))))
-- \sc0|sc1|sc0|Add0~199\ = CARRY((\sc4|shift_reg\(98) & (!\sc3|shift_reg\(98) & !\sc0|sc1|sc0|Add0~197\)) # (!\sc4|shift_reg\(98) & ((!\sc0|sc1|sc0|Add0~197\) # (!\sc3|shift_reg\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(98),
	datab => \sc3|shift_reg\(98),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~197\,
	combout => \sc0|sc1|sc0|Add0~198_combout\,
	cout => \sc0|sc1|sc0|Add0~199\);

-- Location: LCCOMB_X110_Y41_N22
\sc0|sc1|sc0|Add0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~200_combout\ = ((\sc4|shift_reg\(99) $ (\sc3|shift_reg\(99) $ (!\sc0|sc1|sc0|Add0~199\)))) # (GND)
-- \sc0|sc1|sc0|Add0~201\ = CARRY((\sc4|shift_reg\(99) & ((\sc3|shift_reg\(99)) # (!\sc0|sc1|sc0|Add0~199\))) # (!\sc4|shift_reg\(99) & (\sc3|shift_reg\(99) & !\sc0|sc1|sc0|Add0~199\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(99),
	datab => \sc3|shift_reg\(99),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~199\,
	combout => \sc0|sc1|sc0|Add0~200_combout\,
	cout => \sc0|sc1|sc0|Add0~201\);

-- Location: LCCOMB_X110_Y41_N24
\sc0|sc1|sc0|Add0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~202_combout\ = (\sc4|shift_reg\(100) & ((\sc3|shift_reg\(100) & (\sc0|sc1|sc0|Add0~201\ & VCC)) # (!\sc3|shift_reg\(100) & (!\sc0|sc1|sc0|Add0~201\)))) # (!\sc4|shift_reg\(100) & ((\sc3|shift_reg\(100) & (!\sc0|sc1|sc0|Add0~201\)) # 
-- (!\sc3|shift_reg\(100) & ((\sc0|sc1|sc0|Add0~201\) # (GND)))))
-- \sc0|sc1|sc0|Add0~203\ = CARRY((\sc4|shift_reg\(100) & (!\sc3|shift_reg\(100) & !\sc0|sc1|sc0|Add0~201\)) # (!\sc4|shift_reg\(100) & ((!\sc0|sc1|sc0|Add0~201\) # (!\sc3|shift_reg\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(100),
	datab => \sc3|shift_reg\(100),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~201\,
	combout => \sc0|sc1|sc0|Add0~202_combout\,
	cout => \sc0|sc1|sc0|Add0~203\);

-- Location: LCCOMB_X110_Y41_N26
\sc0|sc1|sc0|Add0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~204_combout\ = ((\sc3|shift_reg\(101) $ (\sc4|shift_reg\(101) $ (!\sc0|sc1|sc0|Add0~203\)))) # (GND)
-- \sc0|sc1|sc0|Add0~205\ = CARRY((\sc3|shift_reg\(101) & ((\sc4|shift_reg\(101)) # (!\sc0|sc1|sc0|Add0~203\))) # (!\sc3|shift_reg\(101) & (\sc4|shift_reg\(101) & !\sc0|sc1|sc0|Add0~203\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(101),
	datab => \sc4|shift_reg\(101),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~203\,
	combout => \sc0|sc1|sc0|Add0~204_combout\,
	cout => \sc0|sc1|sc0|Add0~205\);

-- Location: LCCOMB_X110_Y41_N28
\sc0|sc1|sc0|Add0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~206_combout\ = (\sc4|shift_reg\(102) & ((\sc3|shift_reg\(102) & (\sc0|sc1|sc0|Add0~205\ & VCC)) # (!\sc3|shift_reg\(102) & (!\sc0|sc1|sc0|Add0~205\)))) # (!\sc4|shift_reg\(102) & ((\sc3|shift_reg\(102) & (!\sc0|sc1|sc0|Add0~205\)) # 
-- (!\sc3|shift_reg\(102) & ((\sc0|sc1|sc0|Add0~205\) # (GND)))))
-- \sc0|sc1|sc0|Add0~207\ = CARRY((\sc4|shift_reg\(102) & (!\sc3|shift_reg\(102) & !\sc0|sc1|sc0|Add0~205\)) # (!\sc4|shift_reg\(102) & ((!\sc0|sc1|sc0|Add0~205\) # (!\sc3|shift_reg\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(102),
	datab => \sc3|shift_reg\(102),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~205\,
	combout => \sc0|sc1|sc0|Add0~206_combout\,
	cout => \sc0|sc1|sc0|Add0~207\);

-- Location: LCCOMB_X110_Y41_N30
\sc0|sc1|sc0|Add0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~208_combout\ = ((\sc4|shift_reg\(103) $ (\sc3|shift_reg\(103) $ (!\sc0|sc1|sc0|Add0~207\)))) # (GND)
-- \sc0|sc1|sc0|Add0~209\ = CARRY((\sc4|shift_reg\(103) & ((\sc3|shift_reg\(103)) # (!\sc0|sc1|sc0|Add0~207\))) # (!\sc4|shift_reg\(103) & (\sc3|shift_reg\(103) & !\sc0|sc1|sc0|Add0~207\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(103),
	datab => \sc3|shift_reg\(103),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~207\,
	combout => \sc0|sc1|sc0|Add0~208_combout\,
	cout => \sc0|sc1|sc0|Add0~209\);

-- Location: LCCOMB_X110_Y40_N0
\sc0|sc1|sc0|Add0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~210_combout\ = (\sc4|shift_reg\(104) & ((\sc3|shift_reg\(104) & (\sc0|sc1|sc0|Add0~209\ & VCC)) # (!\sc3|shift_reg\(104) & (!\sc0|sc1|sc0|Add0~209\)))) # (!\sc4|shift_reg\(104) & ((\sc3|shift_reg\(104) & (!\sc0|sc1|sc0|Add0~209\)) # 
-- (!\sc3|shift_reg\(104) & ((\sc0|sc1|sc0|Add0~209\) # (GND)))))
-- \sc0|sc1|sc0|Add0~211\ = CARRY((\sc4|shift_reg\(104) & (!\sc3|shift_reg\(104) & !\sc0|sc1|sc0|Add0~209\)) # (!\sc4|shift_reg\(104) & ((!\sc0|sc1|sc0|Add0~209\) # (!\sc3|shift_reg\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(104),
	datab => \sc3|shift_reg\(104),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~209\,
	combout => \sc0|sc1|sc0|Add0~210_combout\,
	cout => \sc0|sc1|sc0|Add0~211\);

-- Location: LCCOMB_X110_Y40_N2
\sc0|sc1|sc0|Add0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~212_combout\ = ((\sc4|shift_reg\(105) $ (\sc3|shift_reg\(105) $ (!\sc0|sc1|sc0|Add0~211\)))) # (GND)
-- \sc0|sc1|sc0|Add0~213\ = CARRY((\sc4|shift_reg\(105) & ((\sc3|shift_reg\(105)) # (!\sc0|sc1|sc0|Add0~211\))) # (!\sc4|shift_reg\(105) & (\sc3|shift_reg\(105) & !\sc0|sc1|sc0|Add0~211\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(105),
	datab => \sc3|shift_reg\(105),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~211\,
	combout => \sc0|sc1|sc0|Add0~212_combout\,
	cout => \sc0|sc1|sc0|Add0~213\);

-- Location: LCCOMB_X110_Y40_N4
\sc0|sc1|sc0|Add0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~214_combout\ = (\sc3|shift_reg\(106) & ((\sc4|shift_reg\(106) & (\sc0|sc1|sc0|Add0~213\ & VCC)) # (!\sc4|shift_reg\(106) & (!\sc0|sc1|sc0|Add0~213\)))) # (!\sc3|shift_reg\(106) & ((\sc4|shift_reg\(106) & (!\sc0|sc1|sc0|Add0~213\)) # 
-- (!\sc4|shift_reg\(106) & ((\sc0|sc1|sc0|Add0~213\) # (GND)))))
-- \sc0|sc1|sc0|Add0~215\ = CARRY((\sc3|shift_reg\(106) & (!\sc4|shift_reg\(106) & !\sc0|sc1|sc0|Add0~213\)) # (!\sc3|shift_reg\(106) & ((!\sc0|sc1|sc0|Add0~213\) # (!\sc4|shift_reg\(106)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(106),
	datab => \sc4|shift_reg\(106),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~213\,
	combout => \sc0|sc1|sc0|Add0~214_combout\,
	cout => \sc0|sc1|sc0|Add0~215\);

-- Location: LCCOMB_X110_Y40_N6
\sc0|sc1|sc0|Add0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~216_combout\ = ((\sc4|shift_reg\(107) $ (\sc3|shift_reg\(107) $ (!\sc0|sc1|sc0|Add0~215\)))) # (GND)
-- \sc0|sc1|sc0|Add0~217\ = CARRY((\sc4|shift_reg\(107) & ((\sc3|shift_reg\(107)) # (!\sc0|sc1|sc0|Add0~215\))) # (!\sc4|shift_reg\(107) & (\sc3|shift_reg\(107) & !\sc0|sc1|sc0|Add0~215\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(107),
	datab => \sc3|shift_reg\(107),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~215\,
	combout => \sc0|sc1|sc0|Add0~216_combout\,
	cout => \sc0|sc1|sc0|Add0~217\);

-- Location: LCCOMB_X110_Y40_N8
\sc0|sc1|sc0|Add0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~218_combout\ = (\sc4|shift_reg\(108) & ((\sc3|shift_reg\(108) & (\sc0|sc1|sc0|Add0~217\ & VCC)) # (!\sc3|shift_reg\(108) & (!\sc0|sc1|sc0|Add0~217\)))) # (!\sc4|shift_reg\(108) & ((\sc3|shift_reg\(108) & (!\sc0|sc1|sc0|Add0~217\)) # 
-- (!\sc3|shift_reg\(108) & ((\sc0|sc1|sc0|Add0~217\) # (GND)))))
-- \sc0|sc1|sc0|Add0~219\ = CARRY((\sc4|shift_reg\(108) & (!\sc3|shift_reg\(108) & !\sc0|sc1|sc0|Add0~217\)) # (!\sc4|shift_reg\(108) & ((!\sc0|sc1|sc0|Add0~217\) # (!\sc3|shift_reg\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(108),
	datab => \sc3|shift_reg\(108),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~217\,
	combout => \sc0|sc1|sc0|Add0~218_combout\,
	cout => \sc0|sc1|sc0|Add0~219\);

-- Location: LCCOMB_X110_Y40_N10
\sc0|sc1|sc0|Add0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~220_combout\ = ((\sc4|shift_reg\(109) $ (\sc3|shift_reg\(109) $ (!\sc0|sc1|sc0|Add0~219\)))) # (GND)
-- \sc0|sc1|sc0|Add0~221\ = CARRY((\sc4|shift_reg\(109) & ((\sc3|shift_reg\(109)) # (!\sc0|sc1|sc0|Add0~219\))) # (!\sc4|shift_reg\(109) & (\sc3|shift_reg\(109) & !\sc0|sc1|sc0|Add0~219\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(109),
	datab => \sc3|shift_reg\(109),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~219\,
	combout => \sc0|sc1|sc0|Add0~220_combout\,
	cout => \sc0|sc1|sc0|Add0~221\);

-- Location: LCCOMB_X110_Y40_N12
\sc0|sc1|sc0|Add0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~222_combout\ = (\sc4|shift_reg\(110) & ((\sc3|shift_reg\(110) & (\sc0|sc1|sc0|Add0~221\ & VCC)) # (!\sc3|shift_reg\(110) & (!\sc0|sc1|sc0|Add0~221\)))) # (!\sc4|shift_reg\(110) & ((\sc3|shift_reg\(110) & (!\sc0|sc1|sc0|Add0~221\)) # 
-- (!\sc3|shift_reg\(110) & ((\sc0|sc1|sc0|Add0~221\) # (GND)))))
-- \sc0|sc1|sc0|Add0~223\ = CARRY((\sc4|shift_reg\(110) & (!\sc3|shift_reg\(110) & !\sc0|sc1|sc0|Add0~221\)) # (!\sc4|shift_reg\(110) & ((!\sc0|sc1|sc0|Add0~221\) # (!\sc3|shift_reg\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(110),
	datab => \sc3|shift_reg\(110),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~221\,
	combout => \sc0|sc1|sc0|Add0~222_combout\,
	cout => \sc0|sc1|sc0|Add0~223\);

-- Location: LCCOMB_X110_Y40_N14
\sc0|sc1|sc0|Add0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~224_combout\ = ((\sc4|shift_reg\(111) $ (\sc3|shift_reg\(111) $ (!\sc0|sc1|sc0|Add0~223\)))) # (GND)
-- \sc0|sc1|sc0|Add0~225\ = CARRY((\sc4|shift_reg\(111) & ((\sc3|shift_reg\(111)) # (!\sc0|sc1|sc0|Add0~223\))) # (!\sc4|shift_reg\(111) & (\sc3|shift_reg\(111) & !\sc0|sc1|sc0|Add0~223\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(111),
	datab => \sc3|shift_reg\(111),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~223\,
	combout => \sc0|sc1|sc0|Add0~224_combout\,
	cout => \sc0|sc1|sc0|Add0~225\);

-- Location: LCCOMB_X110_Y40_N16
\sc0|sc1|sc0|Add0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~226_combout\ = (\sc4|shift_reg\(112) & ((\sc3|shift_reg\(112) & (\sc0|sc1|sc0|Add0~225\ & VCC)) # (!\sc3|shift_reg\(112) & (!\sc0|sc1|sc0|Add0~225\)))) # (!\sc4|shift_reg\(112) & ((\sc3|shift_reg\(112) & (!\sc0|sc1|sc0|Add0~225\)) # 
-- (!\sc3|shift_reg\(112) & ((\sc0|sc1|sc0|Add0~225\) # (GND)))))
-- \sc0|sc1|sc0|Add0~227\ = CARRY((\sc4|shift_reg\(112) & (!\sc3|shift_reg\(112) & !\sc0|sc1|sc0|Add0~225\)) # (!\sc4|shift_reg\(112) & ((!\sc0|sc1|sc0|Add0~225\) # (!\sc3|shift_reg\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(112),
	datab => \sc3|shift_reg\(112),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~225\,
	combout => \sc0|sc1|sc0|Add0~226_combout\,
	cout => \sc0|sc1|sc0|Add0~227\);

-- Location: LCCOMB_X110_Y40_N18
\sc0|sc1|sc0|Add0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~228_combout\ = ((\sc4|shift_reg\(113) $ (\sc3|shift_reg\(113) $ (!\sc0|sc1|sc0|Add0~227\)))) # (GND)
-- \sc0|sc1|sc0|Add0~229\ = CARRY((\sc4|shift_reg\(113) & ((\sc3|shift_reg\(113)) # (!\sc0|sc1|sc0|Add0~227\))) # (!\sc4|shift_reg\(113) & (\sc3|shift_reg\(113) & !\sc0|sc1|sc0|Add0~227\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(113),
	datab => \sc3|shift_reg\(113),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~227\,
	combout => \sc0|sc1|sc0|Add0~228_combout\,
	cout => \sc0|sc1|sc0|Add0~229\);

-- Location: LCCOMB_X110_Y40_N20
\sc0|sc1|sc0|Add0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~230_combout\ = (\sc4|shift_reg\(114) & ((\sc3|shift_reg\(114) & (\sc0|sc1|sc0|Add0~229\ & VCC)) # (!\sc3|shift_reg\(114) & (!\sc0|sc1|sc0|Add0~229\)))) # (!\sc4|shift_reg\(114) & ((\sc3|shift_reg\(114) & (!\sc0|sc1|sc0|Add0~229\)) # 
-- (!\sc3|shift_reg\(114) & ((\sc0|sc1|sc0|Add0~229\) # (GND)))))
-- \sc0|sc1|sc0|Add0~231\ = CARRY((\sc4|shift_reg\(114) & (!\sc3|shift_reg\(114) & !\sc0|sc1|sc0|Add0~229\)) # (!\sc4|shift_reg\(114) & ((!\sc0|sc1|sc0|Add0~229\) # (!\sc3|shift_reg\(114)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(114),
	datab => \sc3|shift_reg\(114),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~229\,
	combout => \sc0|sc1|sc0|Add0~230_combout\,
	cout => \sc0|sc1|sc0|Add0~231\);

-- Location: LCCOMB_X110_Y40_N22
\sc0|sc1|sc0|Add0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~232_combout\ = ((\sc4|shift_reg\(115) $ (\sc3|shift_reg\(115) $ (!\sc0|sc1|sc0|Add0~231\)))) # (GND)
-- \sc0|sc1|sc0|Add0~233\ = CARRY((\sc4|shift_reg\(115) & ((\sc3|shift_reg\(115)) # (!\sc0|sc1|sc0|Add0~231\))) # (!\sc4|shift_reg\(115) & (\sc3|shift_reg\(115) & !\sc0|sc1|sc0|Add0~231\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(115),
	datab => \sc3|shift_reg\(115),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~231\,
	combout => \sc0|sc1|sc0|Add0~232_combout\,
	cout => \sc0|sc1|sc0|Add0~233\);

-- Location: LCCOMB_X110_Y40_N24
\sc0|sc1|sc0|Add0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~234_combout\ = (\sc4|shift_reg\(116) & ((\sc3|shift_reg\(116) & (\sc0|sc1|sc0|Add0~233\ & VCC)) # (!\sc3|shift_reg\(116) & (!\sc0|sc1|sc0|Add0~233\)))) # (!\sc4|shift_reg\(116) & ((\sc3|shift_reg\(116) & (!\sc0|sc1|sc0|Add0~233\)) # 
-- (!\sc3|shift_reg\(116) & ((\sc0|sc1|sc0|Add0~233\) # (GND)))))
-- \sc0|sc1|sc0|Add0~235\ = CARRY((\sc4|shift_reg\(116) & (!\sc3|shift_reg\(116) & !\sc0|sc1|sc0|Add0~233\)) # (!\sc4|shift_reg\(116) & ((!\sc0|sc1|sc0|Add0~233\) # (!\sc3|shift_reg\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(116),
	datab => \sc3|shift_reg\(116),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~233\,
	combout => \sc0|sc1|sc0|Add0~234_combout\,
	cout => \sc0|sc1|sc0|Add0~235\);

-- Location: LCCOMB_X110_Y40_N26
\sc0|sc1|sc0|Add0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~236_combout\ = ((\sc3|shift_reg\(117) $ (\sc4|shift_reg\(117) $ (!\sc0|sc1|sc0|Add0~235\)))) # (GND)
-- \sc0|sc1|sc0|Add0~237\ = CARRY((\sc3|shift_reg\(117) & ((\sc4|shift_reg\(117)) # (!\sc0|sc1|sc0|Add0~235\))) # (!\sc3|shift_reg\(117) & (\sc4|shift_reg\(117) & !\sc0|sc1|sc0|Add0~235\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(117),
	datab => \sc4|shift_reg\(117),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~235\,
	combout => \sc0|sc1|sc0|Add0~236_combout\,
	cout => \sc0|sc1|sc0|Add0~237\);

-- Location: LCCOMB_X110_Y40_N28
\sc0|sc1|sc0|Add0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~238_combout\ = (\sc3|shift_reg\(118) & ((\sc4|shift_reg\(118) & (\sc0|sc1|sc0|Add0~237\ & VCC)) # (!\sc4|shift_reg\(118) & (!\sc0|sc1|sc0|Add0~237\)))) # (!\sc3|shift_reg\(118) & ((\sc4|shift_reg\(118) & (!\sc0|sc1|sc0|Add0~237\)) # 
-- (!\sc4|shift_reg\(118) & ((\sc0|sc1|sc0|Add0~237\) # (GND)))))
-- \sc0|sc1|sc0|Add0~239\ = CARRY((\sc3|shift_reg\(118) & (!\sc4|shift_reg\(118) & !\sc0|sc1|sc0|Add0~237\)) # (!\sc3|shift_reg\(118) & ((!\sc0|sc1|sc0|Add0~237\) # (!\sc4|shift_reg\(118)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(118),
	datab => \sc4|shift_reg\(118),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~237\,
	combout => \sc0|sc1|sc0|Add0~238_combout\,
	cout => \sc0|sc1|sc0|Add0~239\);

-- Location: LCCOMB_X110_Y40_N30
\sc0|sc1|sc0|Add0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~240_combout\ = ((\sc3|shift_reg\(119) $ (\sc4|shift_reg\(119) $ (!\sc0|sc1|sc0|Add0~239\)))) # (GND)
-- \sc0|sc1|sc0|Add0~241\ = CARRY((\sc3|shift_reg\(119) & ((\sc4|shift_reg\(119)) # (!\sc0|sc1|sc0|Add0~239\))) # (!\sc3|shift_reg\(119) & (\sc4|shift_reg\(119) & !\sc0|sc1|sc0|Add0~239\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(119),
	datab => \sc4|shift_reg\(119),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~239\,
	combout => \sc0|sc1|sc0|Add0~240_combout\,
	cout => \sc0|sc1|sc0|Add0~241\);

-- Location: LCCOMB_X110_Y39_N0
\sc0|sc1|sc0|Add0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~242_combout\ = (\sc4|shift_reg\(120) & ((\sc3|shift_reg\(120) & (\sc0|sc1|sc0|Add0~241\ & VCC)) # (!\sc3|shift_reg\(120) & (!\sc0|sc1|sc0|Add0~241\)))) # (!\sc4|shift_reg\(120) & ((\sc3|shift_reg\(120) & (!\sc0|sc1|sc0|Add0~241\)) # 
-- (!\sc3|shift_reg\(120) & ((\sc0|sc1|sc0|Add0~241\) # (GND)))))
-- \sc0|sc1|sc0|Add0~243\ = CARRY((\sc4|shift_reg\(120) & (!\sc3|shift_reg\(120) & !\sc0|sc1|sc0|Add0~241\)) # (!\sc4|shift_reg\(120) & ((!\sc0|sc1|sc0|Add0~241\) # (!\sc3|shift_reg\(120)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(120),
	datab => \sc3|shift_reg\(120),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~241\,
	combout => \sc0|sc1|sc0|Add0~242_combout\,
	cout => \sc0|sc1|sc0|Add0~243\);

-- Location: LCCOMB_X110_Y39_N2
\sc0|sc1|sc0|Add0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~244_combout\ = ((\sc4|shift_reg\(121) $ (\sc3|shift_reg\(121) $ (!\sc0|sc1|sc0|Add0~243\)))) # (GND)
-- \sc0|sc1|sc0|Add0~245\ = CARRY((\sc4|shift_reg\(121) & ((\sc3|shift_reg\(121)) # (!\sc0|sc1|sc0|Add0~243\))) # (!\sc4|shift_reg\(121) & (\sc3|shift_reg\(121) & !\sc0|sc1|sc0|Add0~243\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(121),
	datab => \sc3|shift_reg\(121),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~243\,
	combout => \sc0|sc1|sc0|Add0~244_combout\,
	cout => \sc0|sc1|sc0|Add0~245\);

-- Location: LCCOMB_X110_Y39_N4
\sc0|sc1|sc0|Add0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~246_combout\ = (\sc4|shift_reg\(122) & ((\sc3|shift_reg\(122) & (\sc0|sc1|sc0|Add0~245\ & VCC)) # (!\sc3|shift_reg\(122) & (!\sc0|sc1|sc0|Add0~245\)))) # (!\sc4|shift_reg\(122) & ((\sc3|shift_reg\(122) & (!\sc0|sc1|sc0|Add0~245\)) # 
-- (!\sc3|shift_reg\(122) & ((\sc0|sc1|sc0|Add0~245\) # (GND)))))
-- \sc0|sc1|sc0|Add0~247\ = CARRY((\sc4|shift_reg\(122) & (!\sc3|shift_reg\(122) & !\sc0|sc1|sc0|Add0~245\)) # (!\sc4|shift_reg\(122) & ((!\sc0|sc1|sc0|Add0~245\) # (!\sc3|shift_reg\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(122),
	datab => \sc3|shift_reg\(122),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~245\,
	combout => \sc0|sc1|sc0|Add0~246_combout\,
	cout => \sc0|sc1|sc0|Add0~247\);

-- Location: LCCOMB_X110_Y39_N6
\sc0|sc1|sc0|Add0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~248_combout\ = ((\sc4|shift_reg\(123) $ (\sc3|shift_reg\(123) $ (!\sc0|sc1|sc0|Add0~247\)))) # (GND)
-- \sc0|sc1|sc0|Add0~249\ = CARRY((\sc4|shift_reg\(123) & ((\sc3|shift_reg\(123)) # (!\sc0|sc1|sc0|Add0~247\))) # (!\sc4|shift_reg\(123) & (\sc3|shift_reg\(123) & !\sc0|sc1|sc0|Add0~247\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(123),
	datab => \sc3|shift_reg\(123),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~247\,
	combout => \sc0|sc1|sc0|Add0~248_combout\,
	cout => \sc0|sc1|sc0|Add0~249\);

-- Location: LCCOMB_X110_Y39_N8
\sc0|sc1|sc0|Add0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~250_combout\ = (\sc3|shift_reg\(124) & ((\sc4|shift_reg\(124) & (\sc0|sc1|sc0|Add0~249\ & VCC)) # (!\sc4|shift_reg\(124) & (!\sc0|sc1|sc0|Add0~249\)))) # (!\sc3|shift_reg\(124) & ((\sc4|shift_reg\(124) & (!\sc0|sc1|sc0|Add0~249\)) # 
-- (!\sc4|shift_reg\(124) & ((\sc0|sc1|sc0|Add0~249\) # (GND)))))
-- \sc0|sc1|sc0|Add0~251\ = CARRY((\sc3|shift_reg\(124) & (!\sc4|shift_reg\(124) & !\sc0|sc1|sc0|Add0~249\)) # (!\sc3|shift_reg\(124) & ((!\sc0|sc1|sc0|Add0~249\) # (!\sc4|shift_reg\(124)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(124),
	datab => \sc4|shift_reg\(124),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~249\,
	combout => \sc0|sc1|sc0|Add0~250_combout\,
	cout => \sc0|sc1|sc0|Add0~251\);

-- Location: LCCOMB_X110_Y39_N10
\sc0|sc1|sc0|Add0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~252_combout\ = ((\sc4|shift_reg\(125) $ (\sc3|shift_reg\(125) $ (!\sc0|sc1|sc0|Add0~251\)))) # (GND)
-- \sc0|sc1|sc0|Add0~253\ = CARRY((\sc4|shift_reg\(125) & ((\sc3|shift_reg\(125)) # (!\sc0|sc1|sc0|Add0~251\))) # (!\sc4|shift_reg\(125) & (\sc3|shift_reg\(125) & !\sc0|sc1|sc0|Add0~251\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(125),
	datab => \sc3|shift_reg\(125),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~251\,
	combout => \sc0|sc1|sc0|Add0~252_combout\,
	cout => \sc0|sc1|sc0|Add0~253\);

-- Location: LCCOMB_X110_Y39_N12
\sc0|sc1|sc0|Add0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~254_combout\ = (\sc3|shift_reg\(126) & ((\sc4|shift_reg\(126) & (\sc0|sc1|sc0|Add0~253\ & VCC)) # (!\sc4|shift_reg\(126) & (!\sc0|sc1|sc0|Add0~253\)))) # (!\sc3|shift_reg\(126) & ((\sc4|shift_reg\(126) & (!\sc0|sc1|sc0|Add0~253\)) # 
-- (!\sc4|shift_reg\(126) & ((\sc0|sc1|sc0|Add0~253\) # (GND)))))
-- \sc0|sc1|sc0|Add0~255\ = CARRY((\sc3|shift_reg\(126) & (!\sc4|shift_reg\(126) & !\sc0|sc1|sc0|Add0~253\)) # (!\sc3|shift_reg\(126) & ((!\sc0|sc1|sc0|Add0~253\) # (!\sc4|shift_reg\(126)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc3|shift_reg\(126),
	datab => \sc4|shift_reg\(126),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~253\,
	combout => \sc0|sc1|sc0|Add0~254_combout\,
	cout => \sc0|sc1|sc0|Add0~255\);

-- Location: LCCOMB_X110_Y39_N14
\sc0|sc1|sc0|Add0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~256_combout\ = ((\sc4|shift_reg\(127) $ (\sc3|shift_reg\(127) $ (!\sc0|sc1|sc0|Add0~255\)))) # (GND)
-- \sc0|sc1|sc0|Add0~257\ = CARRY((\sc4|shift_reg\(127) & ((\sc3|shift_reg\(127)) # (!\sc0|sc1|sc0|Add0~255\))) # (!\sc4|shift_reg\(127) & (\sc3|shift_reg\(127) & !\sc0|sc1|sc0|Add0~255\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|shift_reg\(127),
	datab => \sc3|shift_reg\(127),
	datad => VCC,
	cin => \sc0|sc1|sc0|Add0~255\,
	combout => \sc0|sc1|sc0|Add0~256_combout\,
	cout => \sc0|sc1|sc0|Add0~257\);

-- Location: LCCOMB_X110_Y39_N16
\sc0|sc1|sc0|Add0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|sc0|Add0~258_combout\ = \sc0|sc1|sc0|Add0~257\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sc0|sc1|sc0|Add0~257\,
	combout => \sc0|sc1|sc0|Add0~258_combout\);

-- Location: LCCOMB_X113_Y44_N30
\sc1|sc2|sc0|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc2|sc0|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc1|sc2|sc0|Q~feeder_combout\);

-- Location: FF_X113_Y44_N31
\sc1|sc2|sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc1|Q~q\,
	d => \sc1|sc2|sc0|Q~feeder_combout\,
	clrn => \sc1|ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc2|sc0|Q~q\);

-- Location: FF_X113_Y44_N29
\sc1|sc2|sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc1|sc2|sc0|Q~q\,
	clrn => \sc1|ALT_INV_TRST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc2|sc1|Q~q\);

-- Location: LCCOMB_X113_Y44_N2
\sc1|sc2|sc2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc2|sc2|Q~feeder_combout\ = \sc1|sc2|sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|sc2|sc1|Q~q\,
	combout => \sc1|sc2|sc2|Q~feeder_combout\);

-- Location: FF_X113_Y44_N3
\sc1|sc2|sc2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	d => \sc1|sc2|sc2|Q~feeder_combout\,
	clrn => \sc1|ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc2|sc2|Q~q\);

-- Location: LCCOMB_X114_Y44_N14
\sc1|sc5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc5|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc1|sc5|Q~feeder_combout\);

-- Location: LCCOMB_X113_Y44_N26
\sc1|sc7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc7|Mux2~0_combout\ = ((\sc1|sc7|qp\(1)) # (!\sc1|sc7|qp\(0))) # (!\sc1|sc5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc5|Q~q\,
	datab => \sc1|sc7|qp\(0),
	datad => \sc1|sc7|qp\(1),
	combout => \sc1|sc7|Mux2~0_combout\);

-- Location: FF_X113_Y44_N25
\sc1|sc7|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	asdata => \sc1|sc7|Mux2~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc7|qp\(0));

-- Location: LCCOMB_X113_Y44_N24
\sc1|sc7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc7|Mux1~0_combout\ = (\sc1|sc7|qp\(1) & ((\sc1|sc5|Q~q\))) # (!\sc1|sc7|qp\(1) & (!\sc1|sc7|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc7|qp\(1),
	datac => \sc1|sc7|qp\(0),
	datad => \sc1|sc5|Q~q\,
	combout => \sc1|sc7|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y44_N4
\sc1|sc7|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc7|qp[1]~feeder_combout\ = \sc1|sc7|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc7|Mux1~0_combout\,
	combout => \sc1|sc7|qp[1]~feeder_combout\);

-- Location: FF_X113_Y44_N5
\sc1|sc7|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc2|sc1|ALT_INV_Y~clkctrl_outclk\,
	d => \sc1|sc7|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc7|qp\(1));

-- Location: LCCOMB_X113_Y44_N6
\sc1|sc7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc7|Mux0~0_combout\ = (\sc1|sc7|qp\(1)) # (!\sc1|sc7|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc7|qp\(1),
	datad => \sc1|sc7|qp\(0),
	combout => \sc1|sc7|Mux0~0_combout\);

-- Location: FF_X114_Y44_N15
\sc1|sc5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc2|sc2|Q~q\,
	d => \sc1|sc5|Q~feeder_combout\,
	clrn => \sc1|sc7|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc5|Q~q\);

-- Location: CLKCTRL_G6
\sc1|sc5|Q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc1|sc5|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc1|sc5|Q~clkctrl_outclk\);

-- Location: FF_X111_Y39_N9
\sc1|sc4|sc0|Reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~250_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(124));

-- Location: FF_X111_Y40_N23
\sc1|sc4|sc0|Reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~232_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(115));

-- Location: FF_X111_Y40_N27
\sc1|sc4|sc0|Reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~236_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(117));

-- Location: FF_X111_Y40_N29
\sc1|sc4|sc0|Reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~238_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(118));

-- Location: FF_X111_Y40_N25
\sc1|sc4|sc0|Reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~234_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(116));

-- Location: LCCOMB_X110_Y39_N30
\sc1|sc4|sc1|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~51_combout\ = (\sc1|sc4|sc0|Reg\(117)) # ((\sc1|sc4|sc0|Reg\(118)) # (\sc1|sc4|sc0|Reg\(116)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(117),
	datab => \sc1|sc4|sc0|Reg\(118),
	datad => \sc1|sc4|sc0|Reg\(116),
	combout => \sc1|sc4|sc1|process_0~51_combout\);

-- Location: FF_X111_Y40_N19
\sc1|sc4|sc0|Reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~228_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(113));

-- Location: FF_X111_Y40_N17
\sc1|sc4|sc0|Reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~226_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(112));

-- Location: LCCOMB_X109_Y40_N4
\sc1|sc4|sc1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~6_combout\ = (\sc1|sc4|sc0|Reg\(113)) # (\sc1|sc4|sc0|Reg\(112))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(113),
	datad => \sc1|sc4|sc0|Reg\(112),
	combout => \sc1|sc4|sc1|process_0~6_combout\);

-- Location: FF_X111_Y40_N7
\sc1|sc4|sc0|Reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~216_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(107));

-- Location: FF_X111_Y40_N5
\sc1|sc4|sc0|Reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~214_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(106));

-- Location: LCCOMB_X109_Y40_N6
\sc1|sc4|sc1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~7_combout\ = (!\sc1|sc4|sc0|Reg\(107) & !\sc1|sc4|sc0|Reg\(106))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(107),
	datad => \sc1|sc4|sc0|Reg\(106),
	combout => \sc1|sc4|sc1|process_0~7_combout\);

-- Location: FF_X111_Y40_N3
\sc1|sc4|sc0|Reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~212_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(105));

-- Location: FF_X111_Y41_N29
\sc1|sc4|sc0|Reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~206_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(102));

-- Location: FF_X111_Y41_N31
\sc1|sc4|sc0|Reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~208_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(103));

-- Location: FF_X111_Y41_N27
\sc1|sc4|sc0|Reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~204_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(101));

-- Location: FF_X111_Y41_N25
\sc1|sc4|sc0|Reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~202_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(100));

-- Location: LCCOMB_X112_Y41_N22
\sc1|sc4|sc1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~9_combout\ = (\sc1|sc4|sc0|Reg\(102)) # ((\sc1|sc4|sc0|Reg\(103)) # ((\sc1|sc4|sc0|Reg\(101)) # (\sc1|sc4|sc0|Reg\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(102),
	datab => \sc1|sc4|sc0|Reg\(103),
	datac => \sc1|sc4|sc0|Reg\(101),
	datad => \sc1|sc4|sc0|Reg\(100),
	combout => \sc1|sc4|sc1|process_0~9_combout\);

-- Location: FF_X111_Y41_N21
\sc1|sc4|sc0|Reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~198_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(98));

-- Location: FF_X111_Y41_N17
\sc1|sc4|sc0|Reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~194_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(96));

-- Location: FF_X111_Y41_N19
\sc1|sc4|sc0|Reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~196_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(97));

-- Location: LCCOMB_X112_Y41_N8
\sc1|sc4|sc1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~8_combout\ = (\sc1|sc4|sc0|Reg\(98)) # ((\sc1|sc4|sc0|Reg\(96)) # (\sc1|sc4|sc0|Reg\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(98),
	datac => \sc1|sc4|sc0|Reg\(96),
	datad => \sc1|sc4|sc0|Reg\(97),
	combout => \sc1|sc4|sc1|process_0~8_combout\);

-- Location: FF_X111_Y41_N15
\sc1|sc4|sc0|Reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~192_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(95));

-- Location: FF_X111_Y41_N13
\sc1|sc4|sc0|Reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~190_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(94));

-- Location: LCCOMB_X112_Y41_N12
\sc1|sc4|sc1|count_out[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~6_combout\ = (!\sc1|sc4|sc0|Reg\(95) & !\sc1|sc4|sc0|Reg\(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(95),
	datad => \sc1|sc4|sc0|Reg\(94),
	combout => \sc1|sc4|sc1|count_out[5]~6_combout\);

-- Location: FF_X111_Y41_N7
\sc1|sc4|sc0|Reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~184_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(91));

-- Location: FF_X111_Y41_N5
\sc1|sc4|sc0|Reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~182_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(90));

-- Location: LCCOMB_X107_Y41_N24
\sc1|sc4|sc1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~10_combout\ = (!\sc1|sc4|sc0|Reg\(91) & !\sc1|sc4|sc0|Reg\(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(91),
	datac => \sc1|sc4|sc0|Reg\(90),
	combout => \sc1|sc4|sc1|process_0~10_combout\);

-- Location: FF_X111_Y41_N11
\sc1|sc4|sc0|Reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~188_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(93));

-- Location: FF_X111_Y41_N9
\sc1|sc4|sc0|Reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~186_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(92));

-- Location: LCCOMB_X107_Y41_N16
\sc1|sc4|sc1|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~47_combout\ = (\sc1|sc4|sc0|Reg\(93)) # (\sc1|sc4|sc0|Reg\(92))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(93),
	datac => \sc1|sc4|sc0|Reg\(92),
	combout => \sc1|sc4|sc1|process_0~47_combout\);

-- Location: FF_X111_Y41_N1
\sc1|sc4|sc0|Reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~178_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(88));

-- Location: FF_X111_Y42_N27
\sc1|sc4|sc0|Reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~172_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(85));

-- Location: FF_X111_Y42_N31
\sc1|sc4|sc0|Reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~176_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(87));

-- Location: FF_X111_Y42_N25
\sc1|sc4|sc0|Reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~170_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(84));

-- Location: FF_X111_Y42_N29
\sc1|sc4|sc0|Reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~174_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(86));

-- Location: LCCOMB_X108_Y40_N0
\sc1|sc4|sc1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~11_combout\ = (!\sc1|sc4|sc0|Reg\(85) & (!\sc1|sc4|sc0|Reg\(87) & (!\sc1|sc4|sc0|Reg\(84) & !\sc1|sc4|sc0|Reg\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(85),
	datab => \sc1|sc4|sc0|Reg\(87),
	datac => \sc1|sc4|sc0|Reg\(84),
	datad => \sc1|sc4|sc0|Reg\(86),
	combout => \sc1|sc4|sc1|process_0~11_combout\);

-- Location: FF_X111_Y41_N3
\sc1|sc4|sc0|Reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~180_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(89));

-- Location: FF_X111_Y42_N11
\sc1|sc4|sc0|Reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~156_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(77));

-- Location: FF_X111_Y42_N13
\sc1|sc4|sc0|Reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~158_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(78));

-- Location: FF_X111_Y42_N9
\sc1|sc4|sc0|Reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~154_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(76));

-- Location: LCCOMB_X108_Y42_N4
\sc1|sc4|sc1|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~42_combout\ = (\sc1|sc4|sc0|Reg\(77)) # ((\sc1|sc4|sc0|Reg\(78)) # (\sc1|sc4|sc0|Reg\(76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(77),
	datac => \sc1|sc4|sc0|Reg\(78),
	datad => \sc1|sc4|sc0|Reg\(76),
	combout => \sc1|sc4|sc1|process_0~42_combout\);

-- Location: FF_X111_Y43_N7
\sc1|sc4|sc0|Reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~120_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(59));

-- Location: FF_X111_Y43_N15
\sc1|sc4|sc0|Reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~128_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(63));

-- Location: FF_X111_Y43_N11
\sc1|sc4|sc0|Reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~124_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(61));

-- Location: FF_X111_Y43_N13
\sc1|sc4|sc0|Reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~126_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(62));

-- Location: FF_X111_Y43_N9
\sc1|sc4|sc0|Reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~122_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(60));

-- Location: LCCOMB_X108_Y43_N20
\sc1|sc4|sc1|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~15_combout\ = (\sc1|sc4|sc0|Reg\(63)) # ((\sc1|sc4|sc0|Reg\(61)) # ((\sc1|sc4|sc0|Reg\(62)) # (\sc1|sc4|sc0|Reg\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(63),
	datab => \sc1|sc4|sc0|Reg\(61),
	datac => \sc1|sc4|sc0|Reg\(62),
	datad => \sc1|sc4|sc0|Reg\(60),
	combout => \sc1|sc4|sc1|process_0~15_combout\);

-- Location: FF_X111_Y43_N3
\sc1|sc4|sc0|Reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~116_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(57));

-- Location: FF_X111_Y43_N5
\sc1|sc4|sc0|Reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~118_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(58));

-- Location: FF_X111_Y43_N1
\sc1|sc4|sc0|Reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~114_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(56));

-- Location: LCCOMB_X108_Y43_N22
\sc1|sc4|sc1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~14_combout\ = (\sc1|sc4|sc0|Reg\(57)) # ((\sc1|sc4|sc0|Reg\(58)) # (\sc1|sc4|sc0|Reg\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(57),
	datac => \sc1|sc4|sc0|Reg\(58),
	datad => \sc1|sc4|sc0|Reg\(56),
	combout => \sc1|sc4|sc1|process_0~14_combout\);

-- Location: FF_X111_Y44_N25
\sc1|sc4|sc0|Reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~106_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(52));

-- Location: FF_X111_Y44_N31
\sc1|sc4|sc0|Reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~112_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(55));

-- Location: FF_X111_Y44_N29
\sc1|sc4|sc0|Reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~110_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(54));

-- Location: LCCOMB_X107_Y44_N28
\sc1|sc4|sc1|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~16_combout\ = (!\sc1|sc4|sc0|Reg\(55) & !\sc1|sc4|sc0|Reg\(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(55),
	datad => \sc1|sc4|sc0|Reg\(54),
	combout => \sc1|sc4|sc1|process_0~16_combout\);

-- Location: FF_X111_Y44_N27
\sc1|sc4|sc0|Reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~108_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(53));

-- Location: FF_X111_Y44_N21
\sc1|sc4|sc0|Reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~102_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(50));

-- Location: FF_X111_Y44_N23
\sc1|sc4|sc0|Reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~104_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(51));

-- Location: FF_X111_Y44_N19
\sc1|sc4|sc0|Reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~100_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(49));

-- Location: LCCOMB_X107_Y44_N26
\sc1|sc4|sc1|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~18_combout\ = (!\sc1|sc4|sc0|Reg\(50) & (!\sc1|sc4|sc0|Reg\(51) & !\sc1|sc4|sc0|Reg\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(50),
	datac => \sc1|sc4|sc0|Reg\(51),
	datad => \sc1|sc4|sc0|Reg\(49),
	combout => \sc1|sc4|sc1|process_0~18_combout\);

-- Location: FF_X111_Y44_N17
\sc1|sc4|sc0|Reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~98_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(48));

-- Location: FF_X111_Y44_N13
\sc1|sc4|sc0|Reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~94_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(46));

-- Location: FF_X111_Y44_N11
\sc1|sc4|sc0|Reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~92_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(45));

-- Location: FF_X111_Y44_N15
\sc1|sc4|sc0|Reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~96_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(47));

-- Location: FF_X111_Y44_N9
\sc1|sc4|sc0|Reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~90_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(44));

-- Location: LCCOMB_X112_Y44_N8
\sc1|sc4|sc1|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~17_combout\ = (!\sc1|sc4|sc0|Reg\(46) & (!\sc1|sc4|sc0|Reg\(45) & (!\sc1|sc4|sc0|Reg\(47) & !\sc1|sc4|sc0|Reg\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(46),
	datab => \sc1|sc4|sc0|Reg\(45),
	datac => \sc1|sc4|sc0|Reg\(47),
	datad => \sc1|sc4|sc0|Reg\(44),
	combout => \sc1|sc4|sc1|process_0~17_combout\);

-- Location: FF_X111_Y44_N7
\sc1|sc4|sc0|Reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~88_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(43));

-- Location: FF_X111_Y44_N5
\sc1|sc4|sc0|Reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~86_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(42));

-- Location: FF_X111_Y44_N1
\sc1|sc4|sc0|Reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~82_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(40));

-- Location: FF_X111_Y44_N3
\sc1|sc4|sc0|Reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~84_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(41));

-- Location: LCCOMB_X112_Y44_N10
\sc1|sc4|sc1|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~34_combout\ = (\sc1|sc4|sc0|Reg\(43)) # ((\sc1|sc4|sc0|Reg\(42)) # ((\sc1|sc4|sc0|Reg\(40)) # (\sc1|sc4|sc0|Reg\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(43),
	datab => \sc1|sc4|sc0|Reg\(42),
	datac => \sc1|sc4|sc0|Reg\(40),
	datad => \sc1|sc4|sc0|Reg\(41),
	combout => \sc1|sc4|sc1|process_0~34_combout\);

-- Location: FF_X111_Y45_N31
\sc1|sc4|sc0|Reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~80_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(39));

-- Location: FF_X111_Y45_N17
\sc1|sc4|sc0|Reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~66_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(32));

-- Location: FF_X111_Y45_N19
\sc1|sc4|sc0|Reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~68_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(33));

-- Location: LCCOMB_X108_Y44_N6
\sc1|sc4|sc1|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~19_combout\ = (\sc1|sc4|sc0|Reg\(32)) # (\sc1|sc4|sc0|Reg\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(32),
	datad => \sc1|sc4|sc0|Reg\(33),
	combout => \sc1|sc4|sc1|process_0~19_combout\);

-- Location: FF_X111_Y45_N15
\sc1|sc4|sc0|Reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~64_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(31));

-- Location: FF_X111_Y45_N13
\sc1|sc4|sc0|Reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~62_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(30));

-- Location: FF_X111_Y45_N11
\sc1|sc4|sc0|Reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~60_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(29));

-- Location: LCCOMB_X107_Y41_N22
\sc1|sc4|sc1|count_out[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~7_combout\ = (!\sc1|sc4|sc0|Reg\(31) & (!\sc1|sc4|sc0|Reg\(30) & !\sc1|sc4|sc0|Reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(31),
	datab => \sc1|sc4|sc0|Reg\(30),
	datad => \sc1|sc4|sc0|Reg\(29),
	combout => \sc1|sc4|sc1|count_out[5]~7_combout\);

-- Location: FF_X111_Y46_N29
\sc1|sc4|sc0|Reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~46_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(22));

-- Location: FF_X111_Y46_N31
\sc1|sc4|sc0|Reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~48_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(23));

-- Location: FF_X111_Y46_N25
\sc1|sc4|sc0|Reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~42_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(20));

-- Location: FF_X111_Y46_N27
\sc1|sc4|sc0|Reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~44_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(21));

-- Location: LCCOMB_X111_Y48_N6
\sc1|sc4|sc1|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~23_combout\ = (\sc1|sc4|sc0|Reg\(22)) # ((\sc1|sc4|sc0|Reg\(23)) # ((\sc1|sc4|sc0|Reg\(20)) # (\sc1|sc4|sc0|Reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(22),
	datab => \sc1|sc4|sc0|Reg\(23),
	datac => \sc1|sc4|sc0|Reg\(20),
	datad => \sc1|sc4|sc0|Reg\(21),
	combout => \sc1|sc4|sc1|process_0~23_combout\);

-- Location: FF_X111_Y46_N9
\sc1|sc4|sc0|Reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~26_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(12));

-- Location: FF_X111_Y46_N11
\sc1|sc4|sc0|Reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(13));

-- Location: FF_X111_Y46_N3
\sc1|sc4|sc0|Reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(9));

-- Location: FF_X111_Y46_N7
\sc1|sc4|sc0|Reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(11));

-- Location: FF_X111_Y46_N1
\sc1|sc4|sc0|Reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(8));

-- Location: FF_X111_Y46_N5
\sc1|sc4|sc0|Reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(10));

-- Location: LCCOMB_X112_Y47_N6
\sc1|sc4|sc1|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~27_combout\ = (!\sc1|sc4|sc0|Reg\(9) & (!\sc1|sc4|sc0|Reg\(11) & (!\sc1|sc4|sc0|Reg\(8) & !\sc1|sc4|sc0|Reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(9),
	datab => \sc1|sc4|sc0|Reg\(11),
	datac => \sc1|sc4|sc0|Reg\(8),
	datad => \sc1|sc4|sc0|Reg\(10),
	combout => \sc1|sc4|sc1|process_0~27_combout\);

-- Location: LCCOMB_X111_Y48_N10
\sc1|sc4|sc1|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~28_combout\ = (\sc1|sc4|sc0|Reg\(12)) # ((\sc1|sc4|sc0|Reg\(13)) # (!\sc1|sc4|sc1|process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(12),
	datab => \sc1|sc4|sc0|Reg\(13),
	datad => \sc1|sc4|sc1|process_0~27_combout\,
	combout => \sc1|sc4|sc1|process_0~28_combout\);

-- Location: FF_X111_Y46_N15
\sc1|sc4|sc0|Reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~32_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(15));

-- Location: FF_X111_Y46_N13
\sc1|sc4|sc0|Reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~30_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(14));

-- Location: LCCOMB_X111_Y48_N28
\sc1|sc4|sc1|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~24_combout\ = (!\sc1|sc4|sc0|Reg\(15) & !\sc1|sc4|sc0|Reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(15),
	datad => \sc1|sc4|sc0|Reg\(14),
	combout => \sc1|sc4|sc1|process_0~24_combout\);

-- Location: FF_X111_Y47_N31
\sc1|sc4|sc0|Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~16_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(7));

-- Location: FF_X111_Y47_N29
\sc1|sc4|sc0|Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(6));

-- Location: FF_X111_Y47_N27
\sc1|sc4|sc0|Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~12_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(5));

-- Location: FF_X111_Y47_N25
\sc1|sc4|sc0|Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~10_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(4));

-- Location: LCCOMB_X111_Y47_N6
\sc1|sc4|sc1|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~25_combout\ = (!\sc1|sc4|sc0|Reg\(7) & (!\sc1|sc4|sc0|Reg\(6) & (!\sc1|sc4|sc0|Reg\(5) & !\sc1|sc4|sc0|Reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(7),
	datab => \sc1|sc4|sc0|Reg\(6),
	datac => \sc1|sc4|sc0|Reg\(5),
	datad => \sc1|sc4|sc0|Reg\(4),
	combout => \sc1|sc4|sc1|process_0~25_combout\);

-- Location: FF_X111_Y47_N23
\sc1|sc4|sc0|Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~8_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(3));

-- Location: FF_X111_Y47_N19
\sc1|sc4|sc0|Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(1));

-- Location: FF_X111_Y47_N17
\sc1|sc4|sc0|Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(0));

-- Location: FF_X111_Y47_N21
\sc1|sc4|sc0|Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(2));

-- Location: LCCOMB_X112_Y47_N0
\sc1|sc4|sc1|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~26_combout\ = (!\sc1|sc4|sc0|Reg\(3) & (!\sc1|sc4|sc0|Reg\(1) & (!\sc1|sc4|sc0|Reg\(0) & !\sc1|sc4|sc0|Reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(3),
	datab => \sc1|sc4|sc0|Reg\(1),
	datac => \sc1|sc4|sc0|Reg\(0),
	datad => \sc1|sc4|sc0|Reg\(2),
	combout => \sc1|sc4|sc1|process_0~26_combout\);

-- Location: LCCOMB_X111_Y48_N16
\sc1|sc4|sc1|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~29_combout\ = (!\sc1|sc4|sc1|process_0~28_combout\ & (\sc1|sc4|sc1|process_0~24_combout\ & (\sc1|sc4|sc1|process_0~25_combout\ & \sc1|sc4|sc1|process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~28_combout\,
	datab => \sc1|sc4|sc1|process_0~24_combout\,
	datac => \sc1|sc4|sc1|process_0~25_combout\,
	datad => \sc1|sc4|sc1|process_0~26_combout\,
	combout => \sc1|sc4|sc1|process_0~29_combout\);

-- Location: FF_X111_Y46_N23
\sc1|sc4|sc0|Reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~40_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(19));

-- Location: FF_X111_Y46_N21
\sc1|sc4|sc0|Reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~38_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(18));

-- Location: FF_X111_Y46_N19
\sc1|sc4|sc0|Reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~36_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(17));

-- Location: FF_X111_Y46_N17
\sc1|sc4|sc0|Reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~34_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(16));

-- Location: LCCOMB_X111_Y48_N20
\sc1|sc4|sc1|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~22_combout\ = (\sc1|sc4|sc0|Reg\(18)) # ((\sc1|sc4|sc0|Reg\(17)) # (\sc1|sc4|sc0|Reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(18),
	datab => \sc1|sc4|sc0|Reg\(17),
	datad => \sc1|sc4|sc0|Reg\(16),
	combout => \sc1|sc4|sc1|process_0~22_combout\);

-- Location: LCCOMB_X111_Y48_N18
\sc1|sc4|sc1|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~30_combout\ = (\sc1|sc4|sc1|process_0~23_combout\) # (((\sc1|sc4|sc0|Reg\(19)) # (\sc1|sc4|sc1|process_0~22_combout\)) # (!\sc1|sc4|sc1|process_0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~23_combout\,
	datab => \sc1|sc4|sc1|process_0~29_combout\,
	datac => \sc1|sc4|sc0|Reg\(19),
	datad => \sc1|sc4|sc1|process_0~22_combout\,
	combout => \sc1|sc4|sc1|process_0~30_combout\);

-- Location: FF_X111_Y45_N1
\sc1|sc4|sc0|Reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~50_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(24));

-- Location: FF_X111_Y45_N3
\sc1|sc4|sc0|Reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~52_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(25));

-- Location: LCCOMB_X108_Y44_N18
\sc1|sc4|sc1|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~31_combout\ = (!\sc1|sc4|sc1|process_0~30_combout\ & (!\sc1|sc4|sc0|Reg\(24) & !\sc1|sc4|sc0|Reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~30_combout\,
	datab => \sc1|sc4|sc0|Reg\(24),
	datad => \sc1|sc4|sc0|Reg\(25),
	combout => \sc1|sc4|sc1|process_0~31_combout\);

-- Location: FF_X111_Y45_N9
\sc1|sc4|sc0|Reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~58_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(28));

-- Location: FF_X111_Y45_N7
\sc1|sc4|sc0|Reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~56_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(27));

-- Location: FF_X111_Y45_N5
\sc1|sc4|sc0|Reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~54_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(26));

-- Location: LCCOMB_X108_Y44_N10
\sc1|sc4|sc1|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~32_combout\ = (!\sc1|sc4|sc0|Reg\(27) & !\sc1|sc4|sc0|Reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(27),
	datad => \sc1|sc4|sc0|Reg\(26),
	combout => \sc1|sc4|sc1|process_0~32_combout\);

-- Location: LCCOMB_X108_Y44_N2
\sc1|sc4|sc1|count_out[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~8_combout\ = (\sc1|sc4|sc1|count_out[5]~7_combout\ & (\sc1|sc4|sc1|process_0~31_combout\ & (!\sc1|sc4|sc0|Reg\(28) & \sc1|sc4|sc1|process_0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~7_combout\,
	datab => \sc1|sc4|sc1|process_0~31_combout\,
	datac => \sc1|sc4|sc0|Reg\(28),
	datad => \sc1|sc4|sc1|process_0~32_combout\,
	combout => \sc1|sc4|sc1|count_out[5]~8_combout\);

-- Location: FF_X111_Y45_N27
\sc1|sc4|sc0|Reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~76_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(37));

-- Location: FF_X111_Y45_N29
\sc1|sc4|sc0|Reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~78_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(38));

-- Location: FF_X111_Y45_N25
\sc1|sc4|sc0|Reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~74_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(36));

-- Location: LCCOMB_X114_Y48_N24
\sc1|sc4|sc1|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~20_combout\ = (\sc1|sc4|sc0|Reg\(37)) # ((\sc1|sc4|sc0|Reg\(38)) # (\sc1|sc4|sc0|Reg\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(37),
	datab => \sc1|sc4|sc0|Reg\(38),
	datac => \sc1|sc4|sc0|Reg\(36),
	combout => \sc1|sc4|sc1|process_0~20_combout\);

-- Location: FF_X111_Y45_N23
\sc1|sc4|sc0|Reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~72_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(35));

-- Location: FF_X111_Y45_N21
\sc1|sc4|sc0|Reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~70_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(34));

-- Location: LCCOMB_X114_Y48_N26
\sc1|sc4|sc1|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~21_combout\ = (!\sc1|sc4|sc0|Reg\(35) & !\sc1|sc4|sc0|Reg\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(35),
	datad => \sc1|sc4|sc0|Reg\(34),
	combout => \sc1|sc4|sc1|process_0~21_combout\);

-- Location: LCCOMB_X108_Y44_N14
\sc1|sc4|sc1|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~33_combout\ = (\sc1|sc4|sc1|process_0~19_combout\) # (((\sc1|sc4|sc1|process_0~20_combout\) # (!\sc1|sc4|sc1|process_0~21_combout\)) # (!\sc1|sc4|sc1|count_out[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~19_combout\,
	datab => \sc1|sc4|sc1|count_out[5]~8_combout\,
	datac => \sc1|sc4|sc1|process_0~20_combout\,
	datad => \sc1|sc4|sc1|process_0~21_combout\,
	combout => \sc1|sc4|sc1|process_0~33_combout\);

-- Location: LCCOMB_X112_Y44_N26
\sc1|sc4|sc1|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~35_combout\ = (\sc1|sc4|sc1|process_0~34_combout\) # ((\sc1|sc4|sc0|Reg\(39)) # (\sc1|sc4|sc1|process_0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~34_combout\,
	datab => \sc1|sc4|sc0|Reg\(39),
	datad => \sc1|sc4|sc1|process_0~33_combout\,
	combout => \sc1|sc4|sc1|process_0~35_combout\);

-- Location: LCCOMB_X107_Y44_N24
\sc1|sc4|sc1|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~36_combout\ = (\sc1|sc4|sc1|process_0~18_combout\ & (!\sc1|sc4|sc0|Reg\(48) & (\sc1|sc4|sc1|process_0~17_combout\ & !\sc1|sc4|sc1|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~18_combout\,
	datab => \sc1|sc4|sc0|Reg\(48),
	datac => \sc1|sc4|sc1|process_0~17_combout\,
	datad => \sc1|sc4|sc1|process_0~35_combout\,
	combout => \sc1|sc4|sc1|process_0~36_combout\);

-- Location: LCCOMB_X107_Y44_N22
\sc1|sc4|sc1|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~37_combout\ = (!\sc1|sc4|sc0|Reg\(52) & (\sc1|sc4|sc1|process_0~16_combout\ & (!\sc1|sc4|sc0|Reg\(53) & \sc1|sc4|sc1|process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(52),
	datab => \sc1|sc4|sc1|process_0~16_combout\,
	datac => \sc1|sc4|sc0|Reg\(53),
	datad => \sc1|sc4|sc1|process_0~36_combout\,
	combout => \sc1|sc4|sc1|process_0~37_combout\);

-- Location: LCCOMB_X108_Y43_N26
\sc1|sc4|sc1|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~38_combout\ = (\sc1|sc4|sc0|Reg\(59)) # ((\sc1|sc4|sc1|process_0~15_combout\) # ((\sc1|sc4|sc1|process_0~14_combout\) # (!\sc1|sc4|sc1|process_0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(59),
	datab => \sc1|sc4|sc1|process_0~15_combout\,
	datac => \sc1|sc4|sc1|process_0~14_combout\,
	datad => \sc1|sc4|sc1|process_0~37_combout\,
	combout => \sc1|sc4|sc1|process_0~38_combout\);

-- Location: FF_X111_Y43_N23
\sc1|sc4|sc0|Reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~136_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(67));

-- Location: FF_X111_Y43_N21
\sc1|sc4|sc0|Reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~134_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(66));

-- Location: LCCOMB_X108_Y43_N28
\sc1|sc4|sc1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~13_combout\ = (!\sc1|sc4|sc0|Reg\(67) & !\sc1|sc4|sc0|Reg\(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(67),
	datad => \sc1|sc4|sc0|Reg\(66),
	combout => \sc1|sc4|sc1|process_0~13_combout\);

-- Location: FF_X111_Y43_N17
\sc1|sc4|sc0|Reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~130_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(64));

-- Location: FF_X111_Y43_N19
\sc1|sc4|sc0|Reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~132_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(65));

-- Location: LCCOMB_X108_Y43_N24
\sc1|sc4|sc1|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~39_combout\ = (!\sc1|sc4|sc1|process_0~38_combout\ & (\sc1|sc4|sc1|process_0~13_combout\ & (!\sc1|sc4|sc0|Reg\(64) & !\sc1|sc4|sc0|Reg\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~38_combout\,
	datab => \sc1|sc4|sc1|process_0~13_combout\,
	datac => \sc1|sc4|sc0|Reg\(64),
	datad => \sc1|sc4|sc0|Reg\(65),
	combout => \sc1|sc4|sc1|process_0~39_combout\);

-- Location: FF_X111_Y43_N29
\sc1|sc4|sc0|Reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~142_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(70));

-- Location: FF_X111_Y43_N31
\sc1|sc4|sc0|Reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~144_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(71));

-- Location: FF_X111_Y43_N27
\sc1|sc4|sc0|Reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~140_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(69));

-- Location: LCCOMB_X105_Y42_N28
\sc1|sc4|sc1|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~40_combout\ = (!\sc1|sc4|sc0|Reg\(70) & (!\sc1|sc4|sc0|Reg\(71) & !\sc1|sc4|sc0|Reg\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(70),
	datac => \sc1|sc4|sc0|Reg\(71),
	datad => \sc1|sc4|sc0|Reg\(69),
	combout => \sc1|sc4|sc1|process_0~40_combout\);

-- Location: FF_X111_Y43_N25
\sc1|sc4|sc0|Reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~138_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(68));

-- Location: FF_X111_Y42_N3
\sc1|sc4|sc0|Reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~148_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(73));

-- Location: FF_X111_Y42_N1
\sc1|sc4|sc0|Reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~146_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(72));

-- Location: LCCOMB_X108_Y42_N28
\sc1|sc4|sc1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~12_combout\ = (\sc1|sc4|sc0|Reg\(73)) # (\sc1|sc4|sc0|Reg\(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(73),
	datac => \sc1|sc4|sc0|Reg\(72),
	combout => \sc1|sc4|sc1|process_0~12_combout\);

-- Location: LCCOMB_X108_Y42_N14
\sc1|sc4|sc1|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~41_combout\ = (((\sc1|sc4|sc0|Reg\(68)) # (\sc1|sc4|sc1|process_0~12_combout\)) # (!\sc1|sc4|sc1|process_0~40_combout\)) # (!\sc1|sc4|sc1|process_0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~39_combout\,
	datab => \sc1|sc4|sc1|process_0~40_combout\,
	datac => \sc1|sc4|sc0|Reg\(68),
	datad => \sc1|sc4|sc1|process_0~12_combout\,
	combout => \sc1|sc4|sc1|process_0~41_combout\);

-- Location: FF_X111_Y42_N7
\sc1|sc4|sc0|Reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~152_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(75));

-- Location: FF_X111_Y42_N5
\sc1|sc4|sc0|Reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~150_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(74));

-- Location: LCCOMB_X108_Y42_N26
\sc1|sc4|sc1|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~43_combout\ = (\sc1|sc4|sc1|process_0~42_combout\) # ((\sc1|sc4|sc1|process_0~41_combout\) # ((\sc1|sc4|sc0|Reg\(75)) # (\sc1|sc4|sc0|Reg\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~42_combout\,
	datab => \sc1|sc4|sc1|process_0~41_combout\,
	datac => \sc1|sc4|sc0|Reg\(75),
	datad => \sc1|sc4|sc0|Reg\(74),
	combout => \sc1|sc4|sc1|process_0~43_combout\);

-- Location: FF_X111_Y42_N17
\sc1|sc4|sc0|Reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~162_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(80));

-- Location: FF_X111_Y42_N23
\sc1|sc4|sc0|Reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~168_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(83));

-- Location: FF_X111_Y42_N21
\sc1|sc4|sc0|Reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~166_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(82));

-- Location: FF_X111_Y42_N19
\sc1|sc4|sc0|Reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~164_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(81));

-- Location: LCCOMB_X108_Y41_N0
\sc1|sc4|sc1|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~44_combout\ = (\sc1|sc4|sc0|Reg\(80)) # ((\sc1|sc4|sc0|Reg\(83)) # ((\sc1|sc4|sc0|Reg\(82)) # (\sc1|sc4|sc0|Reg\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(80),
	datab => \sc1|sc4|sc0|Reg\(83),
	datac => \sc1|sc4|sc0|Reg\(82),
	datad => \sc1|sc4|sc0|Reg\(81),
	combout => \sc1|sc4|sc1|process_0~44_combout\);

-- Location: FF_X111_Y42_N15
\sc1|sc4|sc0|Reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~160_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(79));

-- Location: LCCOMB_X108_Y41_N8
\sc1|sc4|sc1|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~45_combout\ = (\sc1|sc4|sc1|process_0~43_combout\) # ((\sc1|sc4|sc1|process_0~44_combout\) # (\sc1|sc4|sc0|Reg\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~43_combout\,
	datab => \sc1|sc4|sc1|process_0~44_combout\,
	datad => \sc1|sc4|sc0|Reg\(79),
	combout => \sc1|sc4|sc1|process_0~45_combout\);

-- Location: LCCOMB_X108_Y41_N2
\sc1|sc4|sc1|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~46_combout\ = (!\sc1|sc4|sc0|Reg\(88) & (\sc1|sc4|sc1|process_0~11_combout\ & (!\sc1|sc4|sc0|Reg\(89) & !\sc1|sc4|sc1|process_0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(88),
	datab => \sc1|sc4|sc1|process_0~11_combout\,
	datac => \sc1|sc4|sc0|Reg\(89),
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~46_combout\);

-- Location: LCCOMB_X108_Y41_N28
\sc1|sc4|sc1|count_out[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~9_combout\ = (\sc1|sc4|sc1|count_out[5]~6_combout\ & (\sc1|sc4|sc1|process_0~10_combout\ & (!\sc1|sc4|sc1|process_0~47_combout\ & \sc1|sc4|sc1|process_0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~6_combout\,
	datab => \sc1|sc4|sc1|process_0~10_combout\,
	datac => \sc1|sc4|sc1|process_0~47_combout\,
	datad => \sc1|sc4|sc1|process_0~46_combout\,
	combout => \sc1|sc4|sc1|count_out[5]~9_combout\);

-- Location: FF_X111_Y41_N23
\sc1|sc4|sc0|Reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~200_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(99));

-- Location: LCCOMB_X112_Y41_N14
\sc1|sc4|sc1|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~48_combout\ = (\sc1|sc4|sc1|process_0~9_combout\) # ((\sc1|sc4|sc1|process_0~8_combout\) # ((\sc1|sc4|sc0|Reg\(99)) # (!\sc1|sc4|sc1|count_out[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~9_combout\,
	datab => \sc1|sc4|sc1|process_0~8_combout\,
	datac => \sc1|sc4|sc1|count_out[5]~9_combout\,
	datad => \sc1|sc4|sc0|Reg\(99),
	combout => \sc1|sc4|sc1|process_0~48_combout\);

-- Location: FF_X111_Y40_N1
\sc1|sc4|sc0|Reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~210_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(104));

-- Location: LCCOMB_X109_Y40_N24
\sc1|sc4|sc1|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~49_combout\ = (\sc1|sc4|sc1|process_0~7_combout\ & (!\sc1|sc4|sc0|Reg\(105) & (!\sc1|sc4|sc1|process_0~48_combout\ & !\sc1|sc4|sc0|Reg\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~7_combout\,
	datab => \sc1|sc4|sc0|Reg\(105),
	datac => \sc1|sc4|sc1|process_0~48_combout\,
	datad => \sc1|sc4|sc0|Reg\(104),
	combout => \sc1|sc4|sc1|process_0~49_combout\);

-- Location: FF_X111_Y40_N9
\sc1|sc4|sc0|Reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~218_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(108));

-- Location: FF_X111_Y40_N13
\sc1|sc4|sc0|Reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~222_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(110));

-- Location: FF_X111_Y40_N11
\sc1|sc4|sc0|Reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~220_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(109));

-- Location: FF_X111_Y40_N15
\sc1|sc4|sc0|Reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~224_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(111));

-- Location: LCCOMB_X112_Y39_N0
\sc1|sc4|sc1|count_out[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[4]~10_combout\ = (!\sc1|sc4|sc0|Reg\(110) & (!\sc1|sc4|sc0|Reg\(109) & !\sc1|sc4|sc0|Reg\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(110),
	datab => \sc1|sc4|sc0|Reg\(109),
	datad => \sc1|sc4|sc0|Reg\(111),
	combout => \sc1|sc4|sc1|count_out[4]~10_combout\);

-- Location: LCCOMB_X109_Y40_N30
\sc1|sc4|sc1|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~50_combout\ = (\sc1|sc4|sc1|process_0~6_combout\) # (((\sc1|sc4|sc0|Reg\(108)) # (!\sc1|sc4|sc1|count_out[4]~10_combout\)) # (!\sc1|sc4|sc1|process_0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~6_combout\,
	datab => \sc1|sc4|sc1|process_0~49_combout\,
	datac => \sc1|sc4|sc0|Reg\(108),
	datad => \sc1|sc4|sc1|count_out[4]~10_combout\,
	combout => \sc1|sc4|sc1|process_0~50_combout\);

-- Location: FF_X111_Y40_N21
\sc1|sc4|sc0|Reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~230_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(114));

-- Location: LCCOMB_X109_Y39_N16
\sc1|sc4|sc1|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~52_combout\ = (\sc1|sc4|sc0|Reg\(115)) # ((\sc1|sc4|sc1|process_0~51_combout\) # ((\sc1|sc4|sc1|process_0~50_combout\) # (\sc1|sc4|sc0|Reg\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(115),
	datab => \sc1|sc4|sc1|process_0~51_combout\,
	datac => \sc1|sc4|sc1|process_0~50_combout\,
	datad => \sc1|sc4|sc0|Reg\(114),
	combout => \sc1|sc4|sc1|process_0~52_combout\);

-- Location: FF_X111_Y40_N31
\sc1|sc4|sc0|Reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~240_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(119));

-- Location: FF_X111_Y39_N7
\sc1|sc4|sc0|Reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~248_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(123));

-- Location: FF_X111_Y39_N1
\sc1|sc4|sc0|Reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~242_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(120));

-- Location: FF_X111_Y39_N5
\sc1|sc4|sc0|Reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~246_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(122));

-- Location: FF_X111_Y39_N3
\sc1|sc4|sc0|Reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~244_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(121));

-- Location: LCCOMB_X111_Y39_N24
\sc1|sc4|sc1|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~53_combout\ = (\sc1|sc4|sc0|Reg\(123)) # ((\sc1|sc4|sc0|Reg\(120)) # ((\sc1|sc4|sc0|Reg\(122)) # (\sc1|sc4|sc0|Reg\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(123),
	datab => \sc1|sc4|sc0|Reg\(120),
	datac => \sc1|sc4|sc0|Reg\(122),
	datad => \sc1|sc4|sc0|Reg\(121),
	combout => \sc1|sc4|sc1|process_0~53_combout\);

-- Location: LCCOMB_X109_Y39_N30
\sc1|sc4|sc1|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~54_combout\ = (\sc1|sc4|sc1|process_0~52_combout\) # ((\sc1|sc4|sc0|Reg\(119)) # (\sc1|sc4|sc1|process_0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~52_combout\,
	datac => \sc1|sc4|sc0|Reg\(119),
	datad => \sc1|sc4|sc1|process_0~53_combout\,
	combout => \sc1|sc4|sc1|process_0~54_combout\);

-- Location: LCCOMB_X111_Y39_N30
\sc1|sc4|sc1|count_out[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[0]~13_combout\ = (\RST~input_o\ & (!\sc1|sc4|sc0|Reg\(124) & !\sc1|sc4|sc1|process_0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sc1|sc4|sc0|Reg\(124),
	datad => \sc1|sc4|sc1|process_0~54_combout\,
	combout => \sc1|sc4|sc1|count_out[0]~13_combout\);

-- Location: FF_X111_Y39_N13
\sc1|sc4|sc0|Reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~254_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(126));

-- Location: FF_X111_Y39_N15
\sc1|sc4|sc0|Reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~256_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(127));

-- Location: FF_X111_Y39_N11
\sc1|sc4|sc0|Reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc1|sc5|Q~clkctrl_outclk\,
	d => \sc1|sc3|sc0|Add0~252_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|sc4|sc0|Reg\(125));

-- Location: LCCOMB_X111_Y39_N28
\sc1|sc4|sc1|count_out[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[0]~12_combout\ = (\sc1|sc4|sc0|Reg\(125)) # ((!\sc1|sc4|sc0|Reg\(126) & \sc1|sc4|sc0|Reg\(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(126),
	datab => \sc1|sc4|sc0|Reg\(127),
	datad => \sc1|sc4|sc0|Reg\(125),
	combout => \sc1|sc4|sc1|count_out[0]~12_combout\);

-- Location: LCCOMB_X111_Y39_N26
\sc1|sc4|sc1|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~55_combout\ = (\sc1|sc4|sc0|Reg\(119)) # ((!\sc1|sc4|sc0|Reg\(120) & ((\sc1|sc4|sc0|Reg\(121)) # (!\sc1|sc4|sc0|Reg\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(119),
	datab => \sc1|sc4|sc0|Reg\(120),
	datac => \sc1|sc4|sc0|Reg\(122),
	datad => \sc1|sc4|sc0|Reg\(121),
	combout => \sc1|sc4|sc1|process_0~55_combout\);

-- Location: LCCOMB_X109_Y39_N24
\sc1|sc4|sc1|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~56_combout\ = (!\sc1|sc4|sc0|Reg\(114) & ((\sc1|sc4|sc0|Reg\(115)) # ((!\sc1|sc4|sc0|Reg\(116) & \sc1|sc4|sc0|Reg\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(116),
	datab => \sc1|sc4|sc0|Reg\(117),
	datac => \sc1|sc4|sc0|Reg\(115),
	datad => \sc1|sc4|sc0|Reg\(114),
	combout => \sc1|sc4|sc1|process_0~56_combout\);

-- Location: LCCOMB_X109_Y39_N26
\sc1|sc4|sc1|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~57_combout\ = (\sc1|sc4|sc1|process_0~52_combout\ & (((\sc1|sc4|sc1|process_0~56_combout\ & !\sc1|sc4|sc1|process_0~50_combout\)))) # (!\sc1|sc4|sc1|process_0~52_combout\ & (\sc1|sc4|sc1|process_0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~55_combout\,
	datab => \sc1|sc4|sc1|process_0~56_combout\,
	datac => \sc1|sc4|sc1|process_0~50_combout\,
	datad => \sc1|sc4|sc1|process_0~52_combout\,
	combout => \sc1|sc4|sc1|process_0~57_combout\);

-- Location: LCCOMB_X109_Y40_N20
\sc1|sc4|sc1|process_0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~110_combout\ = (\sc1|sc4|sc0|Reg\(108)) # (!\sc1|sc4|sc1|process_0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(108),
	datad => \sc1|sc4|sc1|process_0~49_combout\,
	combout => \sc1|sc4|sc1|process_0~110_combout\);

-- Location: LCCOMB_X112_Y39_N26
\sc1|sc4|sc1|process_0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~109_combout\ = (\sc1|sc4|sc0|Reg\(109)) # ((!\sc1|sc4|sc0|Reg\(110) & ((\sc1|sc4|sc0|Reg\(111)) # (!\sc1|sc4|sc0|Reg\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(110),
	datab => \sc1|sc4|sc0|Reg\(112),
	datac => \sc1|sc4|sc0|Reg\(109),
	datad => \sc1|sc4|sc0|Reg\(111),
	combout => \sc1|sc4|sc1|process_0~109_combout\);

-- Location: LCCOMB_X107_Y41_N30
\sc1|sc4|sc1|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~63_combout\ = ((\sc1|sc4|sc0|Reg\(93)) # ((\sc1|sc4|sc0|Reg\(92)) # (!\sc1|sc4|sc1|process_0~10_combout\))) # (!\sc1|sc4|sc1|process_0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~46_combout\,
	datab => \sc1|sc4|sc0|Reg\(93),
	datac => \sc1|sc4|sc0|Reg\(92),
	datad => \sc1|sc4|sc1|process_0~10_combout\,
	combout => \sc1|sc4|sc1|process_0~63_combout\);

-- Location: LCCOMB_X107_Y41_N8
\sc1|sc4|sc1|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~64_combout\ = (\sc1|sc4|sc0|Reg\(89)) # ((!\sc1|sc4|sc0|Reg\(90) & ((\sc1|sc4|sc0|Reg\(91)) # (!\sc1|sc4|sc0|Reg\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(90),
	datab => \sc1|sc4|sc0|Reg\(89),
	datac => \sc1|sc4|sc0|Reg\(92),
	datad => \sc1|sc4|sc0|Reg\(91),
	combout => \sc1|sc4|sc1|process_0~64_combout\);

-- Location: LCCOMB_X108_Y40_N2
\sc1|sc4|sc1|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~65_combout\ = (!\sc1|sc4|sc0|Reg\(84) & ((\sc1|sc4|sc0|Reg\(85)) # ((\sc1|sc4|sc0|Reg\(87) & !\sc1|sc4|sc0|Reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(85),
	datab => \sc1|sc4|sc0|Reg\(87),
	datac => \sc1|sc4|sc0|Reg\(84),
	datad => \sc1|sc4|sc0|Reg\(86),
	combout => \sc1|sc4|sc1|process_0~65_combout\);

-- Location: LCCOMB_X108_Y41_N26
\sc1|sc4|sc1|process_0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~66_combout\ = (\sc1|sc4|sc0|Reg\(88)) # ((\sc1|sc4|sc1|process_0~45_combout\) # (!\sc1|sc4|sc1|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(88),
	datab => \sc1|sc4|sc1|process_0~11_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~66_combout\);

-- Location: LCCOMB_X107_Y41_N18
\sc1|sc4|sc1|process_0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~67_combout\ = (\sc1|sc4|sc1|process_0~66_combout\ & (((\sc1|sc4|sc1|process_0~65_combout\ & !\sc1|sc4|sc1|process_0~45_combout\)))) # (!\sc1|sc4|sc1|process_0~66_combout\ & (\sc1|sc4|sc1|process_0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~64_combout\,
	datab => \sc1|sc4|sc1|process_0~65_combout\,
	datac => \sc1|sc4|sc1|process_0~66_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~67_combout\);

-- Location: LCCOMB_X108_Y42_N6
\sc1|sc4|sc1|process_0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~72_combout\ = (\sc1|sc4|sc0|Reg\(68)) # (!\sc1|sc4|sc1|process_0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~39_combout\,
	datac => \sc1|sc4|sc0|Reg\(68),
	combout => \sc1|sc4|sc1|process_0~72_combout\);

-- Location: LCCOMB_X105_Y42_N30
\sc1|sc4|sc1|process_0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~71_combout\ = (\sc1|sc4|sc0|Reg\(69)) # ((!\sc1|sc4|sc0|Reg\(70) & ((\sc1|sc4|sc0|Reg\(71)) # (!\sc1|sc4|sc0|Reg\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(70),
	datab => \sc1|sc4|sc0|Reg\(71),
	datac => \sc1|sc4|sc0|Reg\(72),
	datad => \sc1|sc4|sc0|Reg\(69),
	combout => \sc1|sc4|sc1|process_0~71_combout\);

-- Location: LCCOMB_X108_Y42_N24
\sc1|sc4|sc1|process_0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~70_combout\ = (!\sc1|sc4|sc0|Reg\(74) & ((\sc1|sc4|sc0|Reg\(75)) # ((\sc1|sc4|sc0|Reg\(77) & !\sc1|sc4|sc0|Reg\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(77),
	datab => \sc1|sc4|sc0|Reg\(76),
	datac => \sc1|sc4|sc0|Reg\(75),
	datad => \sc1|sc4|sc0|Reg\(74),
	combout => \sc1|sc4|sc1|process_0~70_combout\);

-- Location: LCCOMB_X108_Y42_N0
\sc1|sc4|sc1|process_0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~73_combout\ = (\sc1|sc4|sc1|process_0~41_combout\ & (!\sc1|sc4|sc1|process_0~72_combout\ & (\sc1|sc4|sc1|process_0~71_combout\))) # (!\sc1|sc4|sc1|process_0~41_combout\ & (((\sc1|sc4|sc1|process_0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~72_combout\,
	datab => \sc1|sc4|sc1|process_0~71_combout\,
	datac => \sc1|sc4|sc1|process_0~41_combout\,
	datad => \sc1|sc4|sc1|process_0~70_combout\,
	combout => \sc1|sc4|sc1|process_0~73_combout\);

-- Location: LCCOMB_X108_Y43_N18
\sc1|sc4|sc1|process_0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~68_combout\ = (!\sc1|sc4|sc0|Reg\(64) & ((\sc1|sc4|sc0|Reg\(65)) # ((!\sc1|sc4|sc0|Reg\(66) & \sc1|sc4|sc0|Reg\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(66),
	datab => \sc1|sc4|sc0|Reg\(67),
	datac => \sc1|sc4|sc0|Reg\(64),
	datad => \sc1|sc4|sc0|Reg\(65),
	combout => \sc1|sc4|sc1|process_0~68_combout\);

-- Location: LCCOMB_X108_Y43_N4
\sc1|sc4|sc1|process_0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~69_combout\ = (\sc1|sc4|sc1|process_0~68_combout\ & (!\sc1|sc4|sc1|process_0~38_combout\ & ((\sc1|sc4|sc0|Reg\(68)) # (!\sc1|sc4|sc1|process_0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(68),
	datab => \sc1|sc4|sc1|process_0~68_combout\,
	datac => \sc1|sc4|sc1|process_0~38_combout\,
	datad => \sc1|sc4|sc1|process_0~39_combout\,
	combout => \sc1|sc4|sc1|process_0~69_combout\);

-- Location: LCCOMB_X107_Y44_N16
\sc1|sc4|sc1|process_0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~74_combout\ = (\sc1|sc4|sc1|process_0~35_combout\) # ((\sc1|sc4|sc0|Reg\(48)) # (!\sc1|sc4|sc1|process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~35_combout\,
	datac => \sc1|sc4|sc1|process_0~17_combout\,
	datad => \sc1|sc4|sc0|Reg\(48),
	combout => \sc1|sc4|sc1|process_0~74_combout\);

-- Location: LCCOMB_X107_Y41_N12
\sc1|sc4|sc1|process_0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~90_combout\ = (\sc1|sc4|sc0|Reg\(29)) # ((!\sc1|sc4|sc0|Reg\(30) & ((\sc1|sc4|sc0|Reg\(31)) # (!\sc1|sc4|sc0|Reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(31),
	datab => \sc1|sc4|sc0|Reg\(32),
	datac => \sc1|sc4|sc0|Reg\(30),
	datad => \sc1|sc4|sc0|Reg\(29),
	combout => \sc1|sc4|sc1|process_0~90_combout\);

-- Location: LCCOMB_X108_Y44_N30
\sc1|sc4|sc1|process_0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~88_combout\ = (\sc1|sc4|sc0|Reg\(25)) # ((\sc1|sc4|sc0|Reg\(27) & !\sc1|sc4|sc0|Reg\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(27),
	datab => \sc1|sc4|sc0|Reg\(26),
	datad => \sc1|sc4|sc0|Reg\(25),
	combout => \sc1|sc4|sc1|process_0~88_combout\);

-- Location: LCCOMB_X108_Y44_N24
\sc1|sc4|sc1|process_0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~89_combout\ = (!\sc1|sc4|sc1|process_0~30_combout\ & (\sc1|sc4|sc1|process_0~88_combout\ & !\sc1|sc4|sc0|Reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~30_combout\,
	datac => \sc1|sc4|sc1|process_0~88_combout\,
	datad => \sc1|sc4|sc0|Reg\(24),
	combout => \sc1|sc4|sc1|process_0~89_combout\);

-- Location: LCCOMB_X108_Y44_N4
\sc1|sc4|sc1|process_0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~183_combout\ = ((\sc1|sc4|sc0|Reg\(32)) # (\sc1|sc4|sc0|Reg\(33))) # (!\sc1|sc4|sc1|count_out[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|count_out[5]~8_combout\,
	datac => \sc1|sc4|sc0|Reg\(32),
	datad => \sc1|sc4|sc0|Reg\(33),
	combout => \sc1|sc4|sc1|process_0~183_combout\);

-- Location: LCCOMB_X108_Y44_N28
\sc1|sc4|sc1|process_0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~91_combout\ = (\sc1|sc4|sc0|Reg\(28)) # ((\sc1|sc4|sc0|Reg\(26)) # ((\sc1|sc4|sc0|Reg\(27)) # (!\sc1|sc4|sc1|process_0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(28),
	datab => \sc1|sc4|sc0|Reg\(26),
	datac => \sc1|sc4|sc0|Reg\(27),
	datad => \sc1|sc4|sc1|process_0~31_combout\,
	combout => \sc1|sc4|sc1|process_0~91_combout\);

-- Location: LCCOMB_X108_Y44_N12
\sc1|sc4|sc1|process_0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~92_combout\ = (\sc1|sc4|sc1|process_0~91_combout\ & (((\sc1|sc4|sc1|process_0~89_combout\)))) # (!\sc1|sc4|sc1|process_0~91_combout\ & (\sc1|sc4|sc1|process_0~90_combout\ & ((\sc1|sc4|sc1|process_0~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~90_combout\,
	datab => \sc1|sc4|sc1|process_0~89_combout\,
	datac => \sc1|sc4|sc1|process_0~183_combout\,
	datad => \sc1|sc4|sc1|process_0~91_combout\,
	combout => \sc1|sc4|sc1|process_0~92_combout\);

-- Location: LCCOMB_X112_Y44_N12
\sc1|sc4|sc1|process_0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~75_combout\ = (!\sc1|sc4|sc0|Reg\(44) & ((\sc1|sc4|sc0|Reg\(45)) # ((!\sc1|sc4|sc0|Reg\(46) & \sc1|sc4|sc0|Reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(46),
	datab => \sc1|sc4|sc0|Reg\(45),
	datac => \sc1|sc4|sc0|Reg\(47),
	datad => \sc1|sc4|sc0|Reg\(44),
	combout => \sc1|sc4|sc1|process_0~75_combout\);

-- Location: LCCOMB_X112_Y44_N30
\sc1|sc4|sc1|process_0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~76_combout\ = (\sc1|sc4|sc0|Reg\(39)) # ((!\sc1|sc4|sc0|Reg\(40) & ((\sc1|sc4|sc0|Reg\(41)) # (!\sc1|sc4|sc0|Reg\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(40),
	datab => \sc1|sc4|sc0|Reg\(42),
	datac => \sc1|sc4|sc0|Reg\(39),
	datad => \sc1|sc4|sc0|Reg\(41),
	combout => \sc1|sc4|sc1|process_0~76_combout\);

-- Location: LCCOMB_X112_Y44_N22
\sc1|sc4|sc1|process_0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~77_combout\ = (\sc1|sc4|sc1|process_0~35_combout\ & (((\sc1|sc4|sc1|process_0~76_combout\ & !\sc1|sc4|sc1|process_0~33_combout\)))) # (!\sc1|sc4|sc1|process_0~35_combout\ & (\sc1|sc4|sc1|process_0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~75_combout\,
	datab => \sc1|sc4|sc1|process_0~35_combout\,
	datac => \sc1|sc4|sc1|process_0~76_combout\,
	datad => \sc1|sc4|sc1|process_0~33_combout\,
	combout => \sc1|sc4|sc1|process_0~77_combout\);

-- Location: LCCOMB_X111_Y48_N12
\sc1|sc4|sc1|process_0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~182_combout\ = (\sc1|sc4|sc0|Reg\(18)) # (((\sc1|sc4|sc0|Reg\(17)) # (\sc1|sc4|sc0|Reg\(16))) # (!\sc1|sc4|sc1|process_0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(18),
	datab => \sc1|sc4|sc1|process_0~29_combout\,
	datac => \sc1|sc4|sc0|Reg\(17),
	datad => \sc1|sc4|sc0|Reg\(16),
	combout => \sc1|sc4|sc1|process_0~182_combout\);

-- Location: LCCOMB_X111_Y48_N8
\sc1|sc4|sc1|process_0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~78_combout\ = (!\sc1|sc4|sc0|Reg\(14) & ((\sc1|sc4|sc0|Reg\(15)) # ((\sc1|sc4|sc0|Reg\(17) & !\sc1|sc4|sc0|Reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(15),
	datab => \sc1|sc4|sc0|Reg\(14),
	datac => \sc1|sc4|sc0|Reg\(17),
	datad => \sc1|sc4|sc0|Reg\(16),
	combout => \sc1|sc4|sc1|process_0~78_combout\);

-- Location: LCCOMB_X112_Y47_N18
\sc1|sc4|sc1|process_0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~79_combout\ = (\sc1|sc4|sc0|Reg\(11)) # ((!\sc1|sc4|sc0|Reg\(12) & ((\sc1|sc4|sc1|process_0~78_combout\) # (\sc1|sc4|sc0|Reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(12),
	datab => \sc1|sc4|sc0|Reg\(11),
	datac => \sc1|sc4|sc1|process_0~78_combout\,
	datad => \sc1|sc4|sc0|Reg\(13),
	combout => \sc1|sc4|sc1|process_0~79_combout\);

-- Location: LCCOMB_X112_Y47_N10
\sc1|sc4|sc1|process_0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~80_combout\ = (!\sc1|sc4|sc0|Reg\(8) & ((\sc1|sc4|sc0|Reg\(9)) # ((\sc1|sc4|sc1|process_0~79_combout\ & !\sc1|sc4|sc0|Reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(9),
	datab => \sc1|sc4|sc1|process_0~79_combout\,
	datac => \sc1|sc4|sc0|Reg\(8),
	datad => \sc1|sc4|sc0|Reg\(10),
	combout => \sc1|sc4|sc1|process_0~80_combout\);

-- Location: LCCOMB_X112_Y47_N14
\sc1|sc4|sc1|process_0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~81_combout\ = (\sc1|sc4|sc0|Reg\(5)) # ((!\sc1|sc4|sc0|Reg\(6) & ((\sc1|sc4|sc0|Reg\(7)) # (\sc1|sc4|sc1|process_0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(7),
	datab => \sc1|sc4|sc0|Reg\(6),
	datac => \sc1|sc4|sc0|Reg\(5),
	datad => \sc1|sc4|sc1|process_0~80_combout\,
	combout => \sc1|sc4|sc1|process_0~81_combout\);

-- Location: LCCOMB_X112_Y47_N26
\sc1|sc4|sc1|process_0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~82_combout\ = (!\sc1|sc4|sc0|Reg\(2) & ((\sc1|sc4|sc0|Reg\(3)) # ((\sc1|sc4|sc1|process_0~81_combout\ & !\sc1|sc4|sc0|Reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(3),
	datab => \sc1|sc4|sc0|Reg\(2),
	datac => \sc1|sc4|sc1|process_0~81_combout\,
	datad => \sc1|sc4|sc0|Reg\(4),
	combout => \sc1|sc4|sc1|process_0~82_combout\);

-- Location: LCCOMB_X111_Y47_N0
\sc1|sc4|sc1|process_0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~83_combout\ = (!\sc1|sc4|sc0|Reg\(0) & ((\sc1|sc4|sc0|Reg\(1)) # (\sc1|sc4|sc1|process_0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(1),
	datab => \sc1|sc4|sc0|Reg\(0),
	datad => \sc1|sc4|sc1|process_0~82_combout\,
	combout => \sc1|sc4|sc1|process_0~83_combout\);

-- Location: LCCOMB_X111_Y48_N26
\sc1|sc4|sc1|process_0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~84_combout\ = (\sc1|sc4|sc0|Reg\(19)) # ((!\sc1|sc4|sc0|Reg\(20) & ((\sc1|sc4|sc0|Reg\(21)) # (!\sc1|sc4|sc0|Reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(20),
	datab => \sc1|sc4|sc0|Reg\(19),
	datac => \sc1|sc4|sc0|Reg\(22),
	datad => \sc1|sc4|sc0|Reg\(21),
	combout => \sc1|sc4|sc1|process_0~84_combout\);

-- Location: LCCOMB_X111_Y48_N0
\sc1|sc4|sc1|process_0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~85_combout\ = (\sc1|sc4|sc1|process_0~30_combout\ & ((\sc1|sc4|sc1|process_0~83_combout\) # ((!\sc1|sc4|sc1|process_0~182_combout\ & \sc1|sc4|sc1|process_0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~182_combout\,
	datab => \sc1|sc4|sc1|process_0~83_combout\,
	datac => \sc1|sc4|sc1|process_0~84_combout\,
	datad => \sc1|sc4|sc1|process_0~30_combout\,
	combout => \sc1|sc4|sc1|process_0~85_combout\);

-- Location: LCCOMB_X114_Y48_N4
\sc1|sc4|sc1|process_0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~86_combout\ = (!\sc1|sc4|sc0|Reg\(34) & ((\sc1|sc4|sc0|Reg\(35)) # ((\sc1|sc4|sc0|Reg\(37) & !\sc1|sc4|sc0|Reg\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(37),
	datab => \sc1|sc4|sc0|Reg\(35),
	datac => \sc1|sc4|sc0|Reg\(36),
	datad => \sc1|sc4|sc0|Reg\(34),
	combout => \sc1|sc4|sc1|process_0~86_combout\);

-- Location: LCCOMB_X112_Y44_N0
\sc1|sc4|sc1|process_0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~87_combout\ = (\sc1|sc4|sc1|process_0~85_combout\) # ((!\sc1|sc4|sc1|process_0~183_combout\ & (\sc1|sc4|sc1|process_0~86_combout\ & \sc1|sc4|sc1|process_0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~85_combout\,
	datab => \sc1|sc4|sc1|process_0~183_combout\,
	datac => \sc1|sc4|sc1|process_0~86_combout\,
	datad => \sc1|sc4|sc1|process_0~33_combout\,
	combout => \sc1|sc4|sc1|process_0~87_combout\);

-- Location: LCCOMB_X112_Y44_N20
\sc1|sc4|sc1|process_0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~93_combout\ = (\sc1|sc4|sc1|process_0~74_combout\ & ((\sc1|sc4|sc1|process_0~92_combout\) # ((\sc1|sc4|sc1|process_0~77_combout\) # (\sc1|sc4|sc1|process_0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~74_combout\,
	datab => \sc1|sc4|sc1|process_0~92_combout\,
	datac => \sc1|sc4|sc1|process_0~77_combout\,
	datad => \sc1|sc4|sc1|process_0~87_combout\,
	combout => \sc1|sc4|sc1|process_0~93_combout\);

-- Location: LCCOMB_X107_Y44_N18
\sc1|sc4|sc1|process_0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~94_combout\ = ((\sc1|sc4|sc0|Reg\(53)) # (\sc1|sc4|sc0|Reg\(52))) # (!\sc1|sc4|sc1|process_0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~36_combout\,
	datac => \sc1|sc4|sc0|Reg\(53),
	datad => \sc1|sc4|sc0|Reg\(52),
	combout => \sc1|sc4|sc1|process_0~94_combout\);

-- Location: LCCOMB_X107_Y44_N12
\sc1|sc4|sc1|process_0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~95_combout\ = (\sc1|sc4|sc0|Reg\(49)) # ((!\sc1|sc4|sc0|Reg\(50) & ((\sc1|sc4|sc0|Reg\(51)) # (!\sc1|sc4|sc0|Reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(52),
	datab => \sc1|sc4|sc0|Reg\(50),
	datac => \sc1|sc4|sc0|Reg\(51),
	datad => \sc1|sc4|sc0|Reg\(49),
	combout => \sc1|sc4|sc1|process_0~95_combout\);

-- Location: LCCOMB_X107_Y44_N6
\sc1|sc4|sc1|process_0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~96_combout\ = (\sc1|sc4|sc1|process_0~93_combout\) # ((\sc1|sc4|sc1|process_0~94_combout\ & (\sc1|sc4|sc1|process_0~95_combout\ & !\sc1|sc4|sc1|process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~93_combout\,
	datab => \sc1|sc4|sc1|process_0~94_combout\,
	datac => \sc1|sc4|sc1|process_0~95_combout\,
	datad => \sc1|sc4|sc1|process_0~74_combout\,
	combout => \sc1|sc4|sc1|process_0~96_combout\);

-- Location: LCCOMB_X108_Y43_N0
\sc1|sc4|sc1|process_0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~100_combout\ = (\sc1|sc4|sc0|Reg\(56)) # ((\sc1|sc4|sc0|Reg\(58)) # ((\sc1|sc4|sc0|Reg\(57)) # (!\sc1|sc4|sc1|process_0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(56),
	datab => \sc1|sc4|sc0|Reg\(58),
	datac => \sc1|sc4|sc0|Reg\(57),
	datad => \sc1|sc4|sc1|process_0~37_combout\,
	combout => \sc1|sc4|sc1|process_0~100_combout\);

-- Location: LCCOMB_X107_Y44_N4
\sc1|sc4|sc1|process_0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~97_combout\ = (!\sc1|sc4|sc0|Reg\(54) & ((\sc1|sc4|sc0|Reg\(55)) # ((\sc1|sc4|sc0|Reg\(57) & !\sc1|sc4|sc0|Reg\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(57),
	datab => \sc1|sc4|sc0|Reg\(55),
	datac => \sc1|sc4|sc0|Reg\(56),
	datad => \sc1|sc4|sc0|Reg\(54),
	combout => \sc1|sc4|sc1|process_0~97_combout\);

-- Location: LCCOMB_X107_Y44_N30
\sc1|sc4|sc1|process_0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~98_combout\ = (!\sc1|sc4|sc0|Reg\(53) & (\sc1|sc4|sc1|process_0~36_combout\ & (\sc1|sc4|sc1|process_0~97_combout\ & !\sc1|sc4|sc0|Reg\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(53),
	datab => \sc1|sc4|sc1|process_0~36_combout\,
	datac => \sc1|sc4|sc1|process_0~97_combout\,
	datad => \sc1|sc4|sc0|Reg\(52),
	combout => \sc1|sc4|sc1|process_0~98_combout\);

-- Location: LCCOMB_X108_Y43_N2
\sc1|sc4|sc1|process_0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~99_combout\ = (\sc1|sc4|sc0|Reg\(59)) # ((!\sc1|sc4|sc0|Reg\(60) & ((\sc1|sc4|sc0|Reg\(61)) # (!\sc1|sc4|sc0|Reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(60),
	datab => \sc1|sc4|sc0|Reg\(61),
	datac => \sc1|sc4|sc0|Reg\(62),
	datad => \sc1|sc4|sc0|Reg\(59),
	combout => \sc1|sc4|sc1|process_0~99_combout\);

-- Location: LCCOMB_X108_Y43_N6
\sc1|sc4|sc1|process_0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~101_combout\ = (\sc1|sc4|sc1|process_0~96_combout\) # ((\sc1|sc4|sc1|process_0~100_combout\ & (\sc1|sc4|sc1|process_0~98_combout\)) # (!\sc1|sc4|sc1|process_0~100_combout\ & ((\sc1|sc4|sc1|process_0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~96_combout\,
	datab => \sc1|sc4|sc1|process_0~100_combout\,
	datac => \sc1|sc4|sc1|process_0~98_combout\,
	datad => \sc1|sc4|sc1|process_0~99_combout\,
	combout => \sc1|sc4|sc1|process_0~101_combout\);

-- Location: LCCOMB_X108_Y43_N16
\sc1|sc4|sc1|process_0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~102_combout\ = (\sc1|sc4|sc1|process_0~73_combout\) # ((\sc1|sc4|sc1|process_0~69_combout\) # ((\sc1|sc4|sc1|process_0~38_combout\ & \sc1|sc4|sc1|process_0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~38_combout\,
	datab => \sc1|sc4|sc1|process_0~73_combout\,
	datac => \sc1|sc4|sc1|process_0~69_combout\,
	datad => \sc1|sc4|sc1|process_0~101_combout\,
	combout => \sc1|sc4|sc1|process_0~102_combout\);

-- Location: LCCOMB_X108_Y41_N20
\sc1|sc4|sc1|process_0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~103_combout\ = (\sc1|sc4|sc0|Reg\(79)) # ((!\sc1|sc4|sc0|Reg\(80) & ((\sc1|sc4|sc0|Reg\(81)) # (!\sc1|sc4|sc0|Reg\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(81),
	datab => \sc1|sc4|sc0|Reg\(79),
	datac => \sc1|sc4|sc0|Reg\(82),
	datad => \sc1|sc4|sc0|Reg\(80),
	combout => \sc1|sc4|sc1|process_0~103_combout\);

-- Location: LCCOMB_X107_Y41_N14
\sc1|sc4|sc1|process_0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~104_combout\ = (\sc1|sc4|sc1|process_0~43_combout\ & (\sc1|sc4|sc1|process_0~102_combout\)) # (!\sc1|sc4|sc1|process_0~43_combout\ & (((\sc1|sc4|sc1|process_0~103_combout\ & \sc1|sc4|sc1|process_0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~102_combout\,
	datab => \sc1|sc4|sc1|process_0~43_combout\,
	datac => \sc1|sc4|sc1|process_0~103_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~104_combout\);

-- Location: LCCOMB_X108_Y41_N14
\sc1|sc4|sc1|process_0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~105_combout\ = (\sc1|sc4|sc1|process_0~63_combout\ & ((\sc1|sc4|sc1|process_0~67_combout\) # (\sc1|sc4|sc1|process_0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~63_combout\,
	datab => \sc1|sc4|sc1|process_0~67_combout\,
	datad => \sc1|sc4|sc1|process_0~104_combout\,
	combout => \sc1|sc4|sc1|process_0~105_combout\);

-- Location: LCCOMB_X112_Y41_N30
\sc1|sc4|sc1|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~59_combout\ = ((\sc1|sc4|sc0|Reg\(98)) # ((\sc1|sc4|sc0|Reg\(96)) # (\sc1|sc4|sc0|Reg\(97)))) # (!\sc1|sc4|sc1|count_out[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~9_combout\,
	datab => \sc1|sc4|sc0|Reg\(98),
	datac => \sc1|sc4|sc0|Reg\(96),
	datad => \sc1|sc4|sc0|Reg\(97),
	combout => \sc1|sc4|sc1|process_0~59_combout\);

-- Location: LCCOMB_X112_Y41_N10
\sc1|sc4|sc1|process_0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~106_combout\ = (\sc1|sc4|sc0|Reg\(95)) # ((\sc1|sc4|sc0|Reg\(97) & !\sc1|sc4|sc0|Reg\(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(97),
	datac => \sc1|sc4|sc0|Reg\(96),
	datad => \sc1|sc4|sc0|Reg\(95),
	combout => \sc1|sc4|sc1|process_0~106_combout\);

-- Location: LCCOMB_X112_Y41_N24
\sc1|sc4|sc1|process_0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~107_combout\ = (!\sc1|sc4|sc0|Reg\(94) & (!\sc1|sc4|sc1|process_0~63_combout\ & (\sc1|sc4|sc1|process_0~59_combout\ & \sc1|sc4|sc1|process_0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(94),
	datab => \sc1|sc4|sc1|process_0~63_combout\,
	datac => \sc1|sc4|sc1|process_0~59_combout\,
	datad => \sc1|sc4|sc1|process_0~106_combout\,
	combout => \sc1|sc4|sc1|process_0~107_combout\);

-- Location: LCCOMB_X109_Y40_N28
\sc1|sc4|sc1|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~61_combout\ = (\sc1|sc4|sc0|Reg\(107) & !\sc1|sc4|sc0|Reg\(106))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(107),
	datad => \sc1|sc4|sc0|Reg\(106),
	combout => \sc1|sc4|sc1|process_0~61_combout\);

-- Location: LCCOMB_X109_Y40_N22
\sc1|sc4|sc1|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~62_combout\ = (!\sc1|sc4|sc1|process_0~48_combout\ & (!\sc1|sc4|sc0|Reg\(104) & ((\sc1|sc4|sc1|process_0~61_combout\) # (\sc1|sc4|sc0|Reg\(105)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~48_combout\,
	datab => \sc1|sc4|sc1|process_0~61_combout\,
	datac => \sc1|sc4|sc0|Reg\(105),
	datad => \sc1|sc4|sc0|Reg\(104),
	combout => \sc1|sc4|sc1|process_0~62_combout\);

-- Location: LCCOMB_X112_Y41_N20
\sc1|sc4|sc1|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~58_combout\ = (\sc1|sc4|sc0|Reg\(99)) # ((!\sc1|sc4|sc0|Reg\(100) & ((\sc1|sc4|sc0|Reg\(101)) # (!\sc1|sc4|sc0|Reg\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(102),
	datab => \sc1|sc4|sc0|Reg\(100),
	datac => \sc1|sc4|sc0|Reg\(101),
	datad => \sc1|sc4|sc0|Reg\(99),
	combout => \sc1|sc4|sc1|process_0~58_combout\);

-- Location: LCCOMB_X112_Y41_N0
\sc1|sc4|sc1|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~60_combout\ = (!\sc1|sc4|sc1|process_0~59_combout\ & (\sc1|sc4|sc1|process_0~58_combout\ & ((\sc1|sc4|sc0|Reg\(99)) # (\sc1|sc4|sc1|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~59_combout\,
	datab => \sc1|sc4|sc0|Reg\(99),
	datac => \sc1|sc4|sc1|process_0~9_combout\,
	datad => \sc1|sc4|sc1|process_0~58_combout\,
	combout => \sc1|sc4|sc1|process_0~60_combout\);

-- Location: LCCOMB_X112_Y41_N6
\sc1|sc4|sc1|process_0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~108_combout\ = (\sc1|sc4|sc1|process_0~105_combout\) # ((\sc1|sc4|sc1|process_0~107_combout\) # ((\sc1|sc4|sc1|process_0~62_combout\) # (\sc1|sc4|sc1|process_0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~105_combout\,
	datab => \sc1|sc4|sc1|process_0~107_combout\,
	datac => \sc1|sc4|sc1|process_0~62_combout\,
	datad => \sc1|sc4|sc1|process_0~60_combout\,
	combout => \sc1|sc4|sc1|process_0~108_combout\);

-- Location: LCCOMB_X112_Y39_N30
\sc1|sc4|sc1|process_0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~111_combout\ = (\sc1|sc4|sc1|process_0~110_combout\ & (((\sc1|sc4|sc1|process_0~108_combout\)))) # (!\sc1|sc4|sc1|process_0~110_combout\ & (\sc1|sc4|sc1|process_0~50_combout\ & (\sc1|sc4|sc1|process_0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~110_combout\,
	datab => \sc1|sc4|sc1|process_0~50_combout\,
	datac => \sc1|sc4|sc1|process_0~109_combout\,
	datad => \sc1|sc4|sc1|process_0~108_combout\,
	combout => \sc1|sc4|sc1|process_0~111_combout\);

-- Location: LCCOMB_X112_Y39_N16
\sc1|sc4|sc1|count_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[0]~11_combout\ = (\sc1|sc4|sc1|process_0~54_combout\ & (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~57_combout\) # (\sc1|sc4|sc1|process_0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~57_combout\,
	datab => \sc1|sc4|sc1|process_0~54_combout\,
	datac => \sc1|sc4|sc1|process_0~111_combout\,
	datad => \RST~input_o\,
	combout => \sc1|sc4|sc1|count_out[0]~11_combout\);

-- Location: LCCOMB_X112_Y39_N22
\sc1|sc4|sc1|count_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[0]~14_combout\ = (\sc1|sc4|sc1|count_out[0]~11_combout\) # ((\sc1|sc4|sc1|count_out[0]~13_combout\ & \sc1|sc4|sc1|count_out[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|count_out[0]~13_combout\,
	datac => \sc1|sc4|sc1|count_out[0]~12_combout\,
	datad => \sc1|sc4|sc1|count_out[0]~11_combout\,
	combout => \sc1|sc4|sc1|count_out[0]~14_combout\);

-- Location: CLKCTRL_G7
\sc0|sc4|Q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc0|sc4|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc0|sc4|Q~clkctrl_outclk\);

-- Location: FF_X110_Y40_N25
\sc0|sc2|sc1|sc0|Reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~234_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(116));

-- Location: FF_X110_Y40_N23
\sc0|sc2|sc1|sc0|Reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~232_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(115));

-- Location: FF_X110_Y40_N27
\sc0|sc2|sc1|sc0|Reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~236_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(117));

-- Location: FF_X110_Y40_N21
\sc0|sc2|sc1|sc0|Reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~230_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(114));

-- Location: LCCOMB_X110_Y38_N26
\sc0|sc2|sc1|sc1|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~56_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(114) & ((\sc0|sc2|sc1|sc0|Reg\(115)) # ((!\sc0|sc2|sc1|sc0|Reg\(116) & \sc0|sc2|sc1|sc0|Reg\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(116),
	datab => \sc0|sc2|sc1|sc0|Reg\(115),
	datac => \sc0|sc2|sc1|sc0|Reg\(117),
	datad => \sc0|sc2|sc1|sc0|Reg\(114),
	combout => \sc0|sc2|sc1|sc1|process_0~56_combout\);

-- Location: FF_X110_Y40_N29
\sc0|sc2|sc1|sc0|Reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~238_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(118));

-- Location: LCCOMB_X110_Y38_N22
\sc0|sc2|sc1|sc1|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~52_combout\ = (\sc0|sc2|sc1|sc0|Reg\(116)) # ((\sc0|sc2|sc1|sc0|Reg\(117)) # (\sc0|sc2|sc1|sc0|Reg\(118)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(116),
	datab => \sc0|sc2|sc1|sc0|Reg\(117),
	datac => \sc0|sc2|sc1|sc0|Reg\(118),
	combout => \sc0|sc2|sc1|sc1|process_0~52_combout\);

-- Location: FF_X110_Y40_N17
\sc0|sc2|sc1|sc0|Reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~226_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(112));

-- Location: FF_X110_Y40_N19
\sc0|sc2|sc1|sc0|Reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~228_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(113));

-- Location: LCCOMB_X110_Y38_N16
\sc0|sc2|sc1|sc1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~6_combout\ = (\sc0|sc2|sc1|sc0|Reg\(112)) # (\sc0|sc2|sc1|sc0|Reg\(113))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(112),
	datad => \sc0|sc2|sc1|sc0|Reg\(113),
	combout => \sc0|sc2|sc1|sc1|process_0~6_combout\);

-- Location: FF_X110_Y40_N13
\sc0|sc2|sc1|sc0|Reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~222_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(110));

-- Location: FF_X110_Y40_N15
\sc0|sc2|sc1|sc0|Reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~224_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(111));

-- Location: FF_X110_Y40_N11
\sc0|sc2|sc1|sc0|Reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~220_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(109));

-- Location: LCCOMB_X113_Y40_N16
\sc0|sc2|sc1|sc1|count_out[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[4]~8_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(110) & (!\sc0|sc2|sc1|sc0|Reg\(111) & !\sc0|sc2|sc1|sc0|Reg\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(110),
	datab => \sc0|sc2|sc1|sc0|Reg\(111),
	datad => \sc0|sc2|sc1|sc0|Reg\(109),
	combout => \sc0|sc2|sc1|sc1|count_out[4]~8_combout\);

-- Location: FF_X110_Y40_N9
\sc0|sc2|sc1|sc0|Reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~218_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(108));

-- Location: FF_X110_Y40_N1
\sc0|sc2|sc1|sc0|Reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~210_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(104));

-- Location: FF_X110_Y40_N3
\sc0|sc2|sc1|sc0|Reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~212_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(105));

-- Location: FF_X110_Y40_N5
\sc0|sc2|sc1|sc0|Reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~214_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(106));

-- Location: FF_X110_Y40_N7
\sc0|sc2|sc1|sc0|Reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~216_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(107));

-- Location: LCCOMB_X113_Y40_N26
\sc0|sc2|sc1|sc1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~7_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(106) & !\sc0|sc2|sc1|sc0|Reg\(107))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(106),
	datac => \sc0|sc2|sc1|sc0|Reg\(107),
	combout => \sc0|sc2|sc1|sc1|process_0~7_combout\);

-- Location: FF_X110_Y41_N23
\sc0|sc2|sc1|sc0|Reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~200_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(99));

-- Location: FF_X110_Y41_N21
\sc0|sc2|sc1|sc0|Reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~198_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(98));

-- Location: FF_X110_Y41_N19
\sc0|sc2|sc1|sc0|Reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~196_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(97));

-- Location: FF_X110_Y41_N17
\sc0|sc2|sc1|sc0|Reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~194_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(96));

-- Location: LCCOMB_X114_Y40_N28
\sc0|sc2|sc1|sc1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~8_combout\ = (\sc0|sc2|sc1|sc0|Reg\(98)) # ((\sc0|sc2|sc1|sc0|Reg\(97)) # (\sc0|sc2|sc1|sc0|Reg\(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(98),
	datac => \sc0|sc2|sc1|sc0|Reg\(97),
	datad => \sc0|sc2|sc1|sc0|Reg\(96),
	combout => \sc0|sc2|sc1|sc1|process_0~8_combout\);

-- Location: FF_X110_Y41_N5
\sc0|sc2|sc1|sc0|Reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~182_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(90));

-- Location: FF_X110_Y41_N7
\sc0|sc2|sc1|sc0|Reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~184_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(91));

-- Location: LCCOMB_X109_Y42_N22
\sc0|sc2|sc1|sc1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~10_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(90) & !\sc0|sc2|sc1|sc0|Reg\(91))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(90),
	datad => \sc0|sc2|sc1|sc0|Reg\(91),
	combout => \sc0|sc2|sc1|sc1|process_0~10_combout\);

-- Location: FF_X110_Y41_N9
\sc0|sc2|sc1|sc0|Reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~186_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(92));

-- Location: FF_X110_Y41_N11
\sc0|sc2|sc1|sc0|Reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~188_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(93));

-- Location: LCCOMB_X109_Y42_N0
\sc0|sc2|sc1|sc1|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~48_combout\ = (\sc0|sc2|sc1|sc0|Reg\(92)) # (\sc0|sc2|sc1|sc0|Reg\(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(92),
	datac => \sc0|sc2|sc1|sc0|Reg\(93),
	combout => \sc0|sc2|sc1|sc1|process_0~48_combout\);

-- Location: FF_X110_Y41_N15
\sc0|sc2|sc1|sc0|Reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~192_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(95));

-- Location: FF_X110_Y41_N13
\sc0|sc2|sc1|sc0|Reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~190_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(94));

-- Location: LCCOMB_X114_Y40_N16
\sc0|sc2|sc1|sc1|count_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~5_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(95) & !\sc0|sc2|sc1|sc0|Reg\(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(95),
	datad => \sc0|sc2|sc1|sc0|Reg\(94),
	combout => \sc0|sc2|sc1|sc1|count_out[5]~5_combout\);

-- Location: FF_X110_Y42_N17
\sc0|sc2|sc1|sc0|Reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~162_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(80));

-- Location: FF_X110_Y42_N23
\sc0|sc2|sc1|sc0|Reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~168_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(83));

-- Location: FF_X110_Y42_N19
\sc0|sc2|sc1|sc0|Reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~164_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(81));

-- Location: FF_X110_Y42_N21
\sc0|sc2|sc1|sc0|Reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~166_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(82));

-- Location: LCCOMB_X113_Y42_N16
\sc0|sc2|sc1|sc1|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~45_combout\ = (\sc0|sc2|sc1|sc0|Reg\(80)) # ((\sc0|sc2|sc1|sc0|Reg\(83)) # ((\sc0|sc2|sc1|sc0|Reg\(81)) # (\sc0|sc2|sc1|sc0|Reg\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(80),
	datab => \sc0|sc2|sc1|sc0|Reg\(83),
	datac => \sc0|sc2|sc1|sc0|Reg\(81),
	datad => \sc0|sc2|sc1|sc0|Reg\(82),
	combout => \sc0|sc2|sc1|sc1|process_0~45_combout\);

-- Location: FF_X110_Y42_N5
\sc0|sc2|sc1|sc0|Reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~150_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(74));

-- Location: FF_X110_Y42_N11
\sc0|sc2|sc1|sc0|Reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~156_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(77));

-- Location: FF_X110_Y42_N9
\sc0|sc2|sc1|sc0|Reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~154_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(76));

-- Location: FF_X110_Y42_N13
\sc0|sc2|sc1|sc0|Reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~158_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(78));

-- Location: LCCOMB_X114_Y42_N2
\sc0|sc2|sc1|sc1|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~43_combout\ = (\sc0|sc2|sc1|sc0|Reg\(77)) # ((\sc0|sc2|sc1|sc0|Reg\(76)) # (\sc0|sc2|sc1|sc0|Reg\(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(77),
	datac => \sc0|sc2|sc1|sc0|Reg\(76),
	datad => \sc0|sc2|sc1|sc0|Reg\(78),
	combout => \sc0|sc2|sc1|sc1|process_0~43_combout\);

-- Location: FF_X110_Y42_N7
\sc0|sc2|sc1|sc0|Reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~152_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(75));

-- Location: FF_X110_Y43_N27
\sc0|sc2|sc1|sc0|Reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~140_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(69));

-- Location: FF_X110_Y43_N29
\sc0|sc2|sc1|sc0|Reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~142_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(70));

-- Location: FF_X110_Y43_N31
\sc0|sc2|sc1|sc0|Reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~144_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(71));

-- Location: LCCOMB_X114_Y42_N6
\sc0|sc2|sc1|sc1|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~41_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(69) & (!\sc0|sc2|sc1|sc0|Reg\(70) & !\sc0|sc2|sc1|sc0|Reg\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(69),
	datac => \sc0|sc2|sc1|sc0|Reg\(70),
	datad => \sc0|sc2|sc1|sc0|Reg\(71),
	combout => \sc0|sc2|sc1|sc1|process_0~41_combout\);

-- Location: FF_X110_Y43_N3
\sc0|sc2|sc1|sc0|Reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~116_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(57));

-- Location: FF_X110_Y43_N1
\sc0|sc2|sc1|sc0|Reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~114_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(56));

-- Location: FF_X110_Y43_N5
\sc0|sc2|sc1|sc0|Reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~118_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(58));

-- Location: LCCOMB_X106_Y43_N22
\sc0|sc2|sc1|sc1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~14_combout\ = (\sc0|sc2|sc1|sc0|Reg\(57)) # ((\sc0|sc2|sc1|sc0|Reg\(56)) # (\sc0|sc2|sc1|sc0|Reg\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(57),
	datac => \sc0|sc2|sc1|sc0|Reg\(56),
	datad => \sc0|sc2|sc1|sc0|Reg\(58),
	combout => \sc0|sc2|sc1|sc1|process_0~14_combout\);

-- Location: FF_X110_Y43_N7
\sc0|sc2|sc1|sc0|Reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~120_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(59));

-- Location: FF_X110_Y43_N13
\sc0|sc2|sc1|sc0|Reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~126_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(62));

-- Location: FF_X110_Y43_N11
\sc0|sc2|sc1|sc0|Reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~124_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(61));

-- Location: FF_X110_Y43_N15
\sc0|sc2|sc1|sc0|Reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~128_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(63));

-- Location: FF_X110_Y43_N9
\sc0|sc2|sc1|sc0|Reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~122_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(60));

-- Location: LCCOMB_X106_Y43_N8
\sc0|sc2|sc1|sc1|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~15_combout\ = (\sc0|sc2|sc1|sc0|Reg\(62)) # ((\sc0|sc2|sc1|sc0|Reg\(61)) # ((\sc0|sc2|sc1|sc0|Reg\(63)) # (\sc0|sc2|sc1|sc0|Reg\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(62),
	datab => \sc0|sc2|sc1|sc0|Reg\(61),
	datac => \sc0|sc2|sc1|sc0|Reg\(63),
	datad => \sc0|sc2|sc1|sc0|Reg\(60),
	combout => \sc0|sc2|sc1|sc1|process_0~15_combout\);

-- Location: FF_X110_Y44_N23
\sc0|sc2|sc1|sc0|Reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~104_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(51));

-- Location: FF_X110_Y44_N21
\sc0|sc2|sc1|sc0|Reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~102_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(50));

-- Location: FF_X110_Y44_N19
\sc0|sc2|sc1|sc0|Reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~100_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(49));

-- Location: LCCOMB_X106_Y46_N30
\sc0|sc2|sc1|sc1|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~17_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(51) & (!\sc0|sc2|sc1|sc0|Reg\(50) & !\sc0|sc2|sc1|sc0|Reg\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(51),
	datac => \sc0|sc2|sc1|sc0|Reg\(50),
	datad => \sc0|sc2|sc1|sc0|Reg\(49),
	combout => \sc0|sc2|sc1|sc1|process_0~17_combout\);

-- Location: FF_X110_Y44_N27
\sc0|sc2|sc1|sc0|Reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~108_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(53));

-- Location: FF_X110_Y44_N25
\sc0|sc2|sc1|sc0|Reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~106_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(52));

-- Location: LCCOMB_X106_Y46_N28
\sc0|sc2|sc1|sc1|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~37_combout\ = (\sc0|sc2|sc1|sc0|Reg\(53)) # (\sc0|sc2|sc1|sc0|Reg\(52))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(53),
	datac => \sc0|sc2|sc1|sc0|Reg\(52),
	combout => \sc0|sc2|sc1|sc1|process_0~37_combout\);

-- Location: FF_X110_Y44_N31
\sc0|sc2|sc1|sc0|Reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~112_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(55));

-- Location: FF_X110_Y44_N29
\sc0|sc2|sc1|sc0|Reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~110_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(54));

-- Location: LCCOMB_X106_Y46_N8
\sc0|sc2|sc1|sc1|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~16_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(55) & !\sc0|sc2|sc1|sc0|Reg\(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(55),
	datad => \sc0|sc2|sc1|sc0|Reg\(54),
	combout => \sc0|sc2|sc1|sc1|process_0~16_combout\);

-- Location: FF_X110_Y44_N5
\sc0|sc2|sc1|sc0|Reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~86_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(42));

-- Location: FF_X110_Y44_N7
\sc0|sc2|sc1|sc0|Reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~88_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(43));

-- Location: FF_X110_Y44_N1
\sc0|sc2|sc1|sc0|Reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~82_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(40));

-- Location: FF_X110_Y44_N3
\sc0|sc2|sc1|sc0|Reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~84_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(41));

-- Location: LCCOMB_X109_Y44_N18
\sc0|sc2|sc1|sc1|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~18_combout\ = (\sc0|sc2|sc1|sc0|Reg\(42)) # ((\sc0|sc2|sc1|sc0|Reg\(43)) # ((\sc0|sc2|sc1|sc0|Reg\(40)) # (\sc0|sc2|sc1|sc0|Reg\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(42),
	datab => \sc0|sc2|sc1|sc0|Reg\(43),
	datac => \sc0|sc2|sc1|sc0|Reg\(40),
	datad => \sc0|sc2|sc1|sc0|Reg\(41),
	combout => \sc0|sc2|sc1|sc1|process_0~18_combout\);

-- Location: FF_X110_Y44_N17
\sc0|sc2|sc1|sc0|Reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~98_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(48));

-- Location: FF_X110_Y45_N31
\sc0|sc2|sc1|sc0|Reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~80_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(39));

-- Location: FF_X110_Y46_N25
\sc0|sc2|sc1|sc0|Reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~42_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(20));

-- Location: FF_X110_Y46_N31
\sc0|sc2|sc1|sc0|Reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~48_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(23));

-- Location: FF_X110_Y46_N27
\sc0|sc2|sc1|sc0|Reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~44_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(21));

-- Location: FF_X110_Y46_N29
\sc0|sc2|sc1|sc0|Reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~46_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(22));

-- Location: LCCOMB_X109_Y48_N26
\sc0|sc2|sc1|sc1|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~24_combout\ = (\sc0|sc2|sc1|sc0|Reg\(20)) # ((\sc0|sc2|sc1|sc0|Reg\(23)) # ((\sc0|sc2|sc1|sc0|Reg\(21)) # (\sc0|sc2|sc1|sc0|Reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(20),
	datab => \sc0|sc2|sc1|sc0|Reg\(23),
	datac => \sc0|sc2|sc1|sc0|Reg\(21),
	datad => \sc0|sc2|sc1|sc0|Reg\(22),
	combout => \sc0|sc2|sc1|sc1|process_0~24_combout\);

-- Location: FF_X110_Y46_N13
\sc0|sc2|sc1|sc0|Reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~30_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(14));

-- Location: FF_X110_Y46_N15
\sc0|sc2|sc1|sc0|Reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~32_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(15));

-- Location: LCCOMB_X109_Y48_N12
\sc0|sc2|sc1|sc1|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~25_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(14) & !\sc0|sc2|sc1|sc0|Reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(14),
	datad => \sc0|sc2|sc1|sc0|Reg\(15),
	combout => \sc0|sc2|sc1|sc1|process_0~25_combout\);

-- Location: FF_X110_Y47_N21
\sc0|sc2|sc1|sc0|Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(2));

-- Location: FF_X110_Y47_N17
\sc0|sc2|sc1|sc0|Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(0));

-- Location: FF_X110_Y47_N19
\sc0|sc2|sc1|sc0|Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(1));

-- Location: FF_X110_Y47_N23
\sc0|sc2|sc1|sc0|Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~8_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(3));

-- Location: LCCOMB_X109_Y47_N0
\sc0|sc2|sc1|sc1|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~27_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(2) & (!\sc0|sc2|sc1|sc0|Reg\(0) & (!\sc0|sc2|sc1|sc0|Reg\(1) & !\sc0|sc2|sc1|sc0|Reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(2),
	datab => \sc0|sc2|sc1|sc0|Reg\(0),
	datac => \sc0|sc2|sc1|sc0|Reg\(1),
	datad => \sc0|sc2|sc1|sc0|Reg\(3),
	combout => \sc0|sc2|sc1|sc1|process_0~27_combout\);

-- Location: FF_X110_Y47_N31
\sc0|sc2|sc1|sc0|Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~16_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(7));

-- Location: FF_X110_Y47_N25
\sc0|sc2|sc1|sc0|Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~10_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(4));

-- Location: FF_X110_Y47_N27
\sc0|sc2|sc1|sc0|Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~12_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(5));

-- Location: FF_X110_Y47_N29
\sc0|sc2|sc1|sc0|Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(6));

-- Location: LCCOMB_X109_Y47_N10
\sc0|sc2|sc1|sc1|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~26_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(7) & (!\sc0|sc2|sc1|sc0|Reg\(4) & (!\sc0|sc2|sc1|sc0|Reg\(5) & !\sc0|sc2|sc1|sc0|Reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(7),
	datab => \sc0|sc2|sc1|sc0|Reg\(4),
	datac => \sc0|sc2|sc1|sc0|Reg\(5),
	datad => \sc0|sc2|sc1|sc0|Reg\(6),
	combout => \sc0|sc2|sc1|sc1|process_0~26_combout\);

-- Location: FF_X110_Y46_N3
\sc0|sc2|sc1|sc0|Reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(9));

-- Location: FF_X110_Y46_N5
\sc0|sc2|sc1|sc0|Reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(10));

-- Location: FF_X110_Y46_N7
\sc0|sc2|sc1|sc0|Reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(11));

-- Location: FF_X110_Y46_N1
\sc0|sc2|sc1|sc0|Reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(8));

-- Location: LCCOMB_X109_Y47_N22
\sc0|sc2|sc1|sc1|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~28_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(9) & (!\sc0|sc2|sc1|sc0|Reg\(10) & (!\sc0|sc2|sc1|sc0|Reg\(11) & !\sc0|sc2|sc1|sc0|Reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(9),
	datab => \sc0|sc2|sc1|sc0|Reg\(10),
	datac => \sc0|sc2|sc1|sc0|Reg\(11),
	datad => \sc0|sc2|sc1|sc0|Reg\(8),
	combout => \sc0|sc2|sc1|sc1|process_0~28_combout\);

-- Location: FF_X110_Y46_N11
\sc0|sc2|sc1|sc0|Reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(13));

-- Location: FF_X110_Y46_N9
\sc0|sc2|sc1|sc0|Reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~26_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(12));

-- Location: LCCOMB_X109_Y48_N2
\sc0|sc2|sc1|sc1|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~29_combout\ = ((\sc0|sc2|sc1|sc0|Reg\(13)) # (\sc0|sc2|sc1|sc0|Reg\(12))) # (!\sc0|sc2|sc1|sc1|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~28_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(13),
	datad => \sc0|sc2|sc1|sc0|Reg\(12),
	combout => \sc0|sc2|sc1|sc1|process_0~29_combout\);

-- Location: LCCOMB_X109_Y48_N8
\sc0|sc2|sc1|sc1|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~30_combout\ = (\sc0|sc2|sc1|sc1|process_0~25_combout\ & (\sc0|sc2|sc1|sc1|process_0~27_combout\ & (\sc0|sc2|sc1|sc1|process_0~26_combout\ & !\sc0|sc2|sc1|sc1|process_0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~25_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~27_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~26_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~29_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~30_combout\);

-- Location: FF_X110_Y46_N23
\sc0|sc2|sc1|sc0|Reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~40_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(19));

-- Location: FF_X110_Y46_N21
\sc0|sc2|sc1|sc0|Reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~38_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(18));

-- Location: FF_X110_Y46_N17
\sc0|sc2|sc1|sc0|Reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~34_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(16));

-- Location: FF_X110_Y46_N19
\sc0|sc2|sc1|sc0|Reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~36_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(17));

-- Location: LCCOMB_X109_Y48_N24
\sc0|sc2|sc1|sc1|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~23_combout\ = (\sc0|sc2|sc1|sc0|Reg\(18)) # ((\sc0|sc2|sc1|sc0|Reg\(16)) # (\sc0|sc2|sc1|sc0|Reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(18),
	datac => \sc0|sc2|sc1|sc0|Reg\(16),
	datad => \sc0|sc2|sc1|sc0|Reg\(17),
	combout => \sc0|sc2|sc1|sc1|process_0~23_combout\);

-- Location: LCCOMB_X109_Y48_N14
\sc0|sc2|sc1|sc1|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~31_combout\ = (\sc0|sc2|sc1|sc1|process_0~24_combout\) # (((\sc0|sc2|sc1|sc0|Reg\(19)) # (\sc0|sc2|sc1|sc1|process_0~23_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~24_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~30_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(19),
	datad => \sc0|sc2|sc1|sc1|process_0~23_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~31_combout\);

-- Location: FF_X110_Y45_N5
\sc0|sc2|sc1|sc0|Reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~54_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(26));

-- Location: FF_X110_Y45_N7
\sc0|sc2|sc1|sc0|Reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~56_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(27));

-- Location: LCCOMB_X108_Y47_N24
\sc0|sc2|sc1|sc1|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~22_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(26) & !\sc0|sc2|sc1|sc0|Reg\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(26),
	datac => \sc0|sc2|sc1|sc0|Reg\(27),
	combout => \sc0|sc2|sc1|sc1|process_0~22_combout\);

-- Location: FF_X110_Y45_N3
\sc0|sc2|sc1|sc0|Reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~52_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(25));

-- Location: FF_X110_Y45_N1
\sc0|sc2|sc1|sc0|Reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~50_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(24));

-- Location: LCCOMB_X108_Y47_N10
\sc0|sc2|sc1|sc1|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~32_combout\ = (!\sc0|sc2|sc1|sc1|process_0~31_combout\ & (\sc0|sc2|sc1|sc1|process_0~22_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(25) & !\sc0|sc2|sc1|sc0|Reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~22_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(25),
	datad => \sc0|sc2|sc1|sc0|Reg\(24),
	combout => \sc0|sc2|sc1|sc1|process_0~32_combout\);

-- Location: FF_X110_Y45_N13
\sc0|sc2|sc1|sc0|Reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~62_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(30));

-- Location: FF_X110_Y45_N15
\sc0|sc2|sc1|sc0|Reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~64_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(31));

-- Location: FF_X110_Y45_N11
\sc0|sc2|sc1|sc0|Reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~60_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(29));

-- Location: LCCOMB_X107_Y49_N4
\sc0|sc2|sc1|sc1|count_out[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~6_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(30) & (!\sc0|sc2|sc1|sc0|Reg\(31) & !\sc0|sc2|sc1|sc0|Reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(30),
	datac => \sc0|sc2|sc1|sc0|Reg\(31),
	datad => \sc0|sc2|sc1|sc0|Reg\(29),
	combout => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\);

-- Location: FF_X110_Y45_N19
\sc0|sc2|sc1|sc0|Reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~68_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(33));

-- Location: FF_X110_Y45_N17
\sc0|sc2|sc1|sc0|Reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~66_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(32));

-- Location: LCCOMB_X109_Y47_N4
\sc0|sc2|sc1|sc1|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~21_combout\ = (\sc0|sc2|sc1|sc0|Reg\(33)) # (\sc0|sc2|sc1|sc0|Reg\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(33),
	datad => \sc0|sc2|sc1|sc0|Reg\(32),
	combout => \sc0|sc2|sc1|sc1|process_0~21_combout\);

-- Location: FF_X110_Y45_N9
\sc0|sc2|sc1|sc0|Reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~58_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(28));

-- Location: LCCOMB_X108_Y47_N28
\sc0|sc2|sc1|sc1|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~33_combout\ = (((\sc0|sc2|sc1|sc1|process_0~21_combout\) # (\sc0|sc2|sc1|sc0|Reg\(28))) # (!\sc0|sc2|sc1|sc1|count_out[5]~6_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~32_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~21_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(28),
	combout => \sc0|sc2|sc1|sc1|process_0~33_combout\);

-- Location: FF_X110_Y45_N25
\sc0|sc2|sc1|sc0|Reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~74_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(36));

-- Location: FF_X110_Y45_N27
\sc0|sc2|sc1|sc0|Reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~76_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(37));

-- Location: FF_X110_Y45_N29
\sc0|sc2|sc1|sc0|Reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~78_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(38));

-- Location: LCCOMB_X107_Y46_N14
\sc0|sc2|sc1|sc1|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~34_combout\ = (\sc0|sc2|sc1|sc0|Reg\(36)) # ((\sc0|sc2|sc1|sc0|Reg\(37)) # (\sc0|sc2|sc1|sc0|Reg\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(36),
	datab => \sc0|sc2|sc1|sc0|Reg\(37),
	datac => \sc0|sc2|sc1|sc0|Reg\(38),
	combout => \sc0|sc2|sc1|sc1|process_0~34_combout\);

-- Location: FF_X110_Y45_N23
\sc0|sc2|sc1|sc0|Reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~72_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(35));

-- Location: FF_X110_Y45_N21
\sc0|sc2|sc1|sc0|Reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~70_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(34));

-- Location: LCCOMB_X107_Y46_N16
\sc0|sc2|sc1|sc1|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~20_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(35) & !\sc0|sc2|sc1|sc0|Reg\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(35),
	datad => \sc0|sc2|sc1|sc0|Reg\(34),
	combout => \sc0|sc2|sc1|sc1|process_0~20_combout\);

-- Location: LCCOMB_X107_Y46_N0
\sc0|sc2|sc1|sc1|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~35_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(39) & (!\sc0|sc2|sc1|sc1|process_0~33_combout\ & (!\sc0|sc2|sc1|sc1|process_0~34_combout\ & \sc0|sc2|sc1|sc1|process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(39),
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~34_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~20_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~35_combout\);

-- Location: FF_X110_Y44_N11
\sc0|sc2|sc1|sc0|Reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~92_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(45));

-- Location: FF_X110_Y44_N13
\sc0|sc2|sc1|sc0|Reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~94_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(46));

-- Location: FF_X110_Y44_N9
\sc0|sc2|sc1|sc0|Reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~90_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(44));

-- Location: FF_X110_Y44_N15
\sc0|sc2|sc1|sc0|Reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~96_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(47));

-- Location: LCCOMB_X109_Y44_N2
\sc0|sc2|sc1|sc1|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~19_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(45) & (!\sc0|sc2|sc1|sc0|Reg\(46) & (!\sc0|sc2|sc1|sc0|Reg\(44) & !\sc0|sc2|sc1|sc0|Reg\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(45),
	datab => \sc0|sc2|sc1|sc0|Reg\(46),
	datac => \sc0|sc2|sc1|sc0|Reg\(44),
	datad => \sc0|sc2|sc1|sc0|Reg\(47),
	combout => \sc0|sc2|sc1|sc1|process_0~19_combout\);

-- Location: LCCOMB_X107_Y46_N18
\sc0|sc2|sc1|sc1|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~36_combout\ = (\sc0|sc2|sc1|sc1|process_0~18_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(48)) # ((!\sc0|sc2|sc1|sc1|process_0~19_combout\) # (!\sc0|sc2|sc1|sc1|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~18_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(48),
	datac => \sc0|sc2|sc1|sc1|process_0~35_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~19_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~36_combout\);

-- Location: LCCOMB_X106_Y46_N26
\sc0|sc2|sc1|sc1|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~38_combout\ = (\sc0|sc2|sc1|sc1|process_0~17_combout\ & (!\sc0|sc2|sc1|sc1|process_0~37_combout\ & (\sc0|sc2|sc1|sc1|process_0~16_combout\ & !\sc0|sc2|sc1|sc1|process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~17_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~37_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~16_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~38_combout\);

-- Location: LCCOMB_X106_Y43_N6
\sc0|sc2|sc1|sc1|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~39_combout\ = (\sc0|sc2|sc1|sc1|process_0~14_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(59)) # ((\sc0|sc2|sc1|sc1|process_0~15_combout\) # (!\sc0|sc2|sc1|sc1|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~14_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(59),
	datac => \sc0|sc2|sc1|sc1|process_0~15_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~38_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~39_combout\);

-- Location: FF_X110_Y43_N23
\sc0|sc2|sc1|sc0|Reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~136_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(67));

-- Location: FF_X110_Y43_N21
\sc0|sc2|sc1|sc0|Reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~134_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(66));

-- Location: LCCOMB_X106_Y43_N16
\sc0|sc2|sc1|sc1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~13_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(67) & !\sc0|sc2|sc1|sc0|Reg\(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(67),
	datad => \sc0|sc2|sc1|sc0|Reg\(66),
	combout => \sc0|sc2|sc1|sc1|process_0~13_combout\);

-- Location: FF_X110_Y43_N17
\sc0|sc2|sc1|sc0|Reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~130_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(64));

-- Location: FF_X110_Y43_N19
\sc0|sc2|sc1|sc0|Reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~132_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(65));

-- Location: LCCOMB_X106_Y43_N24
\sc0|sc2|sc1|sc1|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~40_combout\ = (!\sc0|sc2|sc1|sc1|process_0~39_combout\ & (\sc0|sc2|sc1|sc1|process_0~13_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(64) & !\sc0|sc2|sc1|sc0|Reg\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~13_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(64),
	datad => \sc0|sc2|sc1|sc0|Reg\(65),
	combout => \sc0|sc2|sc1|sc1|process_0~40_combout\);

-- Location: FF_X110_Y43_N25
\sc0|sc2|sc1|sc0|Reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~138_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(68));

-- Location: FF_X110_Y42_N1
\sc0|sc2|sc1|sc0|Reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~146_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(72));

-- Location: FF_X110_Y42_N3
\sc0|sc2|sc1|sc0|Reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~148_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(73));

-- Location: LCCOMB_X114_Y42_N20
\sc0|sc2|sc1|sc1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~12_combout\ = (\sc0|sc2|sc1|sc0|Reg\(72)) # (\sc0|sc2|sc1|sc0|Reg\(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(72),
	datad => \sc0|sc2|sc1|sc0|Reg\(73),
	combout => \sc0|sc2|sc1|sc1|process_0~12_combout\);

-- Location: LCCOMB_X114_Y42_N24
\sc0|sc2|sc1|sc1|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~42_combout\ = (((\sc0|sc2|sc1|sc0|Reg\(68)) # (\sc0|sc2|sc1|sc1|process_0~12_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~40_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~41_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~12_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~42_combout\);

-- Location: LCCOMB_X114_Y42_N0
\sc0|sc2|sc1|sc1|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~44_combout\ = (\sc0|sc2|sc1|sc0|Reg\(74)) # ((\sc0|sc2|sc1|sc1|process_0~43_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(75)) # (\sc0|sc2|sc1|sc1|process_0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(74),
	datab => \sc0|sc2|sc1|sc1|process_0~43_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(75),
	datad => \sc0|sc2|sc1|sc1|process_0~42_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~44_combout\);

-- Location: FF_X110_Y42_N15
\sc0|sc2|sc1|sc0|Reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~160_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(79));

-- Location: LCCOMB_X113_Y42_N26
\sc0|sc2|sc1|sc1|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~46_combout\ = (\sc0|sc2|sc1|sc1|process_0~45_combout\) # ((\sc0|sc2|sc1|sc1|process_0~44_combout\) # (\sc0|sc2|sc1|sc0|Reg\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~45_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(79),
	combout => \sc0|sc2|sc1|sc1|process_0~46_combout\);

-- Location: FF_X110_Y41_N3
\sc0|sc2|sc1|sc0|Reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~180_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(89));

-- Location: FF_X110_Y41_N1
\sc0|sc2|sc1|sc0|Reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~178_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(88));

-- Location: FF_X110_Y42_N25
\sc0|sc2|sc1|sc0|Reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~170_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(84));

-- Location: FF_X110_Y42_N27
\sc0|sc2|sc1|sc0|Reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~172_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(85));

-- Location: FF_X110_Y42_N31
\sc0|sc2|sc1|sc0|Reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~176_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(87));

-- Location: FF_X110_Y42_N29
\sc0|sc2|sc1|sc0|Reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~174_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(86));

-- Location: LCCOMB_X109_Y42_N20
\sc0|sc2|sc1|sc1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~11_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(84) & (!\sc0|sc2|sc1|sc0|Reg\(85) & (!\sc0|sc2|sc1|sc0|Reg\(87) & !\sc0|sc2|sc1|sc0|Reg\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(84),
	datab => \sc0|sc2|sc1|sc0|Reg\(85),
	datac => \sc0|sc2|sc1|sc0|Reg\(87),
	datad => \sc0|sc2|sc1|sc0|Reg\(86),
	combout => \sc0|sc2|sc1|sc1|process_0~11_combout\);

-- Location: LCCOMB_X109_Y42_N10
\sc0|sc2|sc1|sc1|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~47_combout\ = (!\sc0|sc2|sc1|sc1|process_0~46_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(89) & (!\sc0|sc2|sc1|sc0|Reg\(88) & \sc0|sc2|sc1|sc1|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(89),
	datac => \sc0|sc2|sc1|sc0|Reg\(88),
	datad => \sc0|sc2|sc1|sc1|process_0~11_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~47_combout\);

-- Location: LCCOMB_X109_Y42_N14
\sc0|sc2|sc1|sc1|count_out[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~7_combout\ = (\sc0|sc2|sc1|sc1|process_0~10_combout\ & (!\sc0|sc2|sc1|sc1|process_0~48_combout\ & (\sc0|sc2|sc1|sc1|count_out[5]~5_combout\ & \sc0|sc2|sc1|sc1|process_0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~10_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~48_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[5]~5_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~47_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[5]~7_combout\);

-- Location: FF_X110_Y41_N31
\sc0|sc2|sc1|sc0|Reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~208_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(103));

-- Location: FF_X110_Y41_N25
\sc0|sc2|sc1|sc0|Reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~202_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(100));

-- Location: FF_X110_Y41_N27
\sc0|sc2|sc1|sc0|Reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~204_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(101));

-- Location: FF_X110_Y41_N29
\sc0|sc2|sc1|sc0|Reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~206_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(102));

-- Location: LCCOMB_X114_Y40_N6
\sc0|sc2|sc1|sc1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~9_combout\ = (\sc0|sc2|sc1|sc0|Reg\(103)) # ((\sc0|sc2|sc1|sc0|Reg\(100)) # ((\sc0|sc2|sc1|sc0|Reg\(101)) # (\sc0|sc2|sc1|sc0|Reg\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(103),
	datab => \sc0|sc2|sc1|sc0|Reg\(100),
	datac => \sc0|sc2|sc1|sc0|Reg\(101),
	datad => \sc0|sc2|sc1|sc0|Reg\(102),
	combout => \sc0|sc2|sc1|sc1|process_0~9_combout\);

-- Location: LCCOMB_X114_Y40_N18
\sc0|sc2|sc1|sc1|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~49_combout\ = (\sc0|sc2|sc1|sc0|Reg\(99)) # ((\sc0|sc2|sc1|sc1|process_0~8_combout\) # ((\sc0|sc2|sc1|sc1|process_0~9_combout\) # (!\sc0|sc2|sc1|sc1|count_out[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(99),
	datab => \sc0|sc2|sc1|sc1|process_0~8_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[5]~7_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~9_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~49_combout\);

-- Location: LCCOMB_X113_Y40_N12
\sc0|sc2|sc1|sc1|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~50_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(104) & (!\sc0|sc2|sc1|sc0|Reg\(105) & (\sc0|sc2|sc1|sc1|process_0~7_combout\ & !\sc0|sc2|sc1|sc1|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(104),
	datab => \sc0|sc2|sc1|sc0|Reg\(105),
	datac => \sc0|sc2|sc1|sc1|process_0~7_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~50_combout\);

-- Location: LCCOMB_X113_Y40_N6
\sc0|sc2|sc1|sc1|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~51_combout\ = (\sc0|sc2|sc1|sc1|process_0~6_combout\) # (((\sc0|sc2|sc1|sc0|Reg\(108)) # (!\sc0|sc2|sc1|sc1|process_0~50_combout\)) # (!\sc0|sc2|sc1|sc1|count_out[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~6_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[4]~8_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(108),
	datad => \sc0|sc2|sc1|sc1|process_0~50_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~51_combout\);

-- Location: LCCOMB_X110_Y38_N0
\sc0|sc2|sc1|sc1|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~53_combout\ = (\sc0|sc2|sc1|sc0|Reg\(114)) # ((\sc0|sc2|sc1|sc0|Reg\(115)) # ((\sc0|sc2|sc1|sc1|process_0~52_combout\) # (\sc0|sc2|sc1|sc1|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(114),
	datab => \sc0|sc2|sc1|sc0|Reg\(115),
	datac => \sc0|sc2|sc1|sc1|process_0~52_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~53_combout\);

-- Location: FF_X110_Y40_N31
\sc0|sc2|sc1|sc0|Reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~240_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(119));

-- Location: FF_X110_Y39_N3
\sc0|sc2|sc1|sc0|Reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~244_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(121));

-- Location: FF_X110_Y39_N5
\sc0|sc2|sc1|sc0|Reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~246_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(122));

-- Location: FF_X110_Y39_N1
\sc0|sc2|sc1|sc0|Reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~242_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(120));

-- Location: LCCOMB_X110_Y39_N20
\sc0|sc2|sc1|sc1|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~55_combout\ = (\sc0|sc2|sc1|sc0|Reg\(119)) # ((!\sc0|sc2|sc1|sc0|Reg\(120) & ((\sc0|sc2|sc1|sc0|Reg\(121)) # (!\sc0|sc2|sc1|sc0|Reg\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(119),
	datab => \sc0|sc2|sc1|sc0|Reg\(121),
	datac => \sc0|sc2|sc1|sc0|Reg\(122),
	datad => \sc0|sc2|sc1|sc0|Reg\(120),
	combout => \sc0|sc2|sc1|sc1|process_0~55_combout\);

-- Location: LCCOMB_X110_Y38_N12
\sc0|sc2|sc1|sc1|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~57_combout\ = (\sc0|sc2|sc1|sc1|process_0~53_combout\ & (\sc0|sc2|sc1|sc1|process_0~56_combout\ & ((!\sc0|sc2|sc1|sc1|process_0~51_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~53_combout\ & 
-- (((\sc0|sc2|sc1|sc1|process_0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~56_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~55_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~57_combout\);

-- Location: FF_X110_Y39_N7
\sc0|sc2|sc1|sc0|Reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~248_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(123));

-- Location: LCCOMB_X110_Y39_N18
\sc0|sc2|sc1|sc1|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~54_combout\ = (\sc0|sc2|sc1|sc0|Reg\(123)) # ((\sc0|sc2|sc1|sc0|Reg\(121)) # ((\sc0|sc2|sc1|sc0|Reg\(122)) # (\sc0|sc2|sc1|sc0|Reg\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(123),
	datab => \sc0|sc2|sc1|sc0|Reg\(121),
	datac => \sc0|sc2|sc1|sc0|Reg\(122),
	datad => \sc0|sc2|sc1|sc0|Reg\(120),
	combout => \sc0|sc2|sc1|sc1|process_0~54_combout\);

-- Location: LCCOMB_X109_Y38_N22
\sc0|sc2|sc1|sc1|count_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[0]~11_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~53_combout\) # ((\sc0|sc2|sc1|sc1|process_0~54_combout\) # (\sc0|sc2|sc1|sc0|Reg\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~54_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(119),
	datad => \RST~input_o\,
	combout => \sc0|sc2|sc1|sc1|count_out[0]~11_combout\);

-- Location: FF_X110_Y39_N11
\sc0|sc2|sc1|sc0|Reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~252_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(125));

-- Location: FF_X110_Y39_N13
\sc0|sc2|sc1|sc0|Reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~254_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(126));

-- Location: FF_X110_Y39_N15
\sc0|sc2|sc1|sc0|Reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~256_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(127));

-- Location: FF_X110_Y39_N9
\sc0|sc2|sc1|sc0|Reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc1|sc0|Add0~250_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc1|sc0|Reg\(124));

-- Location: LCCOMB_X109_Y39_N20
\sc0|sc2|sc1|sc1|count_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[0]~4_combout\ = (\RST~input_o\ & !\sc0|sc2|sc1|sc0|Reg\(124))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc0|Reg\(124),
	combout => \sc0|sc2|sc1|sc1|count_out[0]~4_combout\);

-- Location: LCCOMB_X109_Y38_N0
\sc0|sc2|sc1|sc1|count_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[0]~9_combout\ = (\sc0|sc2|sc1|sc1|count_out[0]~4_combout\ & (!\sc0|sc2|sc1|sc1|process_0~53_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(119) & !\sc0|sc2|sc1|sc1|process_0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[0]~4_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(119),
	datad => \sc0|sc2|sc1|sc1|process_0~54_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[0]~9_combout\);

-- Location: LCCOMB_X109_Y39_N10
\sc0|sc2|sc1|sc1|count_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[0]~10_combout\ = (\sc0|sc2|sc1|sc1|count_out[0]~9_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(125)) # ((!\sc0|sc2|sc1|sc0|Reg\(126) & \sc0|sc2|sc1|sc0|Reg\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(125),
	datab => \sc0|sc2|sc1|sc0|Reg\(126),
	datac => \sc0|sc2|sc1|sc0|Reg\(127),
	datad => \sc0|sc2|sc1|sc1|count_out[0]~9_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[0]~10_combout\);

-- Location: LCCOMB_X113_Y40_N8
\sc0|sc2|sc1|sc1|process_0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~110_combout\ = (\sc0|sc2|sc1|sc0|Reg\(108)) # (!\sc0|sc2|sc1|sc1|process_0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(108),
	datad => \sc0|sc2|sc1|sc1|process_0~50_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~110_combout\);

-- Location: LCCOMB_X113_Y40_N14
\sc0|sc2|sc1|sc1|process_0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~109_combout\ = (\sc0|sc2|sc1|sc0|Reg\(109)) # ((!\sc0|sc2|sc1|sc0|Reg\(110) & ((\sc0|sc2|sc1|sc0|Reg\(111)) # (!\sc0|sc2|sc1|sc0|Reg\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(112),
	datab => \sc0|sc2|sc1|sc0|Reg\(109),
	datac => \sc0|sc2|sc1|sc0|Reg\(111),
	datad => \sc0|sc2|sc1|sc0|Reg\(110),
	combout => \sc0|sc2|sc1|sc1|process_0~109_combout\);

-- Location: LCCOMB_X114_Y40_N12
\sc0|sc2|sc1|sc1|process_0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~107_combout\ = (\sc0|sc2|sc1|sc0|Reg\(99)) # ((!\sc0|sc2|sc1|sc0|Reg\(100) & ((\sc0|sc2|sc1|sc0|Reg\(101)) # (!\sc0|sc2|sc1|sc0|Reg\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(102),
	datab => \sc0|sc2|sc1|sc0|Reg\(100),
	datac => \sc0|sc2|sc1|sc0|Reg\(101),
	datad => \sc0|sc2|sc1|sc0|Reg\(99),
	combout => \sc0|sc2|sc1|sc1|process_0~107_combout\);

-- Location: LCCOMB_X113_Y40_N0
\sc0|sc2|sc1|sc1|process_0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~105_combout\ = (\sc0|sc2|sc1|sc0|Reg\(105)) # ((!\sc0|sc2|sc1|sc0|Reg\(106) & \sc0|sc2|sc1|sc0|Reg\(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(106),
	datab => \sc0|sc2|sc1|sc0|Reg\(105),
	datac => \sc0|sc2|sc1|sc0|Reg\(107),
	combout => \sc0|sc2|sc1|sc1|process_0~105_combout\);

-- Location: LCCOMB_X114_Y40_N10
\sc0|sc2|sc1|sc1|process_0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~102_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(94) & ((\sc0|sc2|sc1|sc0|Reg\(95)) # ((\sc0|sc2|sc1|sc0|Reg\(97) & !\sc0|sc2|sc1|sc0|Reg\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(97),
	datab => \sc0|sc2|sc1|sc0|Reg\(96),
	datac => \sc0|sc2|sc1|sc0|Reg\(95),
	datad => \sc0|sc2|sc1|sc0|Reg\(94),
	combout => \sc0|sc2|sc1|sc1|process_0~102_combout\);

-- Location: LCCOMB_X113_Y42_N24
\sc0|sc2|sc1|sc1|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~62_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(80) & ((\sc0|sc2|sc1|sc0|Reg\(81)) # (!\sc0|sc2|sc1|sc0|Reg\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(80),
	datac => \sc0|sc2|sc1|sc0|Reg\(81),
	datad => \sc0|sc2|sc1|sc0|Reg\(82),
	combout => \sc0|sc2|sc1|sc1|process_0~62_combout\);

-- Location: LCCOMB_X113_Y42_N10
\sc0|sc2|sc1|sc1|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~63_combout\ = (!\sc0|sc2|sc1|sc1|process_0~44_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(79)) # ((\sc0|sc2|sc1|sc1|process_0~45_combout\ & \sc0|sc2|sc1|sc1|process_0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(79),
	datab => \sc0|sc2|sc1|sc1|process_0~45_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~62_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~63_combout\);

-- Location: LCCOMB_X106_Y43_N10
\sc0|sc2|sc1|sc1|process_0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~96_combout\ = (\sc0|sc2|sc1|sc0|Reg\(59)) # ((!\sc0|sc2|sc1|sc0|Reg\(60) & ((\sc0|sc2|sc1|sc0|Reg\(61)) # (!\sc0|sc2|sc1|sc0|Reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(62),
	datab => \sc0|sc2|sc1|sc0|Reg\(61),
	datac => \sc0|sc2|sc1|sc0|Reg\(59),
	datad => \sc0|sc2|sc1|sc0|Reg\(60),
	combout => \sc0|sc2|sc1|sc1|process_0~96_combout\);

-- Location: LCCOMB_X106_Y46_N10
\sc0|sc2|sc1|sc1|process_0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~183_combout\ = (\sc0|sc2|sc1|sc0|Reg\(52)) # ((\sc0|sc2|sc1|sc1|process_0~36_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(53)) # (!\sc0|sc2|sc1|sc1|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(52),
	datab => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~17_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(53),
	combout => \sc0|sc2|sc1|sc1|process_0~183_combout\);

-- Location: LCCOMB_X106_Y46_N4
\sc0|sc2|sc1|sc1|process_0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~92_combout\ = (\sc0|sc2|sc1|sc0|Reg\(49)) # ((!\sc0|sc2|sc1|sc0|Reg\(50) & ((\sc0|sc2|sc1|sc0|Reg\(51)) # (!\sc0|sc2|sc1|sc0|Reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(51),
	datab => \sc0|sc2|sc1|sc0|Reg\(50),
	datac => \sc0|sc2|sc1|sc0|Reg\(52),
	datad => \sc0|sc2|sc1|sc0|Reg\(49),
	combout => \sc0|sc2|sc1|sc1|process_0~92_combout\);

-- Location: LCCOMB_X107_Y46_N12
\sc0|sc2|sc1|sc1|process_0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~83_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(34) & ((\sc0|sc2|sc1|sc0|Reg\(35)) # ((!\sc0|sc2|sc1|sc0|Reg\(36) & \sc0|sc2|sc1|sc0|Reg\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(36),
	datab => \sc0|sc2|sc1|sc0|Reg\(34),
	datac => \sc0|sc2|sc1|sc0|Reg\(37),
	datad => \sc0|sc2|sc1|sc0|Reg\(35),
	combout => \sc0|sc2|sc1|sc1|process_0~83_combout\);

-- Location: LCCOMB_X107_Y46_N4
\sc0|sc2|sc1|sc1|process_0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~72_combout\ = (\sc0|sc2|sc1|sc0|Reg\(35)) # ((\sc0|sc2|sc1|sc1|process_0~34_combout\) # ((\sc0|sc2|sc1|sc1|process_0~33_combout\) # (\sc0|sc2|sc1|sc0|Reg\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(35),
	datab => \sc0|sc2|sc1|sc1|process_0~34_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(34),
	combout => \sc0|sc2|sc1|sc1|process_0~72_combout\);

-- Location: LCCOMB_X109_Y48_N22
\sc0|sc2|sc1|sc1|process_0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~81_combout\ = (\sc0|sc2|sc1|sc0|Reg\(19)) # ((!\sc0|sc2|sc1|sc0|Reg\(20) & ((\sc0|sc2|sc1|sc0|Reg\(21)) # (!\sc0|sc2|sc1|sc0|Reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(20),
	datab => \sc0|sc2|sc1|sc0|Reg\(21),
	datac => \sc0|sc2|sc1|sc0|Reg\(19),
	datad => \sc0|sc2|sc1|sc0|Reg\(22),
	combout => \sc0|sc2|sc1|sc1|process_0~81_combout\);

-- Location: LCCOMB_X109_Y48_N20
\sc0|sc2|sc1|sc1|process_0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~182_combout\ = ((\sc0|sc2|sc1|sc0|Reg\(18)) # ((\sc0|sc2|sc1|sc0|Reg\(16)) # (\sc0|sc2|sc1|sc0|Reg\(17)))) # (!\sc0|sc2|sc1|sc1|process_0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~30_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(18),
	datac => \sc0|sc2|sc1|sc0|Reg\(16),
	datad => \sc0|sc2|sc1|sc0|Reg\(17),
	combout => \sc0|sc2|sc1|sc1|process_0~182_combout\);

-- Location: LCCOMB_X109_Y48_N28
\sc0|sc2|sc1|sc1|process_0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~75_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(14) & ((\sc0|sc2|sc1|sc0|Reg\(15)) # ((!\sc0|sc2|sc1|sc0|Reg\(16) & \sc0|sc2|sc1|sc0|Reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(15),
	datab => \sc0|sc2|sc1|sc0|Reg\(16),
	datac => \sc0|sc2|sc1|sc0|Reg\(17),
	datad => \sc0|sc2|sc1|sc0|Reg\(14),
	combout => \sc0|sc2|sc1|sc1|process_0~75_combout\);

-- Location: LCCOMB_X109_Y47_N12
\sc0|sc2|sc1|sc1|process_0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~76_combout\ = (\sc0|sc2|sc1|sc0|Reg\(11)) # ((!\sc0|sc2|sc1|sc0|Reg\(12) & ((\sc0|sc2|sc1|sc0|Reg\(13)) # (\sc0|sc2|sc1|sc1|process_0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(13),
	datab => \sc0|sc2|sc1|sc0|Reg\(12),
	datac => \sc0|sc2|sc1|sc0|Reg\(11),
	datad => \sc0|sc2|sc1|sc1|process_0~75_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~76_combout\);

-- Location: LCCOMB_X109_Y47_N6
\sc0|sc2|sc1|sc1|process_0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~77_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(8) & ((\sc0|sc2|sc1|sc0|Reg\(9)) # ((!\sc0|sc2|sc1|sc0|Reg\(10) & \sc0|sc2|sc1|sc1|process_0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(9),
	datab => \sc0|sc2|sc1|sc0|Reg\(8),
	datac => \sc0|sc2|sc1|sc0|Reg\(10),
	datad => \sc0|sc2|sc1|sc1|process_0~76_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~77_combout\);

-- Location: LCCOMB_X109_Y47_N28
\sc0|sc2|sc1|sc1|process_0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~78_combout\ = (\sc0|sc2|sc1|sc0|Reg\(5)) # ((!\sc0|sc2|sc1|sc0|Reg\(6) & ((\sc0|sc2|sc1|sc0|Reg\(7)) # (\sc0|sc2|sc1|sc1|process_0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(5),
	datab => \sc0|sc2|sc1|sc0|Reg\(6),
	datac => \sc0|sc2|sc1|sc0|Reg\(7),
	datad => \sc0|sc2|sc1|sc1|process_0~77_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~78_combout\);

-- Location: LCCOMB_X109_Y47_N14
\sc0|sc2|sc1|sc1|process_0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~79_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(2) & ((\sc0|sc2|sc1|sc0|Reg\(3)) # ((!\sc0|sc2|sc1|sc0|Reg\(4) & \sc0|sc2|sc1|sc1|process_0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(3),
	datab => \sc0|sc2|sc1|sc0|Reg\(4),
	datac => \sc0|sc2|sc1|sc0|Reg\(2),
	datad => \sc0|sc2|sc1|sc1|process_0~78_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~79_combout\);

-- Location: LCCOMB_X109_Y47_N16
\sc0|sc2|sc1|sc1|process_0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~80_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(0) & ((\sc0|sc2|sc1|sc1|process_0~79_combout\) # (\sc0|sc2|sc1|sc0|Reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(0),
	datab => \sc0|sc2|sc1|sc1|process_0~79_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(1),
	combout => \sc0|sc2|sc1|sc1|process_0~80_combout\);

-- Location: LCCOMB_X109_Y48_N4
\sc0|sc2|sc1|sc1|process_0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~82_combout\ = (\sc0|sc2|sc1|sc1|process_0~31_combout\ & ((\sc0|sc2|sc1|sc1|process_0~80_combout\) # ((\sc0|sc2|sc1|sc1|process_0~81_combout\ & !\sc0|sc2|sc1|sc1|process_0~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~81_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~182_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~80_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~82_combout\);

-- Location: LCCOMB_X107_Y46_N30
\sc0|sc2|sc1|sc1|process_0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~84_combout\ = (\sc0|sc2|sc1|sc1|process_0~82_combout\) # ((\sc0|sc2|sc1|sc1|process_0~83_combout\ & (!\sc0|sc2|sc1|sc1|process_0~33_combout\ & \sc0|sc2|sc1|sc1|process_0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~83_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~82_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~84_combout\);

-- Location: LCCOMB_X109_Y44_N10
\sc0|sc2|sc1|sc1|process_0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~71_combout\ = (\sc0|sc2|sc1|sc0|Reg\(39)) # ((!\sc0|sc2|sc1|sc0|Reg\(40) & ((\sc0|sc2|sc1|sc0|Reg\(41)) # (!\sc0|sc2|sc1|sc0|Reg\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(42),
	datab => \sc0|sc2|sc1|sc0|Reg\(39),
	datac => \sc0|sc2|sc1|sc0|Reg\(40),
	datad => \sc0|sc2|sc1|sc0|Reg\(41),
	combout => \sc0|sc2|sc1|sc1|process_0~71_combout\);

-- Location: LCCOMB_X109_Y44_N8
\sc0|sc2|sc1|sc1|process_0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~73_combout\ = (\sc0|sc2|sc1|sc1|process_0~72_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(39)) # (\sc0|sc2|sc1|sc1|process_0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(39),
	datad => \sc0|sc2|sc1|sc1|process_0~18_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~73_combout\);

-- Location: LCCOMB_X109_Y44_N14
\sc0|sc2|sc1|sc1|process_0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~70_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(44) & ((\sc0|sc2|sc1|sc0|Reg\(45)) # ((!\sc0|sc2|sc1|sc0|Reg\(46) & \sc0|sc2|sc1|sc0|Reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(45),
	datab => \sc0|sc2|sc1|sc0|Reg\(46),
	datac => \sc0|sc2|sc1|sc0|Reg\(44),
	datad => \sc0|sc2|sc1|sc0|Reg\(47),
	combout => \sc0|sc2|sc1|sc1|process_0~70_combout\);

-- Location: LCCOMB_X107_Y46_N2
\sc0|sc2|sc1|sc1|process_0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~74_combout\ = (\sc0|sc2|sc1|sc1|process_0~73_combout\ & (\sc0|sc2|sc1|sc1|process_0~71_combout\ & (!\sc0|sc2|sc1|sc1|process_0~72_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~73_combout\ & 
-- (((\sc0|sc2|sc1|sc1|process_0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~71_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~73_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~70_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~74_combout\);

-- Location: LCCOMB_X108_Y47_N22
\sc0|sc2|sc1|sc1|process_0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~88_combout\ = (!\sc0|sc2|sc1|sc1|process_0~31_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(25) & !\sc0|sc2|sc1|sc0|Reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(25),
	datad => \sc0|sc2|sc1|sc0|Reg\(24),
	combout => \sc0|sc2|sc1|sc1|process_0~88_combout\);

-- Location: LCCOMB_X108_Y47_N12
\sc0|sc2|sc1|sc1|process_0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~89_combout\ = (\sc0|sc2|sc1|sc0|Reg\(28)) # ((\sc0|sc2|sc1|sc0|Reg\(27)) # ((\sc0|sc2|sc1|sc0|Reg\(26)) # (!\sc0|sc2|sc1|sc1|process_0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(28),
	datab => \sc0|sc2|sc1|sc0|Reg\(27),
	datac => \sc0|sc2|sc1|sc0|Reg\(26),
	datad => \sc0|sc2|sc1|sc1|process_0~88_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~89_combout\);

-- Location: LCCOMB_X108_Y47_N14
\sc0|sc2|sc1|sc1|process_0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~85_combout\ = (\sc0|sc2|sc1|sc0|Reg\(25)) # ((!\sc0|sc2|sc1|sc0|Reg\(26) & \sc0|sc2|sc1|sc0|Reg\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(25),
	datab => \sc0|sc2|sc1|sc0|Reg\(26),
	datac => \sc0|sc2|sc1|sc0|Reg\(27),
	combout => \sc0|sc2|sc1|sc1|process_0~85_combout\);

-- Location: LCCOMB_X108_Y47_N16
\sc0|sc2|sc1|sc1|process_0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~86_combout\ = (!\sc0|sc2|sc1|sc1|process_0~31_combout\ & (\sc0|sc2|sc1|sc1|process_0~85_combout\ & !\sc0|sc2|sc1|sc0|Reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~85_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(24),
	combout => \sc0|sc2|sc1|sc1|process_0~86_combout\);

-- Location: LCCOMB_X107_Y49_N6
\sc0|sc2|sc1|sc1|process_0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~87_combout\ = (\sc0|sc2|sc1|sc0|Reg\(29)) # ((!\sc0|sc2|sc1|sc0|Reg\(30) & ((\sc0|sc2|sc1|sc0|Reg\(31)) # (!\sc0|sc2|sc1|sc0|Reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(30),
	datab => \sc0|sc2|sc1|sc0|Reg\(32),
	datac => \sc0|sc2|sc1|sc0|Reg\(31),
	datad => \sc0|sc2|sc1|sc0|Reg\(29),
	combout => \sc0|sc2|sc1|sc1|process_0~87_combout\);

-- Location: LCCOMB_X108_Y47_N30
\sc0|sc2|sc1|sc1|process_0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~90_combout\ = (\sc0|sc2|sc1|sc1|process_0~89_combout\ & (\sc0|sc2|sc1|sc1|process_0~86_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~89_combout\ & (((\sc0|sc2|sc1|sc1|process_0~87_combout\ & 
-- \sc0|sc2|sc1|sc1|process_0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~89_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~86_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~87_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~90_combout\);

-- Location: LCCOMB_X107_Y46_N24
\sc0|sc2|sc1|sc1|process_0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~91_combout\ = (\sc0|sc2|sc1|sc1|process_0~36_combout\ & ((\sc0|sc2|sc1|sc1|process_0~84_combout\) # ((\sc0|sc2|sc1|sc1|process_0~74_combout\) # (\sc0|sc2|sc1|sc1|process_0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~84_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~74_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~90_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~91_combout\);

-- Location: LCCOMB_X106_Y46_N22
\sc0|sc2|sc1|sc1|process_0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~93_combout\ = (\sc0|sc2|sc1|sc1|process_0~91_combout\) # ((\sc0|sc2|sc1|sc1|process_0~183_combout\ & (!\sc0|sc2|sc1|sc1|process_0~36_combout\ & \sc0|sc2|sc1|sc1|process_0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~183_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~92_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~91_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~93_combout\);

-- Location: LCCOMB_X106_Y46_N0
\sc0|sc2|sc1|sc1|process_0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~94_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(54) & ((\sc0|sc2|sc1|sc0|Reg\(55)) # ((!\sc0|sc2|sc1|sc0|Reg\(56) & \sc0|sc2|sc1|sc0|Reg\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(56),
	datab => \sc0|sc2|sc1|sc0|Reg\(57),
	datac => \sc0|sc2|sc1|sc0|Reg\(55),
	datad => \sc0|sc2|sc1|sc0|Reg\(54),
	combout => \sc0|sc2|sc1|sc1|process_0~94_combout\);

-- Location: LCCOMB_X106_Y46_N2
\sc0|sc2|sc1|sc1|process_0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~95_combout\ = (\sc0|sc2|sc1|sc1|process_0~94_combout\ & (!\sc0|sc2|sc1|sc1|process_0~37_combout\ & (\sc0|sc2|sc1|sc1|process_0~17_combout\ & !\sc0|sc2|sc1|sc1|process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~94_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~37_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~17_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~95_combout\);

-- Location: LCCOMB_X106_Y43_N20
\sc0|sc2|sc1|sc1|process_0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~97_combout\ = (\sc0|sc2|sc1|sc0|Reg\(57)) # ((\sc0|sc2|sc1|sc0|Reg\(58)) # ((\sc0|sc2|sc1|sc0|Reg\(56)) # (!\sc0|sc2|sc1|sc1|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(57),
	datab => \sc0|sc2|sc1|sc0|Reg\(58),
	datac => \sc0|sc2|sc1|sc0|Reg\(56),
	datad => \sc0|sc2|sc1|sc1|process_0~38_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~97_combout\);

-- Location: LCCOMB_X106_Y43_N30
\sc0|sc2|sc1|sc1|process_0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~98_combout\ = (\sc0|sc2|sc1|sc1|process_0~93_combout\) # ((\sc0|sc2|sc1|sc1|process_0~97_combout\ & ((\sc0|sc2|sc1|sc1|process_0~95_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~97_combout\ & 
-- (\sc0|sc2|sc1|sc1|process_0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~96_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~93_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~95_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~97_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~98_combout\);

-- Location: LCCOMB_X114_Y42_N10
\sc0|sc2|sc1|sc1|process_0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~68_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(74) & ((\sc0|sc2|sc1|sc0|Reg\(75)) # ((!\sc0|sc2|sc1|sc0|Reg\(76) & \sc0|sc2|sc1|sc0|Reg\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(74),
	datab => \sc0|sc2|sc1|sc0|Reg\(76),
	datac => \sc0|sc2|sc1|sc0|Reg\(75),
	datad => \sc0|sc2|sc1|sc0|Reg\(77),
	combout => \sc0|sc2|sc1|sc1|process_0~68_combout\);

-- Location: LCCOMB_X114_Y42_N28
\sc0|sc2|sc1|sc1|process_0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~67_combout\ = (\sc0|sc2|sc1|sc1|process_0~40_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(68) & ((\sc0|sc2|sc1|sc1|process_0~12_combout\) # (!\sc0|sc2|sc1|sc1|process_0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~41_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~12_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~67_combout\);

-- Location: LCCOMB_X114_Y42_N30
\sc0|sc2|sc1|sc1|process_0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~66_combout\ = (\sc0|sc2|sc1|sc0|Reg\(69)) # ((!\sc0|sc2|sc1|sc0|Reg\(70) & ((\sc0|sc2|sc1|sc0|Reg\(71)) # (!\sc0|sc2|sc1|sc0|Reg\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(69),
	datab => \sc0|sc2|sc1|sc0|Reg\(72),
	datac => \sc0|sc2|sc1|sc0|Reg\(70),
	datad => \sc0|sc2|sc1|sc0|Reg\(71),
	combout => \sc0|sc2|sc1|sc1|process_0~66_combout\);

-- Location: LCCOMB_X114_Y42_N8
\sc0|sc2|sc1|sc1|process_0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~69_combout\ = (\sc0|sc2|sc1|sc1|process_0~68_combout\ & (((\sc0|sc2|sc1|sc1|process_0~67_combout\ & \sc0|sc2|sc1|sc1|process_0~66_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~42_combout\))) # 
-- (!\sc0|sc2|sc1|sc1|process_0~68_combout\ & (\sc0|sc2|sc1|sc1|process_0~67_combout\ & (\sc0|sc2|sc1|sc1|process_0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~68_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~67_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~66_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~42_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~69_combout\);

-- Location: LCCOMB_X106_Y43_N18
\sc0|sc2|sc1|sc1|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~64_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(64) & ((\sc0|sc2|sc1|sc0|Reg\(65)) # ((\sc0|sc2|sc1|sc0|Reg\(67) & !\sc0|sc2|sc1|sc0|Reg\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(67),
	datab => \sc0|sc2|sc1|sc0|Reg\(66),
	datac => \sc0|sc2|sc1|sc0|Reg\(64),
	datad => \sc0|sc2|sc1|sc0|Reg\(65),
	combout => \sc0|sc2|sc1|sc1|process_0~64_combout\);

-- Location: LCCOMB_X106_Y43_N12
\sc0|sc2|sc1|sc1|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~65_combout\ = (\sc0|sc2|sc1|sc1|process_0~64_combout\ & (!\sc0|sc2|sc1|sc1|process_0~39_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(68)) # (!\sc0|sc2|sc1|sc1|process_0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~64_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~65_combout\);

-- Location: LCCOMB_X113_Y42_N8
\sc0|sc2|sc1|sc1|process_0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~99_combout\ = (\sc0|sc2|sc1|sc1|process_0~69_combout\) # ((\sc0|sc2|sc1|sc1|process_0~65_combout\) # ((\sc0|sc2|sc1|sc1|process_0~39_combout\ & \sc0|sc2|sc1|sc1|process_0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~98_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~69_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~65_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~99_combout\);

-- Location: LCCOMB_X109_Y42_N28
\sc0|sc2|sc1|sc1|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~58_combout\ = (\sc0|sc2|sc1|sc0|Reg\(89)) # ((!\sc0|sc2|sc1|sc0|Reg\(90) & ((\sc0|sc2|sc1|sc0|Reg\(91)) # (!\sc0|sc2|sc1|sc0|Reg\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(92),
	datab => \sc0|sc2|sc1|sc0|Reg\(89),
	datac => \sc0|sc2|sc1|sc0|Reg\(90),
	datad => \sc0|sc2|sc1|sc0|Reg\(91),
	combout => \sc0|sc2|sc1|sc1|process_0~58_combout\);

-- Location: LCCOMB_X109_Y42_N26
\sc0|sc2|sc1|sc1|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~59_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(84) & ((\sc0|sc2|sc1|sc0|Reg\(85)) # ((\sc0|sc2|sc1|sc0|Reg\(87) & !\sc0|sc2|sc1|sc0|Reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(84),
	datab => \sc0|sc2|sc1|sc0|Reg\(85),
	datac => \sc0|sc2|sc1|sc0|Reg\(87),
	datad => \sc0|sc2|sc1|sc0|Reg\(86),
	combout => \sc0|sc2|sc1|sc1|process_0~59_combout\);

-- Location: LCCOMB_X109_Y42_N16
\sc0|sc2|sc1|sc1|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~60_combout\ = ((\sc0|sc2|sc1|sc0|Reg\(88)) # (\sc0|sc2|sc1|sc1|process_0~46_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~11_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(88),
	datad => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~60_combout\);

-- Location: LCCOMB_X109_Y42_N30
\sc0|sc2|sc1|sc1|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~61_combout\ = (\sc0|sc2|sc1|sc1|process_0~60_combout\ & (!\sc0|sc2|sc1|sc1|process_0~46_combout\ & ((\sc0|sc2|sc1|sc1|process_0~59_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~60_combout\ & 
-- (((\sc0|sc2|sc1|sc1|process_0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~58_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~59_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~60_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~61_combout\);

-- Location: LCCOMB_X113_Y42_N2
\sc0|sc2|sc1|sc1|process_0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~100_combout\ = (\sc0|sc2|sc1|sc1|process_0~63_combout\) # ((\sc0|sc2|sc1|sc1|process_0~61_combout\) # ((\sc0|sc2|sc1|sc1|process_0~99_combout\ & \sc0|sc2|sc1|sc1|process_0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~63_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~99_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~61_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~100_combout\);

-- Location: LCCOMB_X109_Y42_N12
\sc0|sc2|sc1|sc1|process_0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~103_combout\ = ((\sc0|sc2|sc1|sc0|Reg\(92)) # ((\sc0|sc2|sc1|sc0|Reg\(93)) # (!\sc0|sc2|sc1|sc1|process_0~47_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~10_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(92),
	datac => \sc0|sc2|sc1|sc0|Reg\(93),
	datad => \sc0|sc2|sc1|sc1|process_0~47_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~103_combout\);

-- Location: LCCOMB_X114_Y40_N24
\sc0|sc2|sc1|sc1|process_0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~101_combout\ = (\sc0|sc2|sc1|sc0|Reg\(98)) # (((\sc0|sc2|sc1|sc0|Reg\(97)) # (\sc0|sc2|sc1|sc0|Reg\(96))) # (!\sc0|sc2|sc1|sc1|count_out[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(98),
	datab => \sc0|sc2|sc1|sc1|count_out[5]~7_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(97),
	datad => \sc0|sc2|sc1|sc0|Reg\(96),
	combout => \sc0|sc2|sc1|sc1|process_0~101_combout\);

-- Location: LCCOMB_X114_Y40_N4
\sc0|sc2|sc1|sc1|process_0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~104_combout\ = (\sc0|sc2|sc1|sc1|process_0~103_combout\ & (((\sc0|sc2|sc1|sc1|process_0~100_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~103_combout\ & (\sc0|sc2|sc1|sc1|process_0~102_combout\ & 
-- ((\sc0|sc2|sc1|sc1|process_0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~102_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~100_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~103_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~101_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~104_combout\);

-- Location: LCCOMB_X114_Y40_N14
\sc0|sc2|sc1|sc1|process_0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~106_combout\ = (\sc0|sc2|sc1|sc1|process_0~104_combout\) # ((\sc0|sc2|sc1|sc1|process_0~105_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(104) & !\sc0|sc2|sc1|sc1|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~105_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~104_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(104),
	datad => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~106_combout\);

-- Location: LCCOMB_X114_Y40_N26
\sc0|sc2|sc1|sc1|process_0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~108_combout\ = (\sc0|sc2|sc1|sc1|process_0~106_combout\) # ((\sc0|sc2|sc1|sc1|process_0~107_combout\ & (\sc0|sc2|sc1|sc1|process_0~49_combout\ & !\sc0|sc2|sc1|sc1|process_0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~107_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~106_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~101_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~108_combout\);

-- Location: LCCOMB_X113_Y40_N10
\sc0|sc2|sc1|sc1|process_0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~111_combout\ = (\sc0|sc2|sc1|sc1|process_0~110_combout\ & (((\sc0|sc2|sc1|sc1|process_0~108_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~110_combout\ & (\sc0|sc2|sc1|sc1|process_0~51_combout\ & 
-- (\sc0|sc2|sc1|sc1|process_0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~110_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~109_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~108_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~111_combout\);

-- Location: LCCOMB_X110_Y38_N6
\sc0|sc2|sc1|sc1|count_out[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[0]~12_combout\ = (\sc0|sc2|sc1|sc1|count_out[0]~10_combout\) # ((\sc0|sc2|sc1|sc1|count_out[0]~11_combout\ & ((\sc0|sc2|sc1|sc1|process_0~57_combout\) # (\sc0|sc2|sc1|sc1|process_0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~57_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[0]~11_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[0]~10_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~111_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[0]~12_combout\);

-- Location: LCCOMB_X108_Y39_N10
\sc0|sc3|R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[0]~0_combout\ = (\sc1|sc4|sc1|count_out[0]~14_combout\ & ((GND) # (!\sc0|sc2|sc1|sc1|count_out[0]~12_combout\))) # (!\sc1|sc4|sc1|count_out[0]~14_combout\ & (\sc0|sc2|sc1|sc1|count_out[0]~12_combout\ $ (GND)))
-- \sc0|sc3|R[0]~1\ = CARRY((\sc1|sc4|sc1|count_out[0]~14_combout\) # (!\sc0|sc2|sc1|sc1|count_out[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[0]~14_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[0]~12_combout\,
	datad => VCC,
	combout => \sc0|sc3|R[0]~0_combout\,
	cout => \sc0|sc3|R[0]~1\);

-- Location: LCCOMB_X111_Y39_N22
\sc1|sc4|sc1|count_out[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[1]~15_combout\ = (\sc1|sc4|sc0|Reg\(119)) # ((!\sc1|sc4|sc0|Reg\(120) & !\sc1|sc4|sc0|Reg\(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(119),
	datab => \sc1|sc4|sc0|Reg\(120),
	datad => \sc1|sc4|sc0|Reg\(121),
	combout => \sc1|sc4|sc1|count_out[1]~15_combout\);

-- Location: LCCOMB_X112_Y39_N10
\sc1|sc4|sc1|count_out[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[1]~16_combout\ = (\RST~input_o\ & (\sc1|sc4|sc1|count_out[1]~15_combout\ & (!\sc1|sc4|sc1|process_0~52_combout\ & \sc1|sc4|sc1|process_0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sc1|sc4|sc1|count_out[1]~15_combout\,
	datac => \sc1|sc4|sc1|process_0~52_combout\,
	datad => \sc1|sc4|sc1|process_0~54_combout\,
	combout => \sc1|sc4|sc1|count_out[1]~16_combout\);

-- Location: LCCOMB_X109_Y39_N12
\sc1|sc4|sc1|process_0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~154_combout\ = (\sc1|sc4|sc0|Reg\(115)) # ((\sc1|sc4|sc0|Reg\(114)) # ((!\sc1|sc4|sc0|Reg\(116) & !\sc1|sc4|sc0|Reg\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(116),
	datab => \sc1|sc4|sc0|Reg\(117),
	datac => \sc1|sc4|sc0|Reg\(115),
	datad => \sc1|sc4|sc0|Reg\(114),
	combout => \sc1|sc4|sc1|process_0~154_combout\);

-- Location: LCCOMB_X112_Y41_N26
\sc1|sc4|sc1|process_0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~151_combout\ = (\sc1|sc4|sc0|Reg\(99)) # ((!\sc1|sc4|sc0|Reg\(100) & !\sc1|sc4|sc0|Reg\(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(100),
	datac => \sc1|sc4|sc0|Reg\(101),
	datad => \sc1|sc4|sc0|Reg\(99),
	combout => \sc1|sc4|sc1|process_0~151_combout\);

-- Location: LCCOMB_X112_Y41_N16
\sc1|sc4|sc1|process_0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~115_combout\ = (\sc1|sc4|sc0|Reg\(95)) # ((\sc1|sc4|sc0|Reg\(94)) # ((!\sc1|sc4|sc0|Reg\(97) & !\sc1|sc4|sc0|Reg\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(95),
	datab => \sc1|sc4|sc0|Reg\(97),
	datac => \sc1|sc4|sc0|Reg\(96),
	datad => \sc1|sc4|sc0|Reg\(94),
	combout => \sc1|sc4|sc1|process_0~115_combout\);

-- Location: LCCOMB_X108_Y41_N12
\sc1|sc4|sc1|process_0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~116_combout\ = (\sc1|sc4|sc1|process_0~46_combout\ & (((!\sc1|sc4|sc1|process_0~47_combout\ & \sc1|sc4|sc1|process_0~115_combout\)) # (!\sc1|sc4|sc1|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~47_combout\,
	datab => \sc1|sc4|sc1|process_0~10_combout\,
	datac => \sc1|sc4|sc1|process_0~115_combout\,
	datad => \sc1|sc4|sc1|process_0~46_combout\,
	combout => \sc1|sc4|sc1|process_0~116_combout\);

-- Location: LCCOMB_X108_Y40_N12
\sc1|sc4|sc1|process_0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~148_combout\ = (!\sc1|sc4|sc0|Reg\(85) & (!\sc1|sc4|sc0|Reg\(84) & ((\sc1|sc4|sc0|Reg\(87)) # (\sc1|sc4|sc0|Reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(85),
	datab => \sc1|sc4|sc0|Reg\(87),
	datac => \sc1|sc4|sc0|Reg\(84),
	datad => \sc1|sc4|sc0|Reg\(86),
	combout => \sc1|sc4|sc1|process_0~148_combout\);

-- Location: LCCOMB_X107_Y44_N0
\sc1|sc4|sc1|process_0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~122_combout\ = (!\sc1|sc4|sc0|Reg\(49) & ((\sc1|sc4|sc0|Reg\(50)) # (\sc1|sc4|sc0|Reg\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc0|Reg\(50),
	datac => \sc1|sc4|sc0|Reg\(51),
	datad => \sc1|sc4|sc0|Reg\(49),
	combout => \sc1|sc4|sc1|process_0~122_combout\);

-- Location: LCCOMB_X107_Y44_N10
\sc1|sc4|sc1|process_0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~123_combout\ = (\sc1|sc4|sc1|process_0~94_combout\ & (\sc1|sc4|sc1|process_0~122_combout\ & !\sc1|sc4|sc1|process_0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~94_combout\,
	datac => \sc1|sc4|sc1|process_0~122_combout\,
	datad => \sc1|sc4|sc1|process_0~74_combout\,
	combout => \sc1|sc4|sc1|process_0~123_combout\);

-- Location: LCCOMB_X107_Y44_N20
\sc1|sc4|sc1|process_0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~141_combout\ = (\sc1|sc4|sc0|Reg\(55)) # ((\sc1|sc4|sc0|Reg\(54)) # ((!\sc1|sc4|sc0|Reg\(57) & !\sc1|sc4|sc0|Reg\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(57),
	datab => \sc1|sc4|sc0|Reg\(55),
	datac => \sc1|sc4|sc0|Reg\(56),
	datad => \sc1|sc4|sc0|Reg\(54),
	combout => \sc1|sc4|sc1|process_0~141_combout\);

-- Location: LCCOMB_X107_Y41_N2
\sc1|sc4|sc1|process_0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~127_combout\ = (!\sc1|sc4|sc0|Reg\(29) & ((\sc1|sc4|sc0|Reg\(31)) # (\sc1|sc4|sc0|Reg\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(31),
	datab => \sc1|sc4|sc0|Reg\(30),
	datad => \sc1|sc4|sc0|Reg\(29),
	combout => \sc1|sc4|sc1|process_0~127_combout\);

-- Location: LCCOMB_X108_Y44_N20
\sc1|sc4|sc1|process_0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~128_combout\ = (\sc1|sc4|sc1|process_0~127_combout\ & (!\sc1|sc4|sc1|process_0~91_combout\ & ((\sc1|sc4|sc1|process_0~19_combout\) # (!\sc1|sc4|sc1|count_out[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~127_combout\,
	datab => \sc1|sc4|sc1|process_0~91_combout\,
	datac => \sc1|sc4|sc1|count_out[5]~7_combout\,
	datad => \sc1|sc4|sc1|process_0~19_combout\,
	combout => \sc1|sc4|sc1|process_0~128_combout\);

-- Location: LCCOMB_X114_Y48_N30
\sc1|sc4|sc1|process_0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~138_combout\ = (\sc1|sc4|sc0|Reg\(35)) # ((\sc1|sc4|sc0|Reg\(34)) # ((!\sc1|sc4|sc0|Reg\(37) & !\sc1|sc4|sc0|Reg\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(37),
	datab => \sc1|sc4|sc0|Reg\(35),
	datac => \sc1|sc4|sc0|Reg\(36),
	datad => \sc1|sc4|sc0|Reg\(34),
	combout => \sc1|sc4|sc1|process_0~138_combout\);

-- Location: LCCOMB_X111_Y48_N14
\sc1|sc4|sc1|process_0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~130_combout\ = (\sc1|sc4|sc0|Reg\(19)) # ((\sc1|sc4|sc0|Reg\(18)) # ((!\sc1|sc4|sc0|Reg\(21) & !\sc1|sc4|sc0|Reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(21),
	datab => \sc1|sc4|sc0|Reg\(19),
	datac => \sc1|sc4|sc0|Reg\(20),
	datad => \sc1|sc4|sc0|Reg\(18),
	combout => \sc1|sc4|sc1|process_0~130_combout\);

-- Location: LCCOMB_X111_Y48_N24
\sc1|sc4|sc1|process_0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~131_combout\ = ((!\sc1|sc4|sc0|Reg\(16) & (\sc1|sc4|sc1|process_0~130_combout\ & !\sc1|sc4|sc0|Reg\(17)))) # (!\sc1|sc4|sc1|process_0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(16),
	datab => \sc1|sc4|sc1|process_0~130_combout\,
	datac => \sc1|sc4|sc0|Reg\(17),
	datad => \sc1|sc4|sc1|process_0~24_combout\,
	combout => \sc1|sc4|sc1|process_0~131_combout\);

-- Location: LCCOMB_X112_Y47_N8
\sc1|sc4|sc1|process_0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~132_combout\ = (!\sc1|sc4|sc0|Reg\(13) & (\sc1|sc4|sc1|process_0~131_combout\ & !\sc1|sc4|sc0|Reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(13),
	datac => \sc1|sc4|sc1|process_0~131_combout\,
	datad => \sc1|sc4|sc0|Reg\(12),
	combout => \sc1|sc4|sc1|process_0~132_combout\);

-- Location: LCCOMB_X112_Y47_N24
\sc1|sc4|sc1|process_0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~133_combout\ = (!\sc1|sc4|sc0|Reg\(9) & ((\sc1|sc4|sc0|Reg\(11)) # ((\sc1|sc4|sc1|process_0~132_combout\) # (\sc1|sc4|sc0|Reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(9),
	datab => \sc1|sc4|sc0|Reg\(11),
	datac => \sc1|sc4|sc1|process_0~132_combout\,
	datad => \sc1|sc4|sc0|Reg\(10),
	combout => \sc1|sc4|sc1|process_0~133_combout\);

-- Location: LCCOMB_X112_Y47_N30
\sc1|sc4|sc1|process_0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~134_combout\ = (\sc1|sc4|sc0|Reg\(7)) # ((\sc1|sc4|sc0|Reg\(6)) # ((!\sc1|sc4|sc0|Reg\(8) & \sc1|sc4|sc1|process_0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(7),
	datab => \sc1|sc4|sc0|Reg\(6),
	datac => \sc1|sc4|sc0|Reg\(8),
	datad => \sc1|sc4|sc1|process_0~133_combout\,
	combout => \sc1|sc4|sc1|process_0~134_combout\);

-- Location: LCCOMB_X112_Y47_N12
\sc1|sc4|sc1|process_0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~129_combout\ = (!\sc1|sc4|sc0|Reg\(5) & !\sc1|sc4|sc0|Reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(5),
	datad => \sc1|sc4|sc0|Reg\(4),
	combout => \sc1|sc4|sc1|process_0~129_combout\);

-- Location: LCCOMB_X112_Y47_N16
\sc1|sc4|sc1|process_0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~135_combout\ = (\sc1|sc4|sc0|Reg\(3)) # ((\sc1|sc4|sc0|Reg\(2)) # ((\sc1|sc4|sc1|process_0~134_combout\ & \sc1|sc4|sc1|process_0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(3),
	datab => \sc1|sc4|sc0|Reg\(2),
	datac => \sc1|sc4|sc1|process_0~134_combout\,
	datad => \sc1|sc4|sc1|process_0~129_combout\,
	combout => \sc1|sc4|sc1|process_0~135_combout\);

-- Location: LCCOMB_X112_Y47_N20
\sc1|sc4|sc1|process_0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~136_combout\ = (\sc1|sc4|sc1|process_0~30_combout\ & (\sc1|sc4|sc1|process_0~135_combout\ & (!\sc1|sc4|sc0|Reg\(0) & !\sc1|sc4|sc0|Reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~30_combout\,
	datab => \sc1|sc4|sc1|process_0~135_combout\,
	datac => \sc1|sc4|sc0|Reg\(0),
	datad => \sc1|sc4|sc0|Reg\(1),
	combout => \sc1|sc4|sc1|process_0~136_combout\);

-- Location: LCCOMB_X108_Y44_N16
\sc1|sc4|sc1|process_0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~137_combout\ = (\sc1|sc4|sc1|process_0~31_combout\ & (((\sc1|sc4|sc1|process_0~136_combout\ & \sc1|sc4|sc0|Reg\(28))) # (!\sc1|sc4|sc1|process_0~32_combout\))) # (!\sc1|sc4|sc1|process_0~31_combout\ & 
-- (((\sc1|sc4|sc1|process_0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~32_combout\,
	datab => \sc1|sc4|sc1|process_0~136_combout\,
	datac => \sc1|sc4|sc0|Reg\(28),
	datad => \sc1|sc4|sc1|process_0~31_combout\,
	combout => \sc1|sc4|sc1|process_0~137_combout\);

-- Location: LCCOMB_X112_Y44_N28
\sc1|sc4|sc1|process_0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~139_combout\ = (\sc1|sc4|sc1|process_0~128_combout\) # ((\sc1|sc4|sc1|process_0~137_combout\) # ((!\sc1|sc4|sc1|process_0~183_combout\ & \sc1|sc4|sc1|process_0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~128_combout\,
	datab => \sc1|sc4|sc1|process_0~183_combout\,
	datac => \sc1|sc4|sc1|process_0~138_combout\,
	datad => \sc1|sc4|sc1|process_0~137_combout\,
	combout => \sc1|sc4|sc1|process_0~139_combout\);

-- Location: LCCOMB_X112_Y44_N2
\sc1|sc4|sc1|process_0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~124_combout\ = (!\sc1|sc4|sc0|Reg\(45) & (!\sc1|sc4|sc0|Reg\(44) & ((\sc1|sc4|sc0|Reg\(46)) # (\sc1|sc4|sc0|Reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(46),
	datab => \sc1|sc4|sc0|Reg\(45),
	datac => \sc1|sc4|sc0|Reg\(47),
	datad => \sc1|sc4|sc0|Reg\(44),
	combout => \sc1|sc4|sc1|process_0~124_combout\);

-- Location: LCCOMB_X112_Y44_N14
\sc1|sc4|sc1|process_0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~125_combout\ = (\sc1|sc4|sc0|Reg\(39)) # ((!\sc1|sc4|sc0|Reg\(40) & !\sc1|sc4|sc0|Reg\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(40),
	datab => \sc1|sc4|sc0|Reg\(39),
	datad => \sc1|sc4|sc0|Reg\(41),
	combout => \sc1|sc4|sc1|process_0~125_combout\);

-- Location: LCCOMB_X112_Y44_N18
\sc1|sc4|sc1|process_0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~126_combout\ = (\sc1|sc4|sc1|process_0~35_combout\ & (!\sc1|sc4|sc1|process_0~33_combout\ & ((\sc1|sc4|sc1|process_0~125_combout\)))) # (!\sc1|sc4|sc1|process_0~35_combout\ & (((\sc1|sc4|sc1|process_0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~33_combout\,
	datab => \sc1|sc4|sc1|process_0~124_combout\,
	datac => \sc1|sc4|sc1|process_0~125_combout\,
	datad => \sc1|sc4|sc1|process_0~35_combout\,
	combout => \sc1|sc4|sc1|process_0~126_combout\);

-- Location: LCCOMB_X112_Y44_N16
\sc1|sc4|sc1|process_0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~140_combout\ = (\sc1|sc4|sc1|process_0~74_combout\ & ((\sc1|sc4|sc1|process_0~126_combout\) # ((\sc1|sc4|sc1|process_0~33_combout\ & \sc1|sc4|sc1|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~33_combout\,
	datab => \sc1|sc4|sc1|process_0~139_combout\,
	datac => \sc1|sc4|sc1|process_0~74_combout\,
	datad => \sc1|sc4|sc1|process_0~126_combout\,
	combout => \sc1|sc4|sc1|process_0~140_combout\);

-- Location: LCCOMB_X107_Y44_N2
\sc1|sc4|sc1|process_0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~142_combout\ = (\sc1|sc4|sc1|process_0~123_combout\) # ((\sc1|sc4|sc1|process_0~140_combout\) # ((\sc1|sc4|sc1|process_0~141_combout\ & !\sc1|sc4|sc1|process_0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~123_combout\,
	datab => \sc1|sc4|sc1|process_0~141_combout\,
	datac => \sc1|sc4|sc1|process_0~140_combout\,
	datad => \sc1|sc4|sc1|process_0~94_combout\,
	combout => \sc1|sc4|sc1|process_0~142_combout\);

-- Location: LCCOMB_X108_Y43_N12
\sc1|sc4|sc1|process_0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~143_combout\ = (\sc1|sc4|sc0|Reg\(59)) # ((!\sc1|sc4|sc0|Reg\(60) & !\sc1|sc4|sc0|Reg\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(60),
	datac => \sc1|sc4|sc0|Reg\(61),
	datad => \sc1|sc4|sc0|Reg\(59),
	combout => \sc1|sc4|sc1|process_0~143_combout\);

-- Location: LCCOMB_X108_Y43_N14
\sc1|sc4|sc1|process_0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~144_combout\ = (\sc1|sc4|sc1|process_0~100_combout\ & (((\sc1|sc4|sc1|process_0~142_combout\)))) # (!\sc1|sc4|sc1|process_0~100_combout\ & (\sc1|sc4|sc1|process_0~38_combout\ & ((\sc1|sc4|sc1|process_0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~38_combout\,
	datab => \sc1|sc4|sc1|process_0~100_combout\,
	datac => \sc1|sc4|sc1|process_0~142_combout\,
	datad => \sc1|sc4|sc1|process_0~143_combout\,
	combout => \sc1|sc4|sc1|process_0~144_combout\);

-- Location: LCCOMB_X108_Y43_N30
\sc1|sc4|sc1|process_0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~121_combout\ = (!\sc1|sc4|sc1|process_0~38_combout\ & (!\sc1|sc4|sc1|process_0~13_combout\ & (!\sc1|sc4|sc0|Reg\(64) & !\sc1|sc4|sc0|Reg\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~38_combout\,
	datab => \sc1|sc4|sc1|process_0~13_combout\,
	datac => \sc1|sc4|sc0|Reg\(64),
	datad => \sc1|sc4|sc0|Reg\(65),
	combout => \sc1|sc4|sc1|process_0~121_combout\);

-- Location: LCCOMB_X108_Y42_N12
\sc1|sc4|sc1|process_0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~145_combout\ = (\sc1|sc4|sc1|process_0~144_combout\ & ((\sc1|sc4|sc0|Reg\(68)) # ((!\sc1|sc4|sc1|process_0~39_combout\)))) # (!\sc1|sc4|sc1|process_0~144_combout\ & (\sc1|sc4|sc1|process_0~121_combout\ & ((\sc1|sc4|sc0|Reg\(68)) # 
-- (!\sc1|sc4|sc1|process_0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~144_combout\,
	datab => \sc1|sc4|sc0|Reg\(68),
	datac => \sc1|sc4|sc1|process_0~39_combout\,
	datad => \sc1|sc4|sc1|process_0~121_combout\,
	combout => \sc1|sc4|sc1|process_0~145_combout\);

-- Location: LCCOMB_X108_Y42_N22
\sc1|sc4|sc1|process_0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~146_combout\ = (\sc1|sc4|sc0|Reg\(75)) # ((\sc1|sc4|sc0|Reg\(74)) # ((!\sc1|sc4|sc0|Reg\(77) & !\sc1|sc4|sc0|Reg\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(77),
	datab => \sc1|sc4|sc0|Reg\(76),
	datac => \sc1|sc4|sc0|Reg\(75),
	datad => \sc1|sc4|sc0|Reg\(74),
	combout => \sc1|sc4|sc1|process_0~146_combout\);

-- Location: LCCOMB_X105_Y42_N20
\sc1|sc4|sc1|process_0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~119_combout\ = (!\sc1|sc4|sc0|Reg\(69) & ((\sc1|sc4|sc0|Reg\(70)) # (\sc1|sc4|sc0|Reg\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(70),
	datac => \sc1|sc4|sc0|Reg\(71),
	datad => \sc1|sc4|sc0|Reg\(69),
	combout => \sc1|sc4|sc1|process_0~119_combout\);

-- Location: LCCOMB_X108_Y42_N2
\sc1|sc4|sc1|process_0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~120_combout\ = (\sc1|sc4|sc1|process_0~39_combout\ & (!\sc1|sc4|sc0|Reg\(68) & (\sc1|sc4|sc1|process_0~41_combout\ & \sc1|sc4|sc1|process_0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~39_combout\,
	datab => \sc1|sc4|sc0|Reg\(68),
	datac => \sc1|sc4|sc1|process_0~41_combout\,
	datad => \sc1|sc4|sc1|process_0~119_combout\,
	combout => \sc1|sc4|sc1|process_0~120_combout\);

-- Location: LCCOMB_X108_Y42_N8
\sc1|sc4|sc1|process_0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~147_combout\ = (\sc1|sc4|sc1|process_0~145_combout\) # ((\sc1|sc4|sc1|process_0~120_combout\) # ((!\sc1|sc4|sc1|process_0~41_combout\ & \sc1|sc4|sc1|process_0~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~145_combout\,
	datab => \sc1|sc4|sc1|process_0~41_combout\,
	datac => \sc1|sc4|sc1|process_0~146_combout\,
	datad => \sc1|sc4|sc1|process_0~120_combout\,
	combout => \sc1|sc4|sc1|process_0~147_combout\);

-- Location: LCCOMB_X108_Y41_N18
\sc1|sc4|sc1|process_0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~149_combout\ = (\sc1|sc4|sc1|process_0~148_combout\ & (((\sc1|sc4|sc1|process_0~147_combout\ & \sc1|sc4|sc1|process_0~43_combout\)) # (!\sc1|sc4|sc1|process_0~45_combout\))) # (!\sc1|sc4|sc1|process_0~148_combout\ & 
-- (\sc1|sc4|sc1|process_0~147_combout\ & (\sc1|sc4|sc1|process_0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~148_combout\,
	datab => \sc1|sc4|sc1|process_0~147_combout\,
	datac => \sc1|sc4|sc1|process_0~43_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~149_combout\);

-- Location: LCCOMB_X108_Y41_N22
\sc1|sc4|sc1|process_0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~117_combout\ = (\sc1|sc4|sc0|Reg\(79)) # ((!\sc1|sc4|sc0|Reg\(81) & !\sc1|sc4|sc0|Reg\(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(81),
	datab => \sc1|sc4|sc0|Reg\(79),
	datad => \sc1|sc4|sc0|Reg\(80),
	combout => \sc1|sc4|sc1|process_0~117_combout\);

-- Location: LCCOMB_X107_Y41_N20
\sc1|sc4|sc1|process_0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~118_combout\ = (\sc1|sc4|sc1|process_0~117_combout\ & (!\sc1|sc4|sc1|process_0~43_combout\ & ((\sc1|sc4|sc0|Reg\(79)) # (\sc1|sc4|sc1|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(79),
	datab => \sc1|sc4|sc1|process_0~117_combout\,
	datac => \sc1|sc4|sc1|process_0~44_combout\,
	datad => \sc1|sc4|sc1|process_0~43_combout\,
	combout => \sc1|sc4|sc1|process_0~118_combout\);

-- Location: LCCOMB_X108_Y41_N24
\sc1|sc4|sc1|process_0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~150_combout\ = (\sc1|sc4|sc1|process_0~116_combout\) # ((\sc1|sc4|sc1|process_0~66_combout\ & ((\sc1|sc4|sc1|process_0~149_combout\) # (\sc1|sc4|sc1|process_0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~116_combout\,
	datab => \sc1|sc4|sc1|process_0~149_combout\,
	datac => \sc1|sc4|sc1|process_0~118_combout\,
	datad => \sc1|sc4|sc1|process_0~66_combout\,
	combout => \sc1|sc4|sc1|process_0~150_combout\);

-- Location: LCCOMB_X112_Y41_N28
\sc1|sc4|sc1|process_0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~152_combout\ = (\sc1|sc4|sc1|process_0~59_combout\ & (((\sc1|sc4|sc1|process_0~150_combout\)))) # (!\sc1|sc4|sc1|process_0~59_combout\ & (\sc1|sc4|sc1|process_0~151_combout\ & (\sc1|sc4|sc1|process_0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~151_combout\,
	datab => \sc1|sc4|sc1|process_0~48_combout\,
	datac => \sc1|sc4|sc1|process_0~59_combout\,
	datad => \sc1|sc4|sc1|process_0~150_combout\,
	combout => \sc1|sc4|sc1|process_0~152_combout\);

-- Location: LCCOMB_X109_Y40_N18
\sc1|sc4|sc1|process_0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~114_combout\ = (!\sc1|sc4|sc1|process_0~7_combout\ & (!\sc1|sc4|sc0|Reg\(105) & (!\sc1|sc4|sc1|process_0~48_combout\ & !\sc1|sc4|sc0|Reg\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~7_combout\,
	datab => \sc1|sc4|sc0|Reg\(105),
	datac => \sc1|sc4|sc1|process_0~48_combout\,
	datad => \sc1|sc4|sc0|Reg\(104),
	combout => \sc1|sc4|sc1|process_0~114_combout\);

-- Location: LCCOMB_X109_Y40_N12
\sc1|sc4|sc1|process_0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~153_combout\ = (\sc1|sc4|sc1|process_0~152_combout\ & (((\sc1|sc4|sc0|Reg\(108)) # (!\sc1|sc4|sc1|process_0~49_combout\)))) # (!\sc1|sc4|sc1|process_0~152_combout\ & (\sc1|sc4|sc1|process_0~114_combout\ & ((\sc1|sc4|sc0|Reg\(108)) # 
-- (!\sc1|sc4|sc1|process_0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~152_combout\,
	datab => \sc1|sc4|sc1|process_0~114_combout\,
	datac => \sc1|sc4|sc0|Reg\(108),
	datad => \sc1|sc4|sc1|process_0~49_combout\,
	combout => \sc1|sc4|sc1|process_0~153_combout\);

-- Location: LCCOMB_X109_Y39_N14
\sc1|sc4|sc1|process_0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~155_combout\ = (\sc1|sc4|sc1|process_0~153_combout\) # ((\sc1|sc4|sc1|process_0~154_combout\ & !\sc1|sc4|sc1|process_0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~154_combout\,
	datac => \sc1|sc4|sc1|process_0~50_combout\,
	datad => \sc1|sc4|sc1|process_0~153_combout\,
	combout => \sc1|sc4|sc1|process_0~155_combout\);

-- Location: LCCOMB_X112_Y39_N20
\sc1|sc4|sc1|process_0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~112_combout\ = (!\sc1|sc4|sc0|Reg\(110) & !\sc1|sc4|sc0|Reg\(111))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(110),
	datac => \sc1|sc4|sc0|Reg\(111),
	combout => \sc1|sc4|sc1|process_0~112_combout\);

-- Location: LCCOMB_X112_Y39_N18
\sc1|sc4|sc1|process_0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~113_combout\ = (!\sc1|sc4|sc1|process_0~110_combout\ & (\sc1|sc4|sc1|process_0~50_combout\ & (!\sc1|sc4|sc0|Reg\(109) & !\sc1|sc4|sc1|process_0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~110_combout\,
	datab => \sc1|sc4|sc1|process_0~50_combout\,
	datac => \sc1|sc4|sc0|Reg\(109),
	datad => \sc1|sc4|sc1|process_0~112_combout\,
	combout => \sc1|sc4|sc1|process_0~113_combout\);

-- Location: LCCOMB_X112_Y39_N4
\sc1|sc4|sc1|count_out[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[1]~17_combout\ = (\sc1|sc4|sc1|process_0~52_combout\ & (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~155_combout\) # (\sc1|sc4|sc1|process_0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~155_combout\,
	datab => \sc1|sc4|sc1|process_0~113_combout\,
	datac => \sc1|sc4|sc1|process_0~52_combout\,
	datad => \RST~input_o\,
	combout => \sc1|sc4|sc1|count_out[1]~17_combout\);

-- Location: LCCOMB_X111_Y39_N20
\sc1|sc4|sc1|count_out[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[1]~18_combout\ = (!\sc1|sc4|sc0|Reg\(125) & ((\sc1|sc4|sc0|Reg\(126)) # (\sc1|sc4|sc0|Reg\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(126),
	datab => \sc1|sc4|sc0|Reg\(127),
	datad => \sc1|sc4|sc0|Reg\(125),
	combout => \sc1|sc4|sc1|count_out[1]~18_combout\);

-- Location: LCCOMB_X112_Y39_N2
\sc1|sc4|sc1|count_out[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[1]~19_combout\ = (\sc1|sc4|sc1|count_out[1]~16_combout\) # ((\sc1|sc4|sc1|count_out[1]~17_combout\) # ((\sc1|sc4|sc1|count_out[0]~13_combout\ & \sc1|sc4|sc1|count_out[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[1]~16_combout\,
	datab => \sc1|sc4|sc1|count_out[0]~13_combout\,
	datac => \sc1|sc4|sc1|count_out[1]~17_combout\,
	datad => \sc1|sc4|sc1|count_out[1]~18_combout\,
	combout => \sc1|sc4|sc1|count_out[1]~19_combout\);

-- Location: LCCOMB_X114_Y40_N2
\sc0|sc2|sc1|sc1|process_0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~151_combout\ = (\sc0|sc2|sc1|sc0|Reg\(99)) # ((!\sc0|sc2|sc1|sc0|Reg\(101) & !\sc0|sc2|sc1|sc0|Reg\(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(101),
	datac => \sc0|sc2|sc1|sc0|Reg\(100),
	datad => \sc0|sc2|sc1|sc0|Reg\(99),
	combout => \sc0|sc2|sc1|sc1|process_0~151_combout\);

-- Location: LCCOMB_X113_Y42_N20
\sc0|sc2|sc1|sc1|process_0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~118_combout\ = (\sc0|sc2|sc1|sc0|Reg\(79)) # ((!\sc0|sc2|sc1|sc0|Reg\(80) & !\sc0|sc2|sc1|sc0|Reg\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(80),
	datac => \sc0|sc2|sc1|sc0|Reg\(81),
	datad => \sc0|sc2|sc1|sc0|Reg\(79),
	combout => \sc0|sc2|sc1|sc1|process_0~118_combout\);

-- Location: LCCOMB_X113_Y42_N22
\sc0|sc2|sc1|sc1|process_0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~119_combout\ = (!\sc0|sc2|sc1|sc1|process_0~44_combout\ & (\sc0|sc2|sc1|sc1|process_0~118_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(79)) # (\sc0|sc2|sc1|sc1|process_0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(79),
	datab => \sc0|sc2|sc1|sc1|process_0~45_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~118_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~119_combout\);

-- Location: LCCOMB_X106_Y43_N0
\sc0|sc2|sc1|sc1|process_0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~121_combout\ = (!\sc0|sc2|sc1|sc1|process_0~39_combout\ & (!\sc0|sc2|sc1|sc1|process_0~13_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(64) & !\sc0|sc2|sc1|sc0|Reg\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~13_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(64),
	datad => \sc0|sc2|sc1|sc0|Reg\(65),
	combout => \sc0|sc2|sc1|sc1|process_0~121_combout\);

-- Location: LCCOMB_X106_Y43_N14
\sc0|sc2|sc1|sc1|process_0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~143_combout\ = (\sc0|sc2|sc1|sc0|Reg\(59)) # ((!\sc0|sc2|sc1|sc0|Reg\(61) & !\sc0|sc2|sc1|sc0|Reg\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(61),
	datac => \sc0|sc2|sc1|sc0|Reg\(59),
	datad => \sc0|sc2|sc1|sc0|Reg\(60),
	combout => \sc0|sc2|sc1|sc1|process_0~143_combout\);

-- Location: LCCOMB_X109_Y44_N12
\sc0|sc2|sc1|sc1|process_0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~125_combout\ = (\sc0|sc2|sc1|sc0|Reg\(39)) # ((!\sc0|sc2|sc1|sc0|Reg\(41) & !\sc0|sc2|sc1|sc0|Reg\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(41),
	datab => \sc0|sc2|sc1|sc0|Reg\(40),
	datad => \sc0|sc2|sc1|sc0|Reg\(39),
	combout => \sc0|sc2|sc1|sc1|process_0~125_combout\);

-- Location: LCCOMB_X109_Y44_N16
\sc0|sc2|sc1|sc1|process_0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~124_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(45) & (!\sc0|sc2|sc1|sc0|Reg\(44) & ((\sc0|sc2|sc1|sc0|Reg\(46)) # (\sc0|sc2|sc1|sc0|Reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(45),
	datab => \sc0|sc2|sc1|sc0|Reg\(46),
	datac => \sc0|sc2|sc1|sc0|Reg\(44),
	datad => \sc0|sc2|sc1|sc0|Reg\(47),
	combout => \sc0|sc2|sc1|sc1|process_0~124_combout\);

-- Location: LCCOMB_X109_Y44_N0
\sc0|sc2|sc1|sc1|process_0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~126_combout\ = (\sc0|sc2|sc1|sc1|process_0~73_combout\ & (!\sc0|sc2|sc1|sc1|process_0~72_combout\ & (\sc0|sc2|sc1|sc1|process_0~125_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~73_combout\ & 
-- (((\sc0|sc2|sc1|sc1|process_0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~125_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~73_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~124_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~126_combout\);

-- Location: LCCOMB_X107_Y49_N28
\sc0|sc2|sc1|sc1|process_0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~127_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(29) & ((\sc0|sc2|sc1|sc0|Reg\(30)) # (\sc0|sc2|sc1|sc0|Reg\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(30),
	datac => \sc0|sc2|sc1|sc0|Reg\(31),
	datad => \sc0|sc2|sc1|sc0|Reg\(29),
	combout => \sc0|sc2|sc1|sc1|process_0~127_combout\);

-- Location: LCCOMB_X108_Y47_N0
\sc0|sc2|sc1|sc1|process_0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~128_combout\ = (\sc0|sc2|sc1|sc1|process_0~32_combout\ & (\sc0|sc2|sc1|sc1|process_0~33_combout\ & (\sc0|sc2|sc1|sc1|process_0~127_combout\ & !\sc0|sc2|sc1|sc0|Reg\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~32_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~127_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(28),
	combout => \sc0|sc2|sc1|sc1|process_0~128_combout\);

-- Location: LCCOMB_X107_Y46_N22
\sc0|sc2|sc1|sc1|process_0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~138_combout\ = (\sc0|sc2|sc1|sc0|Reg\(34)) # ((\sc0|sc2|sc1|sc0|Reg\(35)) # ((!\sc0|sc2|sc1|sc0|Reg\(36) & !\sc0|sc2|sc1|sc0|Reg\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(36),
	datab => \sc0|sc2|sc1|sc0|Reg\(34),
	datac => \sc0|sc2|sc1|sc0|Reg\(37),
	datad => \sc0|sc2|sc1|sc0|Reg\(35),
	combout => \sc0|sc2|sc1|sc1|process_0~138_combout\);

-- Location: LCCOMB_X109_Y48_N18
\sc0|sc2|sc1|sc1|process_0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~130_combout\ = (\sc0|sc2|sc1|sc0|Reg\(19)) # ((\sc0|sc2|sc1|sc0|Reg\(18)) # ((!\sc0|sc2|sc1|sc0|Reg\(20) & !\sc0|sc2|sc1|sc0|Reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(20),
	datab => \sc0|sc2|sc1|sc0|Reg\(19),
	datac => \sc0|sc2|sc1|sc0|Reg\(21),
	datad => \sc0|sc2|sc1|sc0|Reg\(18),
	combout => \sc0|sc2|sc1|sc1|process_0~130_combout\);

-- Location: LCCOMB_X109_Y48_N16
\sc0|sc2|sc1|sc1|process_0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~131_combout\ = ((\sc0|sc2|sc1|sc1|process_0~130_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(16) & !\sc0|sc2|sc1|sc0|Reg\(17)))) # (!\sc0|sc2|sc1|sc1|process_0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~25_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~130_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(16),
	datad => \sc0|sc2|sc1|sc0|Reg\(17),
	combout => \sc0|sc2|sc1|sc1|process_0~131_combout\);

-- Location: LCCOMB_X109_Y47_N8
\sc0|sc2|sc1|sc1|process_0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~132_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(13) & (\sc0|sc2|sc1|sc1|process_0~131_combout\ & !\sc0|sc2|sc1|sc0|Reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(13),
	datab => \sc0|sc2|sc1|sc1|process_0~131_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(12),
	combout => \sc0|sc2|sc1|sc1|process_0~132_combout\);

-- Location: LCCOMB_X109_Y47_N26
\sc0|sc2|sc1|sc1|process_0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~133_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(9) & ((\sc0|sc2|sc1|sc0|Reg\(10)) # ((\sc0|sc2|sc1|sc0|Reg\(11)) # (\sc0|sc2|sc1|sc1|process_0~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(9),
	datab => \sc0|sc2|sc1|sc0|Reg\(10),
	datac => \sc0|sc2|sc1|sc0|Reg\(11),
	datad => \sc0|sc2|sc1|sc1|process_0~132_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~133_combout\);

-- Location: LCCOMB_X109_Y47_N20
\sc0|sc2|sc1|sc1|process_0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~134_combout\ = (\sc0|sc2|sc1|sc0|Reg\(7)) # ((\sc0|sc2|sc1|sc0|Reg\(6)) # ((!\sc0|sc2|sc1|sc0|Reg\(8) & \sc0|sc2|sc1|sc1|process_0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(7),
	datab => \sc0|sc2|sc1|sc0|Reg\(8),
	datac => \sc0|sc2|sc1|sc1|process_0~133_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(6),
	combout => \sc0|sc2|sc1|sc1|process_0~134_combout\);

-- Location: LCCOMB_X109_Y47_N18
\sc0|sc2|sc1|sc1|process_0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~129_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(5) & !\sc0|sc2|sc1|sc0|Reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|sc1|sc0|Reg\(5),
	datad => \sc0|sc2|sc1|sc0|Reg\(4),
	combout => \sc0|sc2|sc1|sc1|process_0~129_combout\);

-- Location: LCCOMB_X109_Y47_N30
\sc0|sc2|sc1|sc1|process_0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~135_combout\ = (\sc0|sc2|sc1|sc0|Reg\(3)) # ((\sc0|sc2|sc1|sc0|Reg\(2)) # ((\sc0|sc2|sc1|sc1|process_0~134_combout\ & \sc0|sc2|sc1|sc1|process_0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(3),
	datab => \sc0|sc2|sc1|sc1|process_0~134_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(2),
	datad => \sc0|sc2|sc1|sc1|process_0~129_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~135_combout\);

-- Location: LCCOMB_X109_Y47_N24
\sc0|sc2|sc1|sc1|process_0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~136_combout\ = (\sc0|sc2|sc1|sc1|process_0~135_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(0) & (!\sc0|sc2|sc1|sc0|Reg\(1) & \sc0|sc2|sc1|sc1|process_0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~135_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(0),
	datac => \sc0|sc2|sc1|sc0|Reg\(1),
	datad => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~136_combout\);

-- Location: LCCOMB_X108_Y47_N6
\sc0|sc2|sc1|sc1|process_0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~137_combout\ = (\sc0|sc2|sc1|sc1|process_0~88_combout\ & (((\sc0|sc2|sc1|sc0|Reg\(28) & \sc0|sc2|sc1|sc1|process_0~136_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~22_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~88_combout\ & 
-- (((\sc0|sc2|sc1|sc1|process_0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(28),
	datab => \sc0|sc2|sc1|sc1|process_0~22_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~88_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~136_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~137_combout\);

-- Location: LCCOMB_X107_Y46_N28
\sc0|sc2|sc1|sc1|process_0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~139_combout\ = (\sc0|sc2|sc1|sc1|process_0~128_combout\) # ((\sc0|sc2|sc1|sc1|process_0~137_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~33_combout\ & \sc0|sc2|sc1|sc1|process_0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~128_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~138_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~137_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~139_combout\);

-- Location: LCCOMB_X106_Y46_N24
\sc0|sc2|sc1|sc1|process_0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~140_combout\ = (\sc0|sc2|sc1|sc1|process_0~36_combout\ & ((\sc0|sc2|sc1|sc1|process_0~126_combout\) # ((\sc0|sc2|sc1|sc1|process_0~72_combout\ & \sc0|sc2|sc1|sc1|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~126_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~139_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~140_combout\);

-- Location: LCCOMB_X106_Y46_N12
\sc0|sc2|sc1|sc1|process_0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~122_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(49) & ((\sc0|sc2|sc1|sc0|Reg\(51)) # (\sc0|sc2|sc1|sc0|Reg\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(51),
	datac => \sc0|sc2|sc1|sc0|Reg\(50),
	datad => \sc0|sc2|sc1|sc0|Reg\(49),
	combout => \sc0|sc2|sc1|sc1|process_0~122_combout\);

-- Location: LCCOMB_X106_Y46_N14
\sc0|sc2|sc1|sc1|process_0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~123_combout\ = (\sc0|sc2|sc1|sc1|process_0~122_combout\ & (!\sc0|sc2|sc1|sc1|process_0~36_combout\ & ((\sc0|sc2|sc1|sc1|process_0~37_combout\) # (!\sc0|sc2|sc1|sc1|process_0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~122_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~37_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~17_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~123_combout\);

-- Location: LCCOMB_X106_Y46_N18
\sc0|sc2|sc1|sc1|process_0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~141_combout\ = (\sc0|sc2|sc1|sc0|Reg\(55)) # ((\sc0|sc2|sc1|sc0|Reg\(54)) # ((!\sc0|sc2|sc1|sc0|Reg\(56) & !\sc0|sc2|sc1|sc0|Reg\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(56),
	datab => \sc0|sc2|sc1|sc0|Reg\(57),
	datac => \sc0|sc2|sc1|sc0|Reg\(55),
	datad => \sc0|sc2|sc1|sc0|Reg\(54),
	combout => \sc0|sc2|sc1|sc1|process_0~141_combout\);

-- Location: LCCOMB_X106_Y46_N16
\sc0|sc2|sc1|sc1|process_0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~142_combout\ = (\sc0|sc2|sc1|sc1|process_0~140_combout\) # ((\sc0|sc2|sc1|sc1|process_0~123_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~183_combout\ & \sc0|sc2|sc1|sc1|process_0~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~183_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~140_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~123_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~141_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~142_combout\);

-- Location: LCCOMB_X106_Y43_N28
\sc0|sc2|sc1|sc1|process_0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~144_combout\ = (\sc0|sc2|sc1|sc1|process_0~97_combout\ & (((\sc0|sc2|sc1|sc1|process_0~142_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~97_combout\ & (\sc0|sc2|sc1|sc1|process_0~39_combout\ & 
-- (\sc0|sc2|sc1|sc1|process_0~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~97_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~143_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~142_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~144_combout\);

-- Location: LCCOMB_X106_Y43_N2
\sc0|sc2|sc1|sc1|process_0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~145_combout\ = (\sc0|sc2|sc1|sc1|process_0~40_combout\ & (\sc0|sc2|sc1|sc0|Reg\(68) & ((\sc0|sc2|sc1|sc1|process_0~121_combout\) # (\sc0|sc2|sc1|sc1|process_0~144_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~40_combout\ & 
-- ((\sc0|sc2|sc1|sc1|process_0~121_combout\) # ((\sc0|sc2|sc1|sc1|process_0~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~121_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~144_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~145_combout\);

-- Location: LCCOMB_X114_Y42_N16
\sc0|sc2|sc1|sc1|process_0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~146_combout\ = (\sc0|sc2|sc1|sc0|Reg\(74)) # ((\sc0|sc2|sc1|sc0|Reg\(75)) # ((!\sc0|sc2|sc1|sc0|Reg\(76) & !\sc0|sc2|sc1|sc0|Reg\(77))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(74),
	datab => \sc0|sc2|sc1|sc0|Reg\(76),
	datac => \sc0|sc2|sc1|sc0|Reg\(75),
	datad => \sc0|sc2|sc1|sc0|Reg\(77),
	combout => \sc0|sc2|sc1|sc1|process_0~146_combout\);

-- Location: LCCOMB_X114_Y42_N26
\sc0|sc2|sc1|sc1|process_0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~120_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(69) & (\sc0|sc2|sc1|sc1|process_0~67_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(70)) # (\sc0|sc2|sc1|sc0|Reg\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(69),
	datab => \sc0|sc2|sc1|sc1|process_0~67_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(70),
	datad => \sc0|sc2|sc1|sc0|Reg\(71),
	combout => \sc0|sc2|sc1|sc1|process_0~120_combout\);

-- Location: LCCOMB_X114_Y42_N18
\sc0|sc2|sc1|sc1|process_0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~147_combout\ = (\sc0|sc2|sc1|sc1|process_0~145_combout\) # ((\sc0|sc2|sc1|sc1|process_0~120_combout\) # ((\sc0|sc2|sc1|sc1|process_0~146_combout\ & !\sc0|sc2|sc1|sc1|process_0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~145_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~146_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~120_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~42_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~147_combout\);

-- Location: LCCOMB_X109_Y42_N24
\sc0|sc2|sc1|sc1|process_0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~148_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(84) & (!\sc0|sc2|sc1|sc0|Reg\(85) & ((\sc0|sc2|sc1|sc0|Reg\(87)) # (\sc0|sc2|sc1|sc0|Reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(84),
	datab => \sc0|sc2|sc1|sc0|Reg\(85),
	datac => \sc0|sc2|sc1|sc0|Reg\(87),
	datad => \sc0|sc2|sc1|sc0|Reg\(86),
	combout => \sc0|sc2|sc1|sc1|process_0~148_combout\);

-- Location: LCCOMB_X113_Y42_N0
\sc0|sc2|sc1|sc1|process_0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~149_combout\ = (\sc0|sc2|sc1|sc1|process_0~46_combout\ & (\sc0|sc2|sc1|sc1|process_0~147_combout\ & (\sc0|sc2|sc1|sc1|process_0~44_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~46_combout\ & 
-- ((\sc0|sc2|sc1|sc1|process_0~148_combout\) # ((\sc0|sc2|sc1|sc1|process_0~147_combout\ & \sc0|sc2|sc1|sc1|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~147_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~148_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~149_combout\);

-- Location: LCCOMB_X114_Y40_N20
\sc0|sc2|sc1|sc1|process_0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~116_combout\ = (\sc0|sc2|sc1|sc0|Reg\(95)) # ((\sc0|sc2|sc1|sc0|Reg\(94)) # ((!\sc0|sc2|sc1|sc0|Reg\(97) & !\sc0|sc2|sc1|sc0|Reg\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(97),
	datab => \sc0|sc2|sc1|sc0|Reg\(96),
	datac => \sc0|sc2|sc1|sc0|Reg\(95),
	datad => \sc0|sc2|sc1|sc0|Reg\(94),
	combout => \sc0|sc2|sc1|sc1|process_0~116_combout\);

-- Location: LCCOMB_X109_Y42_N18
\sc0|sc2|sc1|sc1|process_0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~117_combout\ = (\sc0|sc2|sc1|sc1|process_0~47_combout\ & (((!\sc0|sc2|sc1|sc1|process_0~48_combout\ & \sc0|sc2|sc1|sc1|process_0~116_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~10_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~48_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~116_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~47_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~117_combout\);

-- Location: LCCOMB_X109_Y42_N2
\sc0|sc2|sc1|sc1|process_0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~150_combout\ = (\sc0|sc2|sc1|sc1|process_0~117_combout\) # ((\sc0|sc2|sc1|sc1|process_0~60_combout\ & ((\sc0|sc2|sc1|sc1|process_0~119_combout\) # (\sc0|sc2|sc1|sc1|process_0~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~119_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~60_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~149_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~117_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~150_combout\);

-- Location: LCCOMB_X113_Y40_N22
\sc0|sc2|sc1|sc1|process_0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~152_combout\ = (\sc0|sc2|sc1|sc1|process_0~101_combout\ & (((\sc0|sc2|sc1|sc1|process_0~150_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~101_combout\ & (\sc0|sc2|sc1|sc1|process_0~151_combout\ & 
-- (\sc0|sc2|sc1|sc1|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~151_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~150_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~101_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~152_combout\);

-- Location: LCCOMB_X113_Y40_N4
\sc0|sc2|sc1|sc1|process_0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~115_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(104) & (!\sc0|sc2|sc1|sc0|Reg\(105) & (!\sc0|sc2|sc1|sc1|process_0~7_combout\ & !\sc0|sc2|sc1|sc1|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(104),
	datab => \sc0|sc2|sc1|sc0|Reg\(105),
	datac => \sc0|sc2|sc1|sc1|process_0~7_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~115_combout\);

-- Location: LCCOMB_X113_Y40_N24
\sc0|sc2|sc1|sc1|process_0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~153_combout\ = (\sc0|sc2|sc1|sc1|process_0~152_combout\ & (((\sc0|sc2|sc1|sc0|Reg\(108)) # (!\sc0|sc2|sc1|sc1|process_0~50_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~152_combout\ & (\sc0|sc2|sc1|sc1|process_0~115_combout\ & 
-- ((\sc0|sc2|sc1|sc0|Reg\(108)) # (!\sc0|sc2|sc1|sc1|process_0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~152_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~115_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(108),
	datad => \sc0|sc2|sc1|sc1|process_0~50_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~153_combout\);

-- Location: LCCOMB_X110_Y38_N4
\sc0|sc2|sc1|sc1|process_0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~154_combout\ = (\sc0|sc2|sc1|sc0|Reg\(115)) # ((\sc0|sc2|sc1|sc0|Reg\(114)) # ((!\sc0|sc2|sc1|sc0|Reg\(116) & !\sc0|sc2|sc1|sc0|Reg\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(116),
	datab => \sc0|sc2|sc1|sc0|Reg\(115),
	datac => \sc0|sc2|sc1|sc0|Reg\(117),
	datad => \sc0|sc2|sc1|sc0|Reg\(114),
	combout => \sc0|sc2|sc1|sc1|process_0~154_combout\);

-- Location: LCCOMB_X110_Y38_N2
\sc0|sc2|sc1|sc1|process_0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~155_combout\ = (\sc0|sc2|sc1|sc1|process_0~153_combout\) # ((\sc0|sc2|sc1|sc1|process_0~154_combout\ & !\sc0|sc2|sc1|sc1|process_0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~153_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~154_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~155_combout\);

-- Location: LCCOMB_X113_Y40_N20
\sc0|sc2|sc1|sc1|process_0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~113_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(109) & ((\sc0|sc2|sc1|sc0|Reg\(110)) # (\sc0|sc2|sc1|sc0|Reg\(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(110),
	datac => \sc0|sc2|sc1|sc0|Reg\(111),
	datad => \sc0|sc2|sc1|sc0|Reg\(109),
	combout => \sc0|sc2|sc1|sc1|process_0~113_combout\);

-- Location: LCCOMB_X113_Y40_N2
\sc0|sc2|sc1|sc1|process_0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~114_combout\ = (\sc0|sc2|sc1|sc1|process_0~51_combout\ & (\sc0|sc2|sc1|sc1|process_0~113_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(108) & \sc0|sc2|sc1|sc1|process_0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~113_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(108),
	datad => \sc0|sc2|sc1|sc1|process_0~50_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~114_combout\);

-- Location: LCCOMB_X109_Y38_N12
\sc0|sc2|sc1|sc1|count_out[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[1]~15_combout\ = (\RST~input_o\ & (\sc0|sc2|sc1|sc1|process_0~53_combout\ & ((\sc0|sc2|sc1|sc1|process_0~155_combout\) # (\sc0|sc2|sc1|sc1|process_0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~155_combout\,
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~114_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[1]~15_combout\);

-- Location: LCCOMB_X110_Y39_N26
\sc0|sc2|sc1|sc1|count_out[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[1]~16_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(125) & ((\sc0|sc2|sc1|sc0|Reg\(127)) # (\sc0|sc2|sc1|sc0|Reg\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(125),
	datab => \sc0|sc2|sc1|sc0|Reg\(127),
	datad => \sc0|sc2|sc1|sc0|Reg\(126),
	combout => \sc0|sc2|sc1|sc1|count_out[1]~16_combout\);

-- Location: LCCOMB_X109_Y38_N28
\sc0|sc2|sc1|sc1|process_0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~112_combout\ = (\sc0|sc2|sc1|sc1|process_0~53_combout\) # ((\sc0|sc2|sc1|sc0|Reg\(119)) # (\sc0|sc2|sc1|sc1|process_0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(119),
	datad => \sc0|sc2|sc1|sc1|process_0~54_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~112_combout\);

-- Location: LCCOMB_X110_Y39_N28
\sc0|sc2|sc1|sc1|count_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[1]~13_combout\ = (\sc0|sc2|sc1|sc0|Reg\(119)) # ((!\sc0|sc2|sc1|sc0|Reg\(121) & !\sc0|sc2|sc1|sc0|Reg\(120)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(119),
	datab => \sc0|sc2|sc1|sc0|Reg\(121),
	datad => \sc0|sc2|sc1|sc0|Reg\(120),
	combout => \sc0|sc2|sc1|sc1|count_out[1]~13_combout\);

-- Location: LCCOMB_X109_Y38_N18
\sc0|sc2|sc1|sc1|count_out[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[1]~14_combout\ = (\sc0|sc2|sc1|sc1|process_0~112_combout\ & (\RST~input_o\ & (!\sc0|sc2|sc1|sc1|process_0~53_combout\ & \sc0|sc2|sc1|sc1|count_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~112_combout\,
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[1]~13_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[1]~14_combout\);

-- Location: LCCOMB_X109_Y38_N6
\sc0|sc2|sc1|sc1|count_out[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[1]~17_combout\ = (\sc0|sc2|sc1|sc1|count_out[1]~15_combout\) # ((\sc0|sc2|sc1|sc1|count_out[1]~14_combout\) # ((\sc0|sc2|sc1|sc1|count_out[0]~9_combout\ & \sc0|sc2|sc1|sc1|count_out[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[1]~15_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[0]~9_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[1]~16_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[1]~14_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[1]~17_combout\);

-- Location: LCCOMB_X108_Y39_N12
\sc0|sc3|R[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[1]~2_combout\ = (\sc1|sc4|sc1|count_out[1]~19_combout\ & ((\sc0|sc2|sc1|sc1|count_out[1]~17_combout\ & (!\sc0|sc3|R[0]~1\)) # (!\sc0|sc2|sc1|sc1|count_out[1]~17_combout\ & (\sc0|sc3|R[0]~1\ & VCC)))) # (!\sc1|sc4|sc1|count_out[1]~19_combout\ & 
-- ((\sc0|sc2|sc1|sc1|count_out[1]~17_combout\ & ((\sc0|sc3|R[0]~1\) # (GND))) # (!\sc0|sc2|sc1|sc1|count_out[1]~17_combout\ & (!\sc0|sc3|R[0]~1\))))
-- \sc0|sc3|R[1]~3\ = CARRY((\sc1|sc4|sc1|count_out[1]~19_combout\ & (\sc0|sc2|sc1|sc1|count_out[1]~17_combout\ & !\sc0|sc3|R[0]~1\)) # (!\sc1|sc4|sc1|count_out[1]~19_combout\ & ((\sc0|sc2|sc1|sc1|count_out[1]~17_combout\) # (!\sc0|sc3|R[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[1]~19_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[1]~17_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[0]~1\,
	combout => \sc0|sc3|R[1]~2_combout\,
	cout => \sc0|sc3|R[1]~3\);

-- Location: LCCOMB_X109_Y39_N0
\sc1|sc4|sc1|process_0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~156_combout\ = (!\sc1|sc4|sc0|Reg\(115) & !\sc1|sc4|sc0|Reg\(114))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|sc4|sc0|Reg\(115),
	datad => \sc1|sc4|sc0|Reg\(114),
	combout => \sc1|sc4|sc1|process_0~156_combout\);

-- Location: LCCOMB_X109_Y39_N22
\sc1|sc4|sc1|process_0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~157_combout\ = (!\sc1|sc4|sc1|process_0~50_combout\ & (\sc1|sc4|sc1|process_0~156_combout\ & (\sc1|sc4|sc0|Reg\(119) & !\sc1|sc4|sc1|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~50_combout\,
	datab => \sc1|sc4|sc1|process_0~156_combout\,
	datac => \sc1|sc4|sc0|Reg\(119),
	datad => \sc1|sc4|sc1|process_0~51_combout\,
	combout => \sc1|sc4|sc1|process_0~157_combout\);

-- Location: LCCOMB_X108_Y41_N10
\sc1|sc4|sc1|process_0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~184_combout\ = (!\sc1|sc4|sc1|process_0~11_combout\ & (!\sc1|sc4|sc1|process_0~44_combout\ & (!\sc1|sc4|sc1|process_0~43_combout\ & !\sc1|sc4|sc0|Reg\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~11_combout\,
	datab => \sc1|sc4|sc1|process_0~44_combout\,
	datac => \sc1|sc4|sc1|process_0~43_combout\,
	datad => \sc1|sc4|sc0|Reg\(79),
	combout => \sc1|sc4|sc1|process_0~184_combout\);

-- Location: LCCOMB_X108_Y42_N10
\sc1|sc4|sc1|process_0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~161_combout\ = (!\sc1|sc4|sc0|Reg\(75) & (!\sc1|sc4|sc0|Reg\(74) & ((\sc1|sc4|sc1|process_0~42_combout\) # (\sc1|sc4|sc0|Reg\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~42_combout\,
	datab => \sc1|sc4|sc0|Reg\(79),
	datac => \sc1|sc4|sc0|Reg\(75),
	datad => \sc1|sc4|sc0|Reg\(74),
	combout => \sc1|sc4|sc1|process_0~161_combout\);

-- Location: LCCOMB_X111_Y48_N22
\sc1|sc4|sc1|process_0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~163_combout\ = (\sc1|sc4|sc0|Reg\(15)) # ((\sc1|sc4|sc0|Reg\(14)) # ((\sc1|sc4|sc0|Reg\(13)) # (\sc1|sc4|sc0|Reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(15),
	datab => \sc1|sc4|sc0|Reg\(14),
	datac => \sc1|sc4|sc0|Reg\(13),
	datad => \sc1|sc4|sc0|Reg\(12),
	combout => \sc1|sc4|sc1|process_0~163_combout\);

-- Location: LCCOMB_X111_Y48_N4
\sc1|sc4|sc1|process_0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~164_combout\ = (\sc1|sc4|sc1|process_0~26_combout\ & (((\sc1|sc4|sc1|process_0~163_combout\ & \sc1|sc4|sc1|process_0~27_combout\)) # (!\sc1|sc4|sc1|process_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~163_combout\,
	datab => \sc1|sc4|sc1|process_0~26_combout\,
	datac => \sc1|sc4|sc1|process_0~25_combout\,
	datad => \sc1|sc4|sc1|process_0~27_combout\,
	combout => \sc1|sc4|sc1|process_0~164_combout\);

-- Location: LCCOMB_X111_Y48_N2
\sc1|sc4|sc1|process_0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~165_combout\ = (\sc1|sc4|sc1|process_0~182_combout\ & (\sc1|sc4|sc1|process_0~164_combout\)) # (!\sc1|sc4|sc1|process_0~182_combout\ & ((\sc1|sc4|sc0|Reg\(19) & (\sc1|sc4|sc1|process_0~164_combout\)) # (!\sc1|sc4|sc0|Reg\(19) & 
-- ((\sc1|sc4|sc1|process_0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~182_combout\,
	datab => \sc1|sc4|sc1|process_0~164_combout\,
	datac => \sc1|sc4|sc0|Reg\(19),
	datad => \sc1|sc4|sc1|process_0~23_combout\,
	combout => \sc1|sc4|sc1|process_0~165_combout\);

-- Location: LCCOMB_X108_Y44_N22
\sc1|sc4|sc1|process_0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~166_combout\ = (\sc1|sc4|sc1|process_0~31_combout\ & ((\sc1|sc4|sc1|process_0~32_combout\ & ((\sc1|sc4|sc0|Reg\(28)))) # (!\sc1|sc4|sc1|process_0~32_combout\ & (\sc1|sc4|sc1|process_0~165_combout\)))) # 
-- (!\sc1|sc4|sc1|process_0~31_combout\ & (\sc1|sc4|sc1|process_0~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~165_combout\,
	datab => \sc1|sc4|sc1|process_0~31_combout\,
	datac => \sc1|sc4|sc0|Reg\(28),
	datad => \sc1|sc4|sc1|process_0~32_combout\,
	combout => \sc1|sc4|sc1|process_0~166_combout\);

-- Location: LCCOMB_X108_Y44_N8
\sc1|sc4|sc1|process_0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~162_combout\ = (!\sc1|sc4|sc1|count_out[5]~7_combout\ & (\sc1|sc4|sc1|process_0~31_combout\ & (!\sc1|sc4|sc0|Reg\(28) & \sc1|sc4|sc1|process_0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~7_combout\,
	datab => \sc1|sc4|sc1|process_0~31_combout\,
	datac => \sc1|sc4|sc0|Reg\(28),
	datad => \sc1|sc4|sc1|process_0~32_combout\,
	combout => \sc1|sc4|sc1|process_0~162_combout\);

-- Location: LCCOMB_X108_Y44_N26
\sc1|sc4|sc1|process_0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~167_combout\ = (\sc1|sc4|sc1|process_0~183_combout\ & ((\sc1|sc4|sc1|process_0~166_combout\) # ((\sc1|sc4|sc1|process_0~162_combout\)))) # (!\sc1|sc4|sc1|process_0~183_combout\ & (((\sc1|sc4|sc1|process_0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~166_combout\,
	datab => \sc1|sc4|sc1|process_0~183_combout\,
	datac => \sc1|sc4|sc1|process_0~162_combout\,
	datad => \sc1|sc4|sc1|process_0~21_combout\,
	combout => \sc1|sc4|sc1|process_0~167_combout\);

-- Location: LCCOMB_X112_Y44_N4
\sc1|sc4|sc1|process_0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~168_combout\ = (\sc1|sc4|sc1|process_0~33_combout\ & (\sc1|sc4|sc1|process_0~167_combout\)) # (!\sc1|sc4|sc1|process_0~33_combout\ & ((\sc1|sc4|sc0|Reg\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~167_combout\,
	datab => \sc1|sc4|sc0|Reg\(39),
	datad => \sc1|sc4|sc1|process_0~33_combout\,
	combout => \sc1|sc4|sc1|process_0~168_combout\);

-- Location: LCCOMB_X107_Y44_N8
\sc1|sc4|sc1|process_0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~169_combout\ = (\sc1|sc4|sc1|process_0~35_combout\ & ((\sc1|sc4|sc1|process_0~168_combout\))) # (!\sc1|sc4|sc1|process_0~35_combout\ & (!\sc1|sc4|sc1|process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~17_combout\,
	datac => \sc1|sc4|sc1|process_0~168_combout\,
	datad => \sc1|sc4|sc1|process_0~35_combout\,
	combout => \sc1|sc4|sc1|process_0~169_combout\);

-- Location: LCCOMB_X107_Y44_N14
\sc1|sc4|sc1|process_0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~170_combout\ = (\sc1|sc4|sc1|process_0~169_combout\) # ((\sc1|sc4|sc1|process_0~94_combout\ & (\sc1|sc4|sc1|process_0~36_combout\)) # (!\sc1|sc4|sc1|process_0~94_combout\ & ((!\sc1|sc4|sc1|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~36_combout\,
	datab => \sc1|sc4|sc1|process_0~94_combout\,
	datac => \sc1|sc4|sc1|process_0~169_combout\,
	datad => \sc1|sc4|sc1|process_0~16_combout\,
	combout => \sc1|sc4|sc1|process_0~170_combout\);

-- Location: LCCOMB_X108_Y43_N8
\sc1|sc4|sc1|process_0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~171_combout\ = (\sc1|sc4|sc1|process_0~100_combout\ & (((\sc1|sc4|sc1|process_0~170_combout\)))) # (!\sc1|sc4|sc1|process_0~100_combout\ & (!\sc1|sc4|sc0|Reg\(59) & ((\sc1|sc4|sc1|process_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(59),
	datab => \sc1|sc4|sc1|process_0~100_combout\,
	datac => \sc1|sc4|sc1|process_0~170_combout\,
	datad => \sc1|sc4|sc1|process_0~15_combout\,
	combout => \sc1|sc4|sc1|process_0~171_combout\);

-- Location: LCCOMB_X108_Y42_N20
\sc1|sc4|sc1|process_0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~172_combout\ = (\sc1|sc4|sc1|process_0~171_combout\) # ((\sc1|sc4|sc1|process_0~39_combout\ & ((\sc1|sc4|sc0|Reg\(68)) # (!\sc1|sc4|sc1|process_0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~39_combout\,
	datab => \sc1|sc4|sc1|process_0~40_combout\,
	datac => \sc1|sc4|sc0|Reg\(68),
	datad => \sc1|sc4|sc1|process_0~171_combout\,
	combout => \sc1|sc4|sc1|process_0~172_combout\);

-- Location: LCCOMB_X108_Y42_N18
\sc1|sc4|sc1|process_0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~173_combout\ = (\sc1|sc4|sc1|process_0~45_combout\ & ((\sc1|sc4|sc1|process_0~41_combout\ & ((\sc1|sc4|sc1|process_0~172_combout\))) # (!\sc1|sc4|sc1|process_0~41_combout\ & (\sc1|sc4|sc1|process_0~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~161_combout\,
	datab => \sc1|sc4|sc1|process_0~172_combout\,
	datac => \sc1|sc4|sc1|process_0~41_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~173_combout\);

-- Location: LCCOMB_X108_Y41_N16
\sc1|sc4|sc1|process_0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~174_combout\ = (\sc1|sc4|sc1|process_0~184_combout\) # ((\sc1|sc4|sc1|process_0~173_combout\) # ((\sc1|sc4|sc1|process_0~10_combout\ & \sc1|sc4|sc1|process_0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~184_combout\,
	datab => \sc1|sc4|sc1|process_0~10_combout\,
	datac => \sc1|sc4|sc1|process_0~173_combout\,
	datad => \sc1|sc4|sc1|process_0~46_combout\,
	combout => \sc1|sc4|sc1|process_0~174_combout\);

-- Location: LCCOMB_X112_Y41_N2
\sc1|sc4|sc1|process_0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~160_combout\ = (!\sc1|sc4|sc1|process_0~63_combout\ & (((!\sc1|sc4|sc0|Reg\(99) & !\sc1|sc4|sc1|process_0~8_combout\)) # (!\sc1|sc4|sc1|count_out[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~6_combout\,
	datab => \sc1|sc4|sc0|Reg\(99),
	datac => \sc1|sc4|sc1|process_0~8_combout\,
	datad => \sc1|sc4|sc1|process_0~63_combout\,
	combout => \sc1|sc4|sc1|process_0~160_combout\);

-- Location: LCCOMB_X112_Y41_N4
\sc1|sc4|sc1|process_0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~175_combout\ = (\sc1|sc4|sc1|process_0~48_combout\ & ((\sc1|sc4|sc1|process_0~160_combout\) # ((\sc1|sc4|sc1|process_0~174_combout\ & \sc1|sc4|sc1|process_0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~174_combout\,
	datab => \sc1|sc4|sc1|process_0~63_combout\,
	datac => \sc1|sc4|sc1|process_0~48_combout\,
	datad => \sc1|sc4|sc1|process_0~160_combout\,
	combout => \sc1|sc4|sc1|process_0~175_combout\);

-- Location: LCCOMB_X109_Y40_N14
\sc1|sc4|sc1|process_0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~176_combout\ = (\sc1|sc4|sc1|process_0~175_combout\) # ((\sc1|sc4|sc1|process_0~49_combout\ & ((\sc1|sc4|sc0|Reg\(108)) # (!\sc1|sc4|sc1|count_out[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~175_combout\,
	datab => \sc1|sc4|sc1|process_0~49_combout\,
	datac => \sc1|sc4|sc0|Reg\(108),
	datad => \sc1|sc4|sc1|count_out[4]~10_combout\,
	combout => \sc1|sc4|sc1|process_0~176_combout\);

-- Location: LCCOMB_X109_Y39_N18
\sc1|sc4|sc1|process_0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~177_combout\ = (\sc1|sc4|sc1|process_0~50_combout\ & (\sc1|sc4|sc1|process_0~176_combout\)) # (!\sc1|sc4|sc1|process_0~50_combout\ & (((\sc1|sc4|sc1|process_0~156_combout\ & \sc1|sc4|sc1|process_0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~176_combout\,
	datab => \sc1|sc4|sc1|process_0~156_combout\,
	datac => \sc1|sc4|sc1|process_0~50_combout\,
	datad => \sc1|sc4|sc1|process_0~51_combout\,
	combout => \sc1|sc4|sc1|process_0~177_combout\);

-- Location: LCCOMB_X110_Y39_N24
\sc1|sc4|sc1|process_0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~158_combout\ = (\sc1|sc4|sc0|Reg\(126)) # ((\sc1|sc4|sc0|Reg\(124)) # ((\sc1|sc4|sc0|Reg\(125)) # (\sc1|sc4|sc0|Reg\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(126),
	datab => \sc1|sc4|sc0|Reg\(124),
	datac => \sc1|sc4|sc0|Reg\(125),
	datad => \sc1|sc4|sc0|Reg\(127),
	combout => \sc1|sc4|sc1|process_0~158_combout\);

-- Location: LCCOMB_X109_Y39_N28
\sc1|sc4|sc1|process_0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~159_combout\ = (\sc1|sc4|sc1|process_0~158_combout\ & (!\sc1|sc4|sc1|process_0~52_combout\ & (!\sc1|sc4|sc0|Reg\(119) & !\sc1|sc4|sc1|process_0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~158_combout\,
	datab => \sc1|sc4|sc1|process_0~52_combout\,
	datac => \sc1|sc4|sc0|Reg\(119),
	datad => \sc1|sc4|sc1|process_0~53_combout\,
	combout => \sc1|sc4|sc1|process_0~159_combout\);

-- Location: LCCOMB_X109_Y39_N4
\sc1|sc4|sc1|count_out[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[2]~20_combout\ = (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~157_combout\) # ((\sc1|sc4|sc1|process_0~177_combout\) # (\sc1|sc4|sc1|process_0~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~157_combout\,
	datab => \sc1|sc4|sc1|process_0~177_combout\,
	datac => \RST~input_o\,
	datad => \sc1|sc4|sc1|process_0~159_combout\,
	combout => \sc1|sc4|sc1|count_out[2]~20_combout\);

-- Location: LCCOMB_X109_Y39_N2
\sc0|sc2|sc1|sc1|process_0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~156_combout\ = (\sc0|sc2|sc1|sc0|Reg\(124)) # ((\sc0|sc2|sc1|sc0|Reg\(126)) # ((\sc0|sc2|sc1|sc0|Reg\(127)) # (\sc0|sc2|sc1|sc0|Reg\(125))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(124),
	datab => \sc0|sc2|sc1|sc0|Reg\(126),
	datac => \sc0|sc2|sc1|sc0|Reg\(127),
	datad => \sc0|sc2|sc1|sc0|Reg\(125),
	combout => \sc0|sc2|sc1|sc1|process_0~156_combout\);

-- Location: LCCOMB_X109_Y38_N4
\sc0|sc2|sc1|sc1|process_0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~157_combout\ = (!\sc0|sc2|sc1|sc1|process_0~53_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(119)) # ((\sc0|sc2|sc1|sc1|process_0~156_combout\ & !\sc0|sc2|sc1|sc1|process_0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~156_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(119),
	datad => \sc0|sc2|sc1|sc1|process_0~54_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~157_combout\);

-- Location: LCCOMB_X114_Y42_N4
\sc0|sc2|sc1|sc1|process_0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~159_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(74) & (!\sc0|sc2|sc1|sc0|Reg\(75) & ((\sc0|sc2|sc1|sc0|Reg\(79)) # (\sc0|sc2|sc1|sc1|process_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(74),
	datab => \sc0|sc2|sc1|sc0|Reg\(79),
	datac => \sc0|sc2|sc1|sc0|Reg\(75),
	datad => \sc0|sc2|sc1|sc1|process_0~43_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~159_combout\);

-- Location: LCCOMB_X109_Y48_N10
\sc0|sc2|sc1|sc1|process_0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~160_combout\ = (\sc0|sc2|sc1|sc0|Reg\(15)) # ((\sc0|sc2|sc1|sc0|Reg\(13)) # ((\sc0|sc2|sc1|sc0|Reg\(12)) # (\sc0|sc2|sc1|sc0|Reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(15),
	datab => \sc0|sc2|sc1|sc0|Reg\(13),
	datac => \sc0|sc2|sc1|sc0|Reg\(12),
	datad => \sc0|sc2|sc1|sc0|Reg\(14),
	combout => \sc0|sc2|sc1|sc1|process_0~160_combout\);

-- Location: LCCOMB_X109_Y48_N0
\sc0|sc2|sc1|sc1|process_0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~161_combout\ = (\sc0|sc2|sc1|sc1|process_0~27_combout\ & (((\sc0|sc2|sc1|sc1|process_0~160_combout\ & \sc0|sc2|sc1|sc1|process_0~28_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~160_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~27_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~26_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~28_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~161_combout\);

-- Location: LCCOMB_X109_Y48_N30
\sc0|sc2|sc1|sc1|process_0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~162_combout\ = (\sc0|sc2|sc1|sc1|process_0~182_combout\ & (((\sc0|sc2|sc1|sc1|process_0~161_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~182_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(19) & ((\sc0|sc2|sc1|sc1|process_0~161_combout\))) # 
-- (!\sc0|sc2|sc1|sc0|Reg\(19) & (\sc0|sc2|sc1|sc1|process_0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~24_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~182_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(19),
	datad => \sc0|sc2|sc1|sc1|process_0~161_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~162_combout\);

-- Location: LCCOMB_X108_Y47_N20
\sc0|sc2|sc1|sc1|process_0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~163_combout\ = (\sc0|sc2|sc1|sc1|process_0~32_combout\ & (((\sc0|sc2|sc1|sc0|Reg\(28))) # (!\sc0|sc2|sc1|sc1|count_out[5]~6_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~32_combout\ & (((\sc0|sc2|sc1|sc1|process_0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~32_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~162_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(28),
	combout => \sc0|sc2|sc1|sc1|process_0~163_combout\);

-- Location: LCCOMB_X107_Y46_N26
\sc0|sc2|sc1|sc1|process_0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~164_combout\ = (\sc0|sc2|sc1|sc1|process_0~33_combout\ & (((\sc0|sc2|sc1|sc1|process_0~163_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~33_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(35) & ((!\sc0|sc2|sc1|sc0|Reg\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(35),
	datab => \sc0|sc2|sc1|sc1|process_0~163_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(34),
	combout => \sc0|sc2|sc1|sc1|process_0~164_combout\);

-- Location: LCCOMB_X107_Y46_N8
\sc0|sc2|sc1|sc1|process_0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~165_combout\ = (\sc0|sc2|sc1|sc1|process_0~72_combout\ & (\sc0|sc2|sc1|sc1|process_0~164_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~72_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~164_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(39),
	combout => \sc0|sc2|sc1|sc1|process_0~165_combout\);

-- Location: LCCOMB_X107_Y46_N6
\sc0|sc2|sc1|sc1|process_0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~166_combout\ = (\sc0|sc2|sc1|sc1|process_0~73_combout\ & (\sc0|sc2|sc1|sc1|process_0~165_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~73_combout\ & ((!\sc0|sc2|sc1|sc1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~165_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~73_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~19_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~166_combout\);

-- Location: LCCOMB_X106_Y46_N6
\sc0|sc2|sc1|sc1|process_0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~167_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(51) & (!\sc0|sc2|sc1|sc1|process_0~36_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(50) & !\sc0|sc2|sc1|sc0|Reg\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(51),
	datab => \sc0|sc2|sc1|sc1|process_0~36_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(50),
	datad => \sc0|sc2|sc1|sc0|Reg\(49),
	combout => \sc0|sc2|sc1|sc1|process_0~167_combout\);

-- Location: LCCOMB_X106_Y46_N20
\sc0|sc2|sc1|sc1|process_0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~168_combout\ = (\sc0|sc2|sc1|sc1|process_0~166_combout\) # ((\sc0|sc2|sc1|sc1|process_0~167_combout\ & ((\sc0|sc2|sc1|sc1|process_0~37_combout\) # (!\sc0|sc2|sc1|sc1|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~166_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~37_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~16_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~167_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~168_combout\);

-- Location: LCCOMB_X106_Y43_N4
\sc0|sc2|sc1|sc1|process_0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~169_combout\ = (\sc0|sc2|sc1|sc1|process_0~97_combout\ & (\sc0|sc2|sc1|sc1|process_0~168_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~97_combout\ & (((\sc0|sc2|sc1|sc1|process_0~15_combout\ & !\sc0|sc2|sc1|sc0|Reg\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~168_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~15_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(59),
	datad => \sc0|sc2|sc1|sc1|process_0~97_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~169_combout\);

-- Location: LCCOMB_X114_Y42_N22
\sc0|sc2|sc1|sc1|process_0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~170_combout\ = (\sc0|sc2|sc1|sc1|process_0~169_combout\) # ((\sc0|sc2|sc1|sc1|process_0~40_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(68)) # (!\sc0|sc2|sc1|sc1|process_0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~169_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~41_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~170_combout\);

-- Location: LCCOMB_X113_Y42_N6
\sc0|sc2|sc1|sc1|process_0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~171_combout\ = (\sc0|sc2|sc1|sc1|process_0~46_combout\ & ((\sc0|sc2|sc1|sc1|process_0~42_combout\ & ((\sc0|sc2|sc1|sc1|process_0~170_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~42_combout\ & 
-- (\sc0|sc2|sc1|sc1|process_0~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~159_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~170_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~42_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~171_combout\);

-- Location: LCCOMB_X113_Y42_N14
\sc0|sc2|sc1|sc1|process_0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~184_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(79) & (!\sc0|sc2|sc1|sc1|process_0~11_combout\ & (!\sc0|sc2|sc1|sc1|process_0~44_combout\ & !\sc0|sc2|sc1|sc1|process_0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(79),
	datab => \sc0|sc2|sc1|sc1|process_0~11_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~45_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~184_combout\);

-- Location: LCCOMB_X113_Y42_N12
\sc0|sc2|sc1|sc1|process_0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~172_combout\ = (\sc0|sc2|sc1|sc1|process_0~171_combout\) # ((\sc0|sc2|sc1|sc1|process_0~184_combout\) # ((\sc0|sc2|sc1|sc1|process_0~47_combout\ & \sc0|sc2|sc1|sc1|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~171_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~47_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~184_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~10_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~172_combout\);

-- Location: LCCOMB_X114_Y40_N8
\sc0|sc2|sc1|sc1|process_0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~158_combout\ = (!\sc0|sc2|sc1|sc1|process_0~103_combout\ & (((!\sc0|sc2|sc1|sc0|Reg\(99) & !\sc0|sc2|sc1|sc1|process_0~8_combout\)) # (!\sc0|sc2|sc1|sc1|count_out[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(99),
	datab => \sc0|sc2|sc1|sc1|count_out[5]~5_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~103_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~8_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~158_combout\);

-- Location: LCCOMB_X114_Y40_N22
\sc0|sc2|sc1|sc1|process_0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~173_combout\ = (\sc0|sc2|sc1|sc1|process_0~49_combout\ & ((\sc0|sc2|sc1|sc1|process_0~158_combout\) # ((\sc0|sc2|sc1|sc1|process_0~172_combout\ & \sc0|sc2|sc1|sc1|process_0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~172_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~158_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~103_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~173_combout\);

-- Location: LCCOMB_X114_Y40_N0
\sc0|sc2|sc1|sc1|process_0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~174_combout\ = (\sc0|sc2|sc1|sc1|process_0~173_combout\) # ((\sc0|sc2|sc1|sc1|process_0~50_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(108)) # (!\sc0|sc2|sc1|sc1|count_out[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[4]~8_combout\,
	datab => \sc0|sc2|sc1|sc0|Reg\(108),
	datac => \sc0|sc2|sc1|sc1|process_0~173_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~50_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~174_combout\);

-- Location: LCCOMB_X110_Y38_N20
\sc0|sc2|sc1|sc1|process_0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~175_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(115) & !\sc0|sc2|sc1|sc0|Reg\(114))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc0|Reg\(115),
	datad => \sc0|sc2|sc1|sc0|Reg\(114),
	combout => \sc0|sc2|sc1|sc1|process_0~175_combout\);

-- Location: LCCOMB_X110_Y38_N18
\sc0|sc2|sc1|sc1|process_0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~176_combout\ = (\sc0|sc2|sc1|sc1|process_0~51_combout\ & (\sc0|sc2|sc1|sc1|process_0~174_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~51_combout\ & (((\sc0|sc2|sc1|sc1|process_0~175_combout\ & 
-- \sc0|sc2|sc1|sc1|process_0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~174_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~175_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~52_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~176_combout\);

-- Location: LCCOMB_X109_Y38_N30
\sc0|sc2|sc1|sc1|count_out[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[2]~18_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~157_combout\) # (\sc0|sc2|sc1|sc1|process_0~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~157_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~176_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[2]~18_combout\);

-- Location: LCCOMB_X108_Y39_N14
\sc0|sc3|R[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[2]~4_combout\ = ((\sc1|sc4|sc1|count_out[2]~20_combout\ $ (\sc0|sc2|sc1|sc1|count_out[2]~18_combout\ $ (\sc0|sc3|R[1]~3\)))) # (GND)
-- \sc0|sc3|R[2]~5\ = CARRY((\sc1|sc4|sc1|count_out[2]~20_combout\ & ((!\sc0|sc3|R[1]~3\) # (!\sc0|sc2|sc1|sc1|count_out[2]~18_combout\))) # (!\sc1|sc4|sc1|count_out[2]~20_combout\ & (!\sc0|sc2|sc1|sc1|count_out[2]~18_combout\ & !\sc0|sc3|R[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[2]~20_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[2]~18_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[1]~3\,
	combout => \sc0|sc3|R[2]~4_combout\,
	cout => \sc0|sc3|R[2]~5\);

-- Location: LCCOMB_X114_Y42_N12
\sc0|sc2|sc1|sc1|count_out[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~23_combout\ = (\sc0|sc2|sc1|sc1|process_0~40_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(68) & \sc0|sc2|sc1|sc1|process_0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|process_0~40_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(68),
	datad => \sc0|sc2|sc1|sc1|process_0~41_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~23_combout\);

-- Location: LCCOMB_X109_Y47_N2
\sc0|sc2|sc1|sc1|process_0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~177_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(7) & (\sc0|sc2|sc1|sc1|process_0~129_combout\ & (\sc0|sc2|sc1|sc1|process_0~27_combout\ & !\sc0|sc2|sc1|sc0|Reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(7),
	datab => \sc0|sc2|sc1|sc1|process_0~129_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~27_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(6),
	combout => \sc0|sc2|sc1|sc1|process_0~177_combout\);

-- Location: LCCOMB_X109_Y48_N6
\sc0|sc2|sc1|sc1|count_out[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~37_combout\ = (\sc0|sc2|sc1|sc1|process_0~177_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(15)) # ((\sc0|sc2|sc1|sc1|process_0~29_combout\) # (\sc0|sc2|sc1|sc0|Reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(15),
	datab => \sc0|sc2|sc1|sc1|process_0~29_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~177_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(14),
	combout => \sc0|sc2|sc1|sc1|count_out[3]~37_combout\);

-- Location: LCCOMB_X108_Y47_N26
\sc0|sc2|sc1|sc1|count_out[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~19_combout\ = (\sc0|sc2|sc1|sc1|process_0~89_combout\ & (((\sc0|sc2|sc1|sc1|count_out[3]~37_combout\) # (!\sc0|sc2|sc1|sc1|process_0~31_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~89_combout\ & 
-- (!\sc0|sc2|sc1|sc1|count_out[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~89_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~31_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[3]~37_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~19_combout\);

-- Location: LCCOMB_X107_Y46_N20
\sc0|sc2|sc1|sc1|count_out[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~20_combout\ = (\sc0|sc2|sc1|sc1|count_out[3]~19_combout\ & ((\sc0|sc2|sc1|sc1|process_0~33_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~72_combout\ & !\sc0|sc2|sc1|sc0|Reg\(39))))) # (!\sc0|sc2|sc1|sc1|count_out[3]~19_combout\ & 
-- (((!\sc0|sc2|sc1|sc1|process_0~72_combout\ & !\sc0|sc2|sc1|sc0|Reg\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[3]~19_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~72_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(39),
	combout => \sc0|sc2|sc1|sc1|count_out[3]~20_combout\);

-- Location: LCCOMB_X107_Y46_N10
\sc0|sc2|sc1|sc1|count_out[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~21_combout\ = (\sc0|sc2|sc1|sc1|process_0~73_combout\ & (\sc0|sc2|sc1|sc1|count_out[3]~20_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~73_combout\ & ((!\sc0|sc2|sc1|sc1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|count_out[3]~20_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~73_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~19_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~21_combout\);

-- Location: LCCOMB_X106_Y43_N26
\sc0|sc2|sc1|sc1|count_out[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~22_combout\ = (\sc0|sc2|sc1|sc1|process_0~39_combout\ & (((\sc0|sc2|sc1|sc1|count_out[3]~21_combout\) # (\sc0|sc2|sc1|sc1|process_0~38_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~97_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[3]~21_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~38_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~22_combout\);

-- Location: LCCOMB_X113_Y42_N30
\sc0|sc2|sc1|sc1|count_out[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~24_combout\ = (\sc0|sc2|sc1|sc1|process_0~44_combout\ & (((\sc0|sc2|sc1|sc1|count_out[3]~23_combout\) # (\sc0|sc2|sc1|sc1|count_out[3]~22_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~44_combout\ & (\sc0|sc2|sc1|sc0|Reg\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(79),
	datab => \sc0|sc2|sc1|sc1|count_out[3]~23_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[3]~22_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~24_combout\);

-- Location: LCCOMB_X113_Y42_N4
\sc0|sc2|sc1|sc1|count_out[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~25_combout\ = (\sc0|sc2|sc1|sc1|process_0~46_combout\ & ((\sc0|sc2|sc1|sc1|count_out[3]~24_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~46_combout\ & (\sc0|sc2|sc1|sc1|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~11_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[3]~24_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~25_combout\);

-- Location: LCCOMB_X114_Y40_N30
\sc0|sc2|sc1|sc1|count_out[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~38_combout\ = (\sc0|sc2|sc1|sc1|process_0~103_combout\ & (((\sc0|sc2|sc1|sc1|count_out[3]~25_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~103_combout\ & ((\sc0|sc2|sc1|sc0|Reg\(95)) # ((\sc0|sc2|sc1|sc0|Reg\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(95),
	datab => \sc0|sc2|sc1|sc1|count_out[3]~25_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~103_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(94),
	combout => \sc0|sc2|sc1|sc1|count_out[3]~38_combout\);

-- Location: LCCOMB_X113_Y40_N18
\sc0|sc2|sc1|sc1|count_out[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~26_combout\ = (\sc0|sc2|sc1|sc1|process_0~110_combout\ & ((\sc0|sc2|sc1|sc1|count_out[3]~38_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~49_combout\)))) # (!\sc0|sc2|sc1|sc1|process_0~110_combout\ & 
-- (((!\sc0|sc2|sc1|sc1|count_out[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[3]~38_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[4]~8_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~110_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~49_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~26_combout\);

-- Location: LCCOMB_X110_Y38_N28
\sc0|sc2|sc1|sc1|count_out[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~27_combout\ = (\sc0|sc2|sc1|sc1|count_out[3]~26_combout\ & ((\sc0|sc2|sc1|sc1|process_0~51_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~53_combout\ & !\sc0|sc2|sc1|sc0|Reg\(119))))) # (!\sc0|sc2|sc1|sc1|count_out[3]~26_combout\ 
-- & (!\sc0|sc2|sc1|sc1|process_0~53_combout\ & (!\sc0|sc2|sc1|sc0|Reg\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[3]~26_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~53_combout\,
	datac => \sc0|sc2|sc1|sc0|Reg\(119),
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~27_combout\);

-- Location: LCCOMB_X109_Y38_N24
\sc0|sc2|sc1|sc1|count_out[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[3]~28_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~112_combout\ & (\sc0|sc2|sc1|sc1|count_out[3]~27_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~112_combout\ & ((\sc0|sc2|sc1|sc1|process_0~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~112_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[3]~27_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~156_combout\,
	datad => \RST~input_o\,
	combout => \sc0|sc2|sc1|sc1|count_out[3]~28_combout\);

-- Location: LCCOMB_X108_Y42_N16
\sc1|sc4|sc1|count_out[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~25_combout\ = (\sc1|sc4|sc1|process_0~39_combout\ & (!\sc1|sc4|sc0|Reg\(68) & \sc1|sc4|sc1|process_0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~39_combout\,
	datac => \sc1|sc4|sc0|Reg\(68),
	datad => \sc1|sc4|sc1|process_0~40_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~25_combout\);

-- Location: LCCOMB_X111_Y48_N30
\sc1|sc4|sc1|count_out[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~38_combout\ = (\sc1|sc4|sc1|process_0~25_combout\ & (\sc1|sc4|sc1|process_0~26_combout\ & ((\sc1|sc4|sc1|process_0~28_combout\) # (!\sc1|sc4|sc1|process_0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~28_combout\,
	datab => \sc1|sc4|sc1|process_0~24_combout\,
	datac => \sc1|sc4|sc1|process_0~25_combout\,
	datad => \sc1|sc4|sc1|process_0~26_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~38_combout\);

-- Location: LCCOMB_X108_Y44_N0
\sc1|sc4|sc1|count_out[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~21_combout\ = (\sc1|sc4|sc1|process_0~162_combout\) # ((\sc1|sc4|sc1|process_0~91_combout\ & ((\sc1|sc4|sc1|count_out[3]~38_combout\) # (!\sc1|sc4|sc1|process_0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~162_combout\,
	datab => \sc1|sc4|sc1|process_0~91_combout\,
	datac => \sc1|sc4|sc1|process_0~30_combout\,
	datad => \sc1|sc4|sc1|count_out[3]~38_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~21_combout\);

-- Location: LCCOMB_X112_Y44_N6
\sc1|sc4|sc1|count_out[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~22_combout\ = (\sc1|sc4|sc1|process_0~33_combout\ & (((\sc1|sc4|sc1|process_0~183_combout\ & \sc1|sc4|sc1|count_out[3]~21_combout\)))) # (!\sc1|sc4|sc1|process_0~33_combout\ & (((\sc1|sc4|sc1|process_0~183_combout\ & 
-- \sc1|sc4|sc1|count_out[3]~21_combout\)) # (!\sc1|sc4|sc0|Reg\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~33_combout\,
	datab => \sc1|sc4|sc0|Reg\(39),
	datac => \sc1|sc4|sc1|process_0~183_combout\,
	datad => \sc1|sc4|sc1|count_out[3]~21_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~22_combout\);

-- Location: LCCOMB_X112_Y44_N24
\sc1|sc4|sc1|count_out[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~23_combout\ = (\sc1|sc4|sc1|process_0~35_combout\ & ((\sc1|sc4|sc1|count_out[3]~22_combout\))) # (!\sc1|sc4|sc1|process_0~35_combout\ & (!\sc1|sc4|sc1|process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~17_combout\,
	datab => \sc1|sc4|sc1|process_0~35_combout\,
	datad => \sc1|sc4|sc1|count_out[3]~22_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~23_combout\);

-- Location: LCCOMB_X108_Y43_N10
\sc1|sc4|sc1|count_out[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~24_combout\ = (\sc1|sc4|sc1|process_0~38_combout\ & ((\sc1|sc4|sc1|count_out[3]~23_combout\) # ((\sc1|sc4|sc1|process_0~37_combout\) # (!\sc1|sc4|sc1|process_0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[3]~23_combout\,
	datab => \sc1|sc4|sc1|process_0~100_combout\,
	datac => \sc1|sc4|sc1|process_0~38_combout\,
	datad => \sc1|sc4|sc1|process_0~37_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~24_combout\);

-- Location: LCCOMB_X108_Y42_N30
\sc1|sc4|sc1|count_out[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~26_combout\ = (\sc1|sc4|sc1|process_0~43_combout\ & ((\sc1|sc4|sc1|count_out[3]~25_combout\) # ((\sc1|sc4|sc1|count_out[3]~24_combout\)))) # (!\sc1|sc4|sc1|process_0~43_combout\ & (((\sc1|sc4|sc0|Reg\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~43_combout\,
	datab => \sc1|sc4|sc1|count_out[3]~25_combout\,
	datac => \sc1|sc4|sc0|Reg\(79),
	datad => \sc1|sc4|sc1|count_out[3]~24_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~26_combout\);

-- Location: LCCOMB_X108_Y41_N4
\sc1|sc4|sc1|count_out[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~27_combout\ = (\sc1|sc4|sc1|process_0~45_combout\ & (\sc1|sc4|sc1|count_out[3]~26_combout\)) # (!\sc1|sc4|sc1|process_0~45_combout\ & ((\sc1|sc4|sc1|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[3]~26_combout\,
	datab => \sc1|sc4|sc1|process_0~11_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~27_combout\);

-- Location: LCCOMB_X112_Y41_N18
\sc1|sc4|sc1|count_out[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~39_combout\ = (\sc1|sc4|sc1|process_0~63_combout\ & (((\sc1|sc4|sc1|count_out[3]~27_combout\)))) # (!\sc1|sc4|sc1|process_0~63_combout\ & ((\sc1|sc4|sc0|Reg\(95)) # ((\sc1|sc4|sc0|Reg\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(95),
	datab => \sc1|sc4|sc1|process_0~63_combout\,
	datac => \sc1|sc4|sc1|count_out[3]~27_combout\,
	datad => \sc1|sc4|sc0|Reg\(94),
	combout => \sc1|sc4|sc1|count_out[3]~39_combout\);

-- Location: LCCOMB_X109_Y40_N16
\sc1|sc4|sc1|count_out[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~28_combout\ = (\sc1|sc4|sc1|process_0~110_combout\ & ((\sc1|sc4|sc1|count_out[3]~39_combout\) # ((!\sc1|sc4|sc1|process_0~48_combout\)))) # (!\sc1|sc4|sc1|process_0~110_combout\ & (((!\sc1|sc4|sc1|count_out[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[3]~39_combout\,
	datab => \sc1|sc4|sc1|process_0~110_combout\,
	datac => \sc1|sc4|sc1|process_0~48_combout\,
	datad => \sc1|sc4|sc1|count_out[4]~10_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~28_combout\);

-- Location: LCCOMB_X109_Y39_N8
\sc1|sc4|sc1|count_out[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~29_combout\ = (\sc1|sc4|sc1|process_0~50_combout\ & ((\sc1|sc4|sc1|count_out[3]~28_combout\) # ((!\sc1|sc4|sc1|process_0~52_combout\ & !\sc1|sc4|sc0|Reg\(119))))) # (!\sc1|sc4|sc1|process_0~50_combout\ & 
-- (!\sc1|sc4|sc1|process_0~52_combout\ & (!\sc1|sc4|sc0|Reg\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~50_combout\,
	datab => \sc1|sc4|sc1|process_0~52_combout\,
	datac => \sc1|sc4|sc0|Reg\(119),
	datad => \sc1|sc4|sc1|count_out[3]~28_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~29_combout\);

-- Location: LCCOMB_X108_Y39_N8
\sc1|sc4|sc1|count_out[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[3]~30_combout\ = (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~159_combout\) # ((\sc1|sc4|sc1|process_0~54_combout\ & \sc1|sc4|sc1|count_out[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~54_combout\,
	datab => \sc1|sc4|sc1|count_out[3]~29_combout\,
	datac => \RST~input_o\,
	datad => \sc1|sc4|sc1|process_0~159_combout\,
	combout => \sc1|sc4|sc1|count_out[3]~30_combout\);

-- Location: LCCOMB_X108_Y39_N16
\sc0|sc3|R[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[3]~6_combout\ = (\sc0|sc2|sc1|sc1|count_out[3]~28_combout\ & ((\sc1|sc4|sc1|count_out[3]~30_combout\ & (!\sc0|sc3|R[2]~5\)) # (!\sc1|sc4|sc1|count_out[3]~30_combout\ & ((\sc0|sc3|R[2]~5\) # (GND))))) # 
-- (!\sc0|sc2|sc1|sc1|count_out[3]~28_combout\ & ((\sc1|sc4|sc1|count_out[3]~30_combout\ & (\sc0|sc3|R[2]~5\ & VCC)) # (!\sc1|sc4|sc1|count_out[3]~30_combout\ & (!\sc0|sc3|R[2]~5\))))
-- \sc0|sc3|R[3]~7\ = CARRY((\sc0|sc2|sc1|sc1|count_out[3]~28_combout\ & ((!\sc0|sc3|R[2]~5\) # (!\sc1|sc4|sc1|count_out[3]~30_combout\))) # (!\sc0|sc2|sc1|sc1|count_out[3]~28_combout\ & (!\sc1|sc4|sc1|count_out[3]~30_combout\ & !\sc0|sc3|R[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[3]~28_combout\,
	datab => \sc1|sc4|sc1|count_out[3]~30_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[2]~5\,
	combout => \sc0|sc3|R[3]~6_combout\,
	cout => \sc0|sc3|R[3]~7\);

-- Location: LCCOMB_X107_Y41_N4
\sc1|sc4|sc1|process_0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~178_combout\ = (\sc1|sc4|sc1|process_0~91_combout\ & ((\sc1|sc4|sc1|process_0~29_combout\))) # (!\sc1|sc4|sc1|process_0~91_combout\ & (!\sc1|sc4|sc1|count_out[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~91_combout\,
	datac => \sc1|sc4|sc1|count_out[5]~7_combout\,
	datad => \sc1|sc4|sc1|process_0~29_combout\,
	combout => \sc1|sc4|sc1|process_0~178_combout\);

-- Location: LCCOMB_X107_Y41_N26
\sc1|sc4|sc1|process_0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~179_combout\ = (\sc1|sc4|sc1|process_0~178_combout\) # ((\sc1|sc4|sc1|process_0~17_combout\ & !\sc1|sc4|sc1|process_0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|process_0~178_combout\,
	datac => \sc1|sc4|sc1|process_0~17_combout\,
	datad => \sc1|sc4|sc1|process_0~35_combout\,
	combout => \sc1|sc4|sc1|process_0~179_combout\);

-- Location: LCCOMB_X107_Y41_N28
\sc1|sc4|sc1|process_0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~180_combout\ = (\sc1|sc4|sc1|process_0~179_combout\ & ((\sc1|sc4|sc1|process_0~38_combout\) # ((!\sc1|sc4|sc0|Reg\(79) & !\sc1|sc4|sc1|process_0~43_combout\)))) # (!\sc1|sc4|sc1|process_0~179_combout\ & (((!\sc1|sc4|sc0|Reg\(79) & 
-- !\sc1|sc4|sc1|process_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~179_combout\,
	datab => \sc1|sc4|sc1|process_0~38_combout\,
	datac => \sc1|sc4|sc0|Reg\(79),
	datad => \sc1|sc4|sc1|process_0~43_combout\,
	combout => \sc1|sc4|sc1|process_0~180_combout\);

-- Location: LCCOMB_X108_Y41_N6
\sc1|sc4|sc1|process_0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|process_0~181_combout\ = (\sc1|sc4|sc1|process_0~63_combout\ & (((\sc1|sc4|sc1|process_0~180_combout\) # (!\sc1|sc4|sc1|process_0~45_combout\)))) # (!\sc1|sc4|sc1|process_0~63_combout\ & (!\sc1|sc4|sc1|count_out[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[5]~6_combout\,
	datab => \sc1|sc4|sc1|process_0~180_combout\,
	datac => \sc1|sc4|sc1|process_0~63_combout\,
	datad => \sc1|sc4|sc1|process_0~45_combout\,
	combout => \sc1|sc4|sc1|process_0~181_combout\);

-- Location: LCCOMB_X109_Y40_N26
\sc1|sc4|sc1|count_out[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[4]~31_combout\ = (\sc1|sc4|sc1|process_0~59_combout\ & ((\sc1|sc4|sc1|process_0~181_combout\) # ((!\sc1|sc4|sc1|process_0~110_combout\ & \sc1|sc4|sc1|count_out[4]~10_combout\)))) # (!\sc1|sc4|sc1|process_0~59_combout\ & 
-- (!\sc1|sc4|sc1|process_0~110_combout\ & ((\sc1|sc4|sc1|count_out[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~59_combout\,
	datab => \sc1|sc4|sc1|process_0~110_combout\,
	datac => \sc1|sc4|sc1|process_0~181_combout\,
	datad => \sc1|sc4|sc1|count_out[4]~10_combout\,
	combout => \sc1|sc4|sc1|count_out[4]~31_combout\);

-- Location: LCCOMB_X109_Y40_N0
\sc1|sc4|sc1|count_out[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[4]~32_combout\ = (\sc1|sc4|sc1|count_out[4]~31_combout\) # (!\sc1|sc4|sc1|process_0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~50_combout\,
	datac => \sc1|sc4|sc1|count_out[4]~31_combout\,
	combout => \sc1|sc4|sc1|count_out[4]~32_combout\);

-- Location: LCCOMB_X108_Y39_N6
\sc1|sc4|sc1|count_out[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[4]~33_combout\ = (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~159_combout\) # ((\sc1|sc4|sc1|process_0~54_combout\ & \sc1|sc4|sc1|count_out[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~54_combout\,
	datab => \sc1|sc4|sc1|process_0~159_combout\,
	datac => \RST~input_o\,
	datad => \sc1|sc4|sc1|count_out[4]~32_combout\,
	combout => \sc1|sc4|sc1|count_out[4]~33_combout\);

-- Location: LCCOMB_X108_Y47_N8
\sc0|sc2|sc1|sc1|process_0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~178_combout\ = (\sc0|sc2|sc1|sc1|process_0~33_combout\ & ((\sc0|sc2|sc1|sc1|process_0~89_combout\ & (\sc0|sc2|sc1|sc1|process_0~30_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~89_combout\ & 
-- ((!\sc0|sc2|sc1|sc1|count_out[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~89_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~33_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~30_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~178_combout\);

-- Location: LCCOMB_X109_Y44_N24
\sc0|sc2|sc1|sc1|process_0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~179_combout\ = (\sc0|sc2|sc1|sc1|process_0~178_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~73_combout\ & \sc0|sc2|sc1|sc1|process_0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~178_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~73_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~19_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~179_combout\);

-- Location: LCCOMB_X113_Y42_N18
\sc0|sc2|sc1|sc1|process_0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~180_combout\ = (\sc0|sc2|sc1|sc1|process_0~39_combout\ & ((\sc0|sc2|sc1|sc1|process_0~179_combout\) # ((!\sc0|sc2|sc1|sc1|process_0~44_combout\ & !\sc0|sc2|sc1|sc0|Reg\(79))))) # (!\sc0|sc2|sc1|sc1|process_0~39_combout\ & 
-- (!\sc0|sc2|sc1|sc1|process_0~44_combout\ & ((!\sc0|sc2|sc1|sc0|Reg\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \sc0|sc2|sc1|sc1|process_0~44_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~179_combout\,
	datad => \sc0|sc2|sc1|sc0|Reg\(79),
	combout => \sc0|sc2|sc1|sc1|process_0~180_combout\);

-- Location: LCCOMB_X113_Y42_N28
\sc0|sc2|sc1|sc1|process_0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|process_0~181_combout\ = (\sc0|sc2|sc1|sc1|process_0~103_combout\ & (((\sc0|sc2|sc1|sc1|process_0~180_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~46_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~103_combout\ & 
-- (((!\sc0|sc2|sc1|sc1|count_out[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~46_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[5]~5_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~103_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~180_combout\,
	combout => \sc0|sc2|sc1|sc1|process_0~181_combout\);

-- Location: LCCOMB_X113_Y40_N28
\sc0|sc2|sc1|sc1|count_out[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[4]~29_combout\ = (\sc0|sc2|sc1|sc1|process_0~181_combout\ & ((\sc0|sc2|sc1|sc1|process_0~101_combout\) # ((\sc0|sc2|sc1|sc1|count_out[4]~8_combout\ & !\sc0|sc2|sc1|sc1|process_0~110_combout\)))) # 
-- (!\sc0|sc2|sc1|sc1|process_0~181_combout\ & (\sc0|sc2|sc1|sc1|count_out[4]~8_combout\ & (!\sc0|sc2|sc1|sc1|process_0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~181_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[4]~8_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~110_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~101_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[4]~29_combout\);

-- Location: LCCOMB_X113_Y40_N30
\sc0|sc2|sc1|sc1|count_out[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[4]~30_combout\ = (\sc0|sc2|sc1|sc1|count_out[4]~29_combout\) # (!\sc0|sc2|sc1|sc1|process_0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|sc1|sc1|count_out[4]~29_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~51_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[4]~30_combout\);

-- Location: LCCOMB_X108_Y39_N4
\sc0|sc2|sc1|sc1|count_out[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[4]~31_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~112_combout\ & ((\sc0|sc2|sc1|sc1|count_out[4]~30_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~112_combout\ & (\sc0|sc2|sc1|sc1|process_0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~156_combout\,
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~112_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[4]~30_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[4]~31_combout\);

-- Location: LCCOMB_X108_Y39_N18
\sc0|sc3|R[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[4]~8_combout\ = ((\sc1|sc4|sc1|count_out[4]~33_combout\ $ (\sc0|sc2|sc1|sc1|count_out[4]~31_combout\ $ (\sc0|sc3|R[3]~7\)))) # (GND)
-- \sc0|sc3|R[4]~9\ = CARRY((\sc1|sc4|sc1|count_out[4]~33_combout\ & ((!\sc0|sc3|R[3]~7\) # (!\sc0|sc2|sc1|sc1|count_out[4]~31_combout\))) # (!\sc1|sc4|sc1|count_out[4]~33_combout\ & (!\sc0|sc2|sc1|sc1|count_out[4]~31_combout\ & !\sc0|sc3|R[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|count_out[4]~33_combout\,
	datab => \sc0|sc2|sc1|sc1|count_out[4]~31_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[3]~7\,
	combout => \sc0|sc3|R[4]~8_combout\,
	cout => \sc0|sc3|R[4]~9\);

-- Location: LCCOMB_X108_Y47_N18
\sc0|sc2|sc1|sc1|count_out[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~32_combout\ = (!\sc0|sc2|sc1|sc0|Reg\(28) & (\sc0|sc2|sc1|sc1|count_out[5]~6_combout\ & (\sc0|sc2|sc1|sc1|process_0~88_combout\ & \sc0|sc2|sc1|sc1|process_0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(28),
	datab => \sc0|sc2|sc1|sc1|count_out[5]~6_combout\,
	datac => \sc0|sc2|sc1|sc1|process_0~88_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~22_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[5]~32_combout\);

-- Location: LCCOMB_X108_Y39_N28
\sc0|sc2|sc1|sc1|count_out[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~33_combout\ = (\sc0|sc2|sc1|sc1|count_out[5]~7_combout\) # ((\sc0|sc2|sc1|sc1|process_0~39_combout\ & \sc0|sc2|sc1|sc1|count_out[5]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datac => \sc0|sc2|sc1|sc1|count_out[5]~32_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[5]~7_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[5]~33_combout\);

-- Location: LCCOMB_X108_Y39_N30
\sc0|sc2|sc1|sc1|count_out[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[5]~34_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~112_combout\ & ((\sc0|sc2|sc1|sc1|count_out[5]~33_combout\))) # (!\sc0|sc2|sc1|sc1|process_0~112_combout\ & (\sc0|sc2|sc1|sc1|process_0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~156_combout\,
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~112_combout\,
	datad => \sc0|sc2|sc1|sc1|count_out[5]~33_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[5]~34_combout\);

-- Location: LCCOMB_X108_Y41_N30
\sc1|sc4|sc1|count_out[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~34_combout\ = (\sc1|sc4|sc1|count_out[5]~9_combout\) # ((\sc1|sc4|sc1|count_out[5]~8_combout\ & \sc1|sc4|sc1|process_0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|sc4|sc1|count_out[5]~8_combout\,
	datac => \sc1|sc4|sc1|process_0~38_combout\,
	datad => \sc1|sc4|sc1|count_out[5]~9_combout\,
	combout => \sc1|sc4|sc1|count_out[5]~34_combout\);

-- Location: LCCOMB_X108_Y39_N2
\sc1|sc4|sc1|count_out[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[5]~35_combout\ = (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~159_combout\) # ((\sc1|sc4|sc1|process_0~54_combout\ & \sc1|sc4|sc1|count_out[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~54_combout\,
	datab => \sc1|sc4|sc1|process_0~159_combout\,
	datac => \RST~input_o\,
	datad => \sc1|sc4|sc1|count_out[5]~34_combout\,
	combout => \sc1|sc4|sc1|count_out[5]~35_combout\);

-- Location: LCCOMB_X108_Y39_N20
\sc0|sc3|R[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[5]~10_combout\ = (\sc0|sc2|sc1|sc1|count_out[5]~34_combout\ & ((\sc1|sc4|sc1|count_out[5]~35_combout\ & (!\sc0|sc3|R[4]~9\)) # (!\sc1|sc4|sc1|count_out[5]~35_combout\ & ((\sc0|sc3|R[4]~9\) # (GND))))) # 
-- (!\sc0|sc2|sc1|sc1|count_out[5]~34_combout\ & ((\sc1|sc4|sc1|count_out[5]~35_combout\ & (\sc0|sc3|R[4]~9\ & VCC)) # (!\sc1|sc4|sc1|count_out[5]~35_combout\ & (!\sc0|sc3|R[4]~9\))))
-- \sc0|sc3|R[5]~11\ = CARRY((\sc0|sc2|sc1|sc1|count_out[5]~34_combout\ & ((!\sc0|sc3|R[4]~9\) # (!\sc1|sc4|sc1|count_out[5]~35_combout\))) # (!\sc0|sc2|sc1|sc1|count_out[5]~34_combout\ & (!\sc1|sc4|sc1|count_out[5]~35_combout\ & !\sc0|sc3|R[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[5]~34_combout\,
	datab => \sc1|sc4|sc1|count_out[5]~35_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[4]~9\,
	combout => \sc0|sc3|R[5]~10_combout\,
	cout => \sc0|sc3|R[5]~11\);

-- Location: LCCOMB_X108_Y39_N26
\sc0|sc2|sc1|sc1|count_out[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[6]~35_combout\ = (\RST~input_o\ & ((\sc0|sc2|sc1|sc1|process_0~112_combout\ & (!\sc0|sc2|sc1|sc1|process_0~39_combout\)) # (!\sc0|sc2|sc1|sc1|process_0~112_combout\ & ((\sc0|sc2|sc1|sc1|process_0~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|process_0~39_combout\,
	datab => \RST~input_o\,
	datac => \sc0|sc2|sc1|sc1|process_0~112_combout\,
	datad => \sc0|sc2|sc1|sc1|process_0~156_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[6]~35_combout\);

-- Location: LCCOMB_X108_Y39_N0
\sc1|sc4|sc1|count_out[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[6]~36_combout\ = (\RST~input_o\ & ((\sc1|sc4|sc1|process_0~159_combout\) # ((\sc1|sc4|sc1|process_0~54_combout\ & !\sc1|sc4|sc1|process_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc1|process_0~54_combout\,
	datab => \RST~input_o\,
	datac => \sc1|sc4|sc1|process_0~38_combout\,
	datad => \sc1|sc4|sc1|process_0~159_combout\,
	combout => \sc1|sc4|sc1|count_out[6]~36_combout\);

-- Location: LCCOMB_X108_Y39_N22
\sc0|sc3|R[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[6]~12_combout\ = ((\sc0|sc2|sc1|sc1|count_out[6]~35_combout\ $ (\sc1|sc4|sc1|count_out[6]~36_combout\ $ (\sc0|sc3|R[5]~11\)))) # (GND)
-- \sc0|sc3|R[6]~13\ = CARRY((\sc0|sc2|sc1|sc1|count_out[6]~35_combout\ & (\sc1|sc4|sc1|count_out[6]~36_combout\ & !\sc0|sc3|R[5]~11\)) # (!\sc0|sc2|sc1|sc1|count_out[6]~35_combout\ & ((\sc1|sc4|sc1|count_out[6]~36_combout\) # (!\sc0|sc3|R[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[6]~35_combout\,
	datab => \sc1|sc4|sc1|count_out[6]~36_combout\,
	datad => VCC,
	cin => \sc0|sc3|R[5]~11\,
	combout => \sc0|sc3|R[6]~12_combout\,
	cout => \sc0|sc3|R[6]~13\);

-- Location: LCCOMB_X109_Y39_N6
\sc0|sc2|sc1|sc1|count_out[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc1|sc1|count_out[7]~36_combout\ = (\sc0|sc2|sc1|sc0|Reg\(125)) # ((\sc0|sc2|sc1|sc0|Reg\(126)) # ((\sc0|sc2|sc1|sc0|Reg\(127)) # (!\sc0|sc2|sc1|sc1|count_out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc0|Reg\(125),
	datab => \sc0|sc2|sc1|sc0|Reg\(126),
	datac => \sc0|sc2|sc1|sc0|Reg\(127),
	datad => \sc0|sc2|sc1|sc1|count_out[0]~9_combout\,
	combout => \sc0|sc2|sc1|sc1|count_out[7]~36_combout\);

-- Location: LCCOMB_X111_Y39_N18
\sc1|sc4|sc1|count_out[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|sc4|sc1|count_out[7]~37_combout\ = (\sc1|sc4|sc0|Reg\(126)) # ((\sc1|sc4|sc0|Reg\(127)) # ((\sc1|sc4|sc0|Reg\(125)) # (!\sc1|sc4|sc1|count_out[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|sc4|sc0|Reg\(126),
	datab => \sc1|sc4|sc0|Reg\(127),
	datac => \sc1|sc4|sc1|count_out[0]~13_combout\,
	datad => \sc1|sc4|sc0|Reg\(125),
	combout => \sc1|sc4|sc1|count_out[7]~37_combout\);

-- Location: LCCOMB_X108_Y39_N24
\sc0|sc3|R[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|R[7]~14_combout\ = \sc0|sc2|sc1|sc1|count_out[7]~36_combout\ $ (\sc0|sc3|R[6]~13\ $ (!\sc1|sc4|sc1|count_out[7]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|sc1|sc1|count_out[7]~36_combout\,
	datad => \sc1|sc4|sc1|count_out[7]~37_combout\,
	cin => \sc0|sc3|R[6]~13\,
	combout => \sc0|sc3|R[7]~14_combout\);

-- Location: LCCOMB_X112_Y48_N0
\sc0|sc2|sc0|Reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|sc0|Reg[0]~feeder_combout\ = \sc1|sc0|sc0|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|sc0|sc0|qp\(0),
	combout => \sc0|sc2|sc0|Reg[0]~feeder_combout\);

-- Location: FF_X112_Y48_N1
\sc0|sc2|sc0|Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	d => \sc0|sc2|sc0|Reg[0]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(0));

-- Location: FF_X112_Y48_N19
\sc0|sc2|sc0|Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	asdata => \sc1|sc0|sc0|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(1));

-- Location: FF_X112_Y48_N27
\sc0|sc2|sc0|Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	asdata => \sc1|sc0|sc0|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(2));

-- Location: FF_X112_Y48_N21
\sc0|sc2|sc0|Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	asdata => \sc1|sc0|sc0|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(3));

-- Location: FF_X112_Y48_N31
\sc0|sc2|sc0|Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	asdata => \sc1|sc0|sc0|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(4));

-- Location: FF_X112_Y48_N15
\sc0|sc2|sc0|Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc0|sc4|Q~clkctrl_outclk\,
	asdata => \sc1|sc0|sc0|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|sc0|Reg\(5));
END structure;


