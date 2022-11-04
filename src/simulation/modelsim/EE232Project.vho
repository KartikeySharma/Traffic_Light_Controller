-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/09/2020 00:58:04"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TRAFFIC_CONTROLLER_WITH_SENSORS IS
    PORT (
	clk : IN std_logic;
	rstn : IN std_logic;
	traffic : IN std_logic_vector(3 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	yellow : OUT std_logic_vector(3 DOWNTO 0)
	);
END TRAFFIC_CONTROLLER_WITH_SENSORS;

-- Design Ports Information
-- red[0]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[1]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[0]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[1]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[2]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yellow[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yellow[1]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yellow[2]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yellow[3]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rstn	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- traffic[1]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- traffic[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- traffic[3]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- traffic[0]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TRAFFIC_CONTROLLER_WITH_SENSORS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_traffic : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yellow : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \count[4]~55_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \count[5]~60_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \count[2]~57_combout\ : std_logic;
SIGNAL \rstn~combout\ : std_logic;
SIGNAL \count[2]~58_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \count[4]~56_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \count[30]~68_combout\ : std_logic;
SIGNAL \count[23]~51_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \count[31]~67_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \count[0]~59_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \count[1]~65_combout\ : std_logic;
SIGNAL \count[3]~63_combout\ : std_logic;
SIGNAL \count[1]~66_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \count[3]~62_combout\ : std_logic;
SIGNAL \count[3]~64_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \count[5]~61_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[6]~53_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \count[6]~52_combout\ : std_logic;
SIGNAL \count[6]~54_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \A0|GNT~0_combout\ : std_logic;
SIGNAL \A0|GNT~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \A0|GNT~2_combout\ : std_logic;
SIGNAL \state.s6~0_combout\ : std_logic;
SIGNAL \state.s6~0clkctrl_outclk\ : std_logic;
SIGNAL \state.s6_491~combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \state.s7_476~combout\ : std_logic;
SIGNAL \lights~0_combout\ : std_logic;
SIGNAL \state~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \state.s4_521~combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \state.s5_506~combout\ : std_logic;
SIGNAL \lights~1_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \state.s3_536~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.s2_551~combout\ : std_logic;
SIGNAL \lights~2_combout\ : std_logic;
SIGNAL \state.s0_581~combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \state.s1_566~combout\ : std_logic;
SIGNAL \lights~3_combout\ : std_logic;
SIGNAL \A0|GNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \traffic~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rstn~combout\ : std_logic;
SIGNAL \ALT_INV_lights~3_combout\ : std_logic;
SIGNAL \ALT_INV_lights~2_combout\ : std_logic;
SIGNAL \ALT_INV_lights~1_combout\ : std_logic;
SIGNAL \ALT_INV_lights~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rstn <= rstn;
ww_traffic <= traffic;
red <= ww_red;
green <= ww_green;
yellow <= ww_yellow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\state.s6~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \state.s6~0_combout\);
\ALT_INV_rstn~combout\ <= NOT \rstn~combout\;
\ALT_INV_lights~3_combout\ <= NOT \lights~3_combout\;
\ALT_INV_lights~2_combout\ <= NOT \lights~2_combout\;
\ALT_INV_lights~1_combout\ <= NOT \lights~1_combout\;
\ALT_INV_lights~0_combout\ <= NOT \lights~0_combout\;

-- Location: LCCOMB_X18_Y13_N8
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\count[4]~56_combout\ & (\Add0~16\ $ (GND))) # (!\count[4]~56_combout\ & (!\Add0~16\ & VCC))
-- \Add0~18\ = CARRY((\count[4]~56_combout\ & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[4]~56_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X18_Y13_N10
\Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\count[5]~61_combout\ & (!\Add0~18\)) # (!\count[5]~61_combout\ & ((\Add0~18\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~18\) # (!\count[5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[5]~61_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X18_Y12_N2
\Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42\ & (((\count[23]~51_combout\)) # (!\Add0~43_combout\))) # (!\Add0~42\ & (((\Add0~43_combout\ & !\count[23]~51_combout\)) # (GND)))
-- \Add0~44\ = CARRY(((\count[23]~51_combout\) # (!\Add0~42\)) # (!\Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X18_Y12_N6
\Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~46\ & (((\count[23]~51_combout\)) # (!\Add0~47_combout\))) # (!\Add0~46\ & (((\Add0~47_combout\ & !\count[23]~51_combout\)) # (GND)))
-- \Add0~48\ = CARRY(((\count[23]~51_combout\) # (!\Add0~46\)) # (!\Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X18_Y12_N8
\Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48\ & (\Add0~49_combout\ & (!\count[23]~51_combout\ & VCC))) # (!\Add0~48\ & ((((\Add0~49_combout\ & !\count[23]~51_combout\)))))
-- \Add0~50\ = CARRY((\Add0~49_combout\ & (!\count[23]~51_combout\ & !\Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~49_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X18_Y12_N20
\Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~60\ & (\Add0~61_combout\ & (!\count[23]~51_combout\ & VCC))) # (!\Add0~60\ & ((((\Add0~61_combout\ & !\count[23]~51_combout\)))))
-- \Add0~62\ = CARRY((\Add0~61_combout\ & (!\count[23]~51_combout\ & !\Add0~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X18_Y12_N22
\Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Add0~62\ & (((\count[23]~51_combout\)) # (!\Add0~63_combout\))) # (!\Add0~62\ & (((\Add0~63_combout\ & !\count[23]~51_combout\)) # (GND)))
-- \Add0~64\ = CARRY(((\count[23]~51_combout\) # (!\Add0~62\)) # (!\Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X18_Y12_N26
\Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~66\ & (((\count[23]~51_combout\)) # (!\Add0~67_combout\))) # (!\Add0~66\ & (((\Add0~67_combout\ & !\count[23]~51_combout\)) # (GND)))
-- \Add0~68\ = CARRY(((\count[23]~51_combout\) # (!\Add0~66\)) # (!\Add0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~67_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~66\,
	combout => \Add0~67_combout\,
	cout => \Add0~68\);

-- Location: LCCOMB_X18_Y12_N28
\Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\count[30]~68_combout\ & (\Add0~68\ $ (GND))) # (!\count[30]~68_combout\ & (!\Add0~68\ & VCC))
-- \Add0~70\ = CARRY((\count[30]~68_combout\ & !\Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[30]~68_combout\,
	datad => VCC,
	cin => \Add0~68\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X19_Y12_N8
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\WideNor0~combout\) # ((!\Add0~65_combout\ & (!\Add0~67_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~65_combout\,
	datac => \Add0~67_combout\,
	datad => \Add0~55_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\WideNor0~combout\) # ((!\Add0~63_combout\ & (!\Add0~61_combout\ & !\Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~63_combout\,
	datac => \Add0~61_combout\,
	datad => \Add0~59_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\WideNor0~combout\) # ((!\Add0~51_combout\ & (!\Add0~57_combout\ & !\Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Add0~57_combout\,
	datac => \WideNor0~combout\,
	datad => \Add0~53_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (\WideNor0~combout\) # ((!\Add0~45_combout\ & (!\Add0~47_combout\ & !\Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~47_combout\,
	datad => \Add0~49_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~2_combout\ & (\Equal6~3_combout\ & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~2_combout\,
	datac => \Equal6~3_combout\,
	datad => \Equal6~1_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X18_Y11_N4
\Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\WideNor0~combout\) # ((!\Add0~29_combout\ & (!\Add0~37_combout\ & !\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~29_combout\,
	datac => \Add0~37_combout\,
	datad => \Add0~35_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X19_Y11_N16
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state~2_combout\ & ((\A0|GNT\(3)) # ((\Equal6~10_combout\ & \Equal0~1_combout\)))) # (!\state~2_combout\ & (\Equal6~10_combout\ & ((\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~2_combout\,
	datab => \Equal6~10_combout\,
	datac => \A0|GNT\(3),
	datad => \Equal0~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X19_Y12_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\WideNor0~combout\) # (((!\Add0~55_combout\ & !\Add0~67_combout\)) # (!\rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \Add0~67_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y12_N10
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\WideNor0~combout\) # (((!\Add0~61_combout\ & !\Add0~59_combout\)) # (!\rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \Add0~59_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\WideNor0~combout\) # (((!\Add0~49_combout\ & !\Add0~51_combout\)) # (!\rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~49_combout\,
	datab => \Add0~51_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\WideNor0~combout\) # (((!\Add0~41_combout\ & !\Add0~43_combout\)) # (!\rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Add0~43_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X19_Y12_N16
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~39_combout\ & (!\Add0~37_combout\ & (!\Add0~47_combout\ & !\Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Add0~37_combout\,
	datac => \Add0~47_combout\,
	datad => \Add0~45_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X19_Y12_N18
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~63_combout\ & (!\Add0~65_combout\ & (!\Add0~53_combout\ & !\Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \Add0~65_combout\,
	datac => \Add0~53_combout\,
	datad => \Add0~57_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & ((\count[23]~51_combout\) # ((\Equal0~6_combout\ & \Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X19_Y12_N26
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~2_combout\ & (\Equal0~4_combout\ & (\Equal0~8_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y11_N24
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~9_combout\ & (\Equal0~12_combout\ & (\Equal8~0_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal8~0_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X19_Y13_N26
\count[4]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~55_combout\ = (!\WideNor0~combout\ & \Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~combout\,
	datad => \Add0~17_combout\,
	combout => \count[4]~55_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\count[6]~54_combout\ & (\Equal8~0_combout\ & (\count[2]~58_combout\ & \count[4]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[6]~54_combout\,
	datab => \Equal8~0_combout\,
	datac => \count[2]~58_combout\,
	datad => \count[4]~56_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X17_Y11_N10
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal0~9_combout\ & (\Equal0~12_combout\ & (\Equal1~2_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X18_Y11_N16
\count[5]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~60_combout\ = (\Equal1~3_combout\ & ((\Equal4~0_combout\) # ((\Add0~19_combout\ & !\WideNor0~combout\)))) # (!\Equal1~3_combout\ & (((\Add0~19_combout\ & !\WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal4~0_combout\,
	datac => \Add0~19_combout\,
	datad => \WideNor0~combout\,
	combout => \count[5]~60_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\traffic[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_traffic(0),
	combout => \traffic~combout\(0));

-- Location: LCCOMB_X18_Y13_N0
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \count[0]~59_combout\ $ (VCC)
-- \Add0~10\ = CARRY(\count[0]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0]~59_combout\,
	datad => VCC,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X18_Y11_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\count[3]~64_combout\ & (\count[1]~66_combout\ & !\count[5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[3]~64_combout\,
	datac => \count[1]~66_combout\,
	datad => \count[5]~61_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ((!\Equal4~0_combout\ & (!\Equal0~0_combout\ & !\Equal2~0_combout\))) # (!\Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X18_Y13_N2
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\count[1]~66_combout\ & (!\Add0~10\)) # (!\count[1]~66_combout\ & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!\count[1]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~66_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X18_Y13_N4
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\count[2]~58_combout\ & (\Add0~12\ $ (GND))) # (!\count[2]~58_combout\ & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((\count[2]~58_combout\ & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2]~58_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X19_Y13_N28
\count[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~57_combout\ = (!\WideNor0~combout\ & \Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~combout\,
	datac => \Add0~13_combout\,
	combout => \count[2]~57_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rstn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rstn,
	combout => \rstn~combout\);

-- Location: LCCOMB_X20_Y11_N12
\count[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~58_combout\ = (\rstn~combout\ & ((\Equal7~3_combout\) # ((\count[2]~57_combout\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \WideNor0~0_combout\,
	datac => \count[2]~57_combout\,
	datad => \rstn~combout\,
	combout => \count[2]~58_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal0~13_combout\ & (!\count[2]~58_combout\ & (\count[6]~54_combout\ & \count[4]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \count[2]~58_combout\,
	datac => \count[6]~54_combout\,
	datad => \count[4]~56_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X17_Y11_N28
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (!\Equal3~2_combout\ & (((!\Equal2~0_combout\ & !\Equal0~0_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal3~2_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X20_Y11_N14
\count[4]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~56_combout\ = (\rstn~combout\ & ((\count[4]~55_combout\) # ((!\WideNor0~1_combout\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[4]~55_combout\,
	datab => \WideNor0~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \rstn~combout\,
	combout => \count[4]~56_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\count[2]~58_combout\ & (\count[6]~54_combout\ & \count[4]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~58_combout\,
	datab => \count[6]~54_combout\,
	datad => \count[4]~56_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal0~13_combout\ & (\Equal5~2_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X18_Y11_N12
WideNor0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ((\Equal8~1_combout\) # ((!\WideNor0~1_combout\) # (!\WideNor0~2_combout\))) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \WideNor0~2_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X19_Y12_N22
\count[30]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[30]~68_combout\ = (\Add0~69_combout\ & (!\WideNor0~combout\ & \rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \count[30]~68_combout\);

-- Location: LCCOMB_X19_Y13_N16
\count[23]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~51_combout\ = (\WideNor0~combout\) # (!\rstn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \count[23]~51_combout\);

-- Location: LCCOMB_X18_Y13_N16
\Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & (!\count[23]~51_combout\ & (\Add0~25_combout\ & VCC))) # (!\Add0~24\ & ((((!\count[23]~51_combout\ & \Add0~25_combout\)))))
-- \Add0~26\ = CARRY((!\count[23]~51_combout\ & (\Add0~25_combout\ & !\Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~25_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X18_Y13_N18
\Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & ((\count[23]~51_combout\) # ((!\Add0~27_combout\)))) # (!\Add0~26\ & (((!\count[23]~51_combout\ & \Add0~27_combout\)) # (GND)))
-- \Add0~28\ = CARRY((\count[23]~51_combout\) # ((!\Add0~26\) # (!\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X18_Y13_N20
\Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & (!\count[23]~51_combout\ & (\Add0~29_combout\ & VCC))) # (!\Add0~28\ & ((((!\count[23]~51_combout\ & \Add0~29_combout\)))))
-- \Add0~30\ = CARRY((!\count[23]~51_combout\ & (\Add0~29_combout\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X18_Y13_N22
\Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & ((\count[23]~51_combout\) # ((!\Add0~31_combout\)))) # (!\Add0~30\ & (((!\count[23]~51_combout\ & \Add0~31_combout\)) # (GND)))
-- \Add0~32\ = CARRY((\count[23]~51_combout\) # ((!\Add0~30\) # (!\Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~31_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X18_Y13_N24
\Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & (!\count[23]~51_combout\ & (\Add0~33_combout\ & VCC))) # (!\Add0~32\ & ((((!\count[23]~51_combout\ & \Add0~33_combout\)))))
-- \Add0~34\ = CARRY((!\count[23]~51_combout\ & (\Add0~33_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X18_Y13_N26
\Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & ((\count[23]~51_combout\) # ((!\Add0~35_combout\)))) # (!\Add0~34\ & (((!\count[23]~51_combout\ & \Add0~35_combout\)) # (GND)))
-- \Add0~36\ = CARRY((\count[23]~51_combout\) # ((!\Add0~34\) # (!\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X18_Y13_N28
\Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36\ & (!\count[23]~51_combout\ & (\Add0~37_combout\ & VCC))) # (!\Add0~36\ & ((((!\count[23]~51_combout\ & \Add0~37_combout\)))))
-- \Add0~38\ = CARRY((!\count[23]~51_combout\ & (\Add0~37_combout\ & !\Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~37_combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X18_Y13_N30
\Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38\ & ((\count[23]~51_combout\) # ((!\Add0~39_combout\)))) # (!\Add0~38\ & (((!\count[23]~51_combout\ & \Add0~39_combout\)) # (GND)))
-- \Add0~40\ = CARRY((\count[23]~51_combout\) # ((!\Add0~38\) # (!\Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~39_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X18_Y12_N0
\Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40\ & (\Add0~41_combout\ & (!\count[23]~51_combout\ & VCC))) # (!\Add0~40\ & ((((\Add0~41_combout\ & !\count[23]~51_combout\)))))
-- \Add0~42\ = CARRY((\Add0~41_combout\ & (!\count[23]~51_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \count[23]~51_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X18_Y12_N4
\Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44\ & (!\count[23]~51_combout\ & (\Add0~45_combout\ & VCC))) # (!\Add0~44\ & ((((!\count[23]~51_combout\ & \Add0~45_combout\)))))
-- \Add0~46\ = CARRY((!\count[23]~51_combout\ & (\Add0~45_combout\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~45_combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X18_Y12_N10
\Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50\ & ((\count[23]~51_combout\) # ((!\Add0~51_combout\)))) # (!\Add0~50\ & (((!\count[23]~51_combout\ & \Add0~51_combout\)) # (GND)))
-- \Add0~52\ = CARRY((\count[23]~51_combout\) # ((!\Add0~50\) # (!\Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X18_Y12_N12
\Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52\ & (!\count[23]~51_combout\ & (\Add0~53_combout\ & VCC))) # (!\Add0~52\ & ((((!\count[23]~51_combout\ & \Add0~53_combout\)))))
-- \Add0~54\ = CARRY((!\count[23]~51_combout\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X18_Y12_N14
\Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & ((\count[23]~51_combout\) # ((!\Add0~55_combout\)))) # (!\Add0~54\ & (((!\count[23]~51_combout\ & \Add0~55_combout\)) # (GND)))
-- \Add0~56\ = CARRY((\count[23]~51_combout\) # ((!\Add0~54\) # (!\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~55_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X18_Y12_N16
\Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56\ & (!\count[23]~51_combout\ & (\Add0~57_combout\ & VCC))) # (!\Add0~56\ & ((((!\count[23]~51_combout\ & \Add0~57_combout\)))))
-- \Add0~58\ = CARRY((!\count[23]~51_combout\ & (\Add0~57_combout\ & !\Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~57_combout\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X18_Y12_N18
\Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58\ & ((\count[23]~51_combout\) # ((!\Add0~59_combout\)))) # (!\Add0~58\ & (((!\count[23]~51_combout\ & \Add0~59_combout\)) # (GND)))
-- \Add0~60\ = CARRY((\count[23]~51_combout\) # ((!\Add0~58\) # (!\Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X18_Y12_N24
\Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~64\ & (!\count[23]~51_combout\ & (\Add0~65_combout\ & VCC))) # (!\Add0~64\ & ((((!\count[23]~51_combout\ & \Add0~65_combout\)))))
-- \Add0~66\ = CARRY((!\count[23]~51_combout\ & (\Add0~65_combout\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~65_combout\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~65_combout\,
	cout => \Add0~66\);

-- Location: LCCOMB_X18_Y12_N30
\Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \Add0~70\ $ (\count[31]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count[31]~67_combout\,
	cin => \Add0~70\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X19_Y12_N20
\count[31]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[31]~67_combout\ = (\Add0~71_combout\ & (!\WideNor0~combout\ & \rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~71_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \count[31]~67_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\count[30]~68_combout\ & (!\count[31]~67_combout\ & !\count[0]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[30]~68_combout\,
	datac => \count[31]~67_combout\,
	datad => \count[0]~59_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Equal7~0_combout\ & (\Equal8~0_combout\ & (\count[2]~58_combout\ & !\count[4]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \count[2]~58_combout\,
	datad => \count[4]~56_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X17_Y11_N2
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\count[23]~51_combout\) # ((!\Add0~23_combout\ & (!\Add0~27_combout\ & !\Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \Add0~27_combout\,
	datac => \Add0~25_combout\,
	datad => \count[23]~51_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X19_Y13_N18
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\WideNor0~combout\) # (((!\Add0~29_combout\ & !\Add0~35_combout\)) # (!\rstn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \Add0~35_combout\,
	datac => \WideNor0~combout\,
	datad => \rstn~combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X17_Y11_N12
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~10_combout\ & ((\count[23]~51_combout\) # ((!\Add0~31_combout\ & !\Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Equal0~10_combout\,
	datac => \Add0~33_combout\,
	datad => \count[23]~51_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X17_Y11_N14
\Equal7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\Equal0~9_combout\ & (\Equal7~2_combout\ & (\Equal0~12_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal7~2_combout\,
	datac => \Equal0~12_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X20_Y11_N6
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\count[6]~54_combout\ & (\Equal0~0_combout\ & (!\count[4]~56_combout\ & !\count[2]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[6]~54_combout\,
	datab => \Equal0~0_combout\,
	datac => \count[4]~56_combout\,
	datad => \count[2]~58_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!\Equal7~3_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datac => \Equal7~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X17_Y11_N4
\WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\count[6]~53_combout\ & (!\Equal3~2_combout\ & (\WideNor0~0_combout\ & \WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[6]~53_combout\,
	datab => \Equal3~2_combout\,
	datac => \WideNor0~0_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X18_Y11_N2
\count[0]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~59_combout\ = (\rstn~combout\ & (((!\WideNor0~combout\ & \Add0~9_combout\)) # (!\WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~9_combout\,
	datac => \WideNor0~3_combout\,
	datad => \rstn~combout\,
	combout => \count[0]~59_combout\);

-- Location: LCCOMB_X18_Y11_N0
\count[1]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~65_combout\ = (!\WideNor0~combout\ & \Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datad => \Add0~11_combout\,
	combout => \count[1]~65_combout\);

-- Location: LCCOMB_X17_Y11_N30
\count[3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~63_combout\ = (!\Equal7~3_combout\ & (((!\Equal1~3_combout\ & !\Equal5~4_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal7~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \count[3]~63_combout\);

-- Location: LCCOMB_X18_Y11_N14
\count[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~66_combout\ = (\rstn~combout\ & ((\Equal3~2_combout\) # ((\count[1]~65_combout\) # (!\count[3]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \count[1]~65_combout\,
	datac => \count[3]~63_combout\,
	datad => \rstn~combout\,
	combout => \count[1]~66_combout\);

-- Location: LCCOMB_X19_Y11_N12
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\count[3]~64_combout\ & (!\count[1]~66_combout\ & \count[5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~64_combout\,
	datac => \count[1]~66_combout\,
	datad => \count[5]~61_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X18_Y13_N6
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\count[3]~64_combout\ & (!\Add0~14\)) # (!\count[3]~64_combout\ & ((\Add0~14\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~14\) # (!\count[3]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[3]~64_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X18_Y11_N18
\count[3]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~62_combout\ = (\Equal1~3_combout\ & ((\Equal4~0_combout\) # ((\Add0~15_combout\ & !\WideNor0~combout\)))) # (!\Equal1~3_combout\ & (((\Add0~15_combout\ & !\WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal4~0_combout\,
	datac => \Add0~15_combout\,
	datad => \WideNor0~combout\,
	combout => \count[3]~62_combout\);

-- Location: LCCOMB_X18_Y11_N22
\count[3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~64_combout\ = (\rstn~combout\ & ((\count[3]~62_combout\) # (!\count[3]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[3]~62_combout\,
	datac => \count[3]~63_combout\,
	datad => \rstn~combout\,
	combout => \count[3]~64_combout\);

-- Location: LCCOMB_X18_Y11_N6
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\count[2]~58_combout\ & (\count[4]~56_combout\ & (!\count[6]~54_combout\ & \count[5]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~58_combout\,
	datab => \count[4]~56_combout\,
	datac => \count[6]~54_combout\,
	datad => \count[5]~61_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X17_Y11_N26
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal0~13_combout\ & (!\count[3]~64_combout\ & (\count[1]~66_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \count[3]~64_combout\,
	datac => \count[1]~66_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X18_Y11_N10
\count[5]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~61_combout\ = (\rstn~combout\ & ((\count[5]~60_combout\) # ((\Equal3~2_combout\) # (\Equal7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~60_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal7~3_combout\,
	datad => \rstn~combout\,
	combout => \count[5]~61_combout\);

-- Location: LCCOMB_X20_Y11_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\count[3]~64_combout\ & (!\count[5]~61_combout\ & !\count[1]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~64_combout\,
	datab => \count[5]~61_combout\,
	datad => \count[1]~66_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y11_N6
\count[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~53_combout\ = (((!\Equal0~0_combout\ & !\Equal2~0_combout\)) # (!\Equal5~2_combout\)) # (!\Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \count[6]~53_combout\);

-- Location: LCCOMB_X18_Y13_N12
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\count[6]~54_combout\ & (\Add0~20\ $ (GND))) # (!\count[6]~54_combout\ & (!\Add0~20\ & VCC))
-- \Add0~22\ = CARRY((\count[6]~54_combout\ & !\Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[6]~54_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X19_Y13_N0
\count[6]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~52_combout\ = (!\WideNor0~combout\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~combout\,
	datad => \Add0~21_combout\,
	combout => \count[6]~52_combout\);

-- Location: LCCOMB_X20_Y11_N16
\count[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~54_combout\ = (\rstn~combout\ & ((\Equal7~3_combout\) # ((\count[6]~52_combout\) # (!\count[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \count[6]~53_combout\,
	datac => \count[6]~52_combout\,
	datad => \rstn~combout\,
	combout => \count[6]~54_combout\);

-- Location: LCCOMB_X18_Y13_N14
\Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & ((\count[23]~51_combout\) # ((!\Add0~23_combout\)))) # (!\Add0~22\ & (((!\count[23]~51_combout\ & \Add0~23_combout\)) # (GND)))
-- \Add0~24\ = CARRY((\count[23]~51_combout\) # ((!\Add0~22\) # (!\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~51_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X18_Y11_N24
\Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (\WideNor0~combout\) # ((!\Add0~25_combout\ & !\Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~25_combout\,
	datac => \Add0~23_combout\,
	datad => \WideNor0~combout\,
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (\WideNor0~combout\) # ((!\Add0~27_combout\ & (!\Add0~33_combout\ & !\Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Add0~27_combout\,
	datac => \Add0~33_combout\,
	datad => \Add0~31_combout\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X19_Y12_N14
\Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (\WideNor0~combout\) # ((!\Add0~43_combout\ & (!\Add0~41_combout\ & !\Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \WideNor0~combout\,
	datac => \Add0~41_combout\,
	datad => \Add0~39_combout\,
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X19_Y11_N18
\Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (\Equal6~7_combout\ & (\Equal6~8_combout\ & (\Equal6~6_combout\ & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datab => \Equal6~8_combout\,
	datac => \Equal6~6_combout\,
	datad => \Equal8~0_combout\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X19_Y11_N8
\Equal6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~4_combout\ & (\Equal6~5_combout\ & \Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~4_combout\,
	datab => \Equal6~5_combout\,
	datad => \Equal6~9_combout\,
	combout => \Equal6~10_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\traffic[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_traffic(3),
	combout => \traffic~combout\(3));

-- Location: LCFF_X19_Y11_N27
\A0|GNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \traffic~combout\(3),
	aclr => \ALT_INV_rstn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0|GNT\(3));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\traffic[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_traffic(2),
	combout => \traffic~combout\(2));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\traffic[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_traffic(1),
	combout => \traffic~combout\(1));

-- Location: LCCOMB_X24_Y11_N0
\A0|GNT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A0|GNT~0_combout\ = (!\traffic~combout\(2) & (\traffic~combout\(1) & !\traffic~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \traffic~combout\(2),
	datac => \traffic~combout\(1),
	datad => \traffic~combout\(3),
	combout => \A0|GNT~0_combout\);

-- Location: LCFF_X19_Y11_N15
\A0|GNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A0|GNT~0_combout\,
	aclr => \ALT_INV_rstn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0|GNT\(1));

-- Location: LCCOMB_X20_Y11_N28
\A0|GNT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A0|GNT~1_combout\ = (\traffic~combout\(2) & !\traffic~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \traffic~combout\(2),
	datad => \traffic~combout\(3),
	combout => \A0|GNT~1_combout\);

-- Location: LCFF_X20_Y11_N29
\A0|GNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \A0|GNT~1_combout\,
	aclr => \ALT_INV_rstn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0|GNT\(2));

-- Location: LCCOMB_X19_Y11_N14
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state~2_combout\ & (!\A0|GNT\(3) & (!\A0|GNT\(1) & !\A0|GNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~2_combout\,
	datab => \A0|GNT\(3),
	datac => \A0|GNT\(1),
	datad => \A0|GNT\(2),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((\Equal2~0_combout\ & (\Equal6~10_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal6~10_combout\,
	datac => \Equal5~2_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X24_Y11_N10
\A0|GNT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A0|GNT~2_combout\ = (\traffic~combout\(0) & (!\traffic~combout\(1) & (!\traffic~combout\(2) & !\traffic~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \traffic~combout\(0),
	datab => \traffic~combout\(1),
	datac => \traffic~combout\(2),
	datad => \traffic~combout\(3),
	combout => \A0|GNT~2_combout\);

-- Location: LCFF_X20_Y11_N9
\A0|GNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A0|GNT~2_combout\,
	aclr => \ALT_INV_rstn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0|GNT\(0));

-- Location: LCCOMB_X20_Y11_N8
\state.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s6~0_combout\ = (\A0|GNT\(0)) # (!\Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0|GNT\(0),
	datad => \Selector13~0_combout\,
	combout => \state.s6~0_combout\);

-- Location: CLKCTRL_G6
\state.s6~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s6~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y11_N2
\state.s6_491\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s6_491~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Selector13~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s6_491~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \state.s6_491~combout\,
	datac => \Selector13~1_combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s6_491~combout\);

-- Location: LCCOMB_X20_Y11_N18
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\count[3]~64_combout\ & (\count[5]~61_combout\ & (\count[1]~66_combout\ & \count[6]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~64_combout\,
	datab => \count[5]~61_combout\,
	datac => \count[1]~66_combout\,
	datad => \count[6]~54_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X20_Y11_N30
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal6~10_combout\ & (!\count[4]~56_combout\ & (\count[2]~58_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \count[4]~56_combout\,
	datac => \count[2]~58_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X20_Y11_N26
\state.s7_476\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s7_476~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Equal7~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s7_476~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \state.s7_476~combout\,
	datac => \state.s6~0clkctrl_outclk\,
	datad => \Equal7~1_combout\,
	combout => \state.s7_476~combout\);

-- Location: LCCOMB_X22_Y13_N0
\lights~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights~0_combout\ = (\state.s6_491~combout\) # (\state.s7_476~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s6_491~combout\,
	datad => \state.s7_476~combout\,
	combout => \lights~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~2_combout\ = ((\Equal4~0_combout\ & (\Equal5~2_combout\ & \Equal8~0_combout\))) # (!\WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal8~0_combout\,
	combout => \state~2_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\A0|GNT\(2) & (\A0|GNT\(1) & (!\A0|GNT\(3) & \state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|GNT\(2),
	datab => \A0|GNT\(1),
	datac => \A0|GNT\(3),
	datad => \state~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X20_Y11_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\count[4]~56_combout\ & (!\count[6]~54_combout\ & \count[2]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[4]~56_combout\,
	datac => \count[6]~54_combout\,
	datad => \count[2]~58_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\Equal6~10_combout\ & (\Equal4~0_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Selector9~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X19_Y11_N0
\state.s4_521\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s4_521~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Selector9~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s4_521~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \state.s4_521~combout\,
	datac => \Selector9~1_combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s4_521~combout\);

-- Location: LCCOMB_X20_Y11_N2
\Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~2_combout\ & (\Equal6~10_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~2_combout\,
	datac => \Equal6~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X20_Y11_N24
\state.s5_506\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s5_506~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & (\Equal5~3_combout\)) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & ((\state.s5_506~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \Equal5~3_combout\,
	datac => \state.s5_506~combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s5_506~combout\);

-- Location: LCCOMB_X27_Y12_N4
\lights~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights~1_combout\ = (\state.s4_521~combout\) # (\state.s5_506~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s4_521~combout\,
	datad => \state.s5_506~combout\,
	combout => \lights~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\count[1]~66_combout\ & (!\count[3]~64_combout\ & (\Equal6~10_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~66_combout\,
	datab => \count[3]~64_combout\,
	datac => \Equal6~10_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X18_Y11_N20
\state.s3_536\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s3_536~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Equal3~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s3_536~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3_536~combout\,
	datab => \rstn~combout\,
	datac => \Equal3~1_combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s3_536~combout\);

-- Location: LCCOMB_X19_Y11_N22
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\A0|GNT\(2) & (!\A0|GNT\(3) & \state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|GNT\(2),
	datac => \A0|GNT\(3),
	datad => \state~2_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\Equal2~0_combout\ & (\Equal6~10_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal6~10_combout\,
	datac => \Selector5~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X19_Y11_N6
\state.s2_551\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s2_551~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Selector5~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s2_551~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \state.s2_551~combout\,
	datac => \Selector5~1_combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s2_551~combout\);

-- Location: LCCOMB_X27_Y11_N16
\lights~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights~2_combout\ = (\state.s3_536~combout\) # (\state.s2_551~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3_536~combout\,
	datac => \state.s2_551~combout\,
	combout => \lights~2_combout\);

-- Location: LCCOMB_X19_Y11_N30
\state.s0_581\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s0_581~combout\ = ((GLOBAL(\state.s6~0clkctrl_outclk\) & (\Selector1~0_combout\)) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & ((\state.s0_581~combout\)))) # (!\rstn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \state.s0_581~combout\,
	datac => \rstn~combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s0_581~combout\);

-- Location: LCCOMB_X20_Y11_N4
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal6~10_combout\ & (\Equal1~0_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y11_N0
\state.s1_566\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.s1_566~combout\ = (\rstn~combout\ & ((GLOBAL(\state.s6~0clkctrl_outclk\) & ((\Equal1~1_combout\))) # (!GLOBAL(\state.s6~0clkctrl_outclk\) & (\state.s1_566~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~combout\,
	datab => \state.s1_566~combout\,
	datac => \Equal1~1_combout\,
	datad => \state.s6~0clkctrl_outclk\,
	combout => \state.s1_566~combout\);

-- Location: LCCOMB_X20_Y11_N10
\lights~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights~3_combout\ = (\state.s0_581~combout\) # (\state.s1_566~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s0_581~combout\,
	datad => \state.s1_566~combout\,
	combout => \lights~3_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lights~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(0));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lights~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lights~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lights~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s6_491~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(0));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s4_521~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s2_551~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(2));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s0_581~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yellow[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s7_476~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yellow(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yellow[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s5_506~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yellow(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yellow[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s3_536~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yellow(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yellow[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s1_566~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yellow(3));
END structure;


